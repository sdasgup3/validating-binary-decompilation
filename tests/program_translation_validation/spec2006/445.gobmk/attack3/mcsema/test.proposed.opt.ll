; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae448_type = type <{ [1 x i8] }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xae23a4_type = type <{ [4 x i8] }>
%G_0xb060b8_type = type <{ [4 x i8] }>
%G_0xb54ce0_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb6308c_type = type <{ [4 x i8] }>
%G_0xb8af28_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57e5fb_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fbff_type = type <{ [8 x i8] }>
%G__0x57fd0a_type = type <{ [8 x i8] }>
%G__0x57fde6_type = type <{ [8 x i8] }>
%G__0x57fdf0_type = type <{ [8 x i8] }>
%G__0x57fdfa_type = type <{ [8 x i8] }>
%G__0x57fe04_type = type <{ [8 x i8] }>
%G__0x57fe0e_type = type <{ [8 x i8] }>
%G__0x57fe4e_type = type <{ [8 x i8] }>
%G__0x57fe92_type = type <{ [8 x i8] }>
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
@G_0xb54ce0 = local_unnamed_addr global %G_0xb54ce0_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb6308c = local_unnamed_addr global %G_0xb6308c_type zeroinitializer
@G_0xb8af28 = local_unnamed_addr global %G_0xb8af28_type zeroinitializer
@G_0xb8b850 = local_unnamed_addr global %G_0xb8b850_type zeroinitializer
@G_0xb8b854 = local_unnamed_addr global %G_0xb8b854_type zeroinitializer
@G__0x57e5fb = global %G__0x57e5fb_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fbff = global %G__0x57fbff_type zeroinitializer
@G__0x57fd0a = global %G__0x57fd0a_type zeroinitializer
@G__0x57fde6 = global %G__0x57fde6_type zeroinitializer
@G__0x57fdf0 = global %G__0x57fdf0_type zeroinitializer
@G__0x57fdfa = global %G__0x57fdfa_type zeroinitializer
@G__0x57fe04 = global %G__0x57fe04_type zeroinitializer
@G__0x57fe0e = global %G__0x57fe0e_type zeroinitializer
@G__0x57fe4e = global %G__0x57fe4e_type zeroinitializer
@G__0x57fe92 = global %G__0x57fe92_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_461ef0.double_atari_chain2_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_462130.edge_closing_backfill(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_463620.do_find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_463930.find_cap(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4695f0.draw_back(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_466ab0.break_chain2_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @attack3(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i1872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1872, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i2187, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i2185, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i2183, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i2181 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %31 = load i64, i64* %RBX.i2181, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  %34 = add i64 %7, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %31, i64* %35, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %7, -1544
  store i64 %37, i64* %6, align 8
  %38 = icmp ult i64 %34, 1496
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
  %48 = xor i64 %34, 16
  %49 = xor i64 %48, %37
  %50 = lshr i64 %49, 4
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %52, i8* %53, align 1
  %54 = icmp eq i64 %37, 0
  %55 = zext i1 %54 to i8
  %56 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %55, i8* %56, align 1
  %57 = lshr i64 %37, 63
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %58, i8* %59, align 1
  %60 = lshr i64 %34, 63
  %61 = xor i64 %57, %60
  %62 = add nuw nsw i64 %61, %60
  %63 = icmp eq i64 %62, 2
  %64 = zext i1 %63 to i8
  %65 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %64, i8* %65, align 1
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i2177 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fe4e_type* @G__0x57fe4e to i64), i64* %RAX.i2177, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i2175 = bitcast %union.anon* %67 to i32*
  %68 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  store i64 3, i64* %68, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2172 = bitcast %union.anon* %69 to i32*
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -48
  %72 = load i32, i32* %EDI.i2172, align 4
  %73 = add i64 %36, 26
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2169 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -56
  %78 = load i64, i64* %RSI.i2169, align 8
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2166 = bitcast %union.anon* %82 to i32*
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -60
  %85 = load i32, i32* %EDX.i2166, align 4
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 3
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2163 = bitcast %union.anon* %89 to i32*
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -64
  %92 = load i32, i32* %ECX.i2163, align 4
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 3
  store i64 %94, i64* %3, align 8
  %95 = inttoptr i64 %91 to i32*
  store i32 %92, i32* %95, align 4
  %96 = load i64, i64* %RBP.i, align 8
  %97 = add i64 %96, -48
  %98 = load i64, i64* %3, align 8
  %99 = add i64 %98, 4
  store i64 %99, i64* %3, align 8
  %100 = inttoptr i64 %97 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %RSI.i2169, align 8
  %RCX.i2157 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %103 = add nsw i64 %102, 12099168
  %104 = add i64 %98, 12
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i8*
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  store i64 %107, i64* %RCX.i2157, align 8
  %108 = add i64 %96, -68
  %109 = zext i8 %106 to i32
  %110 = add i64 %98, 15
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %R8D.i2175, align 4
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -68
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 4
  store i64 %116, i64* %3, align 8
  %117 = inttoptr i64 %114 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %112, %118
  %120 = zext i32 %119 to i64
  store i64 %120, i64* %68, align 8
  %121 = icmp ult i32 %112, %118
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %40, align 1
  %123 = and i32 %119, 255
  %124 = tail call i32 @llvm.ctpop.i32(i32 %123)
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 1
  %127 = xor i8 %126, 1
  store i8 %127, i8* %47, align 1
  %128 = xor i32 %118, %112
  %129 = xor i32 %128, %119
  %130 = lshr i32 %129, 4
  %131 = trunc i32 %130 to i8
  %132 = and i8 %131, 1
  store i8 %132, i8* %53, align 1
  %133 = icmp eq i32 %119, 0
  %134 = zext i1 %133 to i8
  store i8 %134, i8* %56, align 1
  %135 = lshr i32 %119, 31
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %59, align 1
  %137 = lshr i32 %112, 31
  %138 = lshr i32 %118, 31
  %139 = xor i32 %138, %137
  %140 = xor i32 %135, %137
  %141 = add nuw nsw i32 %140, %139
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %65, align 1
  %144 = add i64 %113, -72
  %145 = add i64 %115, 8
  store i64 %145, i64* %3, align 8
  %146 = inttoptr i64 %144 to i32*
  store i32 %119, i32* %146, align 4
  %147 = load i64, i64* %RBP.i, align 8
  %148 = add i64 %147, -748
  %149 = load i64, i64* %3, align 8
  %150 = add i64 %149, 10
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i32*
  store i32 0, i32* %151, align 4
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -1164
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 10
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %153 to i32*
  store i32 0, i32* %156, align 4
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -1168
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 10
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i32*
  store i32 0, i32* %161, align 4
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -1176
  %164 = load i64, i64* %RAX.i2177, align 8
  %165 = load i64, i64* %3, align 8
  %166 = add i64 %165, 7
  store i64 %166, i64* %3, align 8
  %167 = inttoptr i64 %163 to i64*
  store i64 %164, i64* %167, align 8
  %168 = load i64, i64* %RBP.i, align 8
  %169 = add i64 %168, -48
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 3
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172, align 4
  %174 = add i64 %168, -1180
  %175 = add i64 %170, 9
  store i64 %175, i64* %3, align 8
  %176 = inttoptr i64 %174 to i32*
  store i32 %173, i32* %176, align 4
  %177 = load i64, i64* %3, align 8
  %178 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  %179 = add i32 %178, 1
  %180 = zext i32 %179 to i64
  store i64 %180, i64* %RCX.i2157, align 8
  %181 = icmp eq i32 %178, -1
  %182 = icmp eq i32 %179, 0
  %183 = or i1 %181, %182
  %184 = zext i1 %183 to i8
  store i8 %184, i8* %40, align 1
  %185 = and i32 %179, 255
  %186 = tail call i32 @llvm.ctpop.i32(i32 %185)
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = xor i8 %188, 1
  store i8 %189, i8* %47, align 1
  %190 = xor i32 %179, %178
  %191 = lshr i32 %190, 4
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  store i8 %193, i8* %53, align 1
  %194 = zext i1 %182 to i8
  store i8 %194, i8* %56, align 1
  %195 = lshr i32 %179, 31
  %196 = trunc i32 %195 to i8
  store i8 %196, i8* %59, align 1
  %197 = lshr i32 %178, 31
  %198 = xor i32 %195, %197
  %199 = add nuw nsw i32 %198, %195
  %200 = icmp eq i32 %199, 2
  %201 = zext i1 %200 to i8
  store i8 %201, i8* %65, align 1
  store i32 %179, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  %202 = load i64, i64* %RBP.i, align 8
  %203 = add i64 %202, -760
  %204 = add i64 %177, 27
  store i64 %204, i64* %3, align 8
  %205 = inttoptr i64 %203 to i32*
  store i32 0, i32* %205, align 4
  %206 = load i64, i64* %RBP.i, align 8
  %207 = add i64 %206, -48
  %208 = load i64, i64* %3, align 8
  %209 = add i64 %208, 4
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  store i64 %212, i64* %RAX.i2177, align 8
  %213 = add nsw i64 %212, 12099168
  %214 = add i64 %208, 12
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %213 to i8*
  %216 = load i8, i8* %215, align 1
  %217 = zext i8 %216 to i64
  store i64 %217, i64* %RCX.i2157, align 8
  %218 = zext i8 %216 to i32
  %219 = add nsw i32 %218, -1
  %220 = icmp eq i8 %216, 0
  %221 = zext i1 %220 to i8
  store i8 %221, i8* %40, align 1
  %222 = and i32 %219, 255
  %223 = tail call i32 @llvm.ctpop.i32(i32 %222)
  %224 = trunc i32 %223 to i8
  %225 = and i8 %224, 1
  %226 = xor i8 %225, 1
  store i8 %226, i8* %47, align 1
  %227 = xor i32 %219, %218
  %228 = lshr i32 %227, 4
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  store i8 %230, i8* %53, align 1
  %231 = icmp eq i32 %219, 0
  %232 = zext i1 %231 to i8
  store i8 %232, i8* %56, align 1
  %233 = lshr i32 %219, 31
  %234 = trunc i32 %233 to i8
  store i8 %234, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v230 = select i1 %231, i64 42, i64 21
  %235 = add i64 %208, %.v230
  store i64 %235, i64* %3, align 8
  br i1 %231, label %block_.L_45fffb, label %block_45ffe6

block_45ffe6:                                     ; preds = %entry
  %236 = add i64 %235, 4
  store i64 %236, i64* %3, align 8
  %237 = load i32, i32* %210, align 4
  %238 = sext i32 %237 to i64
  store i64 %238, i64* %RAX.i2177, align 8
  %239 = add nsw i64 %238, 12099168
  %240 = add i64 %235, 12
  store i64 %240, i64* %3, align 8
  %241 = inttoptr i64 %239 to i8*
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i64
  store i64 %243, i64* %RCX.i2157, align 8
  %244 = zext i8 %242 to i32
  %245 = add nsw i32 %244, -2
  %246 = icmp ult i8 %242, 2
  %247 = zext i1 %246 to i8
  store i8 %247, i8* %40, align 1
  %248 = and i32 %245, 255
  %249 = tail call i32 @llvm.ctpop.i32(i32 %248)
  %250 = trunc i32 %249 to i8
  %251 = and i8 %250, 1
  %252 = xor i8 %251, 1
  store i8 %252, i8* %47, align 1
  %253 = xor i32 %245, %244
  %254 = lshr i32 %253, 4
  %255 = trunc i32 %254 to i8
  %256 = and i8 %255, 1
  store i8 %256, i8* %53, align 1
  %257 = icmp eq i32 %245, 0
  %258 = zext i1 %257 to i8
  store i8 %258, i8* %56, align 1
  %259 = lshr i32 %245, 31
  %260 = trunc i32 %259 to i8
  store i8 %260, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v231 = select i1 %257, i64 21, i64 26
  %261 = add i64 %235, %.v231
  store i64 %261, i64* %3, align 8
  br i1 %257, label %block_.L_45fffb, label %block_.L_460000

block_.L_45fffb:                                  ; preds = %block_45ffe6, %entry
  %262 = phi i64 [ %261, %block_45ffe6 ], [ %235, %entry ]
  %263 = add i64 %262, 45
  store i64 %263, i64* %3, align 8
  br label %block_.L_460028

block_.L_460000:                                  ; preds = %block_45ffe6
  %RDI.i2104 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i2104, align 8
  store i64 2799, i64* %RSI.i2169, align 8
  %RDX.i2100 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fbff_type* @G__0x57fbff to i64), i64* %RDX.i2100, align 8
  store i64 4294967295, i64* %RAX.i2177, align 8
  store i64 4294967295, i64* %RCX.i2157, align 8
  store i64 4294967295, i64* %68, align 8
  %264 = add i64 %261, -57200
  %265 = add i64 %261, 40
  %266 = load i64, i64* %6, align 8
  %267 = add i64 %266, -8
  %268 = inttoptr i64 %267 to i64*
  store i64 %265, i64* %268, align 8
  store i64 %267, i64* %6, align 8
  store i64 %264, i64* %3, align 8
  %call2_460023 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %264, %struct.Memory* %2)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_460028

block_.L_460028:                                  ; preds = %block_.L_460000, %block_.L_45fffb
  %269 = phi i64 [ %263, %block_.L_45fffb ], [ %.pre, %block_.L_460000 ]
  %MEMORY.1 = phi %struct.Memory* [ %2, %block_.L_45fffb ], [ %call2_460023, %block_.L_460000 ]
  %EAX.i2087.pre-phi = bitcast %union.anon* %66 to i32*
  %270 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %RAX.i2177, align 8
  %272 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %273 = sub i32 %270, %272
  %274 = icmp ult i32 %270, %272
  %275 = zext i1 %274 to i8
  store i8 %275, i8* %40, align 1
  %276 = and i32 %273, 255
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %47, align 1
  %281 = xor i32 %272, %270
  %282 = xor i32 %281, %273
  %283 = lshr i32 %282, 4
  %284 = trunc i32 %283 to i8
  %285 = and i8 %284, 1
  store i8 %285, i8* %53, align 1
  %286 = icmp eq i32 %273, 0
  %287 = zext i1 %286 to i8
  store i8 %287, i8* %56, align 1
  %288 = lshr i32 %273, 31
  %289 = trunc i32 %288 to i8
  store i8 %289, i8* %59, align 1
  %290 = lshr i32 %270, 31
  %291 = lshr i32 %272, 31
  %292 = xor i32 %291, %290
  %293 = xor i32 %288, %290
  %294 = add nuw nsw i32 %293, %292
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  store i8 %296, i8* %65, align 1
  %297 = icmp ne i8 %289, 0
  %298 = xor i1 %297, %295
  %299 = or i1 %286, %298
  %.v232 = select i1 %299, i64 81, i64 20
  %300 = add i64 %269, %.v232
  store i64 %300, i64* %3, align 8
  br i1 %299, label %block_.L_460079, label %block_46003c

block_46003c:                                     ; preds = %block_.L_460028
  %301 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %302 = trunc i64 %301 to i32
  %303 = and i32 %302, 255
  %304 = tail call i32 @llvm.ctpop.i32(i32 %303)
  %305 = trunc i32 %304 to i8
  %306 = and i8 %305, 1
  %307 = xor i8 %306, 1
  store i8 %307, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %308 = icmp eq i64 %301, 0
  %309 = zext i1 %308 to i8
  store i8 %309, i8* %56, align 1
  %310 = lshr i64 %301, 63
  %311 = trunc i64 %310 to i8
  store i8 %311, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v233 = select i1 %308, i64 49, i64 20
  %312 = add i64 %300, %.v233
  store i64 %312, i64* %3, align 8
  br i1 %308, label %block_.L_46006d, label %block_460050

block_460050:                                     ; preds = %block_46003c
  store i64 0, i64* %RAX.i2177, align 8
  store i64 0, i64* %RCX.i2157, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %68, align 8
  %RDI.i2071 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -1176
  %315 = add i64 %312, 14
  store i64 %315, i64* %3, align 8
  %316 = inttoptr i64 %314 to i64*
  %317 = load i64, i64* %316, align 8
  store i64 %317, i64* %RDI.i2071, align 8
  %318 = add i64 %313, -1180
  %319 = add i64 %312, 20
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i32*
  %321 = load i32, i32* %320, align 4
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RSI.i2169, align 8
  %RDX.i2066 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  store i64 0, i64* %RDX.i2066, align 8
  store i64 0, i64* %RCX.i2157, align 8
  %323 = add i64 %312, -295056
  %324 = add i64 %312, 29
  %325 = load i64, i64* %6, align 8
  %326 = add i64 %325, -8
  %327 = inttoptr i64 %326 to i64*
  store i64 %324, i64* %327, align 8
  store i64 %326, i64* %6, align 8
  store i64 %323, i64* %3, align 8
  %call2_460068 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %323, %struct.Memory* %MEMORY.1)
  %.pre149 = load i64, i64* %3, align 8
  br label %block_.L_46006d

block_.L_46006d:                                  ; preds = %block_460050, %block_46003c
  %328 = phi i64 [ %312, %block_46003c ], [ %.pre149, %block_460050 ]
  %MEMORY.2 = phi %struct.Memory* [ %MEMORY.1, %block_46003c ], [ %call2_460068, %block_460050 ]
  %329 = load i64, i64* %RBP.i, align 8
  %330 = add i64 %329, -44
  %331 = add i64 %328, 7
  store i64 %331, i64* %3, align 8
  %332 = inttoptr i64 %330 to i32*
  store i32 0, i32* %332, align 4
  %333 = load i64, i64* %3, align 8
  %334 = add i64 %333, 4866
  store i64 %334, i64* %3, align 8
  br label %block_.L_461376

block_.L_460079:                                  ; preds = %block_.L_460028
  %RDX.i2056 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  store i64 1, i64* %RDX.i2056, align 8
  %335 = load i64, i64* %RBP.i, align 8
  %336 = add i64 %335, -720
  store i64 %336, i64* %RSI.i2169, align 8
  %RDI.i2050 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %337 = add i64 %335, -48
  %338 = add i64 %300, 15
  store i64 %338, i64* %3, align 8
  %339 = inttoptr i64 %337 to i32*
  %340 = load i32, i32* %339, align 4
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RDI.i2050, align 8
  %342 = add i64 %300, -312409
  %343 = add i64 %300, 20
  %344 = load i64, i64* %6, align 8
  %345 = add i64 %344, -8
  %346 = inttoptr i64 %345 to i64*
  store i64 %343, i64* %346, align 8
  store i64 %345, i64* %6, align 8
  store i64 %342, i64* %3, align 8
  %call2_460088 = tail call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* nonnull %0, i64 %342, %struct.Memory* %MEMORY.1)
  %347 = load i64, i64* %RBP.i, align 8
  %348 = add i64 %347, -76
  %349 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %350 = load i64, i64* %3, align 8
  %351 = add i64 %350, 3
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %348 to i32*
  store i32 %349, i32* %352, align 4
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -744
  %355 = load i64, i64* %3, align 8
  %356 = add i64 %355, 10
  store i64 %356, i64* %3, align 8
  %357 = inttoptr i64 %354 to i32*
  store i32 0, i32* %357, align 4
  %.pre150 = load i64, i64* %3, align 8
  br label %block_.L_46009a

block_.L_46009a:                                  ; preds = %block_.L_4601a8, %block_.L_460079
  %358 = phi i64 [ %720, %block_.L_4601a8 ], [ %.pre150, %block_.L_460079 ]
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -744
  %361 = add i64 %358, 6
  store i64 %361, i64* %3, align 8
  %362 = inttoptr i64 %360 to i32*
  %363 = load i32, i32* %362, align 4
  %364 = zext i32 %363 to i64
  store i64 %364, i64* %RAX.i2177, align 8
  %365 = add i64 %359, -76
  %366 = add i64 %358, 9
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i32*
  %368 = load i32, i32* %367, align 4
  %369 = sub i32 %363, %368
  %370 = icmp ult i32 %363, %368
  %371 = zext i1 %370 to i8
  store i8 %371, i8* %40, align 1
  %372 = and i32 %369, 255
  %373 = tail call i32 @llvm.ctpop.i32(i32 %372)
  %374 = trunc i32 %373 to i8
  %375 = and i8 %374, 1
  %376 = xor i8 %375, 1
  store i8 %376, i8* %47, align 1
  %377 = xor i32 %368, %363
  %378 = xor i32 %377, %369
  %379 = lshr i32 %378, 4
  %380 = trunc i32 %379 to i8
  %381 = and i8 %380, 1
  store i8 %381, i8* %53, align 1
  %382 = icmp eq i32 %369, 0
  %383 = zext i1 %382 to i8
  store i8 %383, i8* %56, align 1
  %384 = lshr i32 %369, 31
  %385 = trunc i32 %384 to i8
  store i8 %385, i8* %59, align 1
  %386 = lshr i32 %363, 31
  %387 = lshr i32 %368, 31
  %388 = xor i32 %387, %386
  %389 = xor i32 %384, %386
  %390 = add nuw nsw i32 %389, %388
  %391 = icmp eq i32 %390, 2
  %392 = zext i1 %391 to i8
  store i8 %392, i8* %65, align 1
  %393 = icmp ne i8 %385, 0
  %394 = xor i1 %393, %391
  %.v = select i1 %394, i64 15, i64 300
  %395 = add i64 %358, %.v
  %396 = add i64 %359, -1160
  %397 = add i64 %395, 7
  store i64 %397, i64* %3, align 8
  store i64 %396, i64* %RSI.i2169, align 8
  br i1 %394, label %block_4600a9, label %block_.L_4601c6

block_4600a9:                                     ; preds = %block_.L_46009a
  %398 = add i64 %395, 14
  store i64 %398, i64* %3, align 8
  %399 = load i32, i32* %362, align 4
  %400 = sext i32 %399 to i64
  store i64 %400, i64* %RAX.i2177, align 8
  %401 = shl nsw i64 %400, 2
  %402 = add i64 %359, -720
  %403 = add i64 %402, %401
  %404 = add i64 %395, 21
  store i64 %404, i64* %3, align 8
  %405 = inttoptr i64 %403 to i32*
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  store i64 %407, i64* %RDI.i2050, align 8
  %408 = add i64 %395, 7399
  %409 = add i64 %395, 26
  %410 = load i64, i64* %6, align 8
  %411 = add i64 %410, -8
  %412 = inttoptr i64 %411 to i64*
  store i64 %409, i64* %412, align 8
  store i64 %411, i64* %6, align 8
  store i64 %408, i64* %3, align 8
  %call2_4600be = tail call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* nonnull %0, i64 %408, %struct.Memory* %call2_460088)
  %413 = load i64, i64* %3, align 8
  store i64 1, i64* %RSI.i2169, align 8
  %414 = load i64, i64* %RBP.i, align 8
  %415 = add i64 %414, -1184
  store i64 %415, i64* %RDX.i2056, align 8
  %416 = add i64 %414, -744
  %417 = add i64 %413, 19
  store i64 %417, i64* %3, align 8
  %418 = inttoptr i64 %416 to i32*
  %419 = load i32, i32* %418, align 4
  %420 = sext i32 %419 to i64
  store i64 %420, i64* %RAX.i2177, align 8
  %421 = shl nsw i64 %420, 2
  %422 = add i64 %414, -720
  %423 = add i64 %422, %421
  %424 = add i64 %413, 26
  store i64 %424, i64* %3, align 8
  %425 = inttoptr i64 %423 to i32*
  %426 = load i32, i32* %425, align 4
  %427 = zext i32 %426 to i64
  store i64 %427, i64* %RDI.i2050, align 8
  %428 = add i64 %413, -329859
  %429 = add i64 %413, 31
  %430 = load i64, i64* %6, align 8
  %431 = add i64 %430, -8
  %432 = inttoptr i64 %431 to i64*
  store i64 %429, i64* %432, align 8
  store i64 %431, i64* %6, align 8
  store i64 %428, i64* %3, align 8
  %call2_4600dd = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %428, %struct.Memory* %call2_460088)
  %433 = load i64, i64* %RBP.i, align 8
  %434 = add i64 %433, -1368
  %435 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %436 = load i64, i64* %3, align 8
  %437 = add i64 %436, 6
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %434 to i32*
  store i32 %435, i32* %438, align 4
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -1188
  %441 = load i64, i64* %3, align 8
  %442 = add i64 %441, 10
  store i64 %442, i64* %3, align 8
  %443 = inttoptr i64 %440 to i32*
  store i32 0, i32* %443, align 4
  %.pre212 = load i64, i64* %3, align 8
  br label %block_.L_4600f2

block_.L_4600f2:                                  ; preds = %block_.L_46013b, %block_4600a9
  %444 = phi i64 [ %570, %block_.L_46013b ], [ %.pre212, %block_4600a9 ]
  %445 = load i64, i64* %RBP.i, align 8
  %446 = add i64 %445, -1188
  %447 = add i64 %444, 6
  store i64 %447, i64* %3, align 8
  %448 = inttoptr i64 %446 to i32*
  %449 = load i32, i32* %448, align 4
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RAX.i2177, align 8
  %451 = add i64 %445, -760
  %452 = add i64 %444, 12
  store i64 %452, i64* %3, align 8
  %453 = inttoptr i64 %451 to i32*
  %454 = load i32, i32* %453, align 4
  %455 = sub i32 %449, %454
  %456 = icmp ult i32 %449, %454
  %457 = zext i1 %456 to i8
  store i8 %457, i8* %40, align 1
  %458 = and i32 %455, 255
  %459 = tail call i32 @llvm.ctpop.i32(i32 %458)
  %460 = trunc i32 %459 to i8
  %461 = and i8 %460, 1
  %462 = xor i8 %461, 1
  store i8 %462, i8* %47, align 1
  %463 = xor i32 %454, %449
  %464 = xor i32 %463, %455
  %465 = lshr i32 %464, 4
  %466 = trunc i32 %465 to i8
  %467 = and i8 %466, 1
  store i8 %467, i8* %53, align 1
  %468 = icmp eq i32 %455, 0
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %56, align 1
  %470 = lshr i32 %455, 31
  %471 = trunc i32 %470 to i8
  store i8 %471, i8* %59, align 1
  %472 = lshr i32 %449, 31
  %473 = lshr i32 %454, 31
  %474 = xor i32 %473, %472
  %475 = xor i32 %470, %472
  %476 = add nuw nsw i32 %475, %474
  %477 = icmp eq i32 %476, 2
  %478 = zext i1 %477 to i8
  store i8 %478, i8* %65, align 1
  %479 = icmp ne i8 %471, 0
  %480 = xor i1 %479, %477
  %.v229 = select i1 %480, i64 18, i64 98
  %481 = add i64 %444, %.v229
  store i64 %481, i64* %3, align 8
  br i1 %480, label %block_460104, label %block_.L_460154.loopexit

block_460104:                                     ; preds = %block_.L_4600f2
  %482 = add i64 %481, 7
  store i64 %482, i64* %3, align 8
  %483 = load i32, i32* %448, align 4
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %RAX.i2177, align 8
  %485 = shl nsw i64 %484, 2
  %486 = add i64 %445, -1160
  %487 = add i64 %486, %485
  %488 = add i64 %481, 14
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RCX.i2157, align 8
  %492 = add i64 %445, -1184
  %493 = add i64 %481, 20
  store i64 %493, i64* %3, align 8
  %494 = inttoptr i64 %492 to i32*
  %495 = load i32, i32* %494, align 4
  %496 = sub i32 %490, %495
  %497 = icmp ult i32 %490, %495
  %498 = zext i1 %497 to i8
  store i8 %498, i8* %40, align 1
  %499 = and i32 %496, 255
  %500 = tail call i32 @llvm.ctpop.i32(i32 %499)
  %501 = trunc i32 %500 to i8
  %502 = and i8 %501, 1
  %503 = xor i8 %502, 1
  store i8 %503, i8* %47, align 1
  %504 = xor i32 %495, %490
  %505 = xor i32 %504, %496
  %506 = lshr i32 %505, 4
  %507 = trunc i32 %506 to i8
  %508 = and i8 %507, 1
  store i8 %508, i8* %53, align 1
  %509 = icmp eq i32 %496, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %56, align 1
  %511 = lshr i32 %496, 31
  %512 = trunc i32 %511 to i8
  store i8 %512, i8* %59, align 1
  %513 = lshr i32 %490, 31
  %514 = lshr i32 %495, 31
  %515 = xor i32 %514, %513
  %516 = xor i32 %511, %513
  %517 = add nuw nsw i32 %516, %515
  %518 = icmp eq i32 %517, 2
  %519 = zext i1 %518 to i8
  store i8 %519, i8* %65, align 1
  %.v228 = select i1 %509, i64 26, i64 55
  %520 = add i64 %481, %.v228
  store i64 %520, i64* %3, align 8
  br i1 %509, label %block_46011e, label %block_.L_46013b

block_46011e:                                     ; preds = %block_460104
  %521 = add i64 %520, 7
  store i64 %521, i64* %3, align 8
  %522 = load i32, i32* %448, align 4
  %523 = sext i32 %522 to i64
  store i64 %523, i64* %RAX.i2177, align 8
  %524 = shl nsw i64 %523, 2
  %525 = add i64 %445, -960
  %526 = add i64 %525, %524
  %527 = add i64 %520, 14
  store i64 %527, i64* %3, align 8
  %528 = inttoptr i64 %526 to i32*
  %529 = load i32, i32* %528, align 4
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RCX.i2157, align 8
  store i8 0, i8* %40, align 1
  %531 = and i32 %529, 255
  %532 = tail call i32 @llvm.ctpop.i32(i32 %531)
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = xor i8 %534, 1
  store i8 %535, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %536 = icmp eq i32 %529, 0
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %56, align 1
  %538 = lshr i32 %529, 31
  %539 = trunc i32 %538 to i8
  store i8 %539, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %540 = add i64 %520, 24
  store i64 %540, i64* %3, align 8
  store i32 %529, i32* %528, align 4
  %541 = load i64, i64* %3, align 8
  %542 = add i64 %541, 30
  store i64 %542, i64* %3, align 8
  %.pre213 = load i64, i64* %RBP.i, align 8
  br label %block_.L_460154

block_.L_46013b:                                  ; preds = %block_460104
  %543 = add i64 %520, 11
  store i64 %543, i64* %3, align 8
  %544 = load i32, i32* %448, align 4
  %545 = add i32 %544, 1
  %546 = zext i32 %545 to i64
  store i64 %546, i64* %RAX.i2177, align 8
  %547 = icmp eq i32 %544, -1
  %548 = icmp eq i32 %545, 0
  %549 = or i1 %547, %548
  %550 = zext i1 %549 to i8
  store i8 %550, i8* %40, align 1
  %551 = and i32 %545, 255
  %552 = tail call i32 @llvm.ctpop.i32(i32 %551)
  %553 = trunc i32 %552 to i8
  %554 = and i8 %553, 1
  %555 = xor i8 %554, 1
  store i8 %555, i8* %47, align 1
  %556 = xor i32 %545, %544
  %557 = lshr i32 %556, 4
  %558 = trunc i32 %557 to i8
  %559 = and i8 %558, 1
  store i8 %559, i8* %53, align 1
  %560 = zext i1 %548 to i8
  store i8 %560, i8* %56, align 1
  %561 = lshr i32 %545, 31
  %562 = trunc i32 %561 to i8
  store i8 %562, i8* %59, align 1
  %563 = lshr i32 %544, 31
  %564 = xor i32 %561, %563
  %565 = add nuw nsw i32 %564, %561
  %566 = icmp eq i32 %565, 2
  %567 = zext i1 %566 to i8
  store i8 %567, i8* %65, align 1
  %568 = add i64 %520, 20
  store i64 %568, i64* %3, align 8
  store i32 %545, i32* %448, align 4
  %569 = load i64, i64* %3, align 8
  %570 = add i64 %569, -93
  store i64 %570, i64* %3, align 8
  br label %block_.L_4600f2

block_.L_460154.loopexit:                         ; preds = %block_.L_4600f2
  br label %block_.L_460154

block_.L_460154:                                  ; preds = %block_.L_460154.loopexit, %block_46011e
  %571 = phi i64 [ %542, %block_46011e ], [ %481, %block_.L_460154.loopexit ]
  %572 = phi i64 [ %.pre213, %block_46011e ], [ %445, %block_.L_460154.loopexit ]
  %573 = add i64 %572, -1188
  %574 = add i64 %571, 6
  store i64 %574, i64* %3, align 8
  %575 = inttoptr i64 %573 to i32*
  %576 = load i32, i32* %575, align 4
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i2177, align 8
  %578 = add i64 %572, -760
  %579 = add i64 %571, 12
  store i64 %579, i64* %3, align 8
  %580 = inttoptr i64 %578 to i32*
  %581 = load i32, i32* %580, align 4
  %582 = sub i32 %576, %581
  %583 = icmp ult i32 %576, %581
  %584 = zext i1 %583 to i8
  store i8 %584, i8* %40, align 1
  %585 = and i32 %582, 255
  %586 = tail call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  store i8 %589, i8* %47, align 1
  %590 = xor i32 %581, %576
  %591 = xor i32 %590, %582
  %592 = lshr i32 %591, 4
  %593 = trunc i32 %592 to i8
  %594 = and i8 %593, 1
  store i8 %594, i8* %53, align 1
  %595 = icmp eq i32 %582, 0
  %596 = zext i1 %595 to i8
  store i8 %596, i8* %56, align 1
  %597 = lshr i32 %582, 31
  %598 = trunc i32 %597 to i8
  store i8 %598, i8* %59, align 1
  %599 = lshr i32 %576, 31
  %600 = lshr i32 %581, 31
  %601 = xor i32 %600, %599
  %602 = xor i32 %597, %599
  %603 = add nuw nsw i32 %602, %601
  %604 = icmp eq i32 %603, 2
  %605 = zext i1 %604 to i8
  store i8 %605, i8* %65, align 1
  %.v316 = select i1 %595, i64 18, i64 84
  %606 = add i64 %571, %.v316
  store i64 %606, i64* %3, align 8
  br i1 %595, label %block_460166, label %block_.L_4601a8

block_460166:                                     ; preds = %block_.L_460154
  %607 = add i64 %606, 7
  store i64 %607, i64* %3, align 8
  %608 = load i32, i32* %580, align 4
  %609 = add i32 %608, -50
  %610 = icmp ult i32 %608, 50
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %40, align 1
  %612 = and i32 %609, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %47, align 1
  %617 = xor i32 %608, 16
  %618 = xor i32 %617, %609
  %619 = lshr i32 %618, 4
  %620 = trunc i32 %619 to i8
  %621 = and i8 %620, 1
  store i8 %621, i8* %53, align 1
  %622 = icmp eq i32 %609, 0
  %623 = zext i1 %622 to i8
  store i8 %623, i8* %56, align 1
  %624 = lshr i32 %609, 31
  %625 = trunc i32 %624 to i8
  store i8 %625, i8* %59, align 1
  %626 = lshr i32 %608, 31
  %627 = xor i32 %624, %626
  %628 = add nuw nsw i32 %627, %626
  %629 = icmp eq i32 %628, 2
  %630 = zext i1 %629 to i8
  store i8 %630, i8* %65, align 1
  %631 = icmp ne i8 %625, 0
  %632 = xor i1 %631, %629
  %.v317 = select i1 %632, i64 13, i64 66
  %633 = add i64 %606, %.v317
  store i64 %633, i64* %3, align 8
  br i1 %632, label %block_460173, label %block_.L_4601a8

block_460173:                                     ; preds = %block_460166
  %634 = add i64 %572, -1184
  %635 = add i64 %633, 6
  store i64 %635, i64* %3, align 8
  %636 = inttoptr i64 %634 to i32*
  %637 = load i32, i32* %636, align 4
  %638 = zext i32 %637 to i64
  store i64 %638, i64* %RAX.i2177, align 8
  %639 = add i64 %633, 13
  store i64 %639, i64* %3, align 8
  %640 = load i32, i32* %580, align 4
  %641 = sext i32 %640 to i64
  store i64 %641, i64* %RCX.i2157, align 8
  %642 = shl nsw i64 %641, 2
  %643 = add i64 %572, -1160
  %644 = add i64 %643, %642
  %645 = add i64 %633, 20
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i32*
  store i32 %637, i32* %646, align 4
  %647 = load i64, i64* %RBP.i, align 8
  %648 = add i64 %647, -760
  %649 = load i64, i64* %3, align 8
  %650 = add i64 %649, 7
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %648 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = sext i32 %652 to i64
  store i64 %653, i64* %RCX.i2157, align 8
  %654 = shl nsw i64 %653, 2
  %655 = add i64 %647, -960
  %656 = add i64 %655, %654
  %657 = add i64 %649, 18
  store i64 %657, i64* %3, align 8
  %658 = inttoptr i64 %656 to i32*
  store i32 0, i32* %658, align 4
  %659 = load i64, i64* %RBP.i, align 8
  %660 = add i64 %659, -760
  %661 = load i64, i64* %3, align 8
  %662 = add i64 %661, 6
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %660 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = add i32 %664, 1
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RAX.i2177, align 8
  %667 = icmp eq i32 %664, -1
  %668 = icmp eq i32 %665, 0
  %669 = or i1 %667, %668
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %40, align 1
  %671 = and i32 %665, 255
  %672 = tail call i32 @llvm.ctpop.i32(i32 %671)
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = xor i8 %674, 1
  store i8 %675, i8* %47, align 1
  %676 = xor i32 %665, %664
  %677 = lshr i32 %676, 4
  %678 = trunc i32 %677 to i8
  %679 = and i8 %678, 1
  store i8 %679, i8* %53, align 1
  %680 = zext i1 %668 to i8
  store i8 %680, i8* %56, align 1
  %681 = lshr i32 %665, 31
  %682 = trunc i32 %681 to i8
  store i8 %682, i8* %59, align 1
  %683 = lshr i32 %664, 31
  %684 = xor i32 %681, %683
  %685 = add nuw nsw i32 %684, %681
  %686 = icmp eq i32 %685, 2
  %687 = zext i1 %686 to i8
  store i8 %687, i8* %65, align 1
  %688 = add i64 %661, 15
  store i64 %688, i64* %3, align 8
  store i32 %665, i32* %663, align 4
  %.pre214 = load i64, i64* %3, align 8
  %.pre215 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4601a8

block_.L_4601a8:                                  ; preds = %block_.L_460154, %block_460166, %block_460173
  %689 = phi i64 [ %572, %block_460166 ], [ %.pre215, %block_460173 ], [ %572, %block_.L_460154 ]
  %690 = phi i64 [ %633, %block_460166 ], [ %.pre214, %block_460173 ], [ %606, %block_.L_460154 ]
  %691 = add i64 %689, -744
  %692 = add i64 %690, 16
  store i64 %692, i64* %3, align 8
  %693 = inttoptr i64 %691 to i32*
  %694 = load i32, i32* %693, align 4
  %695 = add i32 %694, 1
  %696 = zext i32 %695 to i64
  store i64 %696, i64* %RAX.i2177, align 8
  %697 = icmp eq i32 %694, -1
  %698 = icmp eq i32 %695, 0
  %699 = or i1 %697, %698
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %40, align 1
  %701 = and i32 %695, 255
  %702 = tail call i32 @llvm.ctpop.i32(i32 %701)
  %703 = trunc i32 %702 to i8
  %704 = and i8 %703, 1
  %705 = xor i8 %704, 1
  store i8 %705, i8* %47, align 1
  %706 = xor i32 %695, %694
  %707 = lshr i32 %706, 4
  %708 = trunc i32 %707 to i8
  %709 = and i8 %708, 1
  store i8 %709, i8* %53, align 1
  %710 = zext i1 %698 to i8
  store i8 %710, i8* %56, align 1
  %711 = lshr i32 %695, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %59, align 1
  %713 = lshr i32 %694, 31
  %714 = xor i32 %711, %713
  %715 = add nuw nsw i32 %714, %711
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %65, align 1
  %718 = add i64 %690, 25
  store i64 %718, i64* %3, align 8
  store i32 %695, i32* %693, align 4
  %719 = load i64, i64* %3, align 8
  %720 = add i64 %719, -295
  store i64 %720, i64* %3, align 8
  br label %block_.L_46009a

block_.L_4601c6:                                  ; preds = %block_.L_46009a
  %721 = add i64 %359, -48
  %722 = add i64 %395, 10
  store i64 %722, i64* %3, align 8
  %723 = inttoptr i64 %721 to i32*
  %724 = load i32, i32* %723, align 4
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %RDI.i2050, align 8
  %726 = add i64 %395, 7466
  %727 = add i64 %395, 15
  %728 = load i64, i64* %6, align 8
  %729 = add i64 %728, -8
  %730 = inttoptr i64 %729 to i64*
  store i64 %727, i64* %730, align 8
  store i64 %729, i64* %6, align 8
  store i64 %726, i64* %3, align 8
  %call2_4601d0 = tail call %struct.Memory* @sub_461ef0.double_atari_chain2_moves(%struct.State* nonnull %0, i64 %726, %struct.Memory* %call2_460088)
  %731 = load i64, i64* %3, align 8
  store i64 3, i64* %RSI.i2169, align 8
  %732 = load i64, i64* %RBP.i, align 8
  %733 = add i64 %732, -740
  store i64 %733, i64* %RDX.i2056, align 8
  %734 = add i64 %732, -48
  %735 = add i64 %731, 15
  store i64 %735, i64* %3, align 8
  %736 = inttoptr i64 %734 to i32*
  %737 = load i32, i32* %736, align 4
  %738 = zext i32 %737 to i64
  store i64 %738, i64* %RDI.i2050, align 8
  %739 = add i64 %731, -330133
  %740 = add i64 %731, 20
  %741 = load i64, i64* %6, align 8
  %742 = add i64 %741, -8
  %743 = inttoptr i64 %742 to i64*
  store i64 %740, i64* %743, align 8
  store i64 %742, i64* %6, align 8
  store i64 %739, i64* %3, align 8
  %call2_4601e4 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %739, %struct.Memory* %call2_4601d0)
  %744 = load i64, i64* %RBP.i, align 8
  %745 = add i64 %744, -728
  %746 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %747 = load i64, i64* %3, align 8
  %748 = add i64 %747, 6
  store i64 %748, i64* %3, align 8
  %749 = inttoptr i64 %745 to i32*
  store i32 %746, i32* %749, align 4
  %750 = load i64, i64* %RBP.i, align 8
  %751 = add i64 %750, -728
  %752 = load i64, i64* %3, align 8
  %753 = add i64 %752, 7
  store i64 %753, i64* %3, align 8
  %754 = inttoptr i64 %751 to i32*
  %755 = load i32, i32* %754, align 4
  %756 = add i32 %755, -3
  %757 = icmp ult i32 %755, 3
  %758 = zext i1 %757 to i8
  store i8 %758, i8* %40, align 1
  %759 = and i32 %756, 255
  %760 = tail call i32 @llvm.ctpop.i32(i32 %759)
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = xor i8 %762, 1
  store i8 %763, i8* %47, align 1
  %764 = xor i32 %756, %755
  %765 = lshr i32 %764, 4
  %766 = trunc i32 %765 to i8
  %767 = and i8 %766, 1
  store i8 %767, i8* %53, align 1
  %768 = icmp eq i32 %756, 0
  %769 = zext i1 %768 to i8
  store i8 %769, i8* %56, align 1
  %770 = lshr i32 %756, 31
  %771 = trunc i32 %770 to i8
  store i8 %771, i8* %59, align 1
  %772 = lshr i32 %755, 31
  %773 = xor i32 %770, %772
  %774 = add nuw nsw i32 %773, %772
  %775 = icmp eq i32 %774, 2
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %65, align 1
  %.v234 = select i1 %768, i64 13, i64 18
  %777 = add i64 %752, %.v234
  store i64 %777, i64* %3, align 8
  br i1 %768, label %block_4601fc, label %block_.L_460201

block_4601fc:                                     ; preds = %block_.L_4601c6
  %778 = add i64 %777, 118
  store i64 %778, i64* %3, align 8
  br label %block_.L_460272

block_.L_460201:                                  ; preds = %block_.L_4601c6
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i2050, align 8
  store i64 2818, i64* %RSI.i2169, align 8
  store i64 ptrtoint (%G__0x57fd0a_type* @G__0x57fd0a to i64), i64* %RDX.i2056, align 8
  store i64 20, i64* %RAX.i2177, align 8
  %779 = add i64 %750, -48
  %780 = add i64 %777, 33
  store i64 %780, i64* %3, align 8
  %781 = inttoptr i64 %779 to i32*
  %782 = load i32, i32* %781, align 4
  %783 = zext i32 %782 to i64
  store i64 %783, i64* %RCX.i2157, align 8
  %784 = add i64 %750, -1372
  %785 = add i64 %777, 39
  store i64 %785, i64* %3, align 8
  %786 = inttoptr i64 %784 to i32*
  store i32 20, i32* %786, align 4
  %787 = load i32, i32* %ECX.i2163, align 4
  %788 = zext i32 %787 to i64
  %789 = load i64, i64* %3, align 8
  store i64 %788, i64* %RAX.i2177, align 8
  %790 = load i64, i64* %RBP.i, align 8
  %791 = add i64 %790, -1384
  %792 = load i64, i64* %RDX.i2056, align 8
  %793 = add i64 %789, 9
  store i64 %793, i64* %3, align 8
  %794 = inttoptr i64 %791 to i64*
  store i64 %792, i64* %794, align 8
  %795 = load i64, i64* %3, align 8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %797 = load i32, i32* %EAX.i2087.pre-phi, align 8
  %798 = sext i32 %797 to i64
  %799 = lshr i64 %798, 32
  store i64 %799, i64* %796, align 8
  %800 = load i64, i64* %RBP.i, align 8
  %801 = add i64 %800, -1372
  %802 = add i64 %795, 7
  store i64 %802, i64* %3, align 8
  %803 = inttoptr i64 %801 to i32*
  %804 = load i32, i32* %803, align 4
  %805 = zext i32 %804 to i64
  store i64 %805, i64* %RCX.i2157, align 8
  %806 = add i64 %795, 9
  store i64 %806, i64* %3, align 8
  %807 = zext i32 %797 to i64
  %808 = sext i32 %804 to i64
  %809 = shl nuw i64 %799, 32
  %810 = or i64 %809, %807
  %811 = sdiv i64 %810, %808
  %812 = shl i64 %811, 32
  %813 = ashr exact i64 %812, 32
  %814 = icmp eq i64 %811, %813
  br i1 %814, label %817, label %815

; <label>:815:                                    ; preds = %block_.L_460201
  %816 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %806, %struct.Memory* %call2_4601e4)
  %.pre151 = load i64, i64* %RAX.i2177, align 8
  %.pre152 = load i64, i64* %3, align 8
  %.pre153 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1870

; <label>:817:                                    ; preds = %block_.L_460201
  %818 = srem i64 %810, %808
  %819 = and i64 %811, 4294967295
  store i64 %819, i64* %RAX.i2177, align 8
  %820 = and i64 %818, 4294967295
  store i64 %820, i64* %RDX.i2056, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit1870

routine_idivl__ecx.exit1870:                      ; preds = %817, %815
  %821 = phi i64 [ %.pre153, %815 ], [ %800, %817 ]
  %822 = phi i64 [ %.pre152, %815 ], [ %806, %817 ]
  %823 = phi i64 [ %.pre151, %815 ], [ %819, %817 ]
  %824 = phi %struct.Memory* [ %816, %815 ], [ %call2_4601e4, %817 ]
  %825 = trunc i64 %823 to i32
  %826 = add i32 %825, -1
  %827 = zext i32 %826 to i64
  store i64 %827, i64* %RAX.i2177, align 8
  %828 = icmp eq i32 %825, 0
  %829 = zext i1 %828 to i8
  store i8 %829, i8* %40, align 1
  %830 = and i32 %826, 255
  %831 = tail call i32 @llvm.ctpop.i32(i32 %830)
  %832 = trunc i32 %831 to i8
  %833 = and i8 %832, 1
  %834 = xor i8 %833, 1
  store i8 %834, i8* %47, align 1
  %835 = xor i32 %826, %825
  %836 = lshr i32 %835, 4
  %837 = trunc i32 %836 to i8
  %838 = and i8 %837, 1
  store i8 %838, i8* %53, align 1
  %839 = icmp eq i32 %826, 0
  %840 = zext i1 %839 to i8
  store i8 %840, i8* %56, align 1
  %841 = lshr i32 %826, 31
  %842 = trunc i32 %841 to i8
  store i8 %842, i8* %59, align 1
  %843 = lshr i32 %825, 31
  %844 = xor i32 %841, %843
  %845 = add nuw nsw i32 %844, %843
  %846 = icmp eq i32 %845, 2
  %847 = zext i1 %846 to i8
  store i8 %847, i8* %65, align 1
  %848 = add i64 %821, -48
  %849 = add i64 %822, 7
  store i64 %849, i64* %3, align 8
  %850 = inttoptr i64 %848 to i32*
  %851 = load i32, i32* %850, align 4
  %852 = zext i32 %851 to i64
  store i64 %852, i64* %68, align 8
  %853 = add i64 %821, -1388
  %854 = add i64 %822, 13
  store i64 %854, i64* %3, align 8
  %855 = inttoptr i64 %853 to i32*
  store i32 %826, i32* %855, align 4
  %856 = load i32, i32* %R8D.i2175, align 4
  %857 = zext i32 %856 to i64
  %858 = load i64, i64* %3, align 8
  store i64 %857, i64* %RAX.i2177, align 8
  %859 = sext i32 %856 to i64
  %860 = lshr i64 %859, 32
  store i64 %860, i64* %796, align 8
  %861 = load i32, i32* %ECX.i2163, align 4
  %862 = add i64 %858, 6
  store i64 %862, i64* %3, align 8
  %863 = sext i32 %861 to i64
  %864 = shl nuw i64 %860, 32
  %865 = or i64 %864, %857
  %866 = sdiv i64 %865, %863
  %867 = shl i64 %866, 32
  %868 = ashr exact i64 %867, 32
  %869 = icmp eq i64 %866, %868
  br i1 %869, label %872, label %870

; <label>:870:                                    ; preds = %routine_idivl__ecx.exit1870
  %871 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %862, %struct.Memory* %824)
  %.pre154 = load i64, i64* %RDX.i2056, align 8
  %.pre155 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:872:                                    ; preds = %routine_idivl__ecx.exit1870
  %873 = srem i64 %865, %863
  %874 = and i64 %866, 4294967295
  store i64 %874, i64* %RAX.i2177, align 8
  %875 = and i64 %873, 4294967295
  store i64 %875, i64* %RDX.i2056, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %872, %870
  %876 = phi i64 [ %.pre155, %870 ], [ %862, %872 ]
  %877 = phi i64 [ %.pre154, %870 ], [ %875, %872 ]
  %878 = phi %struct.Memory* [ %871, %870 ], [ %824, %872 ]
  %879 = trunc i64 %877 to i32
  %880 = add i32 %879, -1
  %881 = zext i32 %880 to i64
  store i64 %881, i64* %RDX.i2056, align 8
  %882 = icmp eq i32 %879, 0
  %883 = zext i1 %882 to i8
  store i8 %883, i8* %40, align 1
  %884 = and i32 %880, 255
  %885 = tail call i32 @llvm.ctpop.i32(i32 %884)
  %886 = trunc i32 %885 to i8
  %887 = and i8 %886, 1
  %888 = xor i8 %887, 1
  store i8 %888, i8* %47, align 1
  %889 = xor i32 %880, %879
  %890 = lshr i32 %889, 4
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  store i8 %892, i8* %53, align 1
  %893 = icmp eq i32 %880, 0
  %894 = zext i1 %893 to i8
  store i8 %894, i8* %56, align 1
  %895 = lshr i32 %880, 31
  %896 = trunc i32 %895 to i8
  store i8 %896, i8* %59, align 1
  %897 = lshr i32 %879, 31
  %898 = xor i32 %895, %897
  %899 = add nuw nsw i32 %898, %897
  %900 = icmp eq i32 %899, 2
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %65, align 1
  %R9.i1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %902 = load i64, i64* %RBP.i, align 8
  %903 = add i64 %902, -1384
  %904 = add i64 %876, 10
  store i64 %904, i64* %3, align 8
  %905 = inttoptr i64 %903 to i64*
  %906 = load i64, i64* %905, align 8
  store i64 %906, i64* %R9.i1848, align 8
  %907 = add i64 %902, -1392
  %908 = add i64 %876, 16
  store i64 %908, i64* %3, align 8
  %909 = inttoptr i64 %907 to i32*
  store i32 %880, i32* %909, align 4
  %910 = load i64, i64* %R9.i1848, align 8
  %911 = load i64, i64* %3, align 8
  store i64 %910, i64* %RDX.i2056, align 8
  %912 = load i64, i64* %RBP.i, align 8
  %913 = add i64 %912, -1388
  %914 = add i64 %911, 9
  store i64 %914, i64* %3, align 8
  %915 = inttoptr i64 %913 to i32*
  %916 = load i32, i32* %915, align 4
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RCX.i2157, align 8
  %918 = add i64 %912, -1392
  %919 = add i64 %911, 16
  store i64 %919, i64* %3, align 8
  %920 = inttoptr i64 %918 to i32*
  %921 = load i32, i32* %920, align 4
  %922 = zext i32 %921 to i64
  store i64 %922, i64* %68, align 8
  %923 = add i64 %911, -57805
  %924 = add i64 %911, 21
  %925 = load i64, i64* %6, align 8
  %926 = add i64 %925, -8
  %927 = inttoptr i64 %926 to i64*
  store i64 %924, i64* %927, align 8
  store i64 %926, i64* %6, align 8
  store i64 %923, i64* %3, align 8
  %call2_46026d = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %923, %struct.Memory* %878)
  %.pre156 = load i64, i64* %RBP.i, align 8
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_460272

block_.L_460272:                                  ; preds = %routine_idivl__ecx.exit, %block_4601fc
  %928 = phi i64 [ %.pre157, %routine_idivl__ecx.exit ], [ %778, %block_4601fc ]
  %929 = phi i64 [ %.pre156, %routine_idivl__ecx.exit ], [ %750, %block_4601fc ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_46026d, %routine_idivl__ecx.exit ], [ %call2_4601e4, %block_4601fc ]
  %930 = add i64 %929, -752
  %931 = add i64 %928, 10
  store i64 %931, i64* %3, align 8
  %932 = inttoptr i64 %930 to i32*
  store i32 0, i32* %932, align 4
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_46027c

block_.L_46027c:                                  ; preds = %block_.L_46050c, %block_.L_460272
  %933 = phi i64 [ %.pre158, %block_.L_460272 ], [ %1872, %block_.L_46050c ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_460272 ], [ %call2_46051c, %block_.L_46050c ]
  %934 = load i64, i64* %RBP.i, align 8
  %935 = add i64 %934, -752
  %936 = add i64 %933, 7
  store i64 %936, i64* %3, align 8
  %937 = inttoptr i64 %935 to i32*
  %938 = load i32, i32* %937, align 4
  %939 = add i32 %938, -3
  %940 = icmp ult i32 %938, 3
  %941 = zext i1 %940 to i8
  store i8 %941, i8* %40, align 1
  %942 = and i32 %939, 255
  %943 = tail call i32 @llvm.ctpop.i32(i32 %942)
  %944 = trunc i32 %943 to i8
  %945 = and i8 %944, 1
  %946 = xor i8 %945, 1
  store i8 %946, i8* %47, align 1
  %947 = xor i32 %939, %938
  %948 = lshr i32 %947, 4
  %949 = trunc i32 %948 to i8
  %950 = and i8 %949, 1
  store i8 %950, i8* %53, align 1
  %951 = icmp eq i32 %939, 0
  %952 = zext i1 %951 to i8
  store i8 %952, i8* %56, align 1
  %953 = lshr i32 %939, 31
  %954 = trunc i32 %953 to i8
  store i8 %954, i8* %59, align 1
  %955 = lshr i32 %938, 31
  %956 = xor i32 %953, %955
  %957 = add nuw nsw i32 %956, %955
  %958 = icmp eq i32 %957, 2
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %65, align 1
  %960 = icmp ne i8 %954, 0
  %961 = xor i1 %960, %958
  %.v235 = select i1 %961, i64 13, i64 697
  %962 = add i64 %933, %.v235
  store i64 %962, i64* %3, align 8
  br i1 %961, label %block_460289, label %block_.L_460535

block_460289:                                     ; preds = %block_.L_46027c
  %963 = add i64 %962, 7
  store i64 %963, i64* %3, align 8
  %964 = load i32, i32* %937, align 4
  %965 = sext i32 %964 to i64
  store i64 %965, i64* %RAX.i2177, align 8
  %966 = shl nsw i64 %965, 2
  %967 = add i64 %934, -740
  %968 = add i64 %967, %966
  %969 = add i64 %962, 14
  store i64 %969, i64* %3, align 8
  %970 = inttoptr i64 %968 to i32*
  %971 = load i32, i32* %970, align 4
  %972 = add i64 %934, -1192
  %973 = add i64 %962, 20
  store i64 %973, i64* %3, align 8
  %974 = inttoptr i64 %972 to i32*
  store i32 %971, i32* %974, align 4
  %975 = load i64, i64* %3, align 8
  %976 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %977 = zext i32 %976 to i64
  store i64 %977, i64* %RCX.i2157, align 8
  %978 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %979 = sub i32 %976, %978
  %980 = icmp ult i32 %976, %978
  %981 = zext i1 %980 to i8
  store i8 %981, i8* %40, align 1
  %982 = and i32 %979, 255
  %983 = tail call i32 @llvm.ctpop.i32(i32 %982)
  %984 = trunc i32 %983 to i8
  %985 = and i8 %984, 1
  %986 = xor i8 %985, 1
  store i8 %986, i8* %47, align 1
  %987 = xor i32 %978, %976
  %988 = xor i32 %987, %979
  %989 = lshr i32 %988, 4
  %990 = trunc i32 %989 to i8
  %991 = and i8 %990, 1
  store i8 %991, i8* %53, align 1
  %992 = icmp eq i32 %979, 0
  %993 = zext i1 %992 to i8
  store i8 %993, i8* %56, align 1
  %994 = lshr i32 %979, 31
  %995 = trunc i32 %994 to i8
  store i8 %995, i8* %59, align 1
  %996 = lshr i32 %976, 31
  %997 = lshr i32 %978, 31
  %998 = xor i32 %997, %996
  %999 = xor i32 %994, %996
  %1000 = add nuw nsw i32 %999, %998
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  store i8 %1002, i8* %65, align 1
  %1003 = icmp ne i8 %995, 0
  %1004 = xor i1 %1003, %1001
  %1005 = or i1 %992, %1004
  %.v304 = select i1 %1005, i64 179, i64 20
  %1006 = add i64 %975, %.v304
  store i64 %1006, i64* %3, align 8
  br i1 %1005, label %block_.L_460350, label %block_4602b1

block_4602b1:                                     ; preds = %block_460289
  store i64 %977, i64* %RAX.i2177, align 8
  %1007 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %1008 = sub i32 %976, %1007
  %1009 = icmp ult i32 %976, %1007
  %1010 = zext i1 %1009 to i8
  store i8 %1010, i8* %40, align 1
  %1011 = and i32 %1008, 255
  %1012 = tail call i32 @llvm.ctpop.i32(i32 %1011)
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = xor i8 %1014, 1
  store i8 %1015, i8* %47, align 1
  %1016 = xor i32 %1007, %976
  %1017 = xor i32 %1016, %1008
  %1018 = lshr i32 %1017, 4
  %1019 = trunc i32 %1018 to i8
  %1020 = and i8 %1019, 1
  store i8 %1020, i8* %53, align 1
  %1021 = icmp eq i32 %1008, 0
  %1022 = zext i1 %1021 to i8
  store i8 %1022, i8* %56, align 1
  %1023 = lshr i32 %1008, 31
  %1024 = trunc i32 %1023 to i8
  store i8 %1024, i8* %59, align 1
  %1025 = lshr i32 %1007, 31
  %1026 = xor i32 %1025, %996
  %1027 = xor i32 %1023, %996
  %1028 = add nuw nsw i32 %1027, %1026
  %1029 = icmp eq i32 %1028, 2
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %65, align 1
  %1031 = icmp ne i8 %1024, 0
  %1032 = xor i1 %1031, %1029
  %.demorgan223 = or i1 %1021, %1032
  %.v305 = select i1 %.demorgan223, i64 20, i64 136
  %1033 = add i64 %1006, %.v305
  store i64 %1033, i64* %3, align 8
  %1034 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan223, label %block_4602c5, label %block_.L_460339

block_4602c5:                                     ; preds = %block_4602b1
  %1035 = add i64 %1034, -1192
  %1036 = add i64 %1033, 6
  store i64 %1036, i64* %3, align 8
  %1037 = inttoptr i64 %1035 to i32*
  %1038 = load i32, i32* %1037, align 4
  %1039 = add i32 %1038, 20
  %1040 = zext i32 %1039 to i64
  store i64 %1040, i64* %RAX.i2177, align 8
  %1041 = icmp ugt i32 %1038, -21
  %1042 = zext i1 %1041 to i8
  store i8 %1042, i8* %40, align 1
  %1043 = and i32 %1039, 255
  %1044 = tail call i32 @llvm.ctpop.i32(i32 %1043)
  %1045 = trunc i32 %1044 to i8
  %1046 = and i8 %1045, 1
  %1047 = xor i8 %1046, 1
  store i8 %1047, i8* %47, align 1
  %1048 = xor i32 %1038, 16
  %1049 = xor i32 %1048, %1039
  %1050 = lshr i32 %1049, 4
  %1051 = trunc i32 %1050 to i8
  %1052 = and i8 %1051, 1
  store i8 %1052, i8* %53, align 1
  %1053 = icmp eq i32 %1039, 0
  %1054 = zext i1 %1053 to i8
  store i8 %1054, i8* %56, align 1
  %1055 = lshr i32 %1039, 31
  %1056 = trunc i32 %1055 to i8
  store i8 %1056, i8* %59, align 1
  %1057 = lshr i32 %1038, 31
  %1058 = xor i32 %1055, %1057
  %1059 = add nuw nsw i32 %1058, %1055
  %1060 = icmp eq i32 %1059, 2
  %1061 = zext i1 %1060 to i8
  store i8 %1061, i8* %65, align 1
  %1062 = sext i32 %1039 to i64
  store i64 %1062, i64* %RCX.i2157, align 8
  %1063 = add nsw i64 %1062, 12099168
  %1064 = add i64 %1033, 20
  store i64 %1064, i64* %3, align 8
  %1065 = inttoptr i64 %1063 to i8*
  %1066 = load i8, i8* %1065, align 1
  %1067 = zext i8 %1066 to i64
  store i64 %1067, i64* %RAX.i2177, align 8
  %1068 = zext i8 %1066 to i32
  %1069 = add i64 %1034, -72
  %1070 = add i64 %1033, 23
  store i64 %1070, i64* %3, align 8
  %1071 = inttoptr i64 %1069 to i32*
  %1072 = load i32, i32* %1071, align 4
  %1073 = sub i32 %1068, %1072
  %1074 = icmp ult i32 %1068, %1072
  %1075 = zext i1 %1074 to i8
  store i8 %1075, i8* %40, align 1
  %1076 = and i32 %1073, 255
  %1077 = tail call i32 @llvm.ctpop.i32(i32 %1076)
  %1078 = trunc i32 %1077 to i8
  %1079 = and i8 %1078, 1
  %1080 = xor i8 %1079, 1
  store i8 %1080, i8* %47, align 1
  %1081 = xor i32 %1072, %1068
  %1082 = xor i32 %1081, %1073
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  store i8 %1085, i8* %53, align 1
  %1086 = icmp eq i32 %1073, 0
  %1087 = zext i1 %1086 to i8
  store i8 %1087, i8* %56, align 1
  %1088 = lshr i32 %1073, 31
  %1089 = trunc i32 %1088 to i8
  store i8 %1089, i8* %59, align 1
  %1090 = lshr i32 %1072, 31
  %1091 = add nuw nsw i32 %1088, %1090
  %1092 = icmp eq i32 %1091, 2
  %1093 = zext i1 %1092 to i8
  store i8 %1093, i8* %65, align 1
  %.v312 = select i1 %1086, i64 116, i64 29
  %1094 = add i64 %1033, %.v312
  store i64 %1094, i64* %3, align 8
  br i1 %1086, label %block_.L_460339, label %block_4602e2

block_4602e2:                                     ; preds = %block_4602c5
  %1095 = add i64 %1094, 6
  store i64 %1095, i64* %3, align 8
  %1096 = load i32, i32* %1037, align 4
  %1097 = add i32 %1096, -1
  %1098 = zext i32 %1097 to i64
  store i64 %1098, i64* %RAX.i2177, align 8
  %1099 = icmp eq i32 %1096, 0
  %1100 = zext i1 %1099 to i8
  store i8 %1100, i8* %40, align 1
  %1101 = and i32 %1097, 255
  %1102 = tail call i32 @llvm.ctpop.i32(i32 %1101)
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  %1105 = xor i8 %1104, 1
  store i8 %1105, i8* %47, align 1
  %1106 = xor i32 %1097, %1096
  %1107 = lshr i32 %1106, 4
  %1108 = trunc i32 %1107 to i8
  %1109 = and i8 %1108, 1
  store i8 %1109, i8* %53, align 1
  %1110 = icmp eq i32 %1097, 0
  %1111 = zext i1 %1110 to i8
  store i8 %1111, i8* %56, align 1
  %1112 = lshr i32 %1097, 31
  %1113 = trunc i32 %1112 to i8
  store i8 %1113, i8* %59, align 1
  %1114 = lshr i32 %1096, 31
  %1115 = xor i32 %1112, %1114
  %1116 = add nuw nsw i32 %1115, %1114
  %1117 = icmp eq i32 %1116, 2
  %1118 = zext i1 %1117 to i8
  store i8 %1118, i8* %65, align 1
  %1119 = sext i32 %1097 to i64
  store i64 %1119, i64* %RCX.i2157, align 8
  %1120 = add nsw i64 %1119, 12099168
  %1121 = add i64 %1094, 20
  store i64 %1121, i64* %3, align 8
  %1122 = inttoptr i64 %1120 to i8*
  %1123 = load i8, i8* %1122, align 1
  %1124 = zext i8 %1123 to i64
  store i64 %1124, i64* %RAX.i2177, align 8
  %1125 = zext i8 %1123 to i32
  %1126 = add i64 %1094, 23
  store i64 %1126, i64* %3, align 8
  %1127 = load i32, i32* %1071, align 4
  %1128 = sub i32 %1125, %1127
  %1129 = icmp ult i32 %1125, %1127
  %1130 = zext i1 %1129 to i8
  store i8 %1130, i8* %40, align 1
  %1131 = and i32 %1128, 255
  %1132 = tail call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  store i8 %1135, i8* %47, align 1
  %1136 = xor i32 %1127, %1125
  %1137 = xor i32 %1136, %1128
  %1138 = lshr i32 %1137, 4
  %1139 = trunc i32 %1138 to i8
  %1140 = and i8 %1139, 1
  store i8 %1140, i8* %53, align 1
  %1141 = icmp eq i32 %1128, 0
  %1142 = zext i1 %1141 to i8
  store i8 %1142, i8* %56, align 1
  %1143 = lshr i32 %1128, 31
  %1144 = trunc i32 %1143 to i8
  store i8 %1144, i8* %59, align 1
  %1145 = lshr i32 %1127, 31
  %1146 = add nuw nsw i32 %1143, %1145
  %1147 = icmp eq i32 %1146, 2
  %1148 = zext i1 %1147 to i8
  store i8 %1148, i8* %65, align 1
  %.v313 = select i1 %1141, i64 87, i64 29
  %1149 = add i64 %1094, %.v313
  store i64 %1149, i64* %3, align 8
  br i1 %1141, label %block_.L_460339, label %block_4602ff

block_4602ff:                                     ; preds = %block_4602e2
  %1150 = add i64 %1149, 6
  store i64 %1150, i64* %3, align 8
  %1151 = load i32, i32* %1037, align 4
  %1152 = add i32 %1151, -20
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RAX.i2177, align 8
  %1154 = icmp ult i32 %1151, 20
  %1155 = zext i1 %1154 to i8
  store i8 %1155, i8* %40, align 1
  %1156 = and i32 %1152, 255
  %1157 = tail call i32 @llvm.ctpop.i32(i32 %1156)
  %1158 = trunc i32 %1157 to i8
  %1159 = and i8 %1158, 1
  %1160 = xor i8 %1159, 1
  store i8 %1160, i8* %47, align 1
  %1161 = xor i32 %1151, 16
  %1162 = xor i32 %1161, %1152
  %1163 = lshr i32 %1162, 4
  %1164 = trunc i32 %1163 to i8
  %1165 = and i8 %1164, 1
  store i8 %1165, i8* %53, align 1
  %1166 = icmp eq i32 %1152, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %56, align 1
  %1168 = lshr i32 %1152, 31
  %1169 = trunc i32 %1168 to i8
  store i8 %1169, i8* %59, align 1
  %1170 = lshr i32 %1151, 31
  %1171 = xor i32 %1168, %1170
  %1172 = add nuw nsw i32 %1171, %1170
  %1173 = icmp eq i32 %1172, 2
  %1174 = zext i1 %1173 to i8
  store i8 %1174, i8* %65, align 1
  %1175 = sext i32 %1152 to i64
  store i64 %1175, i64* %RCX.i2157, align 8
  %1176 = add nsw i64 %1175, 12099168
  %1177 = add i64 %1149, 20
  store i64 %1177, i64* %3, align 8
  %1178 = inttoptr i64 %1176 to i8*
  %1179 = load i8, i8* %1178, align 1
  %1180 = zext i8 %1179 to i64
  store i64 %1180, i64* %RAX.i2177, align 8
  %1181 = zext i8 %1179 to i32
  %1182 = add i64 %1149, 23
  store i64 %1182, i64* %3, align 8
  %1183 = load i32, i32* %1071, align 4
  %1184 = sub i32 %1181, %1183
  %1185 = icmp ult i32 %1181, %1183
  %1186 = zext i1 %1185 to i8
  store i8 %1186, i8* %40, align 1
  %1187 = and i32 %1184, 255
  %1188 = tail call i32 @llvm.ctpop.i32(i32 %1187)
  %1189 = trunc i32 %1188 to i8
  %1190 = and i8 %1189, 1
  %1191 = xor i8 %1190, 1
  store i8 %1191, i8* %47, align 1
  %1192 = xor i32 %1183, %1181
  %1193 = xor i32 %1192, %1184
  %1194 = lshr i32 %1193, 4
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  store i8 %1196, i8* %53, align 1
  %1197 = icmp eq i32 %1184, 0
  %1198 = zext i1 %1197 to i8
  store i8 %1198, i8* %56, align 1
  %1199 = lshr i32 %1184, 31
  %1200 = trunc i32 %1199 to i8
  store i8 %1200, i8* %59, align 1
  %1201 = lshr i32 %1183, 31
  %1202 = add nuw nsw i32 %1199, %1201
  %1203 = icmp eq i32 %1202, 2
  %1204 = zext i1 %1203 to i8
  store i8 %1204, i8* %65, align 1
  %.v314 = select i1 %1197, i64 58, i64 29
  %1205 = add i64 %1149, %.v314
  store i64 %1205, i64* %3, align 8
  br i1 %1197, label %block_.L_460339, label %block_46031c

block_46031c:                                     ; preds = %block_4602ff
  %1206 = add i64 %1205, 6
  store i64 %1206, i64* %3, align 8
  %1207 = load i32, i32* %1037, align 4
  %1208 = add i32 %1207, 1
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RAX.i2177, align 8
  %1210 = icmp eq i32 %1207, -1
  %1211 = icmp eq i32 %1208, 0
  %1212 = or i1 %1210, %1211
  %1213 = zext i1 %1212 to i8
  store i8 %1213, i8* %40, align 1
  %1214 = and i32 %1208, 255
  %1215 = tail call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  store i8 %1218, i8* %47, align 1
  %1219 = xor i32 %1208, %1207
  %1220 = lshr i32 %1219, 4
  %1221 = trunc i32 %1220 to i8
  %1222 = and i8 %1221, 1
  store i8 %1222, i8* %53, align 1
  %1223 = zext i1 %1211 to i8
  store i8 %1223, i8* %56, align 1
  %1224 = lshr i32 %1208, 31
  %1225 = trunc i32 %1224 to i8
  store i8 %1225, i8* %59, align 1
  %1226 = lshr i32 %1207, 31
  %1227 = xor i32 %1224, %1226
  %1228 = add nuw nsw i32 %1227, %1224
  %1229 = icmp eq i32 %1228, 2
  %1230 = zext i1 %1229 to i8
  store i8 %1230, i8* %65, align 1
  %1231 = sext i32 %1208 to i64
  store i64 %1231, i64* %RCX.i2157, align 8
  %1232 = add nsw i64 %1231, 12099168
  %1233 = add i64 %1205, 20
  store i64 %1233, i64* %3, align 8
  %1234 = inttoptr i64 %1232 to i8*
  %1235 = load i8, i8* %1234, align 1
  %1236 = zext i8 %1235 to i64
  store i64 %1236, i64* %RAX.i2177, align 8
  %1237 = zext i8 %1235 to i32
  %1238 = add i64 %1205, 23
  store i64 %1238, i64* %3, align 8
  %1239 = load i32, i32* %1071, align 4
  %1240 = sub i32 %1237, %1239
  %1241 = icmp ult i32 %1237, %1239
  %1242 = zext i1 %1241 to i8
  store i8 %1242, i8* %40, align 1
  %1243 = and i32 %1240, 255
  %1244 = tail call i32 @llvm.ctpop.i32(i32 %1243)
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  %1247 = xor i8 %1246, 1
  store i8 %1247, i8* %47, align 1
  %1248 = xor i32 %1239, %1237
  %1249 = xor i32 %1248, %1240
  %1250 = lshr i32 %1249, 4
  %1251 = trunc i32 %1250 to i8
  %1252 = and i8 %1251, 1
  store i8 %1252, i8* %53, align 1
  %1253 = icmp eq i32 %1240, 0
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %56, align 1
  %1255 = lshr i32 %1240, 31
  %1256 = trunc i32 %1255 to i8
  store i8 %1256, i8* %59, align 1
  %1257 = lshr i32 %1239, 31
  %1258 = add nuw nsw i32 %1255, %1257
  %1259 = icmp eq i32 %1258, 2
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %65, align 1
  %.v315 = select i1 %1253, i64 29, i64 52
  %1261 = add i64 %1205, %.v315
  store i64 %1261, i64* %3, align 8
  br i1 %1253, label %block_.L_460339, label %block_.L_460350

block_.L_460339:                                  ; preds = %block_4602b1, %block_46031c, %block_4602ff, %block_4602e2, %block_4602c5
  %1262 = phi i64 [ %1261, %block_46031c ], [ %1205, %block_4602ff ], [ %1149, %block_4602e2 ], [ %1094, %block_4602c5 ], [ %1033, %block_4602b1 ]
  %1263 = add i64 %1034, -1192
  %1264 = add i64 %1262, 6
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %RDI.i2050, align 8
  %1268 = add i64 %1034, -72
  %1269 = add i64 %1262, 9
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RSI.i2169, align 8
  %1273 = add i64 %1262, -311449
  %1274 = add i64 %1262, 14
  %1275 = load i64, i64* %6, align 8
  %1276 = add i64 %1275, -8
  %1277 = inttoptr i64 %1276 to i64*
  store i64 %1274, i64* %1277, align 8
  store i64 %1276, i64* %6, align 8
  store i64 %1273, i64* %3, align 8
  %call2_460342 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %1273, %struct.Memory* %MEMORY.8)
  %1278 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %1279 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1280 = and i32 %1278, 255
  %1281 = tail call i32 @llvm.ctpop.i32(i32 %1280)
  %1282 = trunc i32 %1281 to i8
  %1283 = and i8 %1282, 1
  %1284 = xor i8 %1283, 1
  store i8 %1284, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1285 = icmp eq i32 %1278, 0
  %1286 = zext i1 %1285 to i8
  store i8 %1286, i8* %56, align 1
  %1287 = lshr i32 %1278, 31
  %1288 = trunc i32 %1287 to i8
  store i8 %1288, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v306 = select i1 %1285, i64 9, i64 216
  %1289 = add i64 %1279, %.v306
  store i64 %1289, i64* %3, align 8
  br i1 %1285, label %block_.L_460350, label %block_.L_46041f

block_.L_460350:                                  ; preds = %block_.L_460339, %block_46031c, %block_460289
  %1290 = phi i64 [ %1289, %block_.L_460339 ], [ %1261, %block_46031c ], [ %1006, %block_460289 ]
  %1291 = load i64, i64* %RBP.i, align 8
  %1292 = add i64 %1291, -1196
  %1293 = add i64 %1290, 15
  store i64 %1293, i64* %3, align 8
  %1294 = inttoptr i64 %1292 to i32*
  store i32 0, i32* %1294, align 4
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_46035f

block_.L_46035f:                                  ; preds = %block_.L_4603a8, %block_.L_460350
  %1295 = phi i64 [ %1421, %block_.L_4603a8 ], [ %.pre206, %block_.L_460350 ]
  %1296 = load i64, i64* %RBP.i, align 8
  %1297 = add i64 %1296, -1196
  %1298 = add i64 %1295, 6
  store i64 %1298, i64* %3, align 8
  %1299 = inttoptr i64 %1297 to i32*
  %1300 = load i32, i32* %1299, align 4
  %1301 = zext i32 %1300 to i64
  store i64 %1301, i64* %RAX.i2177, align 8
  %1302 = add i64 %1296, -760
  %1303 = add i64 %1295, 12
  store i64 %1303, i64* %3, align 8
  %1304 = inttoptr i64 %1302 to i32*
  %1305 = load i32, i32* %1304, align 4
  %1306 = sub i32 %1300, %1305
  %1307 = icmp ult i32 %1300, %1305
  %1308 = zext i1 %1307 to i8
  store i8 %1308, i8* %40, align 1
  %1309 = and i32 %1306, 255
  %1310 = tail call i32 @llvm.ctpop.i32(i32 %1309)
  %1311 = trunc i32 %1310 to i8
  %1312 = and i8 %1311, 1
  %1313 = xor i8 %1312, 1
  store i8 %1313, i8* %47, align 1
  %1314 = xor i32 %1305, %1300
  %1315 = xor i32 %1314, %1306
  %1316 = lshr i32 %1315, 4
  %1317 = trunc i32 %1316 to i8
  %1318 = and i8 %1317, 1
  store i8 %1318, i8* %53, align 1
  %1319 = icmp eq i32 %1306, 0
  %1320 = zext i1 %1319 to i8
  store i8 %1320, i8* %56, align 1
  %1321 = lshr i32 %1306, 31
  %1322 = trunc i32 %1321 to i8
  store i8 %1322, i8* %59, align 1
  %1323 = lshr i32 %1300, 31
  %1324 = lshr i32 %1305, 31
  %1325 = xor i32 %1324, %1323
  %1326 = xor i32 %1321, %1323
  %1327 = add nuw nsw i32 %1326, %1325
  %1328 = icmp eq i32 %1327, 2
  %1329 = zext i1 %1328 to i8
  store i8 %1329, i8* %65, align 1
  %1330 = icmp ne i8 %1322, 0
  %1331 = xor i1 %1330, %1328
  %.v227 = select i1 %1331, i64 18, i64 98
  %1332 = add i64 %1295, %.v227
  store i64 %1332, i64* %3, align 8
  br i1 %1331, label %block_460371, label %block_.L_4603c1.loopexit

block_460371:                                     ; preds = %block_.L_46035f
  %1333 = add i64 %1332, 7
  store i64 %1333, i64* %3, align 8
  %1334 = load i32, i32* %1299, align 4
  %1335 = sext i32 %1334 to i64
  store i64 %1335, i64* %RAX.i2177, align 8
  %1336 = shl nsw i64 %1335, 2
  %1337 = add i64 %1296, -1160
  %1338 = add i64 %1337, %1336
  %1339 = add i64 %1332, 14
  store i64 %1339, i64* %3, align 8
  %1340 = inttoptr i64 %1338 to i32*
  %1341 = load i32, i32* %1340, align 4
  %1342 = zext i32 %1341 to i64
  store i64 %1342, i64* %RCX.i2157, align 8
  %1343 = add i64 %1296, -1192
  %1344 = add i64 %1332, 20
  store i64 %1344, i64* %3, align 8
  %1345 = inttoptr i64 %1343 to i32*
  %1346 = load i32, i32* %1345, align 4
  %1347 = sub i32 %1341, %1346
  %1348 = icmp ult i32 %1341, %1346
  %1349 = zext i1 %1348 to i8
  store i8 %1349, i8* %40, align 1
  %1350 = and i32 %1347, 255
  %1351 = tail call i32 @llvm.ctpop.i32(i32 %1350)
  %1352 = trunc i32 %1351 to i8
  %1353 = and i8 %1352, 1
  %1354 = xor i8 %1353, 1
  store i8 %1354, i8* %47, align 1
  %1355 = xor i32 %1346, %1341
  %1356 = xor i32 %1355, %1347
  %1357 = lshr i32 %1356, 4
  %1358 = trunc i32 %1357 to i8
  %1359 = and i8 %1358, 1
  store i8 %1359, i8* %53, align 1
  %1360 = icmp eq i32 %1347, 0
  %1361 = zext i1 %1360 to i8
  store i8 %1361, i8* %56, align 1
  %1362 = lshr i32 %1347, 31
  %1363 = trunc i32 %1362 to i8
  store i8 %1363, i8* %59, align 1
  %1364 = lshr i32 %1341, 31
  %1365 = lshr i32 %1346, 31
  %1366 = xor i32 %1365, %1364
  %1367 = xor i32 %1362, %1364
  %1368 = add nuw nsw i32 %1367, %1366
  %1369 = icmp eq i32 %1368, 2
  %1370 = zext i1 %1369 to i8
  store i8 %1370, i8* %65, align 1
  %.v226 = select i1 %1360, i64 26, i64 55
  %1371 = add i64 %1332, %.v226
  store i64 %1371, i64* %3, align 8
  br i1 %1360, label %block_46038b, label %block_.L_4603a8

block_46038b:                                     ; preds = %block_460371
  %1372 = add i64 %1371, 7
  store i64 %1372, i64* %3, align 8
  %1373 = load i32, i32* %1299, align 4
  %1374 = sext i32 %1373 to i64
  store i64 %1374, i64* %RAX.i2177, align 8
  %1375 = shl nsw i64 %1374, 2
  %1376 = add i64 %1296, -960
  %1377 = add i64 %1376, %1375
  %1378 = add i64 %1371, 14
  store i64 %1378, i64* %3, align 8
  %1379 = inttoptr i64 %1377 to i32*
  %1380 = load i32, i32* %1379, align 4
  %1381 = zext i32 %1380 to i64
  store i64 %1381, i64* %RCX.i2157, align 8
  store i8 0, i8* %40, align 1
  %1382 = and i32 %1380, 255
  %1383 = tail call i32 @llvm.ctpop.i32(i32 %1382)
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = xor i8 %1385, 1
  store i8 %1386, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1387 = icmp eq i32 %1380, 0
  %1388 = zext i1 %1387 to i8
  store i8 %1388, i8* %56, align 1
  %1389 = lshr i32 %1380, 31
  %1390 = trunc i32 %1389 to i8
  store i8 %1390, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %1391 = add i64 %1371, 24
  store i64 %1391, i64* %3, align 8
  store i32 %1380, i32* %1379, align 4
  %1392 = load i64, i64* %3, align 8
  %1393 = add i64 %1392, 30
  store i64 %1393, i64* %3, align 8
  %.pre207 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4603c1

block_.L_4603a8:                                  ; preds = %block_460371
  %1394 = add i64 %1371, 11
  store i64 %1394, i64* %3, align 8
  %1395 = load i32, i32* %1299, align 4
  %1396 = add i32 %1395, 1
  %1397 = zext i32 %1396 to i64
  store i64 %1397, i64* %RAX.i2177, align 8
  %1398 = icmp eq i32 %1395, -1
  %1399 = icmp eq i32 %1396, 0
  %1400 = or i1 %1398, %1399
  %1401 = zext i1 %1400 to i8
  store i8 %1401, i8* %40, align 1
  %1402 = and i32 %1396, 255
  %1403 = tail call i32 @llvm.ctpop.i32(i32 %1402)
  %1404 = trunc i32 %1403 to i8
  %1405 = and i8 %1404, 1
  %1406 = xor i8 %1405, 1
  store i8 %1406, i8* %47, align 1
  %1407 = xor i32 %1396, %1395
  %1408 = lshr i32 %1407, 4
  %1409 = trunc i32 %1408 to i8
  %1410 = and i8 %1409, 1
  store i8 %1410, i8* %53, align 1
  %1411 = zext i1 %1399 to i8
  store i8 %1411, i8* %56, align 1
  %1412 = lshr i32 %1396, 31
  %1413 = trunc i32 %1412 to i8
  store i8 %1413, i8* %59, align 1
  %1414 = lshr i32 %1395, 31
  %1415 = xor i32 %1412, %1414
  %1416 = add nuw nsw i32 %1415, %1412
  %1417 = icmp eq i32 %1416, 2
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %65, align 1
  %1419 = add i64 %1371, 20
  store i64 %1419, i64* %3, align 8
  store i32 %1396, i32* %1299, align 4
  %1420 = load i64, i64* %3, align 8
  %1421 = add i64 %1420, -93
  store i64 %1421, i64* %3, align 8
  br label %block_.L_46035f

block_.L_4603c1.loopexit:                         ; preds = %block_.L_46035f
  br label %block_.L_4603c1

block_.L_4603c1:                                  ; preds = %block_.L_4603c1.loopexit, %block_46038b
  %1422 = phi i64 [ %1393, %block_46038b ], [ %1332, %block_.L_4603c1.loopexit ]
  %1423 = phi i64 [ %.pre207, %block_46038b ], [ %1296, %block_.L_4603c1.loopexit ]
  %1424 = add i64 %1423, -1196
  %1425 = add i64 %1422, 6
  store i64 %1425, i64* %3, align 8
  %1426 = inttoptr i64 %1424 to i32*
  %1427 = load i32, i32* %1426, align 4
  %1428 = zext i32 %1427 to i64
  store i64 %1428, i64* %RAX.i2177, align 8
  %1429 = add i64 %1423, -760
  %1430 = add i64 %1422, 12
  store i64 %1430, i64* %3, align 8
  %1431 = inttoptr i64 %1429 to i32*
  %1432 = load i32, i32* %1431, align 4
  %1433 = sub i32 %1427, %1432
  %1434 = icmp ult i32 %1427, %1432
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %40, align 1
  %1436 = and i32 %1433, 255
  %1437 = tail call i32 @llvm.ctpop.i32(i32 %1436)
  %1438 = trunc i32 %1437 to i8
  %1439 = and i8 %1438, 1
  %1440 = xor i8 %1439, 1
  store i8 %1440, i8* %47, align 1
  %1441 = xor i32 %1432, %1427
  %1442 = xor i32 %1441, %1433
  %1443 = lshr i32 %1442, 4
  %1444 = trunc i32 %1443 to i8
  %1445 = and i8 %1444, 1
  store i8 %1445, i8* %53, align 1
  %1446 = icmp eq i32 %1433, 0
  %1447 = zext i1 %1446 to i8
  store i8 %1447, i8* %56, align 1
  %1448 = lshr i32 %1433, 31
  %1449 = trunc i32 %1448 to i8
  store i8 %1449, i8* %59, align 1
  %1450 = lshr i32 %1427, 31
  %1451 = lshr i32 %1432, 31
  %1452 = xor i32 %1451, %1450
  %1453 = xor i32 %1448, %1450
  %1454 = add nuw nsw i32 %1453, %1452
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  store i8 %1456, i8* %65, align 1
  %.v310 = select i1 %1446, i64 18, i64 84
  %1457 = add i64 %1422, %.v310
  store i64 %1457, i64* %3, align 8
  br i1 %1446, label %block_4603d3, label %block_.L_460415

block_4603d3:                                     ; preds = %block_.L_4603c1
  %1458 = add i64 %1457, 7
  store i64 %1458, i64* %3, align 8
  %1459 = load i32, i32* %1431, align 4
  %1460 = add i32 %1459, -50
  %1461 = icmp ult i32 %1459, 50
  %1462 = zext i1 %1461 to i8
  store i8 %1462, i8* %40, align 1
  %1463 = and i32 %1460, 255
  %1464 = tail call i32 @llvm.ctpop.i32(i32 %1463)
  %1465 = trunc i32 %1464 to i8
  %1466 = and i8 %1465, 1
  %1467 = xor i8 %1466, 1
  store i8 %1467, i8* %47, align 1
  %1468 = xor i32 %1459, 16
  %1469 = xor i32 %1468, %1460
  %1470 = lshr i32 %1469, 4
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  store i8 %1472, i8* %53, align 1
  %1473 = icmp eq i32 %1460, 0
  %1474 = zext i1 %1473 to i8
  store i8 %1474, i8* %56, align 1
  %1475 = lshr i32 %1460, 31
  %1476 = trunc i32 %1475 to i8
  store i8 %1476, i8* %59, align 1
  %1477 = lshr i32 %1459, 31
  %1478 = xor i32 %1475, %1477
  %1479 = add nuw nsw i32 %1478, %1477
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %65, align 1
  %1482 = icmp ne i8 %1476, 0
  %1483 = xor i1 %1482, %1480
  %.v311 = select i1 %1483, i64 13, i64 66
  %1484 = add i64 %1457, %.v311
  store i64 %1484, i64* %3, align 8
  br i1 %1483, label %block_4603e0, label %block_.L_460415

block_4603e0:                                     ; preds = %block_4603d3
  %1485 = add i64 %1423, -1192
  %1486 = add i64 %1484, 6
  store i64 %1486, i64* %3, align 8
  %1487 = inttoptr i64 %1485 to i32*
  %1488 = load i32, i32* %1487, align 4
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RAX.i2177, align 8
  %1490 = add i64 %1484, 13
  store i64 %1490, i64* %3, align 8
  %1491 = load i32, i32* %1431, align 4
  %1492 = sext i32 %1491 to i64
  store i64 %1492, i64* %RCX.i2157, align 8
  %1493 = shl nsw i64 %1492, 2
  %1494 = add i64 %1423, -1160
  %1495 = add i64 %1494, %1493
  %1496 = add i64 %1484, 20
  store i64 %1496, i64* %3, align 8
  %1497 = inttoptr i64 %1495 to i32*
  store i32 %1488, i32* %1497, align 4
  %1498 = load i64, i64* %RBP.i, align 8
  %1499 = add i64 %1498, -760
  %1500 = load i64, i64* %3, align 8
  %1501 = add i64 %1500, 7
  store i64 %1501, i64* %3, align 8
  %1502 = inttoptr i64 %1499 to i32*
  %1503 = load i32, i32* %1502, align 4
  %1504 = sext i32 %1503 to i64
  store i64 %1504, i64* %RCX.i2157, align 8
  %1505 = shl nsw i64 %1504, 2
  %1506 = add i64 %1498, -960
  %1507 = add i64 %1506, %1505
  %1508 = add i64 %1500, 18
  store i64 %1508, i64* %3, align 8
  %1509 = inttoptr i64 %1507 to i32*
  store i32 0, i32* %1509, align 4
  %1510 = load i64, i64* %RBP.i, align 8
  %1511 = add i64 %1510, -760
  %1512 = load i64, i64* %3, align 8
  %1513 = add i64 %1512, 6
  store i64 %1513, i64* %3, align 8
  %1514 = inttoptr i64 %1511 to i32*
  %1515 = load i32, i32* %1514, align 4
  %1516 = add i32 %1515, 1
  %1517 = zext i32 %1516 to i64
  store i64 %1517, i64* %RAX.i2177, align 8
  %1518 = icmp eq i32 %1515, -1
  %1519 = icmp eq i32 %1516, 0
  %1520 = or i1 %1518, %1519
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %40, align 1
  %1522 = and i32 %1516, 255
  %1523 = tail call i32 @llvm.ctpop.i32(i32 %1522)
  %1524 = trunc i32 %1523 to i8
  %1525 = and i8 %1524, 1
  %1526 = xor i8 %1525, 1
  store i8 %1526, i8* %47, align 1
  %1527 = xor i32 %1516, %1515
  %1528 = lshr i32 %1527, 4
  %1529 = trunc i32 %1528 to i8
  %1530 = and i8 %1529, 1
  store i8 %1530, i8* %53, align 1
  %1531 = zext i1 %1519 to i8
  store i8 %1531, i8* %56, align 1
  %1532 = lshr i32 %1516, 31
  %1533 = trunc i32 %1532 to i8
  store i8 %1533, i8* %59, align 1
  %1534 = lshr i32 %1515, 31
  %1535 = xor i32 %1532, %1534
  %1536 = add nuw nsw i32 %1535, %1532
  %1537 = icmp eq i32 %1536, 2
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %65, align 1
  %1539 = add i64 %1512, 15
  store i64 %1539, i64* %3, align 8
  store i32 %1516, i32* %1514, align 4
  %.pre208 = load i64, i64* %3, align 8
  br label %block_.L_460415

block_.L_460415:                                  ; preds = %block_.L_4603c1, %block_4603d3, %block_4603e0
  %1540 = phi i64 [ %1484, %block_4603d3 ], [ %.pre208, %block_4603e0 ], [ %1457, %block_.L_4603c1 ]
  %1541 = add i64 %1540, 10
  store i64 %1541, i64* %3, align 8
  br label %block_.L_46041f

block_.L_46041f:                                  ; preds = %block_.L_460339, %block_.L_460415
  %1542 = phi i64 [ %1541, %block_.L_460415 ], [ %1289, %block_.L_460339 ]
  %1543 = load i64, i64* %RBP.i, align 8
  %1544 = add i64 %1543, -724
  store i64 %1544, i64* %RDX.i2056, align 8
  %1545 = add i64 %1543, -48
  %1546 = add i64 %1542, 10
  store i64 %1546, i64* %3, align 8
  %1547 = inttoptr i64 %1545 to i32*
  %1548 = load i32, i32* %1547, align 4
  %1549 = zext i32 %1548 to i64
  store i64 %1549, i64* %RDI.i2050, align 8
  %1550 = add i64 %1543, -1192
  %1551 = add i64 %1542, 16
  store i64 %1551, i64* %3, align 8
  %1552 = inttoptr i64 %1550 to i32*
  %1553 = load i32, i32* %1552, align 4
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RSI.i2169, align 8
  %1555 = add i64 %1542, 7441
  %1556 = add i64 %1542, 21
  %1557 = load i64, i64* %6, align 8
  %1558 = add i64 %1557, -8
  %1559 = inttoptr i64 %1558 to i64*
  store i64 %1556, i64* %1559, align 8
  store i64 %1558, i64* %6, align 8
  store i64 %1555, i64* %3, align 8
  %call2_46042f = tail call %struct.Memory* @sub_462130.edge_closing_backfill(%struct.State* nonnull %0, i64 %1555, %struct.Memory* %MEMORY.8)
  %1560 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %1561 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1562 = and i32 %1560, 255
  %1563 = tail call i32 @llvm.ctpop.i32(i32 %1562)
  %1564 = trunc i32 %1563 to i8
  %1565 = and i8 %1564, 1
  %1566 = xor i8 %1565, 1
  store i8 %1566, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1567 = icmp eq i32 %1560, 0
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %56, align 1
  %1569 = lshr i32 %1560, 31
  %1570 = trunc i32 %1569 to i8
  store i8 %1570, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v307 = select i1 %1567, i64 216, i64 9
  %1571 = add i64 %1561, %.v307
  store i64 %1571, i64* %3, align 8
  br i1 %1567, label %block_.L_46050c, label %block_46043d

block_46043d:                                     ; preds = %block_.L_46041f
  %1572 = load i64, i64* %RBP.i, align 8
  %1573 = add i64 %1572, -1200
  %1574 = add i64 %1571, 15
  store i64 %1574, i64* %3, align 8
  %1575 = inttoptr i64 %1573 to i32*
  store i32 0, i32* %1575, align 4
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_46044c

block_.L_46044c:                                  ; preds = %block_.L_460495, %block_46043d
  %1576 = phi i64 [ %1702, %block_.L_460495 ], [ %.pre209, %block_46043d ]
  %1577 = load i64, i64* %RBP.i, align 8
  %1578 = add i64 %1577, -1200
  %1579 = add i64 %1576, 6
  store i64 %1579, i64* %3, align 8
  %1580 = inttoptr i64 %1578 to i32*
  %1581 = load i32, i32* %1580, align 4
  %1582 = zext i32 %1581 to i64
  store i64 %1582, i64* %RAX.i2177, align 8
  %1583 = add i64 %1577, -760
  %1584 = add i64 %1576, 12
  store i64 %1584, i64* %3, align 8
  %1585 = inttoptr i64 %1583 to i32*
  %1586 = load i32, i32* %1585, align 4
  %1587 = sub i32 %1581, %1586
  %1588 = icmp ult i32 %1581, %1586
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %40, align 1
  %1590 = and i32 %1587, 255
  %1591 = tail call i32 @llvm.ctpop.i32(i32 %1590)
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = xor i8 %1593, 1
  store i8 %1594, i8* %47, align 1
  %1595 = xor i32 %1586, %1581
  %1596 = xor i32 %1595, %1587
  %1597 = lshr i32 %1596, 4
  %1598 = trunc i32 %1597 to i8
  %1599 = and i8 %1598, 1
  store i8 %1599, i8* %53, align 1
  %1600 = icmp eq i32 %1587, 0
  %1601 = zext i1 %1600 to i8
  store i8 %1601, i8* %56, align 1
  %1602 = lshr i32 %1587, 31
  %1603 = trunc i32 %1602 to i8
  store i8 %1603, i8* %59, align 1
  %1604 = lshr i32 %1581, 31
  %1605 = lshr i32 %1586, 31
  %1606 = xor i32 %1605, %1604
  %1607 = xor i32 %1602, %1604
  %1608 = add nuw nsw i32 %1607, %1606
  %1609 = icmp eq i32 %1608, 2
  %1610 = zext i1 %1609 to i8
  store i8 %1610, i8* %65, align 1
  %1611 = icmp ne i8 %1603, 0
  %1612 = xor i1 %1611, %1609
  %.v225 = select i1 %1612, i64 18, i64 98
  %1613 = add i64 %1576, %.v225
  store i64 %1613, i64* %3, align 8
  br i1 %1612, label %block_46045e, label %block_.L_4604ae.loopexit

block_46045e:                                     ; preds = %block_.L_46044c
  %1614 = add i64 %1613, 7
  store i64 %1614, i64* %3, align 8
  %1615 = load i32, i32* %1580, align 4
  %1616 = sext i32 %1615 to i64
  store i64 %1616, i64* %RAX.i2177, align 8
  %1617 = shl nsw i64 %1616, 2
  %1618 = add i64 %1577, -1160
  %1619 = add i64 %1618, %1617
  %1620 = add i64 %1613, 14
  store i64 %1620, i64* %3, align 8
  %1621 = inttoptr i64 %1619 to i32*
  %1622 = load i32, i32* %1621, align 4
  %1623 = zext i32 %1622 to i64
  store i64 %1623, i64* %RCX.i2157, align 8
  %1624 = add i64 %1577, -724
  %1625 = add i64 %1613, 20
  store i64 %1625, i64* %3, align 8
  %1626 = inttoptr i64 %1624 to i32*
  %1627 = load i32, i32* %1626, align 4
  %1628 = sub i32 %1622, %1627
  %1629 = icmp ult i32 %1622, %1627
  %1630 = zext i1 %1629 to i8
  store i8 %1630, i8* %40, align 1
  %1631 = and i32 %1628, 255
  %1632 = tail call i32 @llvm.ctpop.i32(i32 %1631)
  %1633 = trunc i32 %1632 to i8
  %1634 = and i8 %1633, 1
  %1635 = xor i8 %1634, 1
  store i8 %1635, i8* %47, align 1
  %1636 = xor i32 %1627, %1622
  %1637 = xor i32 %1636, %1628
  %1638 = lshr i32 %1637, 4
  %1639 = trunc i32 %1638 to i8
  %1640 = and i8 %1639, 1
  store i8 %1640, i8* %53, align 1
  %1641 = icmp eq i32 %1628, 0
  %1642 = zext i1 %1641 to i8
  store i8 %1642, i8* %56, align 1
  %1643 = lshr i32 %1628, 31
  %1644 = trunc i32 %1643 to i8
  store i8 %1644, i8* %59, align 1
  %1645 = lshr i32 %1622, 31
  %1646 = lshr i32 %1627, 31
  %1647 = xor i32 %1646, %1645
  %1648 = xor i32 %1643, %1645
  %1649 = add nuw nsw i32 %1648, %1647
  %1650 = icmp eq i32 %1649, 2
  %1651 = zext i1 %1650 to i8
  store i8 %1651, i8* %65, align 1
  %.v224 = select i1 %1641, i64 26, i64 55
  %1652 = add i64 %1613, %.v224
  store i64 %1652, i64* %3, align 8
  br i1 %1641, label %block_460478, label %block_.L_460495

block_460478:                                     ; preds = %block_46045e
  %1653 = add i64 %1652, 7
  store i64 %1653, i64* %3, align 8
  %1654 = load i32, i32* %1580, align 4
  %1655 = sext i32 %1654 to i64
  store i64 %1655, i64* %RAX.i2177, align 8
  %1656 = shl nsw i64 %1655, 2
  %1657 = add i64 %1577, -960
  %1658 = add i64 %1657, %1656
  %1659 = add i64 %1652, 14
  store i64 %1659, i64* %3, align 8
  %1660 = inttoptr i64 %1658 to i32*
  %1661 = load i32, i32* %1660, align 4
  %1662 = zext i32 %1661 to i64
  store i64 %1662, i64* %RCX.i2157, align 8
  store i8 0, i8* %40, align 1
  %1663 = and i32 %1661, 255
  %1664 = tail call i32 @llvm.ctpop.i32(i32 %1663)
  %1665 = trunc i32 %1664 to i8
  %1666 = and i8 %1665, 1
  %1667 = xor i8 %1666, 1
  store i8 %1667, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1668 = icmp eq i32 %1661, 0
  %1669 = zext i1 %1668 to i8
  store i8 %1669, i8* %56, align 1
  %1670 = lshr i32 %1661, 31
  %1671 = trunc i32 %1670 to i8
  store i8 %1671, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %1672 = add i64 %1652, 24
  store i64 %1672, i64* %3, align 8
  store i32 %1661, i32* %1660, align 4
  %1673 = load i64, i64* %3, align 8
  %1674 = add i64 %1673, 30
  store i64 %1674, i64* %3, align 8
  %.pre210 = load i64, i64* %RBP.i, align 8
  br label %block_.L_4604ae

block_.L_460495:                                  ; preds = %block_46045e
  %1675 = add i64 %1652, 11
  store i64 %1675, i64* %3, align 8
  %1676 = load i32, i32* %1580, align 4
  %1677 = add i32 %1676, 1
  %1678 = zext i32 %1677 to i64
  store i64 %1678, i64* %RAX.i2177, align 8
  %1679 = icmp eq i32 %1676, -1
  %1680 = icmp eq i32 %1677, 0
  %1681 = or i1 %1679, %1680
  %1682 = zext i1 %1681 to i8
  store i8 %1682, i8* %40, align 1
  %1683 = and i32 %1677, 255
  %1684 = tail call i32 @llvm.ctpop.i32(i32 %1683)
  %1685 = trunc i32 %1684 to i8
  %1686 = and i8 %1685, 1
  %1687 = xor i8 %1686, 1
  store i8 %1687, i8* %47, align 1
  %1688 = xor i32 %1677, %1676
  %1689 = lshr i32 %1688, 4
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  store i8 %1691, i8* %53, align 1
  %1692 = zext i1 %1680 to i8
  store i8 %1692, i8* %56, align 1
  %1693 = lshr i32 %1677, 31
  %1694 = trunc i32 %1693 to i8
  store i8 %1694, i8* %59, align 1
  %1695 = lshr i32 %1676, 31
  %1696 = xor i32 %1693, %1695
  %1697 = add nuw nsw i32 %1696, %1693
  %1698 = icmp eq i32 %1697, 2
  %1699 = zext i1 %1698 to i8
  store i8 %1699, i8* %65, align 1
  %1700 = add i64 %1652, 20
  store i64 %1700, i64* %3, align 8
  store i32 %1677, i32* %1580, align 4
  %1701 = load i64, i64* %3, align 8
  %1702 = add i64 %1701, -93
  store i64 %1702, i64* %3, align 8
  br label %block_.L_46044c

block_.L_4604ae.loopexit:                         ; preds = %block_.L_46044c
  br label %block_.L_4604ae

block_.L_4604ae:                                  ; preds = %block_.L_4604ae.loopexit, %block_460478
  %1703 = phi i64 [ %1674, %block_460478 ], [ %1613, %block_.L_4604ae.loopexit ]
  %1704 = phi i64 [ %.pre210, %block_460478 ], [ %1577, %block_.L_4604ae.loopexit ]
  %1705 = add i64 %1704, -1200
  %1706 = add i64 %1703, 6
  store i64 %1706, i64* %3, align 8
  %1707 = inttoptr i64 %1705 to i32*
  %1708 = load i32, i32* %1707, align 4
  %1709 = zext i32 %1708 to i64
  store i64 %1709, i64* %RAX.i2177, align 8
  %1710 = add i64 %1704, -760
  %1711 = add i64 %1703, 12
  store i64 %1711, i64* %3, align 8
  %1712 = inttoptr i64 %1710 to i32*
  %1713 = load i32, i32* %1712, align 4
  %1714 = sub i32 %1708, %1713
  %1715 = icmp ult i32 %1708, %1713
  %1716 = zext i1 %1715 to i8
  store i8 %1716, i8* %40, align 1
  %1717 = and i32 %1714, 255
  %1718 = tail call i32 @llvm.ctpop.i32(i32 %1717)
  %1719 = trunc i32 %1718 to i8
  %1720 = and i8 %1719, 1
  %1721 = xor i8 %1720, 1
  store i8 %1721, i8* %47, align 1
  %1722 = xor i32 %1713, %1708
  %1723 = xor i32 %1722, %1714
  %1724 = lshr i32 %1723, 4
  %1725 = trunc i32 %1724 to i8
  %1726 = and i8 %1725, 1
  store i8 %1726, i8* %53, align 1
  %1727 = icmp eq i32 %1714, 0
  %1728 = zext i1 %1727 to i8
  store i8 %1728, i8* %56, align 1
  %1729 = lshr i32 %1714, 31
  %1730 = trunc i32 %1729 to i8
  store i8 %1730, i8* %59, align 1
  %1731 = lshr i32 %1708, 31
  %1732 = lshr i32 %1713, 31
  %1733 = xor i32 %1732, %1731
  %1734 = xor i32 %1729, %1731
  %1735 = add nuw nsw i32 %1734, %1733
  %1736 = icmp eq i32 %1735, 2
  %1737 = zext i1 %1736 to i8
  store i8 %1737, i8* %65, align 1
  %.v308 = select i1 %1727, i64 18, i64 84
  %1738 = add i64 %1703, %.v308
  store i64 %1738, i64* %3, align 8
  br i1 %1727, label %block_4604c0, label %block_.L_460502

block_4604c0:                                     ; preds = %block_.L_4604ae
  %1739 = add i64 %1738, 7
  store i64 %1739, i64* %3, align 8
  %1740 = load i32, i32* %1712, align 4
  %1741 = add i32 %1740, -50
  %1742 = icmp ult i32 %1740, 50
  %1743 = zext i1 %1742 to i8
  store i8 %1743, i8* %40, align 1
  %1744 = and i32 %1741, 255
  %1745 = tail call i32 @llvm.ctpop.i32(i32 %1744)
  %1746 = trunc i32 %1745 to i8
  %1747 = and i8 %1746, 1
  %1748 = xor i8 %1747, 1
  store i8 %1748, i8* %47, align 1
  %1749 = xor i32 %1740, 16
  %1750 = xor i32 %1749, %1741
  %1751 = lshr i32 %1750, 4
  %1752 = trunc i32 %1751 to i8
  %1753 = and i8 %1752, 1
  store i8 %1753, i8* %53, align 1
  %1754 = icmp eq i32 %1741, 0
  %1755 = zext i1 %1754 to i8
  store i8 %1755, i8* %56, align 1
  %1756 = lshr i32 %1741, 31
  %1757 = trunc i32 %1756 to i8
  store i8 %1757, i8* %59, align 1
  %1758 = lshr i32 %1740, 31
  %1759 = xor i32 %1756, %1758
  %1760 = add nuw nsw i32 %1759, %1758
  %1761 = icmp eq i32 %1760, 2
  %1762 = zext i1 %1761 to i8
  store i8 %1762, i8* %65, align 1
  %1763 = icmp ne i8 %1757, 0
  %1764 = xor i1 %1763, %1761
  %.v309 = select i1 %1764, i64 13, i64 66
  %1765 = add i64 %1738, %.v309
  store i64 %1765, i64* %3, align 8
  br i1 %1764, label %block_4604cd, label %block_.L_460502

block_4604cd:                                     ; preds = %block_4604c0
  %1766 = add i64 %1704, -724
  %1767 = add i64 %1765, 6
  store i64 %1767, i64* %3, align 8
  %1768 = inttoptr i64 %1766 to i32*
  %1769 = load i32, i32* %1768, align 4
  %1770 = zext i32 %1769 to i64
  store i64 %1770, i64* %RAX.i2177, align 8
  %1771 = add i64 %1765, 13
  store i64 %1771, i64* %3, align 8
  %1772 = load i32, i32* %1712, align 4
  %1773 = sext i32 %1772 to i64
  store i64 %1773, i64* %RCX.i2157, align 8
  %1774 = shl nsw i64 %1773, 2
  %1775 = add i64 %1704, -1160
  %1776 = add i64 %1775, %1774
  %1777 = add i64 %1765, 20
  store i64 %1777, i64* %3, align 8
  %1778 = inttoptr i64 %1776 to i32*
  store i32 %1769, i32* %1778, align 4
  %1779 = load i64, i64* %RBP.i, align 8
  %1780 = add i64 %1779, -760
  %1781 = load i64, i64* %3, align 8
  %1782 = add i64 %1781, 7
  store i64 %1782, i64* %3, align 8
  %1783 = inttoptr i64 %1780 to i32*
  %1784 = load i32, i32* %1783, align 4
  %1785 = sext i32 %1784 to i64
  store i64 %1785, i64* %RCX.i2157, align 8
  %1786 = shl nsw i64 %1785, 2
  %1787 = add i64 %1779, -960
  %1788 = add i64 %1787, %1786
  %1789 = add i64 %1781, 18
  store i64 %1789, i64* %3, align 8
  %1790 = inttoptr i64 %1788 to i32*
  store i32 0, i32* %1790, align 4
  %1791 = load i64, i64* %RBP.i, align 8
  %1792 = add i64 %1791, -760
  %1793 = load i64, i64* %3, align 8
  %1794 = add i64 %1793, 6
  store i64 %1794, i64* %3, align 8
  %1795 = inttoptr i64 %1792 to i32*
  %1796 = load i32, i32* %1795, align 4
  %1797 = add i32 %1796, 1
  %1798 = zext i32 %1797 to i64
  store i64 %1798, i64* %RAX.i2177, align 8
  %1799 = icmp eq i32 %1796, -1
  %1800 = icmp eq i32 %1797, 0
  %1801 = or i1 %1799, %1800
  %1802 = zext i1 %1801 to i8
  store i8 %1802, i8* %40, align 1
  %1803 = and i32 %1797, 255
  %1804 = tail call i32 @llvm.ctpop.i32(i32 %1803)
  %1805 = trunc i32 %1804 to i8
  %1806 = and i8 %1805, 1
  %1807 = xor i8 %1806, 1
  store i8 %1807, i8* %47, align 1
  %1808 = xor i32 %1797, %1796
  %1809 = lshr i32 %1808, 4
  %1810 = trunc i32 %1809 to i8
  %1811 = and i8 %1810, 1
  store i8 %1811, i8* %53, align 1
  %1812 = zext i1 %1800 to i8
  store i8 %1812, i8* %56, align 1
  %1813 = lshr i32 %1797, 31
  %1814 = trunc i32 %1813 to i8
  store i8 %1814, i8* %59, align 1
  %1815 = lshr i32 %1796, 31
  %1816 = xor i32 %1813, %1815
  %1817 = add nuw nsw i32 %1816, %1813
  %1818 = icmp eq i32 %1817, 2
  %1819 = zext i1 %1818 to i8
  store i8 %1819, i8* %65, align 1
  %1820 = add i64 %1793, 15
  store i64 %1820, i64* %3, align 8
  store i32 %1797, i32* %1795, align 4
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_460502

block_.L_460502:                                  ; preds = %block_.L_4604ae, %block_4604c0, %block_4604cd
  %1821 = phi i64 [ %1765, %block_4604c0 ], [ %.pre211, %block_4604cd ], [ %1738, %block_.L_4604ae ]
  %1822 = add i64 %1821, 10
  store i64 %1822, i64* %3, align 8
  br label %block_.L_46050c

block_.L_46050c:                                  ; preds = %block_.L_460502, %block_.L_46041f
  %1823 = phi i64 [ %1822, %block_.L_460502 ], [ %1571, %block_.L_46041f ]
  %1824 = load i64, i64* %RBP.i, align 8
  %1825 = add i64 %1824, -1160
  store i64 %1825, i64* %RDX.i2056, align 8
  %1826 = add i64 %1824, -48
  %1827 = add i64 %1823, 10
  store i64 %1827, i64* %3, align 8
  %1828 = inttoptr i64 %1826 to i32*
  %1829 = load i32, i32* %1828, align 4
  %1830 = zext i32 %1829 to i64
  store i64 %1830, i64* %RDI.i2050, align 8
  %1831 = add i64 %1824, -1192
  %1832 = add i64 %1823, 16
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RSI.i2169, align 8
  %1836 = add i64 %1823, 7908
  %1837 = add i64 %1823, 21
  %1838 = load i64, i64* %6, align 8
  %1839 = add i64 %1838, -8
  %1840 = inttoptr i64 %1839 to i64*
  store i64 %1837, i64* %1840, align 8
  store i64 %1839, i64* %6, align 8
  store i64 %1836, i64* %3, align 8
  %call2_46051c = tail call %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* nonnull %0, i64 %1836, %struct.Memory* %call2_46042f)
  %1841 = load i64, i64* %RBP.i, align 8
  %1842 = add i64 %1841, -752
  %1843 = load i64, i64* %3, align 8
  %1844 = add i64 %1843, 6
  store i64 %1844, i64* %3, align 8
  %1845 = inttoptr i64 %1842 to i32*
  %1846 = load i32, i32* %1845, align 4
  %1847 = add i32 %1846, 1
  %1848 = zext i32 %1847 to i64
  store i64 %1848, i64* %RAX.i2177, align 8
  %1849 = icmp eq i32 %1846, -1
  %1850 = icmp eq i32 %1847, 0
  %1851 = or i1 %1849, %1850
  %1852 = zext i1 %1851 to i8
  store i8 %1852, i8* %40, align 1
  %1853 = and i32 %1847, 255
  %1854 = tail call i32 @llvm.ctpop.i32(i32 %1853)
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  %1857 = xor i8 %1856, 1
  store i8 %1857, i8* %47, align 1
  %1858 = xor i32 %1847, %1846
  %1859 = lshr i32 %1858, 4
  %1860 = trunc i32 %1859 to i8
  %1861 = and i8 %1860, 1
  store i8 %1861, i8* %53, align 1
  %1862 = zext i1 %1850 to i8
  store i8 %1862, i8* %56, align 1
  %1863 = lshr i32 %1847, 31
  %1864 = trunc i32 %1863 to i8
  store i8 %1864, i8* %59, align 1
  %1865 = lshr i32 %1846, 31
  %1866 = xor i32 %1863, %1865
  %1867 = add nuw nsw i32 %1866, %1863
  %1868 = icmp eq i32 %1867, 2
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %65, align 1
  %1870 = add i64 %1843, 15
  store i64 %1870, i64* %3, align 8
  store i32 %1847, i32* %1845, align 4
  %1871 = load i64, i64* %3, align 8
  %1872 = add i64 %1871, -692
  store i64 %1872, i64* %3, align 8
  br label %block_.L_46027c

block_.L_460535:                                  ; preds = %block_.L_46027c
  %1873 = add i64 %934, -1160
  store i64 %1873, i64* %RCX.i2157, align 8
  %1874 = add i64 %934, -740
  store i64 %1874, i64* %RSI.i2169, align 8
  %1875 = add i64 %934, -48
  %1876 = add i64 %962, 17
  store i64 %1876, i64* %3, align 8
  %1877 = inttoptr i64 %1875 to i32*
  %1878 = load i32, i32* %1877, align 4
  %1879 = zext i32 %1878 to i64
  store i64 %1879, i64* %RDI.i2050, align 8
  %1880 = add i64 %934, -728
  %1881 = add i64 %962, 23
  store i64 %1881, i64* %3, align 8
  %1882 = inttoptr i64 %1880 to i32*
  %1883 = load i32, i32* %1882, align 4
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RDX.i2056, align 8
  %1885 = add i64 %934, -72
  %1886 = add i64 %962, 27
  store i64 %1886, i64* %3, align 8
  %1887 = inttoptr i64 %1885 to i32*
  %1888 = load i32, i32* %1887, align 4
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %68, align 8
  %1890 = add i64 %962, 8571
  %1891 = add i64 %962, 32
  %1892 = load i64, i64* %6, align 8
  %1893 = add i64 %1892, -8
  %1894 = inttoptr i64 %1893 to i64*
  store i64 %1891, i64* %1894, align 8
  store i64 %1893, i64* %6, align 8
  store i64 %1890, i64* %3, align 8
  %call2_460550 = tail call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* nonnull %0, i64 %1890, %struct.Memory* %MEMORY.8)
  %1895 = load i64, i64* %RBP.i, align 8
  %1896 = add i64 %1895, -1160
  %1897 = load i64, i64* %3, align 8
  store i64 %1896, i64* %RSI.i2169, align 8
  store i64 0, i64* %68, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  %1898 = add i64 %1895, -48
  %1899 = add i64 %1897, 13
  store i64 %1899, i64* %3, align 8
  %1900 = inttoptr i64 %1898 to i32*
  %1901 = load i32, i32* %1900, align 4
  %1902 = zext i32 %1901 to i64
  store i64 %1902, i64* %RDI.i2050, align 8
  %1903 = add i64 %1895, -72
  %1904 = add i64 %1897, 16
  store i64 %1904, i64* %3, align 8
  %1905 = inttoptr i64 %1903 to i32*
  %1906 = load i32, i32* %1905, align 4
  %1907 = zext i32 %1906 to i64
  store i64 %1907, i64* %RDX.i2056, align 8
  %1908 = add i64 %1895, -1176
  %1909 = add i64 %1897, 23
  store i64 %1909, i64* %3, align 8
  %1910 = inttoptr i64 %1908 to i64*
  %1911 = load i64, i64* %1910, align 8
  store i64 %1911, i64* %RCX.i2157, align 8
  %1912 = add i64 %1897, 10043
  %1913 = add i64 %1897, 28
  %1914 = load i64, i64* %6, align 8
  %1915 = add i64 %1914, -8
  %1916 = inttoptr i64 %1915 to i64*
  store i64 %1913, i64* %1916, align 8
  store i64 %1915, i64* %6, align 8
  store i64 %1912, i64* %3, align 8
  %call2_46056c = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %1912, %struct.Memory* %call2_460550)
  %1917 = load i64, i64* %RBP.i, align 8
  %1918 = add i64 %1917, -752
  %1919 = load i64, i64* %3, align 8
  %1920 = add i64 %1919, 10
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1918 to i32*
  store i32 0, i32* %1921, align 4
  %AL.i1491 = bitcast %union.anon* %66 to i8*
  %CL.i1492 = bitcast %union.anon* %89 to i8*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1466 = bitcast %union.anon* %1922 to i32*
  %1923 = getelementptr inbounds %union.anon, %union.anon* %1922, i64 0, i32 0
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1464 = bitcast %union.anon* %1924 to i32*
  %1925 = getelementptr inbounds %union.anon, %union.anon* %1924, i64 0, i32 0
  %ESI.i1453 = bitcast %union.anon* %75 to i32*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i1396 = bitcast %union.anon* %1926 to i32*
  %1927 = getelementptr inbounds %union.anon, %union.anon* %1926, i64 0, i32 0
  %EBX.i1381 = bitcast %union.anon* %30 to i32*
  %1928 = bitcast i64* %6 to i64**
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_46057b

block_.L_46057b:                                  ; preds = %block_.L_460850, %block_.L_460535
  %1929 = phi i64 [ %.pre159, %block_.L_460535 ], [ %2671, %block_.L_460850 ]
  %MEMORY.19 = phi %struct.Memory* [ %call2_46056c, %block_.L_460535 ], [ %MEMORY.29, %block_.L_460850 ]
  %1930 = load i64, i64* %RBP.i, align 8
  %1931 = add i64 %1930, -752
  %1932 = add i64 %1929, 6
  store i64 %1932, i64* %3, align 8
  %1933 = inttoptr i64 %1931 to i32*
  %1934 = load i32, i32* %1933, align 4
  %1935 = zext i32 %1934 to i64
  store i64 %1935, i64* %RAX.i2177, align 8
  %1936 = add i64 %1930, -760
  %1937 = add i64 %1929, 12
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  %1939 = load i32, i32* %1938, align 4
  %1940 = sub i32 %1934, %1939
  %1941 = icmp ult i32 %1934, %1939
  %1942 = zext i1 %1941 to i8
  store i8 %1942, i8* %40, align 1
  %1943 = and i32 %1940, 255
  %1944 = tail call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  store i8 %1947, i8* %47, align 1
  %1948 = xor i32 %1939, %1934
  %1949 = xor i32 %1948, %1940
  %1950 = lshr i32 %1949, 4
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  store i8 %1952, i8* %53, align 1
  %1953 = icmp eq i32 %1940, 0
  %1954 = zext i1 %1953 to i8
  store i8 %1954, i8* %56, align 1
  %1955 = lshr i32 %1940, 31
  %1956 = trunc i32 %1955 to i8
  store i8 %1956, i8* %59, align 1
  %1957 = lshr i32 %1934, 31
  %1958 = lshr i32 %1939, 31
  %1959 = xor i32 %1958, %1957
  %1960 = xor i32 %1955, %1957
  %1961 = add nuw nsw i32 %1960, %1959
  %1962 = icmp eq i32 %1961, 2
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %65, align 1
  %1964 = icmp ne i8 %1956, 0
  %1965 = xor i1 %1964, %1962
  %.v236 = select i1 %1965, i64 18, i64 750
  %1966 = add i64 %1929, %.v236
  store i64 %1966, i64* %3, align 8
  %1967 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br i1 %1965, label %block_46058d, label %block_.L_460869.loopexit

block_46058d:                                     ; preds = %block_.L_46057b
  %1968 = zext i32 %1967 to i64
  store i64 %1968, i64* %RAX.i2177, align 8
  %1969 = load i32, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*), align 8
  %1970 = sub i32 %1967, %1969
  %1971 = icmp ult i32 %1967, %1969
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %40, align 1
  %1973 = and i32 %1970, 255
  %1974 = tail call i32 @llvm.ctpop.i32(i32 %1973)
  %1975 = trunc i32 %1974 to i8
  %1976 = and i8 %1975, 1
  %1977 = xor i8 %1976, 1
  store i8 %1977, i8* %47, align 1
  %1978 = xor i32 %1969, %1967
  %1979 = xor i32 %1978, %1970
  %1980 = lshr i32 %1979, 4
  %1981 = trunc i32 %1980 to i8
  %1982 = and i8 %1981, 1
  store i8 %1982, i8* %53, align 1
  %1983 = icmp eq i32 %1970, 0
  %1984 = zext i1 %1983 to i8
  store i8 %1984, i8* %56, align 1
  %1985 = lshr i32 %1970, 31
  %1986 = trunc i32 %1985 to i8
  store i8 %1986, i8* %59, align 1
  %1987 = lshr i32 %1967, 31
  %1988 = lshr i32 %1969, 31
  %1989 = xor i32 %1988, %1987
  %1990 = xor i32 %1985, %1987
  %1991 = add nuw nsw i32 %1990, %1989
  %1992 = icmp eq i32 %1991, 2
  %1993 = zext i1 %1992 to i8
  store i8 %1993, i8* %65, align 1
  %1994 = icmp ne i8 %1986, 0
  %1995 = xor i1 %1994, %1992
  %.v292 = select i1 %1995, i64 38, i64 20
  %1996 = add i64 %1966, %.v292
  store i64 %1996, i64* %3, align 8
  br i1 %1995, label %block_.L_4605b3, label %block_4605a1

block_4605a1:                                     ; preds = %block_46058d
  %1997 = add i64 %1996, 7
  store i64 %1997, i64* %3, align 8
  %1998 = load i32, i32* %1933, align 4
  store i8 0, i8* %40, align 1
  %1999 = and i32 %1998, 255
  %2000 = tail call i32 @llvm.ctpop.i32(i32 %1999)
  %2001 = trunc i32 %2000 to i8
  %2002 = and i8 %2001, 1
  %2003 = xor i8 %2002, 1
  store i8 %2003, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2004 = icmp eq i32 %1998, 0
  %2005 = zext i1 %2004 to i8
  store i8 %2005, i8* %56, align 1
  %2006 = lshr i32 %1998, 31
  %2007 = trunc i32 %2006 to i8
  store i8 %2007, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %2008 = icmp ne i8 %2007, 0
  %2009 = or i1 %2004, %2008
  %.v293 = select i1 %2009, i64 18, i64 13
  %2010 = add i64 %1996, %.v293
  store i64 %2010, i64* %3, align 8
  br i1 %2009, label %block_.L_4605b3, label %block_4605ae

block_4605ae:                                     ; preds = %block_4605a1
  %2011 = add i64 %2010, 699
  store i64 %2011, i64* %3, align 8
  br label %block_.L_460869

block_.L_4605b3:                                  ; preds = %block_4605a1, %block_46058d
  %2012 = phi i64 [ %2010, %block_4605a1 ], [ %1996, %block_46058d ]
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %CL.i1492, align 1
  %2013 = add i64 %2012, 11
  store i64 %2013, i64* %3, align 8
  %2014 = load i32, i32* %1933, align 4
  %2015 = sext i32 %2014 to i64
  store i64 %2015, i64* %RDX.i2056, align 8
  %2016 = shl nsw i64 %2015, 2
  %2017 = add i64 %1930, -1160
  %2018 = add i64 %2017, %2016
  %2019 = add i64 %2012, 18
  store i64 %2019, i64* %3, align 8
  %2020 = inttoptr i64 %2018 to i32*
  %2021 = load i32, i32* %2020, align 4
  %2022 = zext i32 %2021 to i64
  store i64 %2022, i64* %RAX.i2177, align 8
  %2023 = add i64 %1930, -724
  %2024 = add i64 %2012, 24
  store i64 %2024, i64* %3, align 8
  %2025 = inttoptr i64 %2023 to i32*
  store i32 %2021, i32* %2025, align 4
  %2026 = load i64, i64* %RBP.i, align 8
  %2027 = add i64 %2026, -724
  %2028 = load i64, i64* %3, align 8
  %2029 = add i64 %2028, 6
  store i64 %2029, i64* %3, align 8
  %2030 = inttoptr i64 %2027 to i32*
  %2031 = load i32, i32* %2030, align 4
  %2032 = zext i32 %2031 to i64
  store i64 %2032, i64* %RDI.i2050, align 8
  %2033 = add i64 %2026, -72
  %2034 = add i64 %2028, 9
  store i64 %2034, i64* %3, align 8
  %2035 = inttoptr i64 %2033 to i32*
  %2036 = load i32, i32* %2035, align 4
  %2037 = zext i32 %2036 to i64
  store i64 %2037, i64* %RSI.i2169, align 8
  %2038 = add i64 %2026, -48
  %2039 = add i64 %2028, 12
  store i64 %2039, i64* %3, align 8
  %2040 = inttoptr i64 %2038 to i32*
  %2041 = load i32, i32* %2040, align 4
  %2042 = zext i32 %2041 to i64
  store i64 %2042, i64* %RAX.i2177, align 8
  %2043 = add i64 %2026, -60
  %2044 = add i64 %2028, 16
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = zext i32 %2046 to i64
  store i64 %2047, i64* %68, align 8
  %2048 = add i64 %2026, -64
  %2049 = add i64 %2028, 20
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %1923, align 8
  %2053 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %2054 = zext i32 %2053 to i64
  store i64 %2054, i64* %1925, align 8
  %2055 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %2056 = sub i32 %2053, %2055
  %2057 = icmp ult i32 %2053, %2055
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %40, align 1
  %2059 = and i32 %2056, 255
  %2060 = tail call i32 @llvm.ctpop.i32(i32 %2059)
  %2061 = trunc i32 %2060 to i8
  %2062 = and i8 %2061, 1
  %2063 = xor i8 %2062, 1
  store i8 %2063, i8* %47, align 1
  %2064 = xor i32 %2055, %2053
  %2065 = xor i32 %2064, %2056
  %2066 = lshr i32 %2065, 4
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  store i8 %2068, i8* %53, align 1
  %2069 = icmp eq i32 %2056, 0
  %2070 = zext i1 %2069 to i8
  store i8 %2070, i8* %56, align 1
  %2071 = lshr i32 %2056, 31
  %2072 = trunc i32 %2071 to i8
  store i8 %2072, i8* %59, align 1
  %2073 = lshr i32 %2053, 31
  %2074 = lshr i32 %2055, 31
  %2075 = xor i32 %2074, %2073
  %2076 = xor i32 %2071, %2073
  %2077 = add nuw nsw i32 %2076, %2075
  %2078 = icmp eq i32 %2077, 2
  %2079 = zext i1 %2078 to i8
  store i8 %2079, i8* %65, align 1
  %2080 = add i64 %2026, -1396
  %2081 = add i64 %2028, 43
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i32*
  store i32 %2051, i32* %2082, align 4
  %2083 = load i64, i64* %RBP.i, align 8
  %2084 = add i64 %2083, -1400
  %2085 = load i32, i32* %EDI.i2172, align 4
  %2086 = load i64, i64* %3, align 8
  %2087 = add i64 %2086, 6
  store i64 %2087, i64* %3, align 8
  %2088 = inttoptr i64 %2084 to i32*
  store i32 %2085, i32* %2088, align 4
  %2089 = load i64, i64* %RBP.i, align 8
  %2090 = add i64 %2089, -1404
  %2091 = load i32, i32* %ESI.i1453, align 4
  %2092 = load i64, i64* %3, align 8
  %2093 = add i64 %2092, 6
  store i64 %2093, i64* %3, align 8
  %2094 = inttoptr i64 %2090 to i32*
  store i32 %2091, i32* %2094, align 4
  %2095 = load i64, i64* %RBP.i, align 8
  %2096 = add i64 %2095, -1408
  %2097 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2098 = load i64, i64* %3, align 8
  %2099 = add i64 %2098, 6
  store i64 %2099, i64* %3, align 8
  %2100 = inttoptr i64 %2096 to i32*
  store i32 %2097, i32* %2100, align 4
  %2101 = load i64, i64* %RBP.i, align 8
  %2102 = add i64 %2101, -1412
  %2103 = load i32, i32* %R8D.i2175, align 4
  %2104 = load i64, i64* %3, align 8
  %2105 = add i64 %2104, 7
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2102 to i32*
  store i32 %2103, i32* %2106, align 4
  %2107 = load i64, i64* %RBP.i, align 8
  %2108 = add i64 %2107, -1413
  %2109 = load i8, i8* %CL.i1492, align 1
  %2110 = load i64, i64* %3, align 8
  %2111 = add i64 %2110, 6
  store i64 %2111, i64* %3, align 8
  %2112 = inttoptr i64 %2108 to i8*
  store i8 %2109, i8* %2112, align 1
  %2113 = load i64, i64* %3, align 8
  %2114 = add i64 %2113, 22
  %2115 = add i64 %2113, 6
  %2116 = load i8, i8* %56, align 1
  %2117 = icmp eq i8 %2116, 0
  %2118 = load i8, i8* %59, align 1
  %2119 = icmp ne i8 %2118, 0
  %2120 = load i8, i8* %65, align 1
  %2121 = icmp ne i8 %2120, 0
  %2122 = xor i1 %2119, %2121
  %2123 = xor i1 %2122, true
  %2124 = and i1 %2117, %2123
  %2125 = select i1 %2124, i64 %2114, i64 %2115
  store i64 %2125, i64* %3, align 8
  br i1 %2124, label %block_.L_46062b, label %block_46061b

block_46061b:                                     ; preds = %block_.L_4605b3
  %2126 = load i64, i64* %RBP.i, align 8
  %2127 = add i64 %2126, -1168
  %2128 = add i64 %2125, 7
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i32*
  %2130 = load i32, i32* %2129, align 4
  store i8 0, i8* %40, align 1
  %2131 = and i32 %2130, 255
  %2132 = tail call i32 @llvm.ctpop.i32(i32 %2131)
  %2133 = trunc i32 %2132 to i8
  %2134 = and i8 %2133, 1
  %2135 = xor i8 %2134, 1
  store i8 %2135, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2136 = icmp eq i32 %2130, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %56, align 1
  %2138 = lshr i32 %2130, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 %2137, i8* %AL.i1491, align 1
  %2140 = add i64 %2126, -1413
  %2141 = add i64 %2125, 16
  store i64 %2141, i64* %3, align 8
  %2142 = inttoptr i64 %2140 to i8*
  store i8 %2137, i8* %2142, align 1
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_46062b

block_.L_46062b:                                  ; preds = %block_46061b, %block_.L_4605b3
  %2143 = phi i64 [ %.pre197, %block_46061b ], [ %2114, %block_.L_4605b3 ]
  %2144 = load i64, i64* %RBP.i, align 8
  %2145 = add i64 %2144, -1413
  %2146 = add i64 %2143, 6
  store i64 %2146, i64* %3, align 8
  %2147 = inttoptr i64 %2145 to i8*
  %2148 = load i8, i8* %2147, align 1
  store i64 ptrtoint (%G__0x57fe92_type* @G__0x57fe92 to i64), i64* %RDX.i2056, align 8
  %2149 = add i64 %2144, -1204
  store i64 %2149, i64* %RCX.i2157, align 8
  %2150 = add i64 %2144, -1208
  store i64 %2150, i64* %RSI.i2169, align 8
  %2151 = add i64 %2144, -1212
  store i64 %2151, i64* %RDI.i2050, align 8
  %2152 = and i8 %2148, 1
  store i8 %2152, i8* %AL.i1491, align 1
  store i8 0, i8* %40, align 1
  %2153 = zext i8 %2152 to i32
  %2154 = tail call i32 @llvm.ctpop.i32(i32 %2153)
  %2155 = trunc i32 %2154 to i8
  %2156 = xor i8 %2155, 1
  store i8 %2156, i8* %47, align 1
  %2157 = xor i8 %2152, 1
  store i8 %2157, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  %2158 = zext i8 %2152 to i64
  store i64 %2158, i64* %68, align 8
  %2159 = add i64 %2144, -1400
  %2160 = add i64 %2143, 50
  store i64 %2160, i64* %3, align 8
  %2161 = inttoptr i64 %2159 to i32*
  %2162 = load i32, i32* %2161, align 4
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %1923, align 8
  %2164 = add i64 %2144, -1424
  %2165 = add i64 %2143, 57
  store i64 %2165, i64* %3, align 8
  %2166 = inttoptr i64 %2164 to i64*
  store i64 %2151, i64* %2166, align 8
  %2167 = load i32, i32* %R9D.i1466, align 4
  %2168 = zext i32 %2167 to i64
  %2169 = load i64, i64* %3, align 8
  store i64 %2168, i64* %RDI.i2050, align 8
  %2170 = load i64, i64* %RBP.i, align 8
  %2171 = add i64 %2170, -1404
  %2172 = add i64 %2169, 10
  store i64 %2172, i64* %3, align 8
  %2173 = inttoptr i64 %2171 to i32*
  %2174 = load i32, i32* %2173, align 4
  %2175 = zext i32 %2174 to i64
  store i64 %2175, i64* %1925, align 8
  %2176 = add i64 %2170, -1432
  %2177 = load i64, i64* %RSI.i2169, align 8
  %2178 = add i64 %2169, 17
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2176 to i64*
  store i64 %2177, i64* %2179, align 8
  %2180 = load i32, i32* %R10D.i1464, align 4
  %2181 = zext i32 %2180 to i64
  %2182 = load i64, i64* %3, align 8
  store i64 %2181, i64* %RSI.i2169, align 8
  %2183 = load i64, i64* %RBP.i, align 8
  %2184 = add i64 %2183, -1408
  %2185 = add i64 %2182, 10
  store i64 %2185, i64* %3, align 8
  %2186 = inttoptr i64 %2184 to i32*
  %2187 = load i32, i32* %2186, align 4
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %1927, align 8
  %2189 = add i64 %2183, -1440
  %2190 = load i64, i64* %RCX.i2157, align 8
  %2191 = add i64 %2182, 17
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2189 to i64*
  store i64 %2190, i64* %2192, align 8
  %2193 = load i32, i32* %R11D.i1396, align 4
  %2194 = zext i32 %2193 to i64
  %2195 = load i64, i64* %3, align 8
  store i64 %2194, i64* %RCX.i2157, align 8
  %2196 = load i64, i64* %RBP.i, align 8
  %2197 = add i64 %2196, -1412
  %2198 = add i64 %2195, 9
  store i64 %2198, i64* %3, align 8
  %2199 = inttoptr i64 %2197 to i32*
  %2200 = load i32, i32* %2199, align 4
  %2201 = zext i32 %2200 to i64
  store i64 %2201, i64* %RBX.i2181, align 8
  %2202 = add i64 %2196, -1444
  %2203 = load i32, i32* %R8D.i2175, align 4
  %2204 = add i64 %2195, 16
  store i64 %2204, i64* %3, align 8
  %2205 = inttoptr i64 %2202 to i32*
  store i32 %2203, i32* %2205, align 4
  %2206 = load i32, i32* %EBX.i1381, align 4
  %2207 = zext i32 %2206 to i64
  %2208 = load i64, i64* %3, align 8
  store i64 %2207, i64* %68, align 8
  %2209 = load i64, i64* %RBP.i, align 8
  %2210 = add i64 %2209, -1396
  %2211 = add i64 %2208, 10
  store i64 %2211, i64* %3, align 8
  %2212 = inttoptr i64 %2210 to i32*
  %2213 = load i32, i32* %2212, align 4
  %2214 = zext i32 %2213 to i64
  store i64 %2214, i64* %1923, align 8
  %2215 = add i64 %2209, -1440
  %2216 = add i64 %2208, 17
  store i64 %2216, i64* %3, align 8
  %2217 = inttoptr i64 %2215 to i64*
  %2218 = load i64, i64* %2217, align 8
  store i64 %2218, i64* %R14.i2187, align 8
  %2219 = load i64*, i64** %1928, align 8
  %2220 = add i64 %2208, 21
  store i64 %2220, i64* %3, align 8
  store i64 %2218, i64* %2219, align 8
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -1432
  %2223 = load i64, i64* %3, align 8
  %2224 = add i64 %2223, 7
  store i64 %2224, i64* %3, align 8
  %2225 = inttoptr i64 %2222 to i64*
  %2226 = load i64, i64* %2225, align 8
  store i64 %2226, i64* %R15.i1872, align 8
  %2227 = load i64, i64* %6, align 8
  %2228 = add i64 %2227, 8
  %2229 = add i64 %2223, 12
  store i64 %2229, i64* %3, align 8
  %2230 = inttoptr i64 %2228 to i64*
  store i64 %2226, i64* %2230, align 8
  %2231 = load i64, i64* %RBP.i, align 8
  %2232 = add i64 %2231, -1424
  %2233 = load i64, i64* %3, align 8
  %2234 = add i64 %2233, 7
  store i64 %2234, i64* %3, align 8
  %2235 = inttoptr i64 %2232 to i64*
  %2236 = load i64, i64* %2235, align 8
  store i64 %2236, i64* %R12.i2183, align 8
  %2237 = load i64, i64* %6, align 8
  %2238 = add i64 %2237, 16
  %2239 = add i64 %2233, 12
  store i64 %2239, i64* %3, align 8
  %2240 = inttoptr i64 %2238 to i64*
  store i64 %2236, i64* %2240, align 8
  %2241 = load i64, i64* %RBP.i, align 8
  %2242 = add i64 %2241, -1444
  %2243 = load i64, i64* %3, align 8
  %2244 = add i64 %2243, 7
  store i64 %2244, i64* %3, align 8
  %2245 = inttoptr i64 %2242 to i32*
  %2246 = load i32, i32* %2245, align 4
  %2247 = zext i32 %2246 to i64
  store i64 %2247, i64* %R13.i2185, align 8
  %2248 = load i64, i64* %6, align 8
  %2249 = add i64 %2248, 24
  %2250 = add i64 %2243, 12
  store i64 %2250, i64* %3, align 8
  %2251 = inttoptr i64 %2249 to i32*
  store i32 %2246, i32* %2251, align 4
  %2252 = load i64, i64* %3, align 8
  %2253 = add i64 %2252, -334047
  %2254 = add i64 %2252, 5
  %2255 = load i64, i64* %6, align 8
  %2256 = add i64 %2255, -8
  %2257 = inttoptr i64 %2256 to i64*
  store i64 %2254, i64* %2257, align 8
  store i64 %2256, i64* %6, align 8
  store i64 %2253, i64* %3, align 8
  %call2_4606cf = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %2253, %struct.Memory* %MEMORY.19)
  %2258 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2259 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2260 = and i32 %2258, 255
  %2261 = tail call i32 @llvm.ctpop.i32(i32 %2260)
  %2262 = trunc i32 %2261 to i8
  %2263 = and i8 %2262, 1
  %2264 = xor i8 %2263, 1
  store i8 %2264, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2265 = icmp eq i32 %2258, 0
  %2266 = zext i1 %2265 to i8
  store i8 %2266, i8* %56, align 1
  %2267 = lshr i32 %2258, 31
  %2268 = trunc i32 %2267 to i8
  store i8 %2268, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v294 = select i1 %2265, i64 380, i64 9
  %2269 = add i64 %2259, %.v294
  store i64 %2269, i64* %3, align 8
  br i1 %2265, label %block_.L_460850, label %block_4606dd

block_4606dd:                                     ; preds = %block_.L_46062b
  %2270 = load i64, i64* %RBP.i, align 8
  %2271 = add i64 %2270, -1212
  %2272 = add i64 %2269, 7
  store i64 %2272, i64* %3, align 8
  %2273 = inttoptr i64 %2271 to i32*
  %2274 = load i32, i32* %2273, align 4
  %2275 = icmp eq i32 %2274, 0
  %.v295 = select i1 %2275, i64 13, i64 273
  %2276 = add i64 %2269, %.v295
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %2277 = add i64 %2270, -48
  %2278 = add i64 %2276, 7
  store i64 %2278, i64* %3, align 8
  %2279 = inttoptr i64 %2277 to i32*
  %2280 = load i32, i32* %2279, align 4
  %2281 = zext i32 %2280 to i64
  store i64 %2281, i64* %RDI.i2050, align 8
  %2282 = add i64 %2270, -1204
  %2283 = add i64 %2276, 13
  store i64 %2283, i64* %3, align 8
  %2284 = inttoptr i64 %2282 to i32*
  %2285 = load i32, i32* %2284, align 4
  %2286 = zext i32 %2285 to i64
  store i64 %2286, i64* %RDX.i2056, align 8
  %2287 = add i64 %2270, -1208
  %2288 = add i64 %2276, 19
  store i64 %2288, i64* %3, align 8
  %2289 = inttoptr i64 %2287 to i32*
  %2290 = load i32, i32* %2289, align 4
  %2291 = zext i32 %2290 to i64
  store i64 %2291, i64* %RCX.i2157, align 8
  br i1 %2275, label %block_4606ea, label %block_.L_4607ee

block_4606ea:                                     ; preds = %block_4606dd
  %2292 = add i64 %2276, 12086
  %2293 = add i64 %2276, 24
  %2294 = load i64, i64* %6, align 8
  %2295 = add i64 %2294, -8
  %2296 = inttoptr i64 %2295 to i64*
  store i64 %2293, i64* %2296, align 8
  store i64 %2295, i64* %6, align 8
  store i64 %2292, i64* %3, align 8
  %call2_4606fd = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %2292, %struct.Memory* %MEMORY.19)
  %2297 = load i64, i64* %RBP.i, align 8
  %2298 = add i64 %2297, -748
  %2299 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2300 = load i64, i64* %3, align 8
  %2301 = add i64 %2300, 6
  store i64 %2301, i64* %3, align 8
  %2302 = inttoptr i64 %2298 to i32*
  store i32 %2299, i32* %2302, align 4
  %2303 = load i64, i64* %RBP.i, align 8
  %2304 = add i64 %2303, -748
  %2305 = load i64, i64* %3, align 8
  %2306 = add i64 %2305, 7
  store i64 %2306, i64* %3, align 8
  %2307 = inttoptr i64 %2304 to i32*
  %2308 = load i32, i32* %2307, align 4
  %2309 = add i32 %2308, -5
  %2310 = icmp ult i32 %2308, 5
  %2311 = zext i1 %2310 to i8
  store i8 %2311, i8* %40, align 1
  %2312 = and i32 %2309, 255
  %2313 = tail call i32 @llvm.ctpop.i32(i32 %2312)
  %2314 = trunc i32 %2313 to i8
  %2315 = and i8 %2314, 1
  %2316 = xor i8 %2315, 1
  store i8 %2316, i8* %47, align 1
  %2317 = xor i32 %2309, %2308
  %2318 = lshr i32 %2317, 4
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  store i8 %2320, i8* %53, align 1
  %2321 = icmp eq i32 %2309, 0
  %2322 = zext i1 %2321 to i8
  store i8 %2322, i8* %56, align 1
  %2323 = lshr i32 %2309, 31
  %2324 = trunc i32 %2323 to i8
  store i8 %2324, i8* %59, align 1
  %2325 = lshr i32 %2308, 31
  %2326 = xor i32 %2323, %2325
  %2327 = add nuw nsw i32 %2326, %2325
  %2328 = icmp eq i32 %2327, 2
  %2329 = zext i1 %2328 to i8
  store i8 %2329, i8* %65, align 1
  %.v298 = select i1 %2321, i64 220, i64 13
  %2330 = add i64 %2305, %.v298
  store i64 %2330, i64* %3, align 8
  br i1 %2321, label %block_.L_4607e4, label %block_460715

block_460715:                                     ; preds = %block_4606ea
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %2331 = add i64 %2303, -48
  %2332 = add i64 %2330, 7
  store i64 %2332, i64* %3, align 8
  %2333 = inttoptr i64 %2331 to i32*
  %2334 = load i32, i32* %2333, align 4
  %2335 = zext i32 %2334 to i64
  store i64 %2335, i64* %RDI.i2050, align 8
  %2336 = add i64 %2303, -1204
  %2337 = add i64 %2330, 13
  store i64 %2337, i64* %3, align 8
  %2338 = inttoptr i64 %2336 to i32*
  %2339 = load i32, i32* %2338, align 4
  %2340 = zext i32 %2339 to i64
  store i64 %2340, i64* %RDX.i2056, align 8
  %2341 = add i64 %2303, -1208
  %2342 = add i64 %2330, 19
  store i64 %2342, i64* %3, align 8
  %2343 = inttoptr i64 %2341 to i32*
  %2344 = load i32, i32* %2343, align 4
  %2345 = zext i32 %2344 to i64
  store i64 %2345, i64* %RCX.i2157, align 8
  %2346 = add i64 %2330, -10805
  %2347 = add i64 %2330, 24
  %2348 = load i64, i64* %6, align 8
  %2349 = add i64 %2348, -8
  %2350 = inttoptr i64 %2349 to i64*
  store i64 %2347, i64* %2350, align 8
  store i64 %2349, i64* %6, align 8
  store i64 %2346, i64* %3, align 8
  %call2_460728 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %2346, %struct.Memory* %MEMORY.19)
  %2351 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2352 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2353 = and i32 %2351, 255
  %2354 = tail call i32 @llvm.ctpop.i32(i32 %2353)
  %2355 = trunc i32 %2354 to i8
  %2356 = and i8 %2355, 1
  %2357 = xor i8 %2356, 1
  store i8 %2357, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2358 = icmp eq i32 %2351, 0
  %2359 = zext i1 %2358 to i8
  store i8 %2359, i8* %56, align 1
  %2360 = lshr i32 %2351, 31
  %2361 = trunc i32 %2360 to i8
  store i8 %2361, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v299 = select i1 %2358, i64 183, i64 9
  %2362 = add i64 %2352, %.v299
  store i64 %2362, i64* %3, align 8
  br i1 %2358, label %block_.L_4607e4, label %block_460736

block_460736:                                     ; preds = %block_460715
  %2363 = add i64 %2362, -338390
  %2364 = add i64 %2362, 5
  %2365 = load i64, i64* %6, align 8
  %2366 = add i64 %2365, -8
  %2367 = inttoptr i64 %2366 to i64*
  store i64 %2364, i64* %2367, align 8
  store i64 %2366, i64* %6, align 8
  store i64 %2363, i64* %3, align 8
  %call2_460736 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2363, %struct.Memory* %MEMORY.19)
  %2368 = load i64, i64* %RBP.i, align 8
  %2369 = add i64 %2368, -748
  %2370 = load i64, i64* %3, align 8
  %2371 = add i64 %2370, 7
  store i64 %2371, i64* %3, align 8
  %2372 = inttoptr i64 %2369 to i32*
  %2373 = load i32, i32* %2372, align 4
  store i8 0, i8* %40, align 1
  %2374 = and i32 %2373, 255
  %2375 = tail call i32 @llvm.ctpop.i32(i32 %2374)
  %2376 = trunc i32 %2375 to i8
  %2377 = and i8 %2376, 1
  %2378 = xor i8 %2377, 1
  store i8 %2378, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2379 = icmp eq i32 %2373, 0
  %2380 = zext i1 %2379 to i8
  store i8 %2380, i8* %56, align 1
  %2381 = lshr i32 %2373, 31
  %2382 = trunc i32 %2381 to i8
  store i8 %2382, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v300 = select i1 %2379, i64 13, i64 102
  %2383 = add i64 %2370, %.v300
  store i64 %2383, i64* %3, align 8
  br i1 %2379, label %block_460748, label %block_.L_4607a1

block_460748:                                     ; preds = %block_460736
  %2384 = add i64 %2368, -56
  %2385 = add i64 %2383, 5
  store i64 %2385, i64* %3, align 8
  %2386 = inttoptr i64 %2384 to i64*
  %2387 = load i64, i64* %2386, align 8
  store i8 0, i8* %40, align 1
  %2388 = trunc i64 %2387 to i32
  %2389 = and i32 %2388, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2394 = icmp eq i64 %2387, 0
  %2395 = zext i1 %2394 to i8
  store i8 %2395, i8* %56, align 1
  %2396 = lshr i64 %2387, 63
  %2397 = trunc i64 %2396 to i8
  store i8 %2397, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v302 = select i1 %2394, i64 23, i64 11
  %2398 = add i64 %2383, %.v302
  store i64 %2398, i64* %3, align 8
  br i1 %2394, label %block_.L_46075f, label %block_460753

block_460753:                                     ; preds = %block_460748
  %2399 = add i64 %2368, -724
  %2400 = add i64 %2398, 6
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2399 to i32*
  %2402 = load i32, i32* %2401, align 4
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RAX.i2177, align 8
  %2404 = add i64 %2398, 10
  store i64 %2404, i64* %3, align 8
  %2405 = load i64, i64* %2386, align 8
  store i64 %2405, i64* %RCX.i2157, align 8
  %2406 = add i64 %2398, 12
  store i64 %2406, i64* %3, align 8
  %2407 = inttoptr i64 %2405 to i32*
  store i32 %2402, i32* %2407, align 4
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_46075f

block_.L_46075f:                                  ; preds = %block_460753, %block_460748
  %2408 = phi i64 [ %.pre198, %block_460753 ], [ %2398, %block_460748 ]
  %2409 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %2410 = trunc i64 %2409 to i32
  %2411 = and i32 %2410, 255
  %2412 = tail call i32 @llvm.ctpop.i32(i32 %2411)
  %2413 = trunc i32 %2412 to i8
  %2414 = and i8 %2413, 1
  %2415 = xor i8 %2414, 1
  store i8 %2415, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2416 = icmp eq i64 %2409, 0
  %2417 = zext i1 %2416 to i8
  store i8 %2417, i8* %56, align 1
  %2418 = lshr i64 %2409, 63
  %2419 = trunc i64 %2418 to i8
  store i8 %2419, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v303 = select i1 %2416, i64 54, i64 15
  %2420 = add i64 %2408, %.v303
  store i64 %2420, i64* %3, align 8
  br i1 %2416, label %block_.L_460795, label %block_46076e

block_46076e:                                     ; preds = %block_.L_46075f
  store i64 5, i64* %RCX.i2157, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %68, align 8
  %2421 = load i64, i64* %RBP.i, align 8
  %2422 = add i64 %2421, -1176
  %2423 = add i64 %2420, 22
  store i64 %2423, i64* %3, align 8
  %2424 = inttoptr i64 %2422 to i64*
  %2425 = load i64, i64* %2424, align 8
  store i64 %2425, i64* %RDI.i2050, align 8
  %2426 = add i64 %2421, -1180
  %2427 = add i64 %2420, 28
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i32*
  %2429 = load i32, i32* %2428, align 4
  %2430 = zext i32 %2429 to i64
  store i64 %2430, i64* %RSI.i2169, align 8
  %2431 = add i64 %2421, -724
  %2432 = add i64 %2420, 34
  store i64 %2432, i64* %3, align 8
  %2433 = inttoptr i64 %2431 to i32*
  %2434 = load i32, i32* %2433, align 4
  %2435 = zext i32 %2434 to i64
  store i64 %2435, i64* %RDX.i2056, align 8
  %2436 = add i64 %2420, -296878
  %2437 = add i64 %2420, 39
  %2438 = load i64, i64* %6, align 8
  %2439 = add i64 %2438, -8
  %2440 = inttoptr i64 %2439 to i64*
  store i64 %2437, i64* %2440, align 8
  store i64 %2439, i64* %6, align 8
  store i64 %2436, i64* %3, align 8
  %call2_460790 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %2436, %struct.Memory* %MEMORY.19)
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_460795

block_.L_460795:                                  ; preds = %block_46076e, %block_.L_46075f
  %2441 = phi i64 [ %2420, %block_.L_46075f ], [ %.pre199, %block_46076e ]
  %MEMORY.23 = phi %struct.Memory* [ %MEMORY.19, %block_.L_46075f ], [ %call2_460790, %block_46076e ]
  %2442 = load i64, i64* %RBP.i, align 8
  %2443 = add i64 %2442, -44
  %2444 = add i64 %2441, 7
  store i64 %2444, i64* %3, align 8
  %2445 = inttoptr i64 %2443 to i32*
  store i32 5, i32* %2445, align 4
  %2446 = load i64, i64* %3, align 8
  %2447 = add i64 %2446, 3034
  store i64 %2447, i64* %3, align 8
  br label %block_.L_461376

block_.L_4607a1:                                  ; preds = %block_460736
  store i64 5, i64* %RAX.i2177, align 8
  %2448 = add i64 %2383, 11
  store i64 %2448, i64* %3, align 8
  %2449 = load i32, i32* %2372, align 4
  %2450 = sub i32 5, %2449
  %2451 = zext i32 %2450 to i64
  store i64 %2451, i64* %RAX.i2177, align 8
  %2452 = icmp ugt i32 %2449, 5
  %2453 = zext i1 %2452 to i8
  store i8 %2453, i8* %40, align 1
  %2454 = and i32 %2450, 255
  %2455 = tail call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  store i8 %2458, i8* %47, align 1
  %2459 = xor i32 %2450, %2449
  %2460 = lshr i32 %2459, 4
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  store i8 %2462, i8* %53, align 1
  %2463 = icmp eq i32 %2450, 0
  %2464 = zext i1 %2463 to i8
  store i8 %2464, i8* %56, align 1
  %2465 = lshr i32 %2450, 31
  %2466 = trunc i32 %2465 to i8
  store i8 %2466, i8* %59, align 1
  %2467 = lshr i32 %2449, 31
  %2468 = add nuw nsw i32 %2465, %2467
  %2469 = icmp eq i32 %2468, 2
  %2470 = zext i1 %2469 to i8
  store i8 %2470, i8* %65, align 1
  %2471 = add i64 %2368, -1168
  %2472 = add i64 %2383, 17
  store i64 %2472, i64* %3, align 8
  %2473 = inttoptr i64 %2471 to i32*
  %2474 = load i32, i32* %2473, align 4
  %2475 = sub i32 %2450, %2474
  %2476 = icmp ult i32 %2450, %2474
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %40, align 1
  %2478 = and i32 %2475, 255
  %2479 = tail call i32 @llvm.ctpop.i32(i32 %2478)
  %2480 = trunc i32 %2479 to i8
  %2481 = and i8 %2480, 1
  %2482 = xor i8 %2481, 1
  store i8 %2482, i8* %47, align 1
  %2483 = xor i32 %2474, %2450
  %2484 = xor i32 %2483, %2475
  %2485 = lshr i32 %2484, 4
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  store i8 %2487, i8* %53, align 1
  %2488 = icmp eq i32 %2475, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %56, align 1
  %2490 = lshr i32 %2475, 31
  %2491 = trunc i32 %2490 to i8
  store i8 %2491, i8* %59, align 1
  %2492 = lshr i32 %2474, 31
  %2493 = xor i32 %2492, %2465
  %2494 = xor i32 %2490, %2465
  %2495 = add nuw nsw i32 %2494, %2493
  %2496 = icmp eq i32 %2495, 2
  %2497 = zext i1 %2496 to i8
  store i8 %2497, i8* %65, align 1
  %2498 = icmp ne i8 %2491, 0
  %2499 = xor i1 %2498, %2496
  %2500 = or i1 %2488, %2499
  %.v301 = select i1 %2500, i64 52, i64 23
  %2501 = add i64 %2383, %.v301
  store i64 %2501, i64* %3, align 8
  br i1 %2500, label %block_.L_4607d5, label %block_4607b8

block_4607b8:                                     ; preds = %block_.L_4607a1
  store i64 5, i64* %RAX.i2177, align 8
  %2502 = add i64 %2368, -724
  %2503 = add i64 %2501, 11
  store i64 %2503, i64* %3, align 8
  %2504 = inttoptr i64 %2502 to i32*
  %2505 = load i32, i32* %2504, align 4
  %2506 = zext i32 %2505 to i64
  store i64 %2506, i64* %RCX.i2157, align 8
  %2507 = add i64 %2368, -1164
  %2508 = add i64 %2501, 17
  store i64 %2508, i64* %3, align 8
  %2509 = inttoptr i64 %2507 to i32*
  store i32 %2505, i32* %2509, align 4
  %2510 = load i64, i64* %RAX.i2177, align 8
  %2511 = load i64, i64* %RBP.i, align 8
  %2512 = add i64 %2511, -748
  %2513 = load i64, i64* %3, align 8
  %2514 = add i64 %2513, 6
  store i64 %2514, i64* %3, align 8
  %2515 = trunc i64 %2510 to i32
  %2516 = inttoptr i64 %2512 to i32*
  %2517 = load i32, i32* %2516, align 4
  %2518 = sub i32 %2515, %2517
  %2519 = zext i32 %2518 to i64
  store i64 %2519, i64* %RAX.i2177, align 8
  %2520 = icmp ult i32 %2515, %2517
  %2521 = zext i1 %2520 to i8
  store i8 %2521, i8* %40, align 1
  %2522 = and i32 %2518, 255
  %2523 = tail call i32 @llvm.ctpop.i32(i32 %2522)
  %2524 = trunc i32 %2523 to i8
  %2525 = and i8 %2524, 1
  %2526 = xor i8 %2525, 1
  store i8 %2526, i8* %47, align 1
  %2527 = xor i32 %2517, %2515
  %2528 = xor i32 %2527, %2518
  %2529 = lshr i32 %2528, 4
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  store i8 %2531, i8* %53, align 1
  %2532 = icmp eq i32 %2518, 0
  %2533 = zext i1 %2532 to i8
  store i8 %2533, i8* %56, align 1
  %2534 = lshr i32 %2518, 31
  %2535 = trunc i32 %2534 to i8
  store i8 %2535, i8* %59, align 1
  %2536 = lshr i32 %2515, 31
  %2537 = lshr i32 %2517, 31
  %2538 = xor i32 %2537, %2536
  %2539 = xor i32 %2534, %2536
  %2540 = add nuw nsw i32 %2539, %2538
  %2541 = icmp eq i32 %2540, 2
  %2542 = zext i1 %2541 to i8
  store i8 %2542, i8* %65, align 1
  %2543 = add i64 %2511, -1168
  %2544 = add i64 %2513, 12
  store i64 %2544, i64* %3, align 8
  %2545 = inttoptr i64 %2543 to i32*
  store i32 %2518, i32* %2545, align 4
  %.pre201 = load i64, i64* %3, align 8
  br label %block_.L_4607d5

block_.L_4607d5:                                  ; preds = %block_4607b8, %block_.L_4607a1
  %2546 = phi i64 [ %.pre201, %block_4607b8 ], [ %2501, %block_.L_4607a1 ]
  %2547 = add i64 %2546, 20
  store i64 %2547, i64* %3, align 8
  br label %block_.L_4607e9

block_.L_4607e4:                                  ; preds = %block_460715, %block_4606ea
  %2548 = phi i64 [ %2362, %block_460715 ], [ %2330, %block_4606ea ]
  %2549 = add i64 %2548, -338564
  %2550 = add i64 %2548, 5
  %2551 = load i64, i64* %6, align 8
  %2552 = add i64 %2551, -8
  %2553 = inttoptr i64 %2552 to i64*
  store i64 %2550, i64* %2553, align 8
  store i64 %2552, i64* %6, align 8
  store i64 %2549, i64* %3, align 8
  %call2_4607e4 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2549, %struct.Memory* %MEMORY.19)
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_4607e9

block_.L_4607e9:                                  ; preds = %block_.L_4607e4, %block_.L_4607d5
  %2554 = phi i64 [ %.pre202, %block_.L_4607e4 ], [ %2547, %block_.L_4607d5 ]
  %MEMORY.26 = phi %struct.Memory* [ %call2_4607e4, %block_.L_4607e4 ], [ %MEMORY.19, %block_.L_4607d5 ]
  %2555 = add i64 %2554, 98
  store i64 %2555, i64* %3, align 8
  br label %block_.L_46084b

block_.L_4607ee:                                  ; preds = %block_4606dd
  %2556 = add i64 %2276, 11826
  %2557 = add i64 %2276, 24
  %2558 = load i64, i64* %6, align 8
  %2559 = add i64 %2558, -8
  %2560 = inttoptr i64 %2559 to i64*
  store i64 %2557, i64* %2560, align 8
  store i64 %2559, i64* %6, align 8
  store i64 %2556, i64* %3, align 8
  %call2_460801 = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %2556, %struct.Memory* %MEMORY.19)
  %2561 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2562 = load i64, i64* %3, align 8
  %2563 = add i32 %2561, -5
  %2564 = icmp ult i32 %2561, 5
  %2565 = zext i1 %2564 to i8
  store i8 %2565, i8* %40, align 1
  %2566 = and i32 %2563, 255
  %2567 = tail call i32 @llvm.ctpop.i32(i32 %2566)
  %2568 = trunc i32 %2567 to i8
  %2569 = and i8 %2568, 1
  %2570 = xor i8 %2569, 1
  store i8 %2570, i8* %47, align 1
  %2571 = xor i32 %2563, %2561
  %2572 = lshr i32 %2571, 4
  %2573 = trunc i32 %2572 to i8
  %2574 = and i8 %2573, 1
  store i8 %2574, i8* %53, align 1
  %2575 = icmp eq i32 %2563, 0
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %56, align 1
  %2577 = lshr i32 %2563, 31
  %2578 = trunc i32 %2577 to i8
  store i8 %2578, i8* %59, align 1
  %2579 = lshr i32 %2561, 31
  %2580 = xor i32 %2577, %2579
  %2581 = add nuw nsw i32 %2580, %2579
  %2582 = icmp eq i32 %2581, 2
  %2583 = zext i1 %2582 to i8
  store i8 %2583, i8* %65, align 1
  %.v296 = select i1 %2575, i64 64, i64 9
  %2584 = add i64 %2562, %.v296
  store i64 %2584, i64* %3, align 8
  br i1 %2575, label %block_.L_460846, label %block_46080f

block_46080f:                                     ; preds = %block_.L_4607ee
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %2585 = load i64, i64* %RBP.i, align 8
  %2586 = add i64 %2585, -48
  %2587 = add i64 %2584, 7
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i32*
  %2589 = load i32, i32* %2588, align 4
  %2590 = zext i32 %2589 to i64
  store i64 %2590, i64* %RDI.i2050, align 8
  %2591 = add i64 %2585, -1204
  %2592 = add i64 %2584, 13
  store i64 %2592, i64* %3, align 8
  %2593 = inttoptr i64 %2591 to i32*
  %2594 = load i32, i32* %2593, align 4
  %2595 = zext i32 %2594 to i64
  store i64 %2595, i64* %RDX.i2056, align 8
  %2596 = add i64 %2585, -1208
  %2597 = add i64 %2584, 19
  store i64 %2597, i64* %3, align 8
  %2598 = inttoptr i64 %2596 to i32*
  %2599 = load i32, i32* %2598, align 4
  %2600 = zext i32 %2599 to i64
  store i64 %2600, i64* %RCX.i2157, align 8
  %2601 = add i64 %2584, -11055
  %2602 = add i64 %2584, 24
  %2603 = load i64, i64* %6, align 8
  %2604 = add i64 %2603, -8
  %2605 = inttoptr i64 %2604 to i64*
  store i64 %2602, i64* %2605, align 8
  store i64 %2604, i64* %6, align 8
  store i64 %2601, i64* %3, align 8
  %call2_460822 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %2601, %struct.Memory* %MEMORY.19)
  %2606 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2607 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2608 = and i32 %2606, 255
  %2609 = tail call i32 @llvm.ctpop.i32(i32 %2608)
  %2610 = trunc i32 %2609 to i8
  %2611 = and i8 %2610, 1
  %2612 = xor i8 %2611, 1
  store i8 %2612, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2613 = icmp eq i32 %2606, 0
  %2614 = zext i1 %2613 to i8
  store i8 %2614, i8* %56, align 1
  %2615 = lshr i32 %2606, 31
  %2616 = trunc i32 %2615 to i8
  store i8 %2616, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v297 = select i1 %2613, i64 31, i64 9
  %2617 = add i64 %2607, %.v297
  store i64 %2617, i64* %3, align 8
  br i1 %2613, label %block_.L_460846, label %block_460830

block_460830:                                     ; preds = %block_46080f
  %2618 = load i64, i64* %RBP.i, align 8
  %2619 = add i64 %2618, -724
  %2620 = add i64 %2617, 6
  store i64 %2620, i64* %3, align 8
  %2621 = inttoptr i64 %2619 to i32*
  %2622 = load i32, i32* %2621, align 4
  %2623 = zext i32 %2622 to i64
  store i64 %2623, i64* %RAX.i2177, align 8
  %2624 = add i64 %2618, -1164
  %2625 = add i64 %2617, 12
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i32*
  store i32 %2622, i32* %2626, align 4
  %2627 = load i64, i64* %RBP.i, align 8
  %2628 = add i64 %2627, -1168
  %2629 = load i64, i64* %3, align 8
  %2630 = add i64 %2629, 10
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2628 to i32*
  store i32 1, i32* %2631, align 4
  %.pre203 = load i64, i64* %3, align 8
  br label %block_.L_460846

block_.L_460846:                                  ; preds = %block_460830, %block_46080f, %block_.L_4607ee
  %2632 = phi i64 [ %.pre203, %block_460830 ], [ %2617, %block_46080f ], [ %2584, %block_.L_4607ee ]
  %2633 = add i64 %2632, -338662
  %2634 = add i64 %2632, 5
  %2635 = load i64, i64* %6, align 8
  %2636 = add i64 %2635, -8
  %2637 = inttoptr i64 %2636 to i64*
  store i64 %2634, i64* %2637, align 8
  store i64 %2636, i64* %6, align 8
  store i64 %2633, i64* %3, align 8
  %call2_460846 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2633, %struct.Memory* %MEMORY.19)
  %.pre204 = load i64, i64* %3, align 8
  br label %block_.L_46084b

block_.L_46084b:                                  ; preds = %block_.L_460846, %block_.L_4607e9
  %2638 = phi i64 [ %.pre204, %block_.L_460846 ], [ %2555, %block_.L_4607e9 ]
  %MEMORY.28 = phi %struct.Memory* [ %MEMORY.19, %block_.L_460846 ], [ %MEMORY.26, %block_.L_4607e9 ]
  %2639 = add i64 %2638, 5
  store i64 %2639, i64* %3, align 8
  br label %block_.L_460850

block_.L_460850:                                  ; preds = %block_.L_46084b, %block_.L_46062b
  %2640 = phi i64 [ %2269, %block_.L_46062b ], [ %2639, %block_.L_46084b ]
  %MEMORY.29 = phi %struct.Memory* [ %MEMORY.19, %block_.L_46062b ], [ %MEMORY.28, %block_.L_46084b ]
  %2641 = load i64, i64* %RBP.i, align 8
  %2642 = add i64 %2641, -752
  %2643 = add i64 %2640, 11
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i32*
  %2645 = load i32, i32* %2644, align 4
  %2646 = add i32 %2645, 1
  %2647 = zext i32 %2646 to i64
  store i64 %2647, i64* %RAX.i2177, align 8
  %2648 = icmp eq i32 %2645, -1
  %2649 = icmp eq i32 %2646, 0
  %2650 = or i1 %2648, %2649
  %2651 = zext i1 %2650 to i8
  store i8 %2651, i8* %40, align 1
  %2652 = and i32 %2646, 255
  %2653 = tail call i32 @llvm.ctpop.i32(i32 %2652)
  %2654 = trunc i32 %2653 to i8
  %2655 = and i8 %2654, 1
  %2656 = xor i8 %2655, 1
  store i8 %2656, i8* %47, align 1
  %2657 = xor i32 %2646, %2645
  %2658 = lshr i32 %2657, 4
  %2659 = trunc i32 %2658 to i8
  %2660 = and i8 %2659, 1
  store i8 %2660, i8* %53, align 1
  %2661 = zext i1 %2649 to i8
  store i8 %2661, i8* %56, align 1
  %2662 = lshr i32 %2646, 31
  %2663 = trunc i32 %2662 to i8
  store i8 %2663, i8* %59, align 1
  %2664 = lshr i32 %2645, 31
  %2665 = xor i32 %2662, %2664
  %2666 = add nuw nsw i32 %2665, %2662
  %2667 = icmp eq i32 %2666, 2
  %2668 = zext i1 %2667 to i8
  store i8 %2668, i8* %65, align 1
  %2669 = add i64 %2640, 20
  store i64 %2669, i64* %3, align 8
  store i32 %2646, i32* %2644, align 4
  %2670 = load i64, i64* %3, align 8
  %2671 = add i64 %2670, -745
  store i64 %2671, i64* %3, align 8
  br label %block_.L_46057b

block_.L_460869.loopexit:                         ; preds = %block_.L_46057b
  br label %block_.L_460869

block_.L_460869:                                  ; preds = %block_.L_460869.loopexit, %block_4605ae
  %2672 = phi i64 [ %2011, %block_4605ae ], [ %1966, %block_.L_460869.loopexit ]
  %2673 = zext i32 %1967 to i64
  store i64 %2673, i64* %RAX.i2177, align 8
  %2674 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %2675 = sub i32 %1967, %2674
  %2676 = icmp ult i32 %1967, %2674
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %40, align 1
  %2678 = and i32 %2675, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %47, align 1
  %2683 = xor i32 %2674, %1967
  %2684 = xor i32 %2683, %2675
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %53, align 1
  %2688 = icmp eq i32 %2675, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %56, align 1
  %2690 = lshr i32 %2675, 31
  %2691 = trunc i32 %2690 to i8
  store i8 %2691, i8* %59, align 1
  %2692 = lshr i32 %1967, 31
  %2693 = lshr i32 %2674, 31
  %2694 = xor i32 %2693, %2692
  %2695 = xor i32 %2690, %2692
  %2696 = add nuw nsw i32 %2695, %2694
  %2697 = icmp eq i32 %2696, 2
  %2698 = zext i1 %2697 to i8
  store i8 %2698, i8* %65, align 1
  %2699 = icmp ne i8 %2691, 0
  %2700 = xor i1 %2699, %2697
  %.demorgan = or i1 %2688, %2700
  %.v237 = select i1 %.demorgan, i64 20, i64 231
  %2701 = add i64 %2672, %.v237
  store i64 %2701, i64* %3, align 8
  br i1 %.demorgan, label %block_46087d, label %block_.L_460950

block_46087d:                                     ; preds = %block_.L_460869
  %2702 = add i64 %1930, -724
  store i64 %2702, i64* %RSI.i2169, align 8
  %2703 = add i64 %1930, -48
  %2704 = add i64 %2701, 10
  store i64 %2704, i64* %3, align 8
  %2705 = inttoptr i64 %2703 to i32*
  %2706 = load i32, i32* %2705, align 4
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RDI.i2050, align 8
  %2708 = add i64 %1930, -60
  %2709 = add i64 %2701, 13
  store i64 %2709, i64* %3, align 8
  %2710 = inttoptr i64 %2708 to i32*
  %2711 = load i32, i32* %2710, align 4
  %2712 = zext i32 %2711 to i64
  store i64 %2712, i64* %RDX.i2056, align 8
  %2713 = add i64 %1930, -64
  %2714 = add i64 %2701, 16
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = zext i32 %2716 to i64
  store i64 %2717, i64* %RCX.i2157, align 8
  %2718 = add i64 %2701, 12467
  %2719 = add i64 %2701, 21
  %2720 = load i64, i64* %6, align 8
  %2721 = add i64 %2720, -8
  %2722 = inttoptr i64 %2721 to i64*
  store i64 %2719, i64* %2722, align 8
  store i64 %2721, i64* %6, align 8
  store i64 %2718, i64* %3, align 8
  %call2_46088d = tail call %struct.Memory* @sub_463930.find_cap(%struct.State* nonnull %0, i64 %2718, %struct.Memory* %MEMORY.19)
  %2723 = load i64, i64* %RBP.i, align 8
  %2724 = add i64 %2723, -1216
  %2725 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2726 = load i64, i64* %3, align 8
  %2727 = add i64 %2726, 6
  store i64 %2727, i64* %3, align 8
  %2728 = inttoptr i64 %2724 to i32*
  store i32 %2725, i32* %2728, align 4
  %2729 = load i64, i64* %3, align 8
  store i64 5, i64* %RAX.i2177, align 8
  %2730 = load i64, i64* %RBP.i, align 8
  %2731 = add i64 %2730, -1216
  %2732 = add i64 %2729, 11
  store i64 %2732, i64* %3, align 8
  %2733 = inttoptr i64 %2731 to i32*
  %2734 = load i32, i32* %2733, align 4
  %2735 = sub i32 5, %2734
  %2736 = zext i32 %2735 to i64
  store i64 %2736, i64* %RAX.i2177, align 8
  %2737 = and i32 %2735, 255
  %2738 = tail call i32 @llvm.ctpop.i32(i32 %2737)
  %2739 = trunc i32 %2738 to i8
  %2740 = and i8 %2739, 1
  %2741 = xor i8 %2740, 1
  %2742 = icmp eq i32 %2735, 0
  %2743 = zext i1 %2742 to i8
  %2744 = lshr i32 %2735, 31
  %2745 = trunc i32 %2744 to i8
  store i8 0, i8* %40, align 1
  store i8 %2741, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 %2743, i8* %56, align 1
  store i8 %2745, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v288 = select i1 %2742, i64 20, i64 109
  %2746 = add i64 %2729, %.v288
  store i64 %2746, i64* %3, align 8
  br i1 %2742, label %block_4608ac, label %block_.L_460905

block_4608ac:                                     ; preds = %block_46087d
  %2747 = add i64 %2730, -56
  %2748 = add i64 %2746, 5
  store i64 %2748, i64* %3, align 8
  %2749 = inttoptr i64 %2747 to i64*
  %2750 = load i64, i64* %2749, align 8
  store i8 0, i8* %40, align 1
  %2751 = trunc i64 %2750 to i32
  %2752 = and i32 %2751, 255
  %2753 = tail call i32 @llvm.ctpop.i32(i32 %2752)
  %2754 = trunc i32 %2753 to i8
  %2755 = and i8 %2754, 1
  %2756 = xor i8 %2755, 1
  store i8 %2756, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2757 = icmp eq i64 %2750, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %56, align 1
  %2759 = lshr i64 %2750, 63
  %2760 = trunc i64 %2759 to i8
  store i8 %2760, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v290 = select i1 %2757, i64 23, i64 11
  %2761 = add i64 %2746, %.v290
  store i64 %2761, i64* %3, align 8
  br i1 %2757, label %block_.L_4608c3, label %block_4608b7

block_4608b7:                                     ; preds = %block_4608ac
  %2762 = add i64 %2730, -724
  %2763 = add i64 %2761, 6
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  %2765 = load i32, i32* %2764, align 4
  %2766 = zext i32 %2765 to i64
  store i64 %2766, i64* %RAX.i2177, align 8
  %2767 = add i64 %2761, 10
  store i64 %2767, i64* %3, align 8
  %2768 = load i64, i64* %2749, align 8
  store i64 %2768, i64* %RCX.i2157, align 8
  %2769 = add i64 %2761, 12
  store i64 %2769, i64* %3, align 8
  %2770 = inttoptr i64 %2768 to i32*
  store i32 %2765, i32* %2770, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_4608c3

block_.L_4608c3:                                  ; preds = %block_4608b7, %block_4608ac
  %2771 = phi i64 [ %.pre161, %block_4608b7 ], [ %2761, %block_4608ac ]
  %2772 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %2773 = trunc i64 %2772 to i32
  %2774 = and i32 %2773, 255
  %2775 = tail call i32 @llvm.ctpop.i32(i32 %2774)
  %2776 = trunc i32 %2775 to i8
  %2777 = and i8 %2776, 1
  %2778 = xor i8 %2777, 1
  store i8 %2778, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2779 = icmp eq i64 %2772, 0
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %56, align 1
  %2781 = lshr i64 %2772, 63
  %2782 = trunc i64 %2781 to i8
  store i8 %2782, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v291 = select i1 %2779, i64 54, i64 15
  %2783 = add i64 %2771, %.v291
  store i64 %2783, i64* %3, align 8
  br i1 %2779, label %block_.L_4608f9, label %block_4608d2

block_4608d2:                                     ; preds = %block_.L_4608c3
  store i64 5, i64* %RCX.i2157, align 8
  store i64 ptrtoint (%G__0x57fde6_type* @G__0x57fde6 to i64), i64* %68, align 8
  %2784 = load i64, i64* %RBP.i, align 8
  %2785 = add i64 %2784, -1176
  %2786 = add i64 %2783, 22
  store i64 %2786, i64* %3, align 8
  %2787 = inttoptr i64 %2785 to i64*
  %2788 = load i64, i64* %2787, align 8
  store i64 %2788, i64* %RDI.i2050, align 8
  %2789 = add i64 %2784, -1180
  %2790 = add i64 %2783, 28
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i32*
  %2792 = load i32, i32* %2791, align 4
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RSI.i2169, align 8
  %2794 = add i64 %2784, -724
  %2795 = add i64 %2783, 34
  store i64 %2795, i64* %3, align 8
  %2796 = inttoptr i64 %2794 to i32*
  %2797 = load i32, i32* %2796, align 4
  %2798 = zext i32 %2797 to i64
  store i64 %2798, i64* %RDX.i2056, align 8
  %2799 = add i64 %2783, -297234
  %2800 = add i64 %2783, 39
  %2801 = load i64, i64* %6, align 8
  %2802 = add i64 %2801, -8
  %2803 = inttoptr i64 %2802 to i64*
  store i64 %2800, i64* %2803, align 8
  store i64 %2802, i64* %6, align 8
  store i64 %2799, i64* %3, align 8
  %call2_4608f4 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %2799, %struct.Memory* %call2_46088d)
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_4608f9

block_.L_4608f9:                                  ; preds = %block_4608d2, %block_.L_4608c3
  %2804 = phi i64 [ %2783, %block_.L_4608c3 ], [ %.pre162, %block_4608d2 ]
  %MEMORY.32 = phi %struct.Memory* [ %call2_46088d, %block_.L_4608c3 ], [ %call2_4608f4, %block_4608d2 ]
  %2805 = load i64, i64* %RBP.i, align 8
  %2806 = add i64 %2805, -44
  %2807 = add i64 %2804, 7
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i32*
  store i32 5, i32* %2808, align 4
  %2809 = load i64, i64* %3, align 8
  %2810 = add i64 %2809, 2678
  store i64 %2810, i64* %3, align 8
  br label %block_.L_461376

block_.L_460905:                                  ; preds = %block_46087d
  store i64 5, i64* %RAX.i2177, align 8
  store i64 5, i64* %RCX.i2157, align 8
  %2811 = add i64 %2746, 13
  store i64 %2811, i64* %3, align 8
  %2812 = load i32, i32* %2733, align 4
  %2813 = sub i32 5, %2812
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %RCX.i2157, align 8
  %2815 = lshr i32 %2813, 31
  %2816 = lshr i32 %2812, 31
  %2817 = add nuw nsw i32 %2815, %2816
  %2818 = icmp eq i32 %2817, 2
  %2819 = zext i1 %2818 to i8
  %2820 = zext i32 %2812 to i64
  store i64 %2820, i64* %RAX.i2177, align 8
  %2821 = icmp ugt i32 %2813, 5
  %2822 = zext i1 %2821 to i8
  store i8 %2822, i8* %40, align 1
  %2823 = and i32 %2812, 255
  %2824 = tail call i32 @llvm.ctpop.i32(i32 %2823)
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  %2827 = xor i8 %2826, 1
  store i8 %2827, i8* %47, align 1
  %2828 = xor i32 %2813, %2812
  %2829 = lshr i32 %2828, 4
  %2830 = trunc i32 %2829 to i8
  %2831 = and i8 %2830, 1
  store i8 %2831, i8* %53, align 1
  %2832 = icmp eq i32 %2812, 0
  %2833 = zext i1 %2832 to i8
  store i8 %2833, i8* %56, align 1
  %2834 = trunc i32 %2816 to i8
  store i8 %2834, i8* %59, align 1
  store i8 %2819, i8* %65, align 1
  %2835 = add i64 %2730, -1168
  %2836 = add i64 %2746, 21
  store i64 %2836, i64* %3, align 8
  %2837 = inttoptr i64 %2835 to i32*
  %2838 = load i32, i32* %2837, align 4
  %2839 = sub i32 %2812, %2838
  %2840 = icmp ult i32 %2812, %2838
  %2841 = zext i1 %2840 to i8
  store i8 %2841, i8* %40, align 1
  %2842 = and i32 %2839, 255
  %2843 = tail call i32 @llvm.ctpop.i32(i32 %2842)
  %2844 = trunc i32 %2843 to i8
  %2845 = and i8 %2844, 1
  %2846 = xor i8 %2845, 1
  store i8 %2846, i8* %47, align 1
  %2847 = xor i32 %2838, %2812
  %2848 = xor i32 %2847, %2839
  %2849 = lshr i32 %2848, 4
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  store i8 %2851, i8* %53, align 1
  %2852 = icmp eq i32 %2839, 0
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %56, align 1
  %2854 = lshr i32 %2839, 31
  %2855 = trunc i32 %2854 to i8
  store i8 %2855, i8* %59, align 1
  %2856 = lshr i32 %2838, 31
  %2857 = xor i32 %2856, %2816
  %2858 = xor i32 %2854, %2816
  %2859 = add nuw nsw i32 %2858, %2857
  %2860 = icmp eq i32 %2859, 2
  %2861 = zext i1 %2860 to i8
  store i8 %2861, i8* %65, align 1
  %2862 = icmp ne i8 %2855, 0
  %2863 = xor i1 %2862, %2860
  %2864 = or i1 %2852, %2863
  %.v289 = select i1 %2864, i64 60, i64 27
  %2865 = add i64 %2746, %.v289
  store i64 %2865, i64* %3, align 8
  br i1 %2864, label %block_.L_460941, label %block_460920

block_460920:                                     ; preds = %block_.L_460905
  store i64 5, i64* %RAX.i2177, align 8
  %2866 = load i64, i64* %RBP.i, align 8
  %2867 = add i64 %2866, -724
  %2868 = add i64 %2865, 11
  store i64 %2868, i64* %3, align 8
  %2869 = inttoptr i64 %2867 to i32*
  %2870 = load i32, i32* %2869, align 4
  %2871 = add i64 %2866, -1164
  %2872 = add i64 %2865, 17
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i32*
  store i32 %2870, i32* %2873, align 4
  %2874 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2875 = zext i32 %2874 to i64
  %2876 = load i64, i64* %3, align 8
  store i64 %2875, i64* %RCX.i2157, align 8
  %2877 = load i64, i64* %RBP.i, align 8
  %2878 = add i64 %2877, -1216
  %2879 = add i64 %2876, 8
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = sub i32 %2874, %2881
  %2883 = zext i32 %2882 to i64
  store i64 %2883, i64* %RCX.i2157, align 8
  %2884 = lshr i32 %2882, 31
  %2885 = load i64, i64* %RAX.i2177, align 8
  %2886 = trunc i64 %2885 to i32
  %2887 = sub i32 %2886, %2882
  %2888 = zext i32 %2887 to i64
  store i64 %2888, i64* %RAX.i2177, align 8
  %2889 = icmp ult i32 %2886, %2882
  %2890 = zext i1 %2889 to i8
  store i8 %2890, i8* %40, align 1
  %2891 = and i32 %2887, 255
  %2892 = tail call i32 @llvm.ctpop.i32(i32 %2891)
  %2893 = trunc i32 %2892 to i8
  %2894 = and i8 %2893, 1
  %2895 = xor i8 %2894, 1
  store i8 %2895, i8* %47, align 1
  %2896 = xor i64 %2883, %2885
  %2897 = trunc i64 %2896 to i32
  %2898 = xor i32 %2897, %2887
  %2899 = lshr i32 %2898, 4
  %2900 = trunc i32 %2899 to i8
  %2901 = and i8 %2900, 1
  store i8 %2901, i8* %53, align 1
  %2902 = icmp eq i32 %2887, 0
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %56, align 1
  %2904 = lshr i32 %2887, 31
  %2905 = trunc i32 %2904 to i8
  store i8 %2905, i8* %59, align 1
  %2906 = lshr i32 %2886, 31
  %2907 = xor i32 %2884, %2906
  %2908 = xor i32 %2904, %2906
  %2909 = add nuw nsw i32 %2908, %2907
  %2910 = icmp eq i32 %2909, 2
  %2911 = zext i1 %2910 to i8
  store i8 %2911, i8* %65, align 1
  %2912 = add i64 %2877, -1168
  %2913 = add i64 %2876, 16
  store i64 %2913, i64* %3, align 8
  %2914 = inttoptr i64 %2912 to i32*
  store i32 %2887, i32* %2914, align 4
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_460941

block_.L_460941:                                  ; preds = %block_460920, %block_.L_460905
  %2915 = phi i64 [ %.pre163, %block_460920 ], [ %2865, %block_.L_460905 ]
  %2916 = add i64 %2915, 15
  store i64 %2916, i64* %3, align 8
  %.pre164 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br label %block_.L_460950

block_.L_460950:                                  ; preds = %block_.L_460869, %block_.L_460941
  %2917 = phi i32 [ %1967, %block_.L_460869 ], [ %.pre164, %block_.L_460941 ]
  %2918 = phi i64 [ %2701, %block_.L_460869 ], [ %2916, %block_.L_460941 ]
  %MEMORY.34 = phi %struct.Memory* [ %MEMORY.19, %block_.L_460869 ], [ %call2_46088d, %block_.L_460941 ]
  %2919 = zext i32 %2917 to i64
  store i64 %2919, i64* %RAX.i2177, align 8
  %2920 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
  %2921 = sub i32 %2917, %2920
  %2922 = icmp ult i32 %2917, %2920
  %2923 = zext i1 %2922 to i8
  store i8 %2923, i8* %40, align 1
  %2924 = and i32 %2921, 255
  %2925 = tail call i32 @llvm.ctpop.i32(i32 %2924)
  %2926 = trunc i32 %2925 to i8
  %2927 = and i8 %2926, 1
  %2928 = xor i8 %2927, 1
  store i8 %2928, i8* %47, align 1
  %2929 = xor i32 %2920, %2917
  %2930 = xor i32 %2929, %2921
  %2931 = lshr i32 %2930, 4
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  store i8 %2933, i8* %53, align 1
  %2934 = icmp eq i32 %2921, 0
  %2935 = zext i1 %2934 to i8
  store i8 %2935, i8* %56, align 1
  %2936 = lshr i32 %2921, 31
  %2937 = trunc i32 %2936 to i8
  store i8 %2937, i8* %59, align 1
  %2938 = lshr i32 %2917, 31
  %2939 = lshr i32 %2920, 31
  %2940 = xor i32 %2939, %2938
  %2941 = xor i32 %2936, %2938
  %2942 = add nuw nsw i32 %2941, %2940
  %2943 = icmp eq i32 %2942, 2
  %2944 = zext i1 %2943 to i8
  store i8 %2944, i8* %65, align 1
  %2945 = icmp ne i8 %2937, 0
  %2946 = xor i1 %2945, %2943
  %.demorgan217 = or i1 %2934, %2946
  %.v238 = select i1 %.demorgan217, i64 20, i64 231
  %2947 = add i64 %2918, %.v238
  store i64 %2947, i64* %3, align 8
  br i1 %.demorgan217, label %block_460964, label %block_.L_460a37

block_460964:                                     ; preds = %block_.L_460950
  %2948 = load i64, i64* %RBP.i, align 8
  %2949 = add i64 %2948, -724
  store i64 %2949, i64* %RSI.i2169, align 8
  %2950 = add i64 %2948, -48
  %2951 = add i64 %2947, 10
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i32*
  %2953 = load i32, i32* %2952, align 4
  %2954 = zext i32 %2953 to i64
  store i64 %2954, i64* %RDI.i2050, align 8
  %2955 = add i64 %2948, -60
  %2956 = add i64 %2947, 13
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i32*
  %2958 = load i32, i32* %2957, align 4
  %2959 = zext i32 %2958 to i64
  store i64 %2959, i64* %RDX.i2056, align 8
  %2960 = add i64 %2948, -64
  %2961 = add i64 %2947, 16
  store i64 %2961, i64* %3, align 8
  %2962 = inttoptr i64 %2960 to i32*
  %2963 = load i32, i32* %2962, align 4
  %2964 = zext i32 %2963 to i64
  store i64 %2964, i64* %RCX.i2157, align 8
  %2965 = add i64 %2947, 35980
  %2966 = add i64 %2947, 21
  %2967 = load i64, i64* %6, align 8
  %2968 = add i64 %2967, -8
  %2969 = inttoptr i64 %2968 to i64*
  store i64 %2966, i64* %2969, align 8
  store i64 %2968, i64* %6, align 8
  store i64 %2965, i64* %3, align 8
  %call2_460974 = tail call %struct.Memory* @sub_4695f0.draw_back(%struct.State* nonnull %0, i64 %2965, %struct.Memory* %MEMORY.34)
  %2970 = load i64, i64* %RBP.i, align 8
  %2971 = add i64 %2970, -1220
  %2972 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %2973 = load i64, i64* %3, align 8
  %2974 = add i64 %2973, 6
  store i64 %2974, i64* %3, align 8
  %2975 = inttoptr i64 %2971 to i32*
  store i32 %2972, i32* %2975, align 4
  %2976 = load i64, i64* %3, align 8
  store i64 5, i64* %RAX.i2177, align 8
  %2977 = load i64, i64* %RBP.i, align 8
  %2978 = add i64 %2977, -1220
  %2979 = add i64 %2976, 11
  store i64 %2979, i64* %3, align 8
  %2980 = inttoptr i64 %2978 to i32*
  %2981 = load i32, i32* %2980, align 4
  %2982 = sub i32 5, %2981
  %2983 = zext i32 %2982 to i64
  store i64 %2983, i64* %RAX.i2177, align 8
  %2984 = and i32 %2982, 255
  %2985 = tail call i32 @llvm.ctpop.i32(i32 %2984)
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = xor i8 %2987, 1
  %2989 = icmp eq i32 %2982, 0
  %2990 = zext i1 %2989 to i8
  %2991 = lshr i32 %2982, 31
  %2992 = trunc i32 %2991 to i8
  store i8 0, i8* %40, align 1
  store i8 %2988, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 %2990, i8* %56, align 1
  store i8 %2992, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v284 = select i1 %2989, i64 20, i64 109
  %2993 = add i64 %2976, %.v284
  store i64 %2993, i64* %3, align 8
  br i1 %2989, label %block_460993, label %block_.L_4609ec

block_460993:                                     ; preds = %block_460964
  %2994 = add i64 %2977, -56
  %2995 = add i64 %2993, 5
  store i64 %2995, i64* %3, align 8
  %2996 = inttoptr i64 %2994 to i64*
  %2997 = load i64, i64* %2996, align 8
  store i8 0, i8* %40, align 1
  %2998 = trunc i64 %2997 to i32
  %2999 = and i32 %2998, 255
  %3000 = tail call i32 @llvm.ctpop.i32(i32 %2999)
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = xor i8 %3002, 1
  store i8 %3003, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3004 = icmp eq i64 %2997, 0
  %3005 = zext i1 %3004 to i8
  store i8 %3005, i8* %56, align 1
  %3006 = lshr i64 %2997, 63
  %3007 = trunc i64 %3006 to i8
  store i8 %3007, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v286 = select i1 %3004, i64 23, i64 11
  %3008 = add i64 %2993, %.v286
  store i64 %3008, i64* %3, align 8
  br i1 %3004, label %block_.L_4609aa, label %block_46099e

block_46099e:                                     ; preds = %block_460993
  %3009 = add i64 %2977, -724
  %3010 = add i64 %3008, 6
  store i64 %3010, i64* %3, align 8
  %3011 = inttoptr i64 %3009 to i32*
  %3012 = load i32, i32* %3011, align 4
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RAX.i2177, align 8
  %3014 = add i64 %3008, 10
  store i64 %3014, i64* %3, align 8
  %3015 = load i64, i64* %2996, align 8
  store i64 %3015, i64* %RCX.i2157, align 8
  %3016 = add i64 %3008, 12
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  store i32 %3012, i32* %3017, align 4
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_4609aa

block_.L_4609aa:                                  ; preds = %block_46099e, %block_460993
  %3018 = phi i64 [ %.pre165, %block_46099e ], [ %3008, %block_460993 ]
  %3019 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %3020 = trunc i64 %3019 to i32
  %3021 = and i32 %3020, 255
  %3022 = tail call i32 @llvm.ctpop.i32(i32 %3021)
  %3023 = trunc i32 %3022 to i8
  %3024 = and i8 %3023, 1
  %3025 = xor i8 %3024, 1
  store i8 %3025, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3026 = icmp eq i64 %3019, 0
  %3027 = zext i1 %3026 to i8
  store i8 %3027, i8* %56, align 1
  %3028 = lshr i64 %3019, 63
  %3029 = trunc i64 %3028 to i8
  store i8 %3029, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v287 = select i1 %3026, i64 54, i64 15
  %3030 = add i64 %3018, %.v287
  store i64 %3030, i64* %3, align 8
  br i1 %3026, label %block_.L_4609e0, label %block_4609b9

block_4609b9:                                     ; preds = %block_.L_4609aa
  store i64 5, i64* %RCX.i2157, align 8
  store i64 ptrtoint (%G__0x57fdf0_type* @G__0x57fdf0 to i64), i64* %68, align 8
  %3031 = load i64, i64* %RBP.i, align 8
  %3032 = add i64 %3031, -1176
  %3033 = add i64 %3030, 22
  store i64 %3033, i64* %3, align 8
  %3034 = inttoptr i64 %3032 to i64*
  %3035 = load i64, i64* %3034, align 8
  store i64 %3035, i64* %RDI.i2050, align 8
  %3036 = add i64 %3031, -1180
  %3037 = add i64 %3030, 28
  store i64 %3037, i64* %3, align 8
  %3038 = inttoptr i64 %3036 to i32*
  %3039 = load i32, i32* %3038, align 4
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RSI.i2169, align 8
  %3041 = add i64 %3031, -724
  %3042 = add i64 %3030, 34
  store i64 %3042, i64* %3, align 8
  %3043 = inttoptr i64 %3041 to i32*
  %3044 = load i32, i32* %3043, align 4
  %3045 = zext i32 %3044 to i64
  store i64 %3045, i64* %RDX.i2056, align 8
  %3046 = add i64 %3030, -297465
  %3047 = add i64 %3030, 39
  %3048 = load i64, i64* %6, align 8
  %3049 = add i64 %3048, -8
  %3050 = inttoptr i64 %3049 to i64*
  store i64 %3047, i64* %3050, align 8
  store i64 %3049, i64* %6, align 8
  store i64 %3046, i64* %3, align 8
  %call2_4609db = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %3046, %struct.Memory* %call2_460974)
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_4609e0

block_.L_4609e0:                                  ; preds = %block_4609b9, %block_.L_4609aa
  %3051 = phi i64 [ %3030, %block_.L_4609aa ], [ %.pre166, %block_4609b9 ]
  %MEMORY.36 = phi %struct.Memory* [ %call2_460974, %block_.L_4609aa ], [ %call2_4609db, %block_4609b9 ]
  %3052 = load i64, i64* %RBP.i, align 8
  %3053 = add i64 %3052, -44
  %3054 = add i64 %3051, 7
  store i64 %3054, i64* %3, align 8
  %3055 = inttoptr i64 %3053 to i32*
  store i32 5, i32* %3055, align 4
  %3056 = load i64, i64* %3, align 8
  %3057 = add i64 %3056, 2447
  store i64 %3057, i64* %3, align 8
  br label %block_.L_461376

block_.L_4609ec:                                  ; preds = %block_460964
  store i64 5, i64* %RAX.i2177, align 8
  store i64 5, i64* %RCX.i2157, align 8
  %3058 = add i64 %2993, 13
  store i64 %3058, i64* %3, align 8
  %3059 = load i32, i32* %2980, align 4
  %3060 = sub i32 5, %3059
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RCX.i2157, align 8
  %3062 = lshr i32 %3060, 31
  %3063 = lshr i32 %3059, 31
  %3064 = add nuw nsw i32 %3062, %3063
  %3065 = icmp eq i32 %3064, 2
  %3066 = zext i1 %3065 to i8
  %3067 = zext i32 %3059 to i64
  store i64 %3067, i64* %RAX.i2177, align 8
  %3068 = icmp ugt i32 %3060, 5
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %40, align 1
  %3070 = and i32 %3059, 255
  %3071 = tail call i32 @llvm.ctpop.i32(i32 %3070)
  %3072 = trunc i32 %3071 to i8
  %3073 = and i8 %3072, 1
  %3074 = xor i8 %3073, 1
  store i8 %3074, i8* %47, align 1
  %3075 = xor i32 %3060, %3059
  %3076 = lshr i32 %3075, 4
  %3077 = trunc i32 %3076 to i8
  %3078 = and i8 %3077, 1
  store i8 %3078, i8* %53, align 1
  %3079 = icmp eq i32 %3059, 0
  %3080 = zext i1 %3079 to i8
  store i8 %3080, i8* %56, align 1
  %3081 = trunc i32 %3063 to i8
  store i8 %3081, i8* %59, align 1
  store i8 %3066, i8* %65, align 1
  %3082 = add i64 %2977, -1168
  %3083 = add i64 %2993, 21
  store i64 %3083, i64* %3, align 8
  %3084 = inttoptr i64 %3082 to i32*
  %3085 = load i32, i32* %3084, align 4
  %3086 = sub i32 %3059, %3085
  %3087 = icmp ult i32 %3059, %3085
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %40, align 1
  %3089 = and i32 %3086, 255
  %3090 = tail call i32 @llvm.ctpop.i32(i32 %3089)
  %3091 = trunc i32 %3090 to i8
  %3092 = and i8 %3091, 1
  %3093 = xor i8 %3092, 1
  store i8 %3093, i8* %47, align 1
  %3094 = xor i32 %3085, %3059
  %3095 = xor i32 %3094, %3086
  %3096 = lshr i32 %3095, 4
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  store i8 %3098, i8* %53, align 1
  %3099 = icmp eq i32 %3086, 0
  %3100 = zext i1 %3099 to i8
  store i8 %3100, i8* %56, align 1
  %3101 = lshr i32 %3086, 31
  %3102 = trunc i32 %3101 to i8
  store i8 %3102, i8* %59, align 1
  %3103 = lshr i32 %3085, 31
  %3104 = xor i32 %3103, %3063
  %3105 = xor i32 %3101, %3063
  %3106 = add nuw nsw i32 %3105, %3104
  %3107 = icmp eq i32 %3106, 2
  %3108 = zext i1 %3107 to i8
  store i8 %3108, i8* %65, align 1
  %3109 = icmp ne i8 %3102, 0
  %3110 = xor i1 %3109, %3107
  %3111 = or i1 %3099, %3110
  %.v285 = select i1 %3111, i64 60, i64 27
  %3112 = add i64 %2993, %.v285
  store i64 %3112, i64* %3, align 8
  br i1 %3111, label %block_.L_460a28, label %block_460a07

block_460a07:                                     ; preds = %block_.L_4609ec
  store i64 5, i64* %RAX.i2177, align 8
  %3113 = load i64, i64* %RBP.i, align 8
  %3114 = add i64 %3113, -724
  %3115 = add i64 %3112, 11
  store i64 %3115, i64* %3, align 8
  %3116 = inttoptr i64 %3114 to i32*
  %3117 = load i32, i32* %3116, align 4
  %3118 = add i64 %3113, -1164
  %3119 = add i64 %3112, 17
  store i64 %3119, i64* %3, align 8
  %3120 = inttoptr i64 %3118 to i32*
  store i32 %3117, i32* %3120, align 4
  %3121 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %3122 = zext i32 %3121 to i64
  %3123 = load i64, i64* %3, align 8
  store i64 %3122, i64* %RCX.i2157, align 8
  %3124 = load i64, i64* %RBP.i, align 8
  %3125 = add i64 %3124, -1220
  %3126 = add i64 %3123, 8
  store i64 %3126, i64* %3, align 8
  %3127 = inttoptr i64 %3125 to i32*
  %3128 = load i32, i32* %3127, align 4
  %3129 = sub i32 %3121, %3128
  %3130 = zext i32 %3129 to i64
  store i64 %3130, i64* %RCX.i2157, align 8
  %3131 = lshr i32 %3129, 31
  %3132 = load i64, i64* %RAX.i2177, align 8
  %3133 = trunc i64 %3132 to i32
  %3134 = sub i32 %3133, %3129
  %3135 = zext i32 %3134 to i64
  store i64 %3135, i64* %RAX.i2177, align 8
  %3136 = icmp ult i32 %3133, %3129
  %3137 = zext i1 %3136 to i8
  store i8 %3137, i8* %40, align 1
  %3138 = and i32 %3134, 255
  %3139 = tail call i32 @llvm.ctpop.i32(i32 %3138)
  %3140 = trunc i32 %3139 to i8
  %3141 = and i8 %3140, 1
  %3142 = xor i8 %3141, 1
  store i8 %3142, i8* %47, align 1
  %3143 = xor i64 %3130, %3132
  %3144 = trunc i64 %3143 to i32
  %3145 = xor i32 %3144, %3134
  %3146 = lshr i32 %3145, 4
  %3147 = trunc i32 %3146 to i8
  %3148 = and i8 %3147, 1
  store i8 %3148, i8* %53, align 1
  %3149 = icmp eq i32 %3134, 0
  %3150 = zext i1 %3149 to i8
  store i8 %3150, i8* %56, align 1
  %3151 = lshr i32 %3134, 31
  %3152 = trunc i32 %3151 to i8
  store i8 %3152, i8* %59, align 1
  %3153 = lshr i32 %3133, 31
  %3154 = xor i32 %3131, %3153
  %3155 = xor i32 %3151, %3153
  %3156 = add nuw nsw i32 %3155, %3154
  %3157 = icmp eq i32 %3156, 2
  %3158 = zext i1 %3157 to i8
  store i8 %3158, i8* %65, align 1
  %3159 = add i64 %3124, -1168
  %3160 = add i64 %3123, 16
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3159 to i32*
  store i32 %3134, i32* %3161, align 4
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_460a28

block_.L_460a28:                                  ; preds = %block_460a07, %block_.L_4609ec
  %3162 = phi i64 [ %.pre167, %block_460a07 ], [ %3112, %block_.L_4609ec ]
  %3163 = add i64 %3162, 15
  store i64 %3163, i64* %3, align 8
  %.pre168 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br label %block_.L_460a37

block_.L_460a37:                                  ; preds = %block_.L_460950, %block_.L_460a28
  %3164 = phi i32 [ %2917, %block_.L_460950 ], [ %.pre168, %block_.L_460a28 ]
  %3165 = phi i64 [ %2947, %block_.L_460950 ], [ %3163, %block_.L_460a28 ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.34, %block_.L_460950 ], [ %call2_460974, %block_.L_460a28 ]
  %3166 = zext i32 %3164 to i64
  store i64 %3166, i64* %RAX.i2177, align 8
  %3167 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %3168 = sub i32 %3164, %3167
  %3169 = icmp ult i32 %3164, %3167
  %3170 = zext i1 %3169 to i8
  store i8 %3170, i8* %40, align 1
  %3171 = and i32 %3168, 255
  %3172 = tail call i32 @llvm.ctpop.i32(i32 %3171)
  %3173 = trunc i32 %3172 to i8
  %3174 = and i8 %3173, 1
  %3175 = xor i8 %3174, 1
  store i8 %3175, i8* %47, align 1
  %3176 = xor i32 %3167, %3164
  %3177 = xor i32 %3176, %3168
  %3178 = lshr i32 %3177, 4
  %3179 = trunc i32 %3178 to i8
  %3180 = and i8 %3179, 1
  store i8 %3180, i8* %53, align 1
  %3181 = icmp eq i32 %3168, 0
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %56, align 1
  %3183 = lshr i32 %3168, 31
  %3184 = trunc i32 %3183 to i8
  store i8 %3184, i8* %59, align 1
  %3185 = lshr i32 %3164, 31
  %3186 = lshr i32 %3167, 31
  %3187 = xor i32 %3186, %3185
  %3188 = xor i32 %3183, %3185
  %3189 = add nuw nsw i32 %3188, %3187
  %3190 = icmp eq i32 %3189, 2
  %3191 = zext i1 %3190 to i8
  store i8 %3191, i8* %65, align 1
  %3192 = icmp ne i8 %3184, 0
  %3193 = xor i1 %3192, %3190
  %.demorgan218 = or i1 %3181, %3193
  %.v239 = select i1 %.demorgan218, i64 20, i64 1333
  %3194 = add i64 %3165, %.v239
  store i64 %3194, i64* %3, align 8
  br i1 %.demorgan218, label %block_460a4b, label %block_.L_460f6c

block_460a4b:                                     ; preds = %block_.L_460a37
  store i64 2, i64* %RDX.i2056, align 8
  %3195 = load i64, i64* %RBP.i, align 8
  %3196 = add i64 %3195, -720
  store i64 %3196, i64* %RSI.i2169, align 8
  %3197 = add i64 %3195, -760
  %3198 = add i64 %3194, 18
  store i64 %3198, i64* %3, align 8
  %3199 = inttoptr i64 %3197 to i32*
  %3200 = load i32, i32* %3199, align 4
  %3201 = zext i32 %3200 to i64
  store i64 %3201, i64* %RAX.i2177, align 8
  %3202 = add i64 %3195, -1224
  %3203 = add i64 %3194, 24
  store i64 %3203, i64* %3, align 8
  %3204 = inttoptr i64 %3202 to i32*
  store i32 %3200, i32* %3204, align 4
  %3205 = load i64, i64* %RBP.i, align 8
  %3206 = add i64 %3205, -48
  %3207 = load i64, i64* %3, align 8
  %3208 = add i64 %3207, 3
  store i64 %3208, i64* %3, align 8
  %3209 = inttoptr i64 %3206 to i32*
  %3210 = load i32, i32* %3209, align 4
  %3211 = zext i32 %3210 to i64
  store i64 %3211, i64* %RDI.i2050, align 8
  %3212 = add i64 %3207, -314947
  %3213 = add i64 %3207, 8
  %3214 = load i64, i64* %6, align 8
  %3215 = add i64 %3214, -8
  %3216 = inttoptr i64 %3215 to i64*
  store i64 %3213, i64* %3216, align 8
  store i64 %3215, i64* %6, align 8
  store i64 %3212, i64* %3, align 8
  %call2_460a66 = tail call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* nonnull %0, i64 %3212, %struct.Memory* %MEMORY.38)
  %3217 = load i64, i64* %RBP.i, align 8
  %3218 = add i64 %3217, -76
  %3219 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %3220 = load i64, i64* %3, align 8
  %3221 = add i64 %3220, 3
  store i64 %3221, i64* %3, align 8
  %3222 = inttoptr i64 %3218 to i32*
  store i32 %3219, i32* %3222, align 4
  %3223 = load i64, i64* %RBP.i, align 8
  %3224 = add i64 %3223, -744
  %3225 = load i64, i64* %3, align 8
  %3226 = add i64 %3225, 10
  store i64 %3226, i64* %3, align 8
  %3227 = inttoptr i64 %3224 to i32*
  store i32 0, i32* %3227, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_460a78

block_.L_460a78:                                  ; preds = %block_.L_460c39, %block_460a4b
  %3228 = phi i64 [ %.pre169, %block_460a4b ], [ %3776, %block_.L_460c39 ]
  %MEMORY.39 = phi %struct.Memory* [ %call2_460a66, %block_460a4b ], [ %MEMORY.45, %block_.L_460c39 ]
  %3229 = load i64, i64* %RBP.i, align 8
  %3230 = add i64 %3229, -744
  %3231 = add i64 %3228, 6
  store i64 %3231, i64* %3, align 8
  %3232 = inttoptr i64 %3230 to i32*
  %3233 = load i32, i32* %3232, align 4
  %3234 = zext i32 %3233 to i64
  store i64 %3234, i64* %RAX.i2177, align 8
  %3235 = add i64 %3229, -76
  %3236 = add i64 %3228, 9
  store i64 %3236, i64* %3, align 8
  %3237 = inttoptr i64 %3235 to i32*
  %3238 = load i32, i32* %3237, align 4
  %3239 = sub i32 %3233, %3238
  %3240 = icmp ult i32 %3233, %3238
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %40, align 1
  %3242 = and i32 %3239, 255
  %3243 = tail call i32 @llvm.ctpop.i32(i32 %3242)
  %3244 = trunc i32 %3243 to i8
  %3245 = and i8 %3244, 1
  %3246 = xor i8 %3245, 1
  store i8 %3246, i8* %47, align 1
  %3247 = xor i32 %3238, %3233
  %3248 = xor i32 %3247, %3239
  %3249 = lshr i32 %3248, 4
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  store i8 %3251, i8* %53, align 1
  %3252 = icmp eq i32 %3239, 0
  %3253 = zext i1 %3252 to i8
  store i8 %3253, i8* %56, align 1
  %3254 = lshr i32 %3239, 31
  %3255 = trunc i32 %3254 to i8
  store i8 %3255, i8* %59, align 1
  %3256 = lshr i32 %3233, 31
  %3257 = lshr i32 %3238, 31
  %3258 = xor i32 %3257, %3256
  %3259 = xor i32 %3254, %3256
  %3260 = add nuw nsw i32 %3259, %3258
  %3261 = icmp eq i32 %3260, 2
  %3262 = zext i1 %3261 to i8
  store i8 %3262, i8* %65, align 1
  %3263 = icmp ne i8 %3255, 0
  %3264 = xor i1 %3263, %3261
  %.v265 = select i1 %3264, i64 15, i64 469
  %3265 = add i64 %3228, %.v265
  store i64 %3265, i64* %3, align 8
  br i1 %3264, label %block_460a87, label %block_.L_460c4d

block_460a87:                                     ; preds = %block_.L_460a78
  store i64 2, i64* %RSI.i2169, align 8
  %3266 = add i64 %3229, -1232
  store i64 %3266, i64* %RDX.i2056, align 8
  %3267 = add i64 %3265, 19
  store i64 %3267, i64* %3, align 8
  %3268 = load i32, i32* %3232, align 4
  %3269 = sext i32 %3268 to i64
  store i64 %3269, i64* %RAX.i2177, align 8
  %3270 = shl nsw i64 %3269, 2
  %3271 = add i64 %3229, -720
  %3272 = add i64 %3271, %3270
  %3273 = add i64 %3265, 26
  store i64 %3273, i64* %3, align 8
  %3274 = inttoptr i64 %3272 to i32*
  %3275 = load i32, i32* %3274, align 4
  %3276 = zext i32 %3275 to i64
  store i64 %3276, i64* %RDI.i2050, align 8
  %3277 = add i64 %3265, -332359
  %3278 = add i64 %3265, 31
  %3279 = load i64, i64* %6, align 8
  %3280 = add i64 %3279, -8
  %3281 = inttoptr i64 %3280 to i64*
  store i64 %3278, i64* %3281, align 8
  store i64 %3280, i64* %6, align 8
  store i64 %3277, i64* %3, align 8
  %call2_460aa1 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %3277, %struct.Memory* %MEMORY.39)
  %3282 = load i64, i64* %3, align 8
  store i64 4, i64* %RDX.i2056, align 8
  store i64 0, i64* %RSI.i2169, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RCX.i2157, align 8
  %3283 = load i64, i64* %RBP.i, align 8
  %3284 = add i64 %3283, -1232
  %3285 = add i64 %3282, 15
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i32*
  %3287 = load i32, i32* %3286, align 4
  %3288 = zext i32 %3287 to i64
  store i64 %3288, i64* %RDI.i2050, align 8
  %3289 = add i64 %3283, -72
  %3290 = add i64 %3282, 18
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to i32*
  %3292 = load i32, i32* %3291, align 4
  %3293 = zext i32 %3292 to i64
  store i64 %3293, i64* %RSI.i2169, align 8
  %3294 = add i64 %3283, -1448
  %3295 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %3296 = add i64 %3282, 24
  store i64 %3296, i64* %3, align 8
  %3297 = inttoptr i64 %3294 to i32*
  store i32 %3295, i32* %3297, align 4
  %3298 = load i64, i64* %3, align 8
  %3299 = add i64 %3298, -324878
  %3300 = add i64 %3298, 5
  %3301 = load i64, i64* %6, align 8
  %3302 = add i64 %3301, -8
  %3303 = inttoptr i64 %3302 to i64*
  store i64 %3300, i64* %3303, align 8
  store i64 %3302, i64* %6, align 8
  store i64 %3299, i64* %3, align 8
  %call2_460abe = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %3299, %struct.Memory* %MEMORY.39)
  %3304 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %3305 = load i64, i64* %3, align 8
  %3306 = add i32 %3304, -3
  %3307 = icmp ult i32 %3304, 3
  %3308 = zext i1 %3307 to i8
  store i8 %3308, i8* %40, align 1
  %3309 = and i32 %3306, 255
  %3310 = tail call i32 @llvm.ctpop.i32(i32 %3309)
  %3311 = trunc i32 %3310 to i8
  %3312 = and i8 %3311, 1
  %3313 = xor i8 %3312, 1
  store i8 %3313, i8* %47, align 1
  %3314 = xor i32 %3306, %3304
  %3315 = lshr i32 %3314, 4
  %3316 = trunc i32 %3315 to i8
  %3317 = and i8 %3316, 1
  store i8 %3317, i8* %53, align 1
  %3318 = icmp eq i32 %3306, 0
  %3319 = zext i1 %3318 to i8
  store i8 %3319, i8* %56, align 1
  %3320 = lshr i32 %3306, 31
  %3321 = trunc i32 %3320 to i8
  store i8 %3321, i8* %59, align 1
  %3322 = lshr i32 %3304, 31
  %3323 = xor i32 %3320, %3322
  %3324 = add nuw nsw i32 %3323, %3322
  %3325 = icmp eq i32 %3324, 2
  %3326 = zext i1 %3325 to i8
  store i8 %3326, i8* %65, align 1
  %3327 = icmp ne i8 %3321, 0
  %3328 = xor i1 %3327, %3325
  %3329 = or i1 %3318, %3328
  %.v279 = select i1 %3329, i64 46, i64 9
  %3330 = add i64 %3305, %.v279
  store i64 %3330, i64* %3, align 8
  br i1 %3329, label %block_.L_460af1, label %block_460acc

block_460acc:                                     ; preds = %block_460a87
  store i64 4, i64* %RDX.i2056, align 8
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RCX.i2157, align 8
  %3331 = load i64, i64* %RBP.i, align 8
  %3332 = add i64 %3331, -1228
  %3333 = add i64 %3330, 15
  store i64 %3333, i64* %3, align 8
  %3334 = inttoptr i64 %3332 to i32*
  %3335 = load i32, i32* %3334, align 4
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RDI.i2050, align 8
  %3337 = add i64 %3331, -72
  %3338 = add i64 %3330, 18
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to i32*
  %3340 = load i32, i32* %3339, align 4
  %3341 = zext i32 %3340 to i64
  store i64 %3341, i64* %RSI.i2169, align 8
  %3342 = add i64 %3330, -324892
  %3343 = add i64 %3330, 23
  %3344 = load i64, i64* %6, align 8
  %3345 = add i64 %3344, -8
  %3346 = inttoptr i64 %3345 to i64*
  store i64 %3343, i64* %3346, align 8
  store i64 %3345, i64* %6, align 8
  store i64 %3342, i64* %3, align 8
  %call2_460ade = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %3342, %struct.Memory* %MEMORY.39)
  %3347 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %3348 = load i64, i64* %3, align 8
  %3349 = add i32 %3347, -3
  %3350 = icmp ult i32 %3347, 3
  %3351 = zext i1 %3350 to i8
  store i8 %3351, i8* %40, align 1
  %3352 = and i32 %3349, 255
  %3353 = tail call i32 @llvm.ctpop.i32(i32 %3352)
  %3354 = trunc i32 %3353 to i8
  %3355 = and i8 %3354, 1
  %3356 = xor i8 %3355, 1
  store i8 %3356, i8* %47, align 1
  %3357 = xor i32 %3349, %3347
  %3358 = lshr i32 %3357, 4
  %3359 = trunc i32 %3358 to i8
  %3360 = and i8 %3359, 1
  store i8 %3360, i8* %53, align 1
  %3361 = icmp eq i32 %3349, 0
  %3362 = zext i1 %3361 to i8
  store i8 %3362, i8* %56, align 1
  %3363 = lshr i32 %3349, 31
  %3364 = trunc i32 %3363 to i8
  store i8 %3364, i8* %59, align 1
  %3365 = lshr i32 %3347, 31
  %3366 = xor i32 %3363, %3365
  %3367 = add nuw nsw i32 %3366, %3365
  %3368 = icmp eq i32 %3367, 2
  %3369 = zext i1 %3368 to i8
  store i8 %3369, i8* %65, align 1
  %3370 = icmp ne i8 %3364, 0
  %3371 = xor i1 %3370, %3368
  %3372 = or i1 %3361, %3371
  %.v280 = select i1 %3372, i64 14, i64 9
  %3373 = add i64 %3348, %.v280
  store i64 %3373, i64* %3, align 8
  br i1 %3372, label %block_.L_460af1, label %block_460aec

block_460aec:                                     ; preds = %block_460acc
  %3374 = add i64 %3373, 333
  store i64 %3374, i64* %3, align 8
  %.pre179 = load i64, i64* %RBP.i, align 8
  br label %block_.L_460c39

block_.L_460af1:                                  ; preds = %block_460acc, %block_460a87
  %3375 = phi i64 [ %3373, %block_460acc ], [ %3330, %block_460a87 ]
  %3376 = load i64, i64* %RBP.i, align 8
  %3377 = add i64 %3376, -1160
  store i64 %3377, i64* %RSI.i2169, align 8
  %3378 = add i64 %3376, -744
  %3379 = add i64 %3375, 14
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3378 to i32*
  %3381 = load i32, i32* %3380, align 4
  %3382 = sext i32 %3381 to i64
  store i64 %3382, i64* %RAX.i2177, align 8
  %3383 = shl nsw i64 %3382, 2
  %3384 = add i64 %3376, -720
  %3385 = add i64 %3384, %3383
  %3386 = add i64 %3375, 21
  store i64 %3386, i64* %3, align 8
  %3387 = inttoptr i64 %3385 to i32*
  %3388 = load i32, i32* %3387, align 4
  %3389 = zext i32 %3388 to i64
  store i64 %3389, i64* %RDI.i2050, align 8
  %3390 = add i64 %3375, 4767
  %3391 = add i64 %3375, 26
  %3392 = load i64, i64* %6, align 8
  %3393 = add i64 %3392, -8
  %3394 = inttoptr i64 %3393 to i64*
  store i64 %3391, i64* %3394, align 8
  store i64 %3393, i64* %6, align 8
  store i64 %3390, i64* %3, align 8
  %call2_460b06 = tail call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* nonnull %0, i64 %3390, %struct.Memory* %MEMORY.39)
  %3395 = load i64, i64* %RBP.i, align 8
  %3396 = add i64 %3395, -1160
  %3397 = load i64, i64* %3, align 8
  store i64 %3396, i64* %RSI.i2169, align 8
  store i64 1, i64* %RDX.i2056, align 8
  %3398 = add i64 %3395, -744
  %3399 = add i64 %3397, 19
  store i64 %3399, i64* %3, align 8
  %3400 = inttoptr i64 %3398 to i32*
  %3401 = load i32, i32* %3400, align 4
  %3402 = sext i32 %3401 to i64
  store i64 %3402, i64* %RAX.i2177, align 8
  %3403 = shl nsw i64 %3402, 2
  %3404 = add i64 %3395, -720
  %3405 = add i64 %3404, %3403
  %3406 = add i64 %3397, 26
  store i64 %3406, i64* %3, align 8
  %3407 = inttoptr i64 %3405 to i32*
  %3408 = load i32, i32* %3407, align 4
  %3409 = zext i32 %3408 to i64
  store i64 %3409, i64* %RDI.i2050, align 8
  %3410 = add i64 %3397, 24485
  %3411 = add i64 %3397, 31
  %3412 = load i64, i64* %6, align 8
  %3413 = add i64 %3412, -8
  %3414 = inttoptr i64 %3413 to i64*
  store i64 %3411, i64* %3414, align 8
  store i64 %3413, i64* %6, align 8
  store i64 %3410, i64* %3, align 8
  %call2_460b25 = tail call %struct.Memory* @sub_466ab0.break_chain2_moves(%struct.State* nonnull %0, i64 %3410, %struct.Memory* %call2_460b06)
  %3415 = load i64, i64* %RBP.i, align 8
  %3416 = add i64 %3415, -752
  %3417 = load i64, i64* %3, align 8
  %3418 = add i64 %3417, 10
  store i64 %3418, i64* %3, align 8
  %3419 = inttoptr i64 %3416 to i32*
  store i32 0, i32* %3419, align 4
  %.pre178 = load i64, i64* %3, align 8
  br label %block_.L_460b34

block_.L_460b34:                                  ; preds = %block_.L_460c16, %block_.L_460af1
  %3420 = phi i64 [ %3744, %block_.L_460c16 ], [ %.pre178, %block_.L_460af1 ]
  %3421 = load i64, i64* %RBP.i, align 8
  %3422 = add i64 %3421, -752
  %3423 = add i64 %3420, 7
  store i64 %3423, i64* %3, align 8
  %3424 = inttoptr i64 %3422 to i32*
  %3425 = load i32, i32* %3424, align 4
  %3426 = add i32 %3425, -2
  %3427 = icmp ult i32 %3425, 2
  %3428 = zext i1 %3427 to i8
  store i8 %3428, i8* %40, align 1
  %3429 = and i32 %3426, 255
  %3430 = tail call i32 @llvm.ctpop.i32(i32 %3429)
  %3431 = trunc i32 %3430 to i8
  %3432 = and i8 %3431, 1
  %3433 = xor i8 %3432, 1
  store i8 %3433, i8* %47, align 1
  %3434 = xor i32 %3426, %3425
  %3435 = lshr i32 %3434, 4
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  store i8 %3437, i8* %53, align 1
  %3438 = icmp eq i32 %3426, 0
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %56, align 1
  %3440 = lshr i32 %3426, 31
  %3441 = trunc i32 %3440 to i8
  store i8 %3441, i8* %59, align 1
  %3442 = lshr i32 %3425, 31
  %3443 = xor i32 %3440, %3442
  %3444 = add nuw nsw i32 %3443, %3442
  %3445 = icmp eq i32 %3444, 2
  %3446 = zext i1 %3445 to i8
  store i8 %3446, i8* %65, align 1
  %3447 = icmp ne i8 %3441, 0
  %3448 = xor i1 %3447, %3445
  %.v281 = select i1 %3448, i64 13, i64 256
  %3449 = add i64 %3420, %.v281
  %3450 = add i64 %3449, 5
  store i64 %3450, i64* %3, align 8
  br i1 %3448, label %block_.L_460b46, label %block_.L_460c39.loopexit

block_.L_460b46:                                  ; preds = %block_.L_460b34
  %3451 = add i64 %3421, -1236
  %3452 = add i64 %3449, 15
  store i64 %3452, i64* %3, align 8
  %3453 = inttoptr i64 %3451 to i32*
  store i32 0, i32* %3453, align 4
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_460b50

block_.L_460b50:                                  ; preds = %block_.L_460ba1, %block_.L_460b46
  %3454 = phi i64 [ %3587, %block_.L_460ba1 ], [ %.pre180, %block_.L_460b46 ]
  %3455 = load i64, i64* %RBP.i, align 8
  %3456 = add i64 %3455, -1236
  %3457 = add i64 %3454, 6
  store i64 %3457, i64* %3, align 8
  %3458 = inttoptr i64 %3456 to i32*
  %3459 = load i32, i32* %3458, align 4
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RAX.i2177, align 8
  %3461 = add i64 %3455, -760
  %3462 = add i64 %3454, 12
  store i64 %3462, i64* %3, align 8
  %3463 = inttoptr i64 %3461 to i32*
  %3464 = load i32, i32* %3463, align 4
  %3465 = sub i32 %3459, %3464
  %3466 = icmp ult i32 %3459, %3464
  %3467 = zext i1 %3466 to i8
  store i8 %3467, i8* %40, align 1
  %3468 = and i32 %3465, 255
  %3469 = tail call i32 @llvm.ctpop.i32(i32 %3468)
  %3470 = trunc i32 %3469 to i8
  %3471 = and i8 %3470, 1
  %3472 = xor i8 %3471, 1
  store i8 %3472, i8* %47, align 1
  %3473 = xor i32 %3464, %3459
  %3474 = xor i32 %3473, %3465
  %3475 = lshr i32 %3474, 4
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  store i8 %3477, i8* %53, align 1
  %3478 = icmp eq i32 %3465, 0
  %3479 = zext i1 %3478 to i8
  store i8 %3479, i8* %56, align 1
  %3480 = lshr i32 %3465, 31
  %3481 = trunc i32 %3480 to i8
  store i8 %3481, i8* %59, align 1
  %3482 = lshr i32 %3459, 31
  %3483 = lshr i32 %3464, 31
  %3484 = xor i32 %3483, %3482
  %3485 = xor i32 %3480, %3482
  %3486 = add nuw nsw i32 %3485, %3484
  %3487 = icmp eq i32 %3486, 2
  %3488 = zext i1 %3487 to i8
  store i8 %3488, i8* %65, align 1
  %3489 = icmp ne i8 %3481, 0
  %3490 = xor i1 %3489, %3487
  %.v222 = select i1 %3490, i64 18, i64 106
  %3491 = add i64 %3454, %.v222
  store i64 %3491, i64* %3, align 8
  br i1 %3490, label %block_460b62, label %block_.L_460bba.loopexit

block_460b62:                                     ; preds = %block_.L_460b50
  %3492 = add i64 %3491, 7
  store i64 %3492, i64* %3, align 8
  %3493 = load i32, i32* %3458, align 4
  %3494 = sext i32 %3493 to i64
  store i64 %3494, i64* %RAX.i2177, align 8
  %3495 = shl nsw i64 %3494, 2
  %3496 = add i64 %3455, -1160
  %3497 = add i64 %3496, %3495
  %3498 = add i64 %3491, 14
  store i64 %3498, i64* %3, align 8
  %3499 = inttoptr i64 %3497 to i32*
  %3500 = load i32, i32* %3499, align 4
  %3501 = zext i32 %3500 to i64
  store i64 %3501, i64* %RCX.i2157, align 8
  %3502 = add i64 %3455, -752
  %3503 = add i64 %3491, 21
  store i64 %3503, i64* %3, align 8
  %3504 = inttoptr i64 %3502 to i32*
  %3505 = load i32, i32* %3504, align 4
  %3506 = sext i32 %3505 to i64
  store i64 %3506, i64* %RAX.i2177, align 8
  %3507 = shl nsw i64 %3506, 2
  %3508 = add nsw i64 %3507, -1232
  %3509 = add i64 %3508, %3455
  %3510 = add i64 %3491, 28
  store i64 %3510, i64* %3, align 8
  %3511 = inttoptr i64 %3509 to i32*
  %3512 = load i32, i32* %3511, align 4
  %3513 = sub i32 %3500, %3512
  %3514 = icmp ult i32 %3500, %3512
  %3515 = zext i1 %3514 to i8
  store i8 %3515, i8* %40, align 1
  %3516 = and i32 %3513, 255
  %3517 = tail call i32 @llvm.ctpop.i32(i32 %3516)
  %3518 = trunc i32 %3517 to i8
  %3519 = and i8 %3518, 1
  %3520 = xor i8 %3519, 1
  store i8 %3520, i8* %47, align 1
  %3521 = xor i32 %3512, %3500
  %3522 = xor i32 %3521, %3513
  %3523 = lshr i32 %3522, 4
  %3524 = trunc i32 %3523 to i8
  %3525 = and i8 %3524, 1
  store i8 %3525, i8* %53, align 1
  %3526 = icmp eq i32 %3513, 0
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %56, align 1
  %3528 = lshr i32 %3513, 31
  %3529 = trunc i32 %3528 to i8
  store i8 %3529, i8* %59, align 1
  %3530 = lshr i32 %3500, 31
  %3531 = lshr i32 %3512, 31
  %3532 = xor i32 %3531, %3530
  %3533 = xor i32 %3528, %3530
  %3534 = add nuw nsw i32 %3533, %3532
  %3535 = icmp eq i32 %3534, 2
  %3536 = zext i1 %3535 to i8
  store i8 %3536, i8* %65, align 1
  %.v221 = select i1 %3526, i64 34, i64 63
  %3537 = add i64 %3491, %.v221
  store i64 %3537, i64* %3, align 8
  br i1 %3526, label %block_460b84, label %block_.L_460ba1

block_460b84:                                     ; preds = %block_460b62
  %3538 = add i64 %3537, 7
  store i64 %3538, i64* %3, align 8
  %3539 = load i32, i32* %3458, align 4
  %3540 = sext i32 %3539 to i64
  store i64 %3540, i64* %RAX.i2177, align 8
  %3541 = shl nsw i64 %3540, 2
  %3542 = add i64 %3455, -960
  %3543 = add i64 %3542, %3541
  %3544 = add i64 %3537, 14
  store i64 %3544, i64* %3, align 8
  %3545 = inttoptr i64 %3543 to i32*
  %3546 = load i32, i32* %3545, align 4
  %3547 = zext i32 %3546 to i64
  store i64 %3547, i64* %RCX.i2157, align 8
  store i8 0, i8* %40, align 1
  %3548 = and i32 %3546, 255
  %3549 = tail call i32 @llvm.ctpop.i32(i32 %3548)
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = xor i8 %3551, 1
  store i8 %3552, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3553 = icmp eq i32 %3546, 0
  %3554 = zext i1 %3553 to i8
  store i8 %3554, i8* %56, align 1
  %3555 = lshr i32 %3546, 31
  %3556 = trunc i32 %3555 to i8
  store i8 %3556, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %3557 = add i64 %3537, 24
  store i64 %3557, i64* %3, align 8
  store i32 %3546, i32* %3545, align 4
  %3558 = load i64, i64* %3, align 8
  %3559 = add i64 %3558, 30
  store i64 %3559, i64* %3, align 8
  %.pre181 = load i64, i64* %RBP.i, align 8
  br label %block_.L_460bba

block_.L_460ba1:                                  ; preds = %block_460b62
  %3560 = add i64 %3537, 11
  store i64 %3560, i64* %3, align 8
  %3561 = load i32, i32* %3458, align 4
  %3562 = add i32 %3561, 1
  %3563 = zext i32 %3562 to i64
  store i64 %3563, i64* %RAX.i2177, align 8
  %3564 = icmp eq i32 %3561, -1
  %3565 = icmp eq i32 %3562, 0
  %3566 = or i1 %3564, %3565
  %3567 = zext i1 %3566 to i8
  store i8 %3567, i8* %40, align 1
  %3568 = and i32 %3562, 255
  %3569 = tail call i32 @llvm.ctpop.i32(i32 %3568)
  %3570 = trunc i32 %3569 to i8
  %3571 = and i8 %3570, 1
  %3572 = xor i8 %3571, 1
  store i8 %3572, i8* %47, align 1
  %3573 = xor i32 %3562, %3561
  %3574 = lshr i32 %3573, 4
  %3575 = trunc i32 %3574 to i8
  %3576 = and i8 %3575, 1
  store i8 %3576, i8* %53, align 1
  %3577 = zext i1 %3565 to i8
  store i8 %3577, i8* %56, align 1
  %3578 = lshr i32 %3562, 31
  %3579 = trunc i32 %3578 to i8
  store i8 %3579, i8* %59, align 1
  %3580 = lshr i32 %3561, 31
  %3581 = xor i32 %3578, %3580
  %3582 = add nuw nsw i32 %3581, %3578
  %3583 = icmp eq i32 %3582, 2
  %3584 = zext i1 %3583 to i8
  store i8 %3584, i8* %65, align 1
  %3585 = add i64 %3537, 20
  store i64 %3585, i64* %3, align 8
  store i32 %3562, i32* %3458, align 4
  %3586 = load i64, i64* %3, align 8
  %3587 = add i64 %3586, -101
  store i64 %3587, i64* %3, align 8
  br label %block_.L_460b50

block_.L_460bba.loopexit:                         ; preds = %block_.L_460b50
  br label %block_.L_460bba

block_.L_460bba:                                  ; preds = %block_.L_460bba.loopexit, %block_460b84
  %3588 = phi i64 [ %3559, %block_460b84 ], [ %3491, %block_.L_460bba.loopexit ]
  %3589 = phi i64 [ %.pre181, %block_460b84 ], [ %3455, %block_.L_460bba.loopexit ]
  %3590 = add i64 %3589, -1236
  %3591 = add i64 %3588, 6
  store i64 %3591, i64* %3, align 8
  %3592 = inttoptr i64 %3590 to i32*
  %3593 = load i32, i32* %3592, align 4
  %3594 = zext i32 %3593 to i64
  store i64 %3594, i64* %RAX.i2177, align 8
  %3595 = add i64 %3589, -760
  %3596 = add i64 %3588, 12
  store i64 %3596, i64* %3, align 8
  %3597 = inttoptr i64 %3595 to i32*
  %3598 = load i32, i32* %3597, align 4
  %3599 = sub i32 %3593, %3598
  %3600 = icmp ult i32 %3593, %3598
  %3601 = zext i1 %3600 to i8
  store i8 %3601, i8* %40, align 1
  %3602 = and i32 %3599, 255
  %3603 = tail call i32 @llvm.ctpop.i32(i32 %3602)
  %3604 = trunc i32 %3603 to i8
  %3605 = and i8 %3604, 1
  %3606 = xor i8 %3605, 1
  store i8 %3606, i8* %47, align 1
  %3607 = xor i32 %3598, %3593
  %3608 = xor i32 %3607, %3599
  %3609 = lshr i32 %3608, 4
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  store i8 %3611, i8* %53, align 1
  %3612 = icmp eq i32 %3599, 0
  %3613 = zext i1 %3612 to i8
  store i8 %3613, i8* %56, align 1
  %3614 = lshr i32 %3599, 31
  %3615 = trunc i32 %3614 to i8
  store i8 %3615, i8* %59, align 1
  %3616 = lshr i32 %3593, 31
  %3617 = lshr i32 %3598, 31
  %3618 = xor i32 %3617, %3616
  %3619 = xor i32 %3614, %3616
  %3620 = add nuw nsw i32 %3619, %3618
  %3621 = icmp eq i32 %3620, 2
  %3622 = zext i1 %3621 to i8
  store i8 %3622, i8* %65, align 1
  %.v282 = select i1 %3612, i64 18, i64 92
  %3623 = add i64 %3588, %.v282
  store i64 %3623, i64* %3, align 8
  br i1 %3612, label %block_460bcc, label %block_.L_460c16

block_460bcc:                                     ; preds = %block_.L_460bba
  %3624 = add i64 %3623, 7
  store i64 %3624, i64* %3, align 8
  %3625 = load i32, i32* %3597, align 4
  %3626 = add i32 %3625, -50
  %3627 = icmp ult i32 %3625, 50
  %3628 = zext i1 %3627 to i8
  store i8 %3628, i8* %40, align 1
  %3629 = and i32 %3626, 255
  %3630 = tail call i32 @llvm.ctpop.i32(i32 %3629)
  %3631 = trunc i32 %3630 to i8
  %3632 = and i8 %3631, 1
  %3633 = xor i8 %3632, 1
  store i8 %3633, i8* %47, align 1
  %3634 = xor i32 %3625, 16
  %3635 = xor i32 %3634, %3626
  %3636 = lshr i32 %3635, 4
  %3637 = trunc i32 %3636 to i8
  %3638 = and i8 %3637, 1
  store i8 %3638, i8* %53, align 1
  %3639 = icmp eq i32 %3626, 0
  %3640 = zext i1 %3639 to i8
  store i8 %3640, i8* %56, align 1
  %3641 = lshr i32 %3626, 31
  %3642 = trunc i32 %3641 to i8
  store i8 %3642, i8* %59, align 1
  %3643 = lshr i32 %3625, 31
  %3644 = xor i32 %3641, %3643
  %3645 = add nuw nsw i32 %3644, %3643
  %3646 = icmp eq i32 %3645, 2
  %3647 = zext i1 %3646 to i8
  store i8 %3647, i8* %65, align 1
  %3648 = icmp ne i8 %3642, 0
  %3649 = xor i1 %3648, %3646
  %.v283 = select i1 %3649, i64 13, i64 74
  %3650 = add i64 %3623, %.v283
  store i64 %3650, i64* %3, align 8
  br i1 %3649, label %block_460bd9, label %block_.L_460c16

block_460bd9:                                     ; preds = %block_460bcc
  %3651 = add i64 %3589, -752
  %3652 = add i64 %3650, 7
  store i64 %3652, i64* %3, align 8
  %3653 = inttoptr i64 %3651 to i32*
  %3654 = load i32, i32* %3653, align 4
  %3655 = sext i32 %3654 to i64
  store i64 %3655, i64* %RAX.i2177, align 8
  %3656 = shl nsw i64 %3655, 2
  %3657 = add i64 %3589, -1232
  %3658 = add i64 %3657, %3656
  %3659 = add i64 %3650, 14
  store i64 %3659, i64* %3, align 8
  %3660 = inttoptr i64 %3658 to i32*
  %3661 = load i32, i32* %3660, align 4
  %3662 = zext i32 %3661 to i64
  store i64 %3662, i64* %RCX.i2157, align 8
  %3663 = add i64 %3650, 21
  store i64 %3663, i64* %3, align 8
  %3664 = load i32, i32* %3597, align 4
  %3665 = sext i32 %3664 to i64
  store i64 %3665, i64* %RAX.i2177, align 8
  %3666 = shl nsw i64 %3665, 2
  %3667 = add i64 %3589, -1160
  %3668 = add i64 %3667, %3666
  %3669 = add i64 %3650, 28
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3668 to i32*
  store i32 %3661, i32* %3670, align 4
  %3671 = load i64, i64* %RBP.i, align 8
  %3672 = add i64 %3671, -760
  %3673 = load i64, i64* %3, align 8
  %3674 = add i64 %3673, 7
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3672 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = sext i32 %3676 to i64
  store i64 %3677, i64* %RAX.i2177, align 8
  %3678 = shl nsw i64 %3677, 2
  %3679 = add i64 %3671, -960
  %3680 = add i64 %3679, %3678
  %3681 = add i64 %3673, 18
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i32*
  store i32 0, i32* %3682, align 4
  %3683 = load i64, i64* %RBP.i, align 8
  %3684 = add i64 %3683, -760
  %3685 = load i64, i64* %3, align 8
  %3686 = add i64 %3685, 6
  store i64 %3686, i64* %3, align 8
  %3687 = inttoptr i64 %3684 to i32*
  %3688 = load i32, i32* %3687, align 4
  %3689 = add i32 %3688, 1
  %3690 = zext i32 %3689 to i64
  store i64 %3690, i64* %RCX.i2157, align 8
  %3691 = icmp eq i32 %3688, -1
  %3692 = icmp eq i32 %3689, 0
  %3693 = or i1 %3691, %3692
  %3694 = zext i1 %3693 to i8
  store i8 %3694, i8* %40, align 1
  %3695 = and i32 %3689, 255
  %3696 = tail call i32 @llvm.ctpop.i32(i32 %3695)
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  %3699 = xor i8 %3698, 1
  store i8 %3699, i8* %47, align 1
  %3700 = xor i32 %3689, %3688
  %3701 = lshr i32 %3700, 4
  %3702 = trunc i32 %3701 to i8
  %3703 = and i8 %3702, 1
  store i8 %3703, i8* %53, align 1
  %3704 = zext i1 %3692 to i8
  store i8 %3704, i8* %56, align 1
  %3705 = lshr i32 %3689, 31
  %3706 = trunc i32 %3705 to i8
  store i8 %3706, i8* %59, align 1
  %3707 = lshr i32 %3688, 31
  %3708 = xor i32 %3705, %3707
  %3709 = add nuw nsw i32 %3708, %3705
  %3710 = icmp eq i32 %3709, 2
  %3711 = zext i1 %3710 to i8
  store i8 %3711, i8* %65, align 1
  %3712 = add i64 %3685, 15
  store i64 %3712, i64* %3, align 8
  store i32 %3689, i32* %3687, align 4
  %.pre182 = load i64, i64* %3, align 8
  %.pre183 = load i64, i64* %RBP.i, align 8
  br label %block_.L_460c16

block_.L_460c16:                                  ; preds = %block_.L_460bba, %block_460bcc, %block_460bd9
  %3713 = phi i64 [ %3589, %block_460bcc ], [ %.pre183, %block_460bd9 ], [ %3589, %block_.L_460bba ]
  %3714 = phi i64 [ %3650, %block_460bcc ], [ %.pre182, %block_460bd9 ], [ %3623, %block_.L_460bba ]
  %3715 = add i64 %3713, -752
  %3716 = add i64 %3714, 16
  store i64 %3716, i64* %3, align 8
  %3717 = inttoptr i64 %3715 to i32*
  %3718 = load i32, i32* %3717, align 4
  %3719 = add i32 %3718, 1
  %3720 = zext i32 %3719 to i64
  store i64 %3720, i64* %RAX.i2177, align 8
  %3721 = icmp eq i32 %3718, -1
  %3722 = icmp eq i32 %3719, 0
  %3723 = or i1 %3721, %3722
  %3724 = zext i1 %3723 to i8
  store i8 %3724, i8* %40, align 1
  %3725 = and i32 %3719, 255
  %3726 = tail call i32 @llvm.ctpop.i32(i32 %3725)
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  %3729 = xor i8 %3728, 1
  store i8 %3729, i8* %47, align 1
  %3730 = xor i32 %3719, %3718
  %3731 = lshr i32 %3730, 4
  %3732 = trunc i32 %3731 to i8
  %3733 = and i8 %3732, 1
  store i8 %3733, i8* %53, align 1
  %3734 = zext i1 %3722 to i8
  store i8 %3734, i8* %56, align 1
  %3735 = lshr i32 %3719, 31
  %3736 = trunc i32 %3735 to i8
  store i8 %3736, i8* %59, align 1
  %3737 = lshr i32 %3718, 31
  %3738 = xor i32 %3735, %3737
  %3739 = add nuw nsw i32 %3738, %3735
  %3740 = icmp eq i32 %3739, 2
  %3741 = zext i1 %3740 to i8
  store i8 %3741, i8* %65, align 1
  %3742 = add i64 %3714, 25
  store i64 %3742, i64* %3, align 8
  store i32 %3719, i32* %3717, align 4
  %3743 = load i64, i64* %3, align 8
  %3744 = add i64 %3743, -251
  store i64 %3744, i64* %3, align 8
  br label %block_.L_460b34

block_.L_460c39.loopexit:                         ; preds = %block_.L_460b34
  br label %block_.L_460c39

block_.L_460c39:                                  ; preds = %block_.L_460c39.loopexit, %block_460aec
  %3745 = phi i64 [ %3374, %block_460aec ], [ %3450, %block_.L_460c39.loopexit ]
  %3746 = phi i64 [ %.pre179, %block_460aec ], [ %3421, %block_.L_460c39.loopexit ]
  %MEMORY.45 = phi %struct.Memory* [ %MEMORY.39, %block_460aec ], [ %call2_460b25, %block_.L_460c39.loopexit ]
  %3747 = add i64 %3746, -744
  %3748 = add i64 %3745, 6
  store i64 %3748, i64* %3, align 8
  %3749 = inttoptr i64 %3747 to i32*
  %3750 = load i32, i32* %3749, align 4
  %3751 = add i32 %3750, 1
  %3752 = zext i32 %3751 to i64
  store i64 %3752, i64* %RAX.i2177, align 8
  %3753 = icmp eq i32 %3750, -1
  %3754 = icmp eq i32 %3751, 0
  %3755 = or i1 %3753, %3754
  %3756 = zext i1 %3755 to i8
  store i8 %3756, i8* %40, align 1
  %3757 = and i32 %3751, 255
  %3758 = tail call i32 @llvm.ctpop.i32(i32 %3757)
  %3759 = trunc i32 %3758 to i8
  %3760 = and i8 %3759, 1
  %3761 = xor i8 %3760, 1
  store i8 %3761, i8* %47, align 1
  %3762 = xor i32 %3751, %3750
  %3763 = lshr i32 %3762, 4
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  store i8 %3765, i8* %53, align 1
  %3766 = zext i1 %3754 to i8
  store i8 %3766, i8* %56, align 1
  %3767 = lshr i32 %3751, 31
  %3768 = trunc i32 %3767 to i8
  store i8 %3768, i8* %59, align 1
  %3769 = lshr i32 %3750, 31
  %3770 = xor i32 %3767, %3769
  %3771 = add nuw nsw i32 %3770, %3767
  %3772 = icmp eq i32 %3771, 2
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %65, align 1
  %3774 = add i64 %3745, 15
  store i64 %3774, i64* %3, align 8
  store i32 %3751, i32* %3749, align 4
  %3775 = load i64, i64* %3, align 8
  %3776 = add i64 %3775, -464
  store i64 %3776, i64* %3, align 8
  br label %block_.L_460a78

block_.L_460c4d:                                  ; preds = %block_.L_460a78
  %3777 = add i64 %3229, -1160
  store i64 %3777, i64* %RSI.i2169, align 8
  %3778 = add i64 %3229, -48
  %3779 = add i64 %3265, 10
  store i64 %3779, i64* %3, align 8
  %3780 = inttoptr i64 %3778 to i32*
  %3781 = load i32, i32* %3780, align 4
  %3782 = zext i32 %3781 to i64
  store i64 %3782, i64* %RDI.i2050, align 8
  %3783 = add i64 %3229, -72
  %3784 = add i64 %3265, 13
  store i64 %3784, i64* %3, align 8
  %3785 = inttoptr i64 %3783 to i32*
  %3786 = load i32, i32* %3785, align 4
  %3787 = zext i32 %3786 to i64
  store i64 %3787, i64* %RDX.i2056, align 8
  %3788 = add i64 %3229, -1176
  %3789 = add i64 %3265, 20
  store i64 %3789, i64* %3, align 8
  %3790 = inttoptr i64 %3788 to i64*
  %3791 = load i64, i64* %3790, align 8
  store i64 %3791, i64* %RCX.i2157, align 8
  %3792 = add i64 %3229, -1224
  %3793 = add i64 %3265, 27
  store i64 %3793, i64* %3, align 8
  %3794 = inttoptr i64 %3792 to i32*
  %3795 = load i32, i32* %3794, align 4
  %3796 = zext i32 %3795 to i64
  store i64 %3796, i64* %68, align 8
  %3797 = add i64 %3265, 8259
  %3798 = add i64 %3265, 32
  %3799 = load i64, i64* %6, align 8
  %3800 = add i64 %3799, -8
  %3801 = inttoptr i64 %3800 to i64*
  store i64 %3798, i64* %3801, align 8
  store i64 %3800, i64* %6, align 8
  store i64 %3797, i64* %3, align 8
  %call2_460c68 = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %3797, %struct.Memory* %MEMORY.39)
  %3802 = load i64, i64* %RBP.i, align 8
  %3803 = add i64 %3802, -1224
  %3804 = load i64, i64* %3, align 8
  %3805 = add i64 %3804, 6
  store i64 %3805, i64* %3, align 8
  %3806 = inttoptr i64 %3803 to i32*
  %3807 = load i32, i32* %3806, align 4
  %3808 = zext i32 %3807 to i64
  store i64 %3808, i64* %RDX.i2056, align 8
  %3809 = add i64 %3802, -752
  %3810 = add i64 %3804, 12
  store i64 %3810, i64* %3, align 8
  %3811 = inttoptr i64 %3809 to i32*
  store i32 %3807, i32* %3811, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_460c79

block_.L_460c79:                                  ; preds = %block_.L_460f4e, %block_.L_460c4d
  %3812 = phi i64 [ %.pre170, %block_.L_460c4d ], [ %4554, %block_.L_460f4e ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_460c68, %block_.L_460c4d ], [ %MEMORY.56, %block_.L_460f4e ]
  %3813 = load i64, i64* %RBP.i, align 8
  %3814 = add i64 %3813, -752
  %3815 = add i64 %3812, 6
  store i64 %3815, i64* %3, align 8
  %3816 = inttoptr i64 %3814 to i32*
  %3817 = load i32, i32* %3816, align 4
  %3818 = zext i32 %3817 to i64
  store i64 %3818, i64* %RAX.i2177, align 8
  %3819 = add i64 %3813, -760
  %3820 = add i64 %3812, 12
  store i64 %3820, i64* %3, align 8
  %3821 = inttoptr i64 %3819 to i32*
  %3822 = load i32, i32* %3821, align 4
  %3823 = sub i32 %3817, %3822
  %3824 = icmp ult i32 %3817, %3822
  %3825 = zext i1 %3824 to i8
  store i8 %3825, i8* %40, align 1
  %3826 = and i32 %3823, 255
  %3827 = tail call i32 @llvm.ctpop.i32(i32 %3826)
  %3828 = trunc i32 %3827 to i8
  %3829 = and i8 %3828, 1
  %3830 = xor i8 %3829, 1
  store i8 %3830, i8* %47, align 1
  %3831 = xor i32 %3822, %3817
  %3832 = xor i32 %3831, %3823
  %3833 = lshr i32 %3832, 4
  %3834 = trunc i32 %3833 to i8
  %3835 = and i8 %3834, 1
  store i8 %3835, i8* %53, align 1
  %3836 = icmp eq i32 %3823, 0
  %3837 = zext i1 %3836 to i8
  store i8 %3837, i8* %56, align 1
  %3838 = lshr i32 %3823, 31
  %3839 = trunc i32 %3838 to i8
  store i8 %3839, i8* %59, align 1
  %3840 = lshr i32 %3817, 31
  %3841 = lshr i32 %3822, 31
  %3842 = xor i32 %3841, %3840
  %3843 = xor i32 %3838, %3840
  %3844 = add nuw nsw i32 %3843, %3842
  %3845 = icmp eq i32 %3844, 2
  %3846 = zext i1 %3845 to i8
  store i8 %3846, i8* %65, align 1
  %3847 = icmp ne i8 %3839, 0
  %3848 = xor i1 %3847, %3845
  %.v266 = select i1 %3848, i64 18, i64 750
  %3849 = add i64 %3812, %.v266
  store i64 %3849, i64* %3, align 8
  br i1 %3848, label %block_460c8b, label %block_.L_460f67.loopexit

block_460c8b:                                     ; preds = %block_.L_460c79
  %3850 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3851 = zext i32 %3850 to i64
  store i64 %3851, i64* %RAX.i2177, align 8
  %3852 = load i32, i32* bitcast (%G_0xb6308c_type* @G_0xb6308c to i32*), align 8
  %3853 = sub i32 %3850, %3852
  %3854 = icmp ult i32 %3850, %3852
  %3855 = zext i1 %3854 to i8
  store i8 %3855, i8* %40, align 1
  %3856 = and i32 %3853, 255
  %3857 = tail call i32 @llvm.ctpop.i32(i32 %3856)
  %3858 = trunc i32 %3857 to i8
  %3859 = and i8 %3858, 1
  %3860 = xor i8 %3859, 1
  store i8 %3860, i8* %47, align 1
  %3861 = xor i32 %3852, %3850
  %3862 = xor i32 %3861, %3853
  %3863 = lshr i32 %3862, 4
  %3864 = trunc i32 %3863 to i8
  %3865 = and i8 %3864, 1
  store i8 %3865, i8* %53, align 1
  %3866 = icmp eq i32 %3853, 0
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %56, align 1
  %3868 = lshr i32 %3853, 31
  %3869 = trunc i32 %3868 to i8
  store i8 %3869, i8* %59, align 1
  %3870 = lshr i32 %3850, 31
  %3871 = lshr i32 %3852, 31
  %3872 = xor i32 %3871, %3870
  %3873 = xor i32 %3868, %3870
  %3874 = add nuw nsw i32 %3873, %3872
  %3875 = icmp eq i32 %3874, 2
  %3876 = zext i1 %3875 to i8
  store i8 %3876, i8* %65, align 1
  %3877 = icmp ne i8 %3869, 0
  %3878 = xor i1 %3877, %3875
  %.v267 = select i1 %3878, i64 38, i64 20
  %3879 = add i64 %3849, %.v267
  store i64 %3879, i64* %3, align 8
  br i1 %3878, label %block_.L_460cb1, label %block_460c9f

block_460c9f:                                     ; preds = %block_460c8b
  %3880 = add i64 %3879, 7
  store i64 %3880, i64* %3, align 8
  %3881 = load i32, i32* %3816, align 4
  store i8 0, i8* %40, align 1
  %3882 = and i32 %3881, 255
  %3883 = tail call i32 @llvm.ctpop.i32(i32 %3882)
  %3884 = trunc i32 %3883 to i8
  %3885 = and i8 %3884, 1
  %3886 = xor i8 %3885, 1
  store i8 %3886, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3887 = icmp eq i32 %3881, 0
  %3888 = zext i1 %3887 to i8
  store i8 %3888, i8* %56, align 1
  %3889 = lshr i32 %3881, 31
  %3890 = trunc i32 %3889 to i8
  store i8 %3890, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %3891 = icmp ne i8 %3890, 0
  %3892 = or i1 %3887, %3891
  %.v268 = select i1 %3892, i64 18, i64 13
  %3893 = add i64 %3879, %.v268
  store i64 %3893, i64* %3, align 8
  br i1 %3892, label %block_.L_460cb1, label %block_460cac

block_460cac:                                     ; preds = %block_460c9f
  %3894 = add i64 %3893, 699
  store i64 %3894, i64* %3, align 8
  br label %block_.L_460f67

block_.L_460cb1:                                  ; preds = %block_460c9f, %block_460c8b
  %3895 = phi i64 [ %3893, %block_460c9f ], [ %3879, %block_460c8b ]
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %CL.i1492, align 1
  %3896 = add i64 %3895, 11
  store i64 %3896, i64* %3, align 8
  %3897 = load i32, i32* %3816, align 4
  %3898 = sext i32 %3897 to i64
  store i64 %3898, i64* %RDX.i2056, align 8
  %3899 = shl nsw i64 %3898, 2
  %3900 = add i64 %3813, -1160
  %3901 = add i64 %3900, %3899
  %3902 = add i64 %3895, 18
  store i64 %3902, i64* %3, align 8
  %3903 = inttoptr i64 %3901 to i32*
  %3904 = load i32, i32* %3903, align 4
  %3905 = zext i32 %3904 to i64
  store i64 %3905, i64* %RAX.i2177, align 8
  %3906 = add i64 %3813, -724
  %3907 = add i64 %3895, 24
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3906 to i32*
  store i32 %3904, i32* %3908, align 4
  %3909 = load i64, i64* %RBP.i, align 8
  %3910 = add i64 %3909, -724
  %3911 = load i64, i64* %3, align 8
  %3912 = add i64 %3911, 6
  store i64 %3912, i64* %3, align 8
  %3913 = inttoptr i64 %3910 to i32*
  %3914 = load i32, i32* %3913, align 4
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %RDI.i2050, align 8
  %3916 = add i64 %3909, -72
  %3917 = add i64 %3911, 9
  store i64 %3917, i64* %3, align 8
  %3918 = inttoptr i64 %3916 to i32*
  %3919 = load i32, i32* %3918, align 4
  %3920 = zext i32 %3919 to i64
  store i64 %3920, i64* %RSI.i2169, align 8
  %3921 = add i64 %3909, -48
  %3922 = add i64 %3911, 12
  store i64 %3922, i64* %3, align 8
  %3923 = inttoptr i64 %3921 to i32*
  %3924 = load i32, i32* %3923, align 4
  %3925 = zext i32 %3924 to i64
  store i64 %3925, i64* %RAX.i2177, align 8
  %3926 = add i64 %3909, -60
  %3927 = add i64 %3911, 16
  store i64 %3927, i64* %3, align 8
  %3928 = inttoptr i64 %3926 to i32*
  %3929 = load i32, i32* %3928, align 4
  %3930 = zext i32 %3929 to i64
  store i64 %3930, i64* %68, align 8
  %3931 = add i64 %3909, -64
  %3932 = add i64 %3911, 20
  store i64 %3932, i64* %3, align 8
  %3933 = inttoptr i64 %3931 to i32*
  %3934 = load i32, i32* %3933, align 4
  %3935 = zext i32 %3934 to i64
  store i64 %3935, i64* %1923, align 8
  %3936 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3937 = zext i32 %3936 to i64
  store i64 %3937, i64* %1925, align 8
  %3938 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %3939 = sub i32 %3936, %3938
  %3940 = icmp ult i32 %3936, %3938
  %3941 = zext i1 %3940 to i8
  store i8 %3941, i8* %40, align 1
  %3942 = and i32 %3939, 255
  %3943 = tail call i32 @llvm.ctpop.i32(i32 %3942)
  %3944 = trunc i32 %3943 to i8
  %3945 = and i8 %3944, 1
  %3946 = xor i8 %3945, 1
  store i8 %3946, i8* %47, align 1
  %3947 = xor i32 %3938, %3936
  %3948 = xor i32 %3947, %3939
  %3949 = lshr i32 %3948, 4
  %3950 = trunc i32 %3949 to i8
  %3951 = and i8 %3950, 1
  store i8 %3951, i8* %53, align 1
  %3952 = icmp eq i32 %3939, 0
  %3953 = zext i1 %3952 to i8
  store i8 %3953, i8* %56, align 1
  %3954 = lshr i32 %3939, 31
  %3955 = trunc i32 %3954 to i8
  store i8 %3955, i8* %59, align 1
  %3956 = lshr i32 %3936, 31
  %3957 = lshr i32 %3938, 31
  %3958 = xor i32 %3957, %3956
  %3959 = xor i32 %3954, %3956
  %3960 = add nuw nsw i32 %3959, %3958
  %3961 = icmp eq i32 %3960, 2
  %3962 = zext i1 %3961 to i8
  store i8 %3962, i8* %65, align 1
  %3963 = add i64 %3909, -1452
  %3964 = add i64 %3911, 43
  store i64 %3964, i64* %3, align 8
  %3965 = inttoptr i64 %3963 to i32*
  store i32 %3934, i32* %3965, align 4
  %3966 = load i64, i64* %RBP.i, align 8
  %3967 = add i64 %3966, -1456
  %3968 = load i32, i32* %EDI.i2172, align 4
  %3969 = load i64, i64* %3, align 8
  %3970 = add i64 %3969, 6
  store i64 %3970, i64* %3, align 8
  %3971 = inttoptr i64 %3967 to i32*
  store i32 %3968, i32* %3971, align 4
  %3972 = load i64, i64* %RBP.i, align 8
  %3973 = add i64 %3972, -1460
  %3974 = load i32, i32* %ESI.i1453, align 4
  %3975 = load i64, i64* %3, align 8
  %3976 = add i64 %3975, 6
  store i64 %3976, i64* %3, align 8
  %3977 = inttoptr i64 %3973 to i32*
  store i32 %3974, i32* %3977, align 4
  %3978 = load i64, i64* %RBP.i, align 8
  %3979 = add i64 %3978, -1464
  %3980 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %3981 = load i64, i64* %3, align 8
  %3982 = add i64 %3981, 6
  store i64 %3982, i64* %3, align 8
  %3983 = inttoptr i64 %3979 to i32*
  store i32 %3980, i32* %3983, align 4
  %3984 = load i64, i64* %RBP.i, align 8
  %3985 = add i64 %3984, -1468
  %3986 = load i32, i32* %R8D.i2175, align 4
  %3987 = load i64, i64* %3, align 8
  %3988 = add i64 %3987, 7
  store i64 %3988, i64* %3, align 8
  %3989 = inttoptr i64 %3985 to i32*
  store i32 %3986, i32* %3989, align 4
  %3990 = load i64, i64* %RBP.i, align 8
  %3991 = add i64 %3990, -1469
  %3992 = load i8, i8* %CL.i1492, align 1
  %3993 = load i64, i64* %3, align 8
  %3994 = add i64 %3993, 6
  store i64 %3994, i64* %3, align 8
  %3995 = inttoptr i64 %3991 to i8*
  store i8 %3992, i8* %3995, align 1
  %3996 = load i64, i64* %3, align 8
  %3997 = add i64 %3996, 22
  %3998 = add i64 %3996, 6
  %3999 = load i8, i8* %56, align 1
  %4000 = icmp eq i8 %3999, 0
  %4001 = load i8, i8* %59, align 1
  %4002 = icmp ne i8 %4001, 0
  %4003 = load i8, i8* %65, align 1
  %4004 = icmp ne i8 %4003, 0
  %4005 = xor i1 %4002, %4004
  %4006 = xor i1 %4005, true
  %4007 = and i1 %4000, %4006
  %4008 = select i1 %4007, i64 %3997, i64 %3998
  store i64 %4008, i64* %3, align 8
  br i1 %4007, label %block_.L_460d29, label %block_460d19

block_460d19:                                     ; preds = %block_.L_460cb1
  %4009 = load i64, i64* %RBP.i, align 8
  %4010 = add i64 %4009, -1168
  %4011 = add i64 %4008, 7
  store i64 %4011, i64* %3, align 8
  %4012 = inttoptr i64 %4010 to i32*
  %4013 = load i32, i32* %4012, align 4
  store i8 0, i8* %40, align 1
  %4014 = and i32 %4013, 255
  %4015 = tail call i32 @llvm.ctpop.i32(i32 %4014)
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = xor i8 %4017, 1
  store i8 %4018, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4019 = icmp eq i32 %4013, 0
  %4020 = zext i1 %4019 to i8
  store i8 %4020, i8* %56, align 1
  %4021 = lshr i32 %4013, 31
  %4022 = trunc i32 %4021 to i8
  store i8 %4022, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 %4020, i8* %AL.i1491, align 1
  %4023 = add i64 %4009, -1469
  %4024 = add i64 %4008, 16
  store i64 %4024, i64* %3, align 8
  %4025 = inttoptr i64 %4023 to i8*
  store i8 %4020, i8* %4025, align 1
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_460d29

block_.L_460d29:                                  ; preds = %block_460d19, %block_.L_460cb1
  %4026 = phi i64 [ %.pre171, %block_460d19 ], [ %3997, %block_.L_460cb1 ]
  %4027 = load i64, i64* %RBP.i, align 8
  %4028 = add i64 %4027, -1469
  %4029 = add i64 %4026, 6
  store i64 %4029, i64* %3, align 8
  %4030 = inttoptr i64 %4028 to i8*
  %4031 = load i8, i8* %4030, align 1
  store i64 ptrtoint (%G__0x57fdfa_type* @G__0x57fdfa to i64), i64* %RDX.i2056, align 8
  %4032 = add i64 %4027, -1240
  store i64 %4032, i64* %RCX.i2157, align 8
  %4033 = add i64 %4027, -1244
  store i64 %4033, i64* %RSI.i2169, align 8
  %4034 = add i64 %4027, -1248
  store i64 %4034, i64* %RDI.i2050, align 8
  %4035 = and i8 %4031, 1
  store i8 %4035, i8* %AL.i1491, align 1
  store i8 0, i8* %40, align 1
  %4036 = zext i8 %4035 to i32
  %4037 = tail call i32 @llvm.ctpop.i32(i32 %4036)
  %4038 = trunc i32 %4037 to i8
  %4039 = xor i8 %4038, 1
  store i8 %4039, i8* %47, align 1
  %4040 = xor i8 %4035, 1
  store i8 %4040, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  %4041 = zext i8 %4035 to i64
  store i64 %4041, i64* %68, align 8
  %4042 = add i64 %4027, -1456
  %4043 = add i64 %4026, 50
  store i64 %4043, i64* %3, align 8
  %4044 = inttoptr i64 %4042 to i32*
  %4045 = load i32, i32* %4044, align 4
  %4046 = zext i32 %4045 to i64
  store i64 %4046, i64* %1923, align 8
  %4047 = add i64 %4027, -1480
  %4048 = add i64 %4026, 57
  store i64 %4048, i64* %3, align 8
  %4049 = inttoptr i64 %4047 to i64*
  store i64 %4034, i64* %4049, align 8
  %4050 = load i32, i32* %R9D.i1466, align 4
  %4051 = zext i32 %4050 to i64
  %4052 = load i64, i64* %3, align 8
  store i64 %4051, i64* %RDI.i2050, align 8
  %4053 = load i64, i64* %RBP.i, align 8
  %4054 = add i64 %4053, -1460
  %4055 = add i64 %4052, 10
  store i64 %4055, i64* %3, align 8
  %4056 = inttoptr i64 %4054 to i32*
  %4057 = load i32, i32* %4056, align 4
  %4058 = zext i32 %4057 to i64
  store i64 %4058, i64* %1925, align 8
  %4059 = add i64 %4053, -1488
  %4060 = load i64, i64* %RSI.i2169, align 8
  %4061 = add i64 %4052, 17
  store i64 %4061, i64* %3, align 8
  %4062 = inttoptr i64 %4059 to i64*
  store i64 %4060, i64* %4062, align 8
  %4063 = load i32, i32* %R10D.i1464, align 4
  %4064 = zext i32 %4063 to i64
  %4065 = load i64, i64* %3, align 8
  store i64 %4064, i64* %RSI.i2169, align 8
  %4066 = load i64, i64* %RBP.i, align 8
  %4067 = add i64 %4066, -1464
  %4068 = add i64 %4065, 10
  store i64 %4068, i64* %3, align 8
  %4069 = inttoptr i64 %4067 to i32*
  %4070 = load i32, i32* %4069, align 4
  %4071 = zext i32 %4070 to i64
  store i64 %4071, i64* %1927, align 8
  %4072 = add i64 %4066, -1496
  %4073 = load i64, i64* %RCX.i2157, align 8
  %4074 = add i64 %4065, 17
  store i64 %4074, i64* %3, align 8
  %4075 = inttoptr i64 %4072 to i64*
  store i64 %4073, i64* %4075, align 8
  %4076 = load i32, i32* %R11D.i1396, align 4
  %4077 = zext i32 %4076 to i64
  %4078 = load i64, i64* %3, align 8
  store i64 %4077, i64* %RCX.i2157, align 8
  %4079 = load i64, i64* %RBP.i, align 8
  %4080 = add i64 %4079, -1468
  %4081 = add i64 %4078, 9
  store i64 %4081, i64* %3, align 8
  %4082 = inttoptr i64 %4080 to i32*
  %4083 = load i32, i32* %4082, align 4
  %4084 = zext i32 %4083 to i64
  store i64 %4084, i64* %RBX.i2181, align 8
  %4085 = add i64 %4079, -1500
  %4086 = load i32, i32* %R8D.i2175, align 4
  %4087 = add i64 %4078, 16
  store i64 %4087, i64* %3, align 8
  %4088 = inttoptr i64 %4085 to i32*
  store i32 %4086, i32* %4088, align 4
  %4089 = load i32, i32* %EBX.i1381, align 4
  %4090 = zext i32 %4089 to i64
  %4091 = load i64, i64* %3, align 8
  store i64 %4090, i64* %68, align 8
  %4092 = load i64, i64* %RBP.i, align 8
  %4093 = add i64 %4092, -1452
  %4094 = add i64 %4091, 10
  store i64 %4094, i64* %3, align 8
  %4095 = inttoptr i64 %4093 to i32*
  %4096 = load i32, i32* %4095, align 4
  %4097 = zext i32 %4096 to i64
  store i64 %4097, i64* %1923, align 8
  %4098 = add i64 %4092, -1496
  %4099 = add i64 %4091, 17
  store i64 %4099, i64* %3, align 8
  %4100 = inttoptr i64 %4098 to i64*
  %4101 = load i64, i64* %4100, align 8
  store i64 %4101, i64* %R14.i2187, align 8
  %4102 = load i64*, i64** %1928, align 8
  %4103 = add i64 %4091, 21
  store i64 %4103, i64* %3, align 8
  store i64 %4101, i64* %4102, align 8
  %4104 = load i64, i64* %RBP.i, align 8
  %4105 = add i64 %4104, -1488
  %4106 = load i64, i64* %3, align 8
  %4107 = add i64 %4106, 7
  store i64 %4107, i64* %3, align 8
  %4108 = inttoptr i64 %4105 to i64*
  %4109 = load i64, i64* %4108, align 8
  store i64 %4109, i64* %R15.i1872, align 8
  %4110 = load i64, i64* %6, align 8
  %4111 = add i64 %4110, 8
  %4112 = add i64 %4106, 12
  store i64 %4112, i64* %3, align 8
  %4113 = inttoptr i64 %4111 to i64*
  store i64 %4109, i64* %4113, align 8
  %4114 = load i64, i64* %RBP.i, align 8
  %4115 = add i64 %4114, -1480
  %4116 = load i64, i64* %3, align 8
  %4117 = add i64 %4116, 7
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4115 to i64*
  %4119 = load i64, i64* %4118, align 8
  store i64 %4119, i64* %R12.i2183, align 8
  %4120 = load i64, i64* %6, align 8
  %4121 = add i64 %4120, 16
  %4122 = add i64 %4116, 12
  store i64 %4122, i64* %3, align 8
  %4123 = inttoptr i64 %4121 to i64*
  store i64 %4119, i64* %4123, align 8
  %4124 = load i64, i64* %RBP.i, align 8
  %4125 = add i64 %4124, -1500
  %4126 = load i64, i64* %3, align 8
  %4127 = add i64 %4126, 7
  store i64 %4127, i64* %3, align 8
  %4128 = inttoptr i64 %4125 to i32*
  %4129 = load i32, i32* %4128, align 4
  %4130 = zext i32 %4129 to i64
  store i64 %4130, i64* %R13.i2185, align 8
  %4131 = load i64, i64* %6, align 8
  %4132 = add i64 %4131, 24
  %4133 = add i64 %4126, 12
  store i64 %4133, i64* %3, align 8
  %4134 = inttoptr i64 %4132 to i32*
  store i32 %4129, i32* %4134, align 4
  %4135 = load i64, i64* %3, align 8
  %4136 = add i64 %4135, -335837
  %4137 = add i64 %4135, 5
  %4138 = load i64, i64* %6, align 8
  %4139 = add i64 %4138, -8
  %4140 = inttoptr i64 %4139 to i64*
  store i64 %4137, i64* %4140, align 8
  store i64 %4139, i64* %6, align 8
  store i64 %4136, i64* %3, align 8
  %call2_460dcd = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %4136, %struct.Memory* %MEMORY.46)
  %4141 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4142 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %4143 = and i32 %4141, 255
  %4144 = tail call i32 @llvm.ctpop.i32(i32 %4143)
  %4145 = trunc i32 %4144 to i8
  %4146 = and i8 %4145, 1
  %4147 = xor i8 %4146, 1
  store i8 %4147, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4148 = icmp eq i32 %4141, 0
  %4149 = zext i1 %4148 to i8
  store i8 %4149, i8* %56, align 1
  %4150 = lshr i32 %4141, 31
  %4151 = trunc i32 %4150 to i8
  store i8 %4151, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v269 = select i1 %4148, i64 380, i64 9
  %4152 = add i64 %4142, %.v269
  store i64 %4152, i64* %3, align 8
  br i1 %4148, label %block_.L_460f4e, label %block_460ddb

block_460ddb:                                     ; preds = %block_.L_460d29
  %4153 = load i64, i64* %RBP.i, align 8
  %4154 = add i64 %4153, -1248
  %4155 = add i64 %4152, 7
  store i64 %4155, i64* %3, align 8
  %4156 = inttoptr i64 %4154 to i32*
  %4157 = load i32, i32* %4156, align 4
  %4158 = icmp eq i32 %4157, 0
  %.v270 = select i1 %4158, i64 13, i64 273
  %4159 = add i64 %4152, %.v270
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %4160 = add i64 %4153, -48
  %4161 = add i64 %4159, 7
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RDI.i2050, align 8
  %4165 = add i64 %4153, -1240
  %4166 = add i64 %4159, 13
  store i64 %4166, i64* %3, align 8
  %4167 = inttoptr i64 %4165 to i32*
  %4168 = load i32, i32* %4167, align 4
  %4169 = zext i32 %4168 to i64
  store i64 %4169, i64* %RDX.i2056, align 8
  %4170 = add i64 %4153, -1244
  %4171 = add i64 %4159, 19
  store i64 %4171, i64* %3, align 8
  %4172 = inttoptr i64 %4170 to i32*
  %4173 = load i32, i32* %4172, align 4
  %4174 = zext i32 %4173 to i64
  store i64 %4174, i64* %RCX.i2157, align 8
  br i1 %4158, label %block_460de8, label %block_.L_460eec

block_460de8:                                     ; preds = %block_460ddb
  %4175 = add i64 %4159, 10296
  %4176 = add i64 %4159, 24
  %4177 = load i64, i64* %6, align 8
  %4178 = add i64 %4177, -8
  %4179 = inttoptr i64 %4178 to i64*
  store i64 %4176, i64* %4179, align 8
  store i64 %4178, i64* %6, align 8
  store i64 %4175, i64* %3, align 8
  %call2_460dfb = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %4175, %struct.Memory* %MEMORY.46)
  %4180 = load i64, i64* %RBP.i, align 8
  %4181 = add i64 %4180, -748
  %4182 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4183 = load i64, i64* %3, align 8
  %4184 = add i64 %4183, 6
  store i64 %4184, i64* %3, align 8
  %4185 = inttoptr i64 %4181 to i32*
  store i32 %4182, i32* %4185, align 4
  %4186 = load i64, i64* %RBP.i, align 8
  %4187 = add i64 %4186, -748
  %4188 = load i64, i64* %3, align 8
  %4189 = add i64 %4188, 7
  store i64 %4189, i64* %3, align 8
  %4190 = inttoptr i64 %4187 to i32*
  %4191 = load i32, i32* %4190, align 4
  %4192 = add i32 %4191, -5
  %4193 = icmp ult i32 %4191, 5
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %40, align 1
  %4195 = and i32 %4192, 255
  %4196 = tail call i32 @llvm.ctpop.i32(i32 %4195)
  %4197 = trunc i32 %4196 to i8
  %4198 = and i8 %4197, 1
  %4199 = xor i8 %4198, 1
  store i8 %4199, i8* %47, align 1
  %4200 = xor i32 %4192, %4191
  %4201 = lshr i32 %4200, 4
  %4202 = trunc i32 %4201 to i8
  %4203 = and i8 %4202, 1
  store i8 %4203, i8* %53, align 1
  %4204 = icmp eq i32 %4192, 0
  %4205 = zext i1 %4204 to i8
  store i8 %4205, i8* %56, align 1
  %4206 = lshr i32 %4192, 31
  %4207 = trunc i32 %4206 to i8
  store i8 %4207, i8* %59, align 1
  %4208 = lshr i32 %4191, 31
  %4209 = xor i32 %4206, %4208
  %4210 = add nuw nsw i32 %4209, %4208
  %4211 = icmp eq i32 %4210, 2
  %4212 = zext i1 %4211 to i8
  store i8 %4212, i8* %65, align 1
  %.v273 = select i1 %4204, i64 220, i64 13
  %4213 = add i64 %4188, %.v273
  store i64 %4213, i64* %3, align 8
  br i1 %4204, label %block_.L_460ee2, label %block_460e13

block_460e13:                                     ; preds = %block_460de8
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %4214 = add i64 %4186, -48
  %4215 = add i64 %4213, 7
  store i64 %4215, i64* %3, align 8
  %4216 = inttoptr i64 %4214 to i32*
  %4217 = load i32, i32* %4216, align 4
  %4218 = zext i32 %4217 to i64
  store i64 %4218, i64* %RDI.i2050, align 8
  %4219 = add i64 %4186, -1240
  %4220 = add i64 %4213, 13
  store i64 %4220, i64* %3, align 8
  %4221 = inttoptr i64 %4219 to i32*
  %4222 = load i32, i32* %4221, align 4
  %4223 = zext i32 %4222 to i64
  store i64 %4223, i64* %RDX.i2056, align 8
  %4224 = add i64 %4186, -1244
  %4225 = add i64 %4213, 19
  store i64 %4225, i64* %3, align 8
  %4226 = inttoptr i64 %4224 to i32*
  %4227 = load i32, i32* %4226, align 4
  %4228 = zext i32 %4227 to i64
  store i64 %4228, i64* %RCX.i2157, align 8
  %4229 = add i64 %4213, -12595
  %4230 = add i64 %4213, 24
  %4231 = load i64, i64* %6, align 8
  %4232 = add i64 %4231, -8
  %4233 = inttoptr i64 %4232 to i64*
  store i64 %4230, i64* %4233, align 8
  store i64 %4232, i64* %6, align 8
  store i64 %4229, i64* %3, align 8
  %call2_460e26 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %4229, %struct.Memory* %MEMORY.46)
  %4234 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4235 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %4236 = and i32 %4234, 255
  %4237 = tail call i32 @llvm.ctpop.i32(i32 %4236)
  %4238 = trunc i32 %4237 to i8
  %4239 = and i8 %4238, 1
  %4240 = xor i8 %4239, 1
  store i8 %4240, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4241 = icmp eq i32 %4234, 0
  %4242 = zext i1 %4241 to i8
  store i8 %4242, i8* %56, align 1
  %4243 = lshr i32 %4234, 31
  %4244 = trunc i32 %4243 to i8
  store i8 %4244, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v274 = select i1 %4241, i64 183, i64 9
  %4245 = add i64 %4235, %.v274
  store i64 %4245, i64* %3, align 8
  br i1 %4241, label %block_.L_460ee2, label %block_460e34

block_460e34:                                     ; preds = %block_460e13
  %4246 = add i64 %4245, -340180
  %4247 = add i64 %4245, 5
  %4248 = load i64, i64* %6, align 8
  %4249 = add i64 %4248, -8
  %4250 = inttoptr i64 %4249 to i64*
  store i64 %4247, i64* %4250, align 8
  store i64 %4249, i64* %6, align 8
  store i64 %4246, i64* %3, align 8
  %call2_460e34 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %4246, %struct.Memory* %MEMORY.46)
  %4251 = load i64, i64* %RBP.i, align 8
  %4252 = add i64 %4251, -748
  %4253 = load i64, i64* %3, align 8
  %4254 = add i64 %4253, 7
  store i64 %4254, i64* %3, align 8
  %4255 = inttoptr i64 %4252 to i32*
  %4256 = load i32, i32* %4255, align 4
  store i8 0, i8* %40, align 1
  %4257 = and i32 %4256, 255
  %4258 = tail call i32 @llvm.ctpop.i32(i32 %4257)
  %4259 = trunc i32 %4258 to i8
  %4260 = and i8 %4259, 1
  %4261 = xor i8 %4260, 1
  store i8 %4261, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4262 = icmp eq i32 %4256, 0
  %4263 = zext i1 %4262 to i8
  store i8 %4263, i8* %56, align 1
  %4264 = lshr i32 %4256, 31
  %4265 = trunc i32 %4264 to i8
  store i8 %4265, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v275 = select i1 %4262, i64 13, i64 102
  %4266 = add i64 %4253, %.v275
  store i64 %4266, i64* %3, align 8
  br i1 %4262, label %block_460e46, label %block_.L_460e9f

block_460e46:                                     ; preds = %block_460e34
  %4267 = add i64 %4251, -56
  %4268 = add i64 %4266, 5
  store i64 %4268, i64* %3, align 8
  %4269 = inttoptr i64 %4267 to i64*
  %4270 = load i64, i64* %4269, align 8
  store i8 0, i8* %40, align 1
  %4271 = trunc i64 %4270 to i32
  %4272 = and i32 %4271, 255
  %4273 = tail call i32 @llvm.ctpop.i32(i32 %4272)
  %4274 = trunc i32 %4273 to i8
  %4275 = and i8 %4274, 1
  %4276 = xor i8 %4275, 1
  store i8 %4276, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4277 = icmp eq i64 %4270, 0
  %4278 = zext i1 %4277 to i8
  store i8 %4278, i8* %56, align 1
  %4279 = lshr i64 %4270, 63
  %4280 = trunc i64 %4279 to i8
  store i8 %4280, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v277 = select i1 %4277, i64 23, i64 11
  %4281 = add i64 %4266, %.v277
  store i64 %4281, i64* %3, align 8
  br i1 %4277, label %block_.L_460e5d, label %block_460e51

block_460e51:                                     ; preds = %block_460e46
  %4282 = add i64 %4251, -724
  %4283 = add i64 %4281, 6
  store i64 %4283, i64* %3, align 8
  %4284 = inttoptr i64 %4282 to i32*
  %4285 = load i32, i32* %4284, align 4
  %4286 = zext i32 %4285 to i64
  store i64 %4286, i64* %RAX.i2177, align 8
  %4287 = add i64 %4281, 10
  store i64 %4287, i64* %3, align 8
  %4288 = load i64, i64* %4269, align 8
  store i64 %4288, i64* %RCX.i2157, align 8
  %4289 = add i64 %4281, 12
  store i64 %4289, i64* %3, align 8
  %4290 = inttoptr i64 %4288 to i32*
  store i32 %4285, i32* %4290, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_460e5d

block_.L_460e5d:                                  ; preds = %block_460e51, %block_460e46
  %4291 = phi i64 [ %.pre172, %block_460e51 ], [ %4281, %block_460e46 ]
  %4292 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4293 = trunc i64 %4292 to i32
  %4294 = and i32 %4293, 255
  %4295 = tail call i32 @llvm.ctpop.i32(i32 %4294)
  %4296 = trunc i32 %4295 to i8
  %4297 = and i8 %4296, 1
  %4298 = xor i8 %4297, 1
  store i8 %4298, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4299 = icmp eq i64 %4292, 0
  %4300 = zext i1 %4299 to i8
  store i8 %4300, i8* %56, align 1
  %4301 = lshr i64 %4292, 63
  %4302 = trunc i64 %4301 to i8
  store i8 %4302, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v278 = select i1 %4299, i64 54, i64 15
  %4303 = add i64 %4291, %.v278
  store i64 %4303, i64* %3, align 8
  br i1 %4299, label %block_.L_460e93, label %block_460e6c

block_460e6c:                                     ; preds = %block_.L_460e5d
  store i64 5, i64* %RCX.i2157, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %68, align 8
  %4304 = load i64, i64* %RBP.i, align 8
  %4305 = add i64 %4304, -1176
  %4306 = add i64 %4303, 22
  store i64 %4306, i64* %3, align 8
  %4307 = inttoptr i64 %4305 to i64*
  %4308 = load i64, i64* %4307, align 8
  store i64 %4308, i64* %RDI.i2050, align 8
  %4309 = add i64 %4304, -1180
  %4310 = add i64 %4303, 28
  store i64 %4310, i64* %3, align 8
  %4311 = inttoptr i64 %4309 to i32*
  %4312 = load i32, i32* %4311, align 4
  %4313 = zext i32 %4312 to i64
  store i64 %4313, i64* %RSI.i2169, align 8
  %4314 = add i64 %4304, -724
  %4315 = add i64 %4303, 34
  store i64 %4315, i64* %3, align 8
  %4316 = inttoptr i64 %4314 to i32*
  %4317 = load i32, i32* %4316, align 4
  %4318 = zext i32 %4317 to i64
  store i64 %4318, i64* %RDX.i2056, align 8
  %4319 = add i64 %4303, -298668
  %4320 = add i64 %4303, 39
  %4321 = load i64, i64* %6, align 8
  %4322 = add i64 %4321, -8
  %4323 = inttoptr i64 %4322 to i64*
  store i64 %4320, i64* %4323, align 8
  store i64 %4322, i64* %6, align 8
  store i64 %4319, i64* %3, align 8
  %call2_460e8e = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4319, %struct.Memory* %MEMORY.46)
  %.pre173 = load i64, i64* %3, align 8
  br label %block_.L_460e93

block_.L_460e93:                                  ; preds = %block_460e6c, %block_.L_460e5d
  %4324 = phi i64 [ %4303, %block_.L_460e5d ], [ %.pre173, %block_460e6c ]
  %MEMORY.50 = phi %struct.Memory* [ %MEMORY.46, %block_.L_460e5d ], [ %call2_460e8e, %block_460e6c ]
  %4325 = load i64, i64* %RBP.i, align 8
  %4326 = add i64 %4325, -44
  %4327 = add i64 %4324, 7
  store i64 %4327, i64* %3, align 8
  %4328 = inttoptr i64 %4326 to i32*
  store i32 5, i32* %4328, align 4
  %4329 = load i64, i64* %3, align 8
  %4330 = add i64 %4329, 1244
  store i64 %4330, i64* %3, align 8
  br label %block_.L_461376

block_.L_460e9f:                                  ; preds = %block_460e34
  store i64 5, i64* %RAX.i2177, align 8
  %4331 = add i64 %4266, 11
  store i64 %4331, i64* %3, align 8
  %4332 = load i32, i32* %4255, align 4
  %4333 = sub i32 5, %4332
  %4334 = zext i32 %4333 to i64
  store i64 %4334, i64* %RAX.i2177, align 8
  %4335 = icmp ugt i32 %4332, 5
  %4336 = zext i1 %4335 to i8
  store i8 %4336, i8* %40, align 1
  %4337 = and i32 %4333, 255
  %4338 = tail call i32 @llvm.ctpop.i32(i32 %4337)
  %4339 = trunc i32 %4338 to i8
  %4340 = and i8 %4339, 1
  %4341 = xor i8 %4340, 1
  store i8 %4341, i8* %47, align 1
  %4342 = xor i32 %4333, %4332
  %4343 = lshr i32 %4342, 4
  %4344 = trunc i32 %4343 to i8
  %4345 = and i8 %4344, 1
  store i8 %4345, i8* %53, align 1
  %4346 = icmp eq i32 %4333, 0
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %56, align 1
  %4348 = lshr i32 %4333, 31
  %4349 = trunc i32 %4348 to i8
  store i8 %4349, i8* %59, align 1
  %4350 = lshr i32 %4332, 31
  %4351 = add nuw nsw i32 %4348, %4350
  %4352 = icmp eq i32 %4351, 2
  %4353 = zext i1 %4352 to i8
  store i8 %4353, i8* %65, align 1
  %4354 = add i64 %4251, -1168
  %4355 = add i64 %4266, 17
  store i64 %4355, i64* %3, align 8
  %4356 = inttoptr i64 %4354 to i32*
  %4357 = load i32, i32* %4356, align 4
  %4358 = sub i32 %4333, %4357
  %4359 = icmp ult i32 %4333, %4357
  %4360 = zext i1 %4359 to i8
  store i8 %4360, i8* %40, align 1
  %4361 = and i32 %4358, 255
  %4362 = tail call i32 @llvm.ctpop.i32(i32 %4361)
  %4363 = trunc i32 %4362 to i8
  %4364 = and i8 %4363, 1
  %4365 = xor i8 %4364, 1
  store i8 %4365, i8* %47, align 1
  %4366 = xor i32 %4357, %4333
  %4367 = xor i32 %4366, %4358
  %4368 = lshr i32 %4367, 4
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  store i8 %4370, i8* %53, align 1
  %4371 = icmp eq i32 %4358, 0
  %4372 = zext i1 %4371 to i8
  store i8 %4372, i8* %56, align 1
  %4373 = lshr i32 %4358, 31
  %4374 = trunc i32 %4373 to i8
  store i8 %4374, i8* %59, align 1
  %4375 = lshr i32 %4357, 31
  %4376 = xor i32 %4375, %4348
  %4377 = xor i32 %4373, %4348
  %4378 = add nuw nsw i32 %4377, %4376
  %4379 = icmp eq i32 %4378, 2
  %4380 = zext i1 %4379 to i8
  store i8 %4380, i8* %65, align 1
  %4381 = icmp ne i8 %4374, 0
  %4382 = xor i1 %4381, %4379
  %4383 = or i1 %4371, %4382
  %.v276 = select i1 %4383, i64 52, i64 23
  %4384 = add i64 %4266, %.v276
  store i64 %4384, i64* %3, align 8
  br i1 %4383, label %block_.L_460ed3, label %block_460eb6

block_460eb6:                                     ; preds = %block_.L_460e9f
  store i64 5, i64* %RAX.i2177, align 8
  %4385 = add i64 %4251, -724
  %4386 = add i64 %4384, 11
  store i64 %4386, i64* %3, align 8
  %4387 = inttoptr i64 %4385 to i32*
  %4388 = load i32, i32* %4387, align 4
  %4389 = zext i32 %4388 to i64
  store i64 %4389, i64* %RCX.i2157, align 8
  %4390 = add i64 %4251, -1164
  %4391 = add i64 %4384, 17
  store i64 %4391, i64* %3, align 8
  %4392 = inttoptr i64 %4390 to i32*
  store i32 %4388, i32* %4392, align 4
  %4393 = load i64, i64* %RAX.i2177, align 8
  %4394 = load i64, i64* %RBP.i, align 8
  %4395 = add i64 %4394, -748
  %4396 = load i64, i64* %3, align 8
  %4397 = add i64 %4396, 6
  store i64 %4397, i64* %3, align 8
  %4398 = trunc i64 %4393 to i32
  %4399 = inttoptr i64 %4395 to i32*
  %4400 = load i32, i32* %4399, align 4
  %4401 = sub i32 %4398, %4400
  %4402 = zext i32 %4401 to i64
  store i64 %4402, i64* %RAX.i2177, align 8
  %4403 = icmp ult i32 %4398, %4400
  %4404 = zext i1 %4403 to i8
  store i8 %4404, i8* %40, align 1
  %4405 = and i32 %4401, 255
  %4406 = tail call i32 @llvm.ctpop.i32(i32 %4405)
  %4407 = trunc i32 %4406 to i8
  %4408 = and i8 %4407, 1
  %4409 = xor i8 %4408, 1
  store i8 %4409, i8* %47, align 1
  %4410 = xor i32 %4400, %4398
  %4411 = xor i32 %4410, %4401
  %4412 = lshr i32 %4411, 4
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  store i8 %4414, i8* %53, align 1
  %4415 = icmp eq i32 %4401, 0
  %4416 = zext i1 %4415 to i8
  store i8 %4416, i8* %56, align 1
  %4417 = lshr i32 %4401, 31
  %4418 = trunc i32 %4417 to i8
  store i8 %4418, i8* %59, align 1
  %4419 = lshr i32 %4398, 31
  %4420 = lshr i32 %4400, 31
  %4421 = xor i32 %4420, %4419
  %4422 = xor i32 %4417, %4419
  %4423 = add nuw nsw i32 %4422, %4421
  %4424 = icmp eq i32 %4423, 2
  %4425 = zext i1 %4424 to i8
  store i8 %4425, i8* %65, align 1
  %4426 = add i64 %4394, -1168
  %4427 = add i64 %4396, 12
  store i64 %4427, i64* %3, align 8
  %4428 = inttoptr i64 %4426 to i32*
  store i32 %4401, i32* %4428, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_460ed3

block_.L_460ed3:                                  ; preds = %block_460eb6, %block_.L_460e9f
  %4429 = phi i64 [ %.pre174, %block_460eb6 ], [ %4384, %block_.L_460e9f ]
  %4430 = add i64 %4429, 20
  store i64 %4430, i64* %3, align 8
  br label %block_.L_460ee7

block_.L_460ee2:                                  ; preds = %block_460e13, %block_460de8
  %4431 = phi i64 [ %4245, %block_460e13 ], [ %4213, %block_460de8 ]
  %4432 = add i64 %4431, -340354
  %4433 = add i64 %4431, 5
  %4434 = load i64, i64* %6, align 8
  %4435 = add i64 %4434, -8
  %4436 = inttoptr i64 %4435 to i64*
  store i64 %4433, i64* %4436, align 8
  store i64 %4435, i64* %6, align 8
  store i64 %4432, i64* %3, align 8
  %call2_460ee2 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %4432, %struct.Memory* %MEMORY.46)
  %.pre175 = load i64, i64* %3, align 8
  br label %block_.L_460ee7

block_.L_460ee7:                                  ; preds = %block_.L_460ee2, %block_.L_460ed3
  %4437 = phi i64 [ %.pre175, %block_.L_460ee2 ], [ %4430, %block_.L_460ed3 ]
  %MEMORY.53 = phi %struct.Memory* [ %call2_460ee2, %block_.L_460ee2 ], [ %MEMORY.46, %block_.L_460ed3 ]
  %4438 = add i64 %4437, 98
  store i64 %4438, i64* %3, align 8
  br label %block_.L_460f49

block_.L_460eec:                                  ; preds = %block_460ddb
  %4439 = add i64 %4159, 10036
  %4440 = add i64 %4159, 24
  %4441 = load i64, i64* %6, align 8
  %4442 = add i64 %4441, -8
  %4443 = inttoptr i64 %4442 to i64*
  store i64 %4440, i64* %4443, align 8
  store i64 %4442, i64* %6, align 8
  store i64 %4439, i64* %3, align 8
  %call2_460eff = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %4439, %struct.Memory* %MEMORY.46)
  %4444 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4445 = load i64, i64* %3, align 8
  %4446 = add i32 %4444, -5
  %4447 = icmp ult i32 %4444, 5
  %4448 = zext i1 %4447 to i8
  store i8 %4448, i8* %40, align 1
  %4449 = and i32 %4446, 255
  %4450 = tail call i32 @llvm.ctpop.i32(i32 %4449)
  %4451 = trunc i32 %4450 to i8
  %4452 = and i8 %4451, 1
  %4453 = xor i8 %4452, 1
  store i8 %4453, i8* %47, align 1
  %4454 = xor i32 %4446, %4444
  %4455 = lshr i32 %4454, 4
  %4456 = trunc i32 %4455 to i8
  %4457 = and i8 %4456, 1
  store i8 %4457, i8* %53, align 1
  %4458 = icmp eq i32 %4446, 0
  %4459 = zext i1 %4458 to i8
  store i8 %4459, i8* %56, align 1
  %4460 = lshr i32 %4446, 31
  %4461 = trunc i32 %4460 to i8
  store i8 %4461, i8* %59, align 1
  %4462 = lshr i32 %4444, 31
  %4463 = xor i32 %4460, %4462
  %4464 = add nuw nsw i32 %4463, %4462
  %4465 = icmp eq i32 %4464, 2
  %4466 = zext i1 %4465 to i8
  store i8 %4466, i8* %65, align 1
  %.v271 = select i1 %4458, i64 64, i64 9
  %4467 = add i64 %4445, %.v271
  store i64 %4467, i64* %3, align 8
  br i1 %4458, label %block_.L_460f44, label %block_460f0d

block_460f0d:                                     ; preds = %block_.L_460eec
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %4468 = load i64, i64* %RBP.i, align 8
  %4469 = add i64 %4468, -48
  %4470 = add i64 %4467, 7
  store i64 %4470, i64* %3, align 8
  %4471 = inttoptr i64 %4469 to i32*
  %4472 = load i32, i32* %4471, align 4
  %4473 = zext i32 %4472 to i64
  store i64 %4473, i64* %RDI.i2050, align 8
  %4474 = add i64 %4468, -1240
  %4475 = add i64 %4467, 13
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i32*
  %4477 = load i32, i32* %4476, align 4
  %4478 = zext i32 %4477 to i64
  store i64 %4478, i64* %RDX.i2056, align 8
  %4479 = add i64 %4468, -1244
  %4480 = add i64 %4467, 19
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = zext i32 %4482 to i64
  store i64 %4483, i64* %RCX.i2157, align 8
  %4484 = add i64 %4467, -12845
  %4485 = add i64 %4467, 24
  %4486 = load i64, i64* %6, align 8
  %4487 = add i64 %4486, -8
  %4488 = inttoptr i64 %4487 to i64*
  store i64 %4485, i64* %4488, align 8
  store i64 %4487, i64* %6, align 8
  store i64 %4484, i64* %3, align 8
  %call2_460f20 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %4484, %struct.Memory* %MEMORY.46)
  %4489 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4490 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %4491 = and i32 %4489, 255
  %4492 = tail call i32 @llvm.ctpop.i32(i32 %4491)
  %4493 = trunc i32 %4492 to i8
  %4494 = and i8 %4493, 1
  %4495 = xor i8 %4494, 1
  store i8 %4495, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4496 = icmp eq i32 %4489, 0
  %4497 = zext i1 %4496 to i8
  store i8 %4497, i8* %56, align 1
  %4498 = lshr i32 %4489, 31
  %4499 = trunc i32 %4498 to i8
  store i8 %4499, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v272 = select i1 %4496, i64 31, i64 9
  %4500 = add i64 %4490, %.v272
  store i64 %4500, i64* %3, align 8
  br i1 %4496, label %block_.L_460f44, label %block_460f2e

block_460f2e:                                     ; preds = %block_460f0d
  %4501 = load i64, i64* %RBP.i, align 8
  %4502 = add i64 %4501, -724
  %4503 = add i64 %4500, 6
  store i64 %4503, i64* %3, align 8
  %4504 = inttoptr i64 %4502 to i32*
  %4505 = load i32, i32* %4504, align 4
  %4506 = zext i32 %4505 to i64
  store i64 %4506, i64* %RAX.i2177, align 8
  %4507 = add i64 %4501, -1164
  %4508 = add i64 %4500, 12
  store i64 %4508, i64* %3, align 8
  %4509 = inttoptr i64 %4507 to i32*
  store i32 %4505, i32* %4509, align 4
  %4510 = load i64, i64* %RBP.i, align 8
  %4511 = add i64 %4510, -1168
  %4512 = load i64, i64* %3, align 8
  %4513 = add i64 %4512, 10
  store i64 %4513, i64* %3, align 8
  %4514 = inttoptr i64 %4511 to i32*
  store i32 1, i32* %4514, align 4
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_460f44

block_.L_460f44:                                  ; preds = %block_460f2e, %block_460f0d, %block_.L_460eec
  %4515 = phi i64 [ %.pre176, %block_460f2e ], [ %4500, %block_460f0d ], [ %4467, %block_.L_460eec ]
  %4516 = add i64 %4515, -340452
  %4517 = add i64 %4515, 5
  %4518 = load i64, i64* %6, align 8
  %4519 = add i64 %4518, -8
  %4520 = inttoptr i64 %4519 to i64*
  store i64 %4517, i64* %4520, align 8
  store i64 %4519, i64* %6, align 8
  store i64 %4516, i64* %3, align 8
  %call2_460f44 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %4516, %struct.Memory* %MEMORY.46)
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_460f49

block_.L_460f49:                                  ; preds = %block_.L_460f44, %block_.L_460ee7
  %4521 = phi i64 [ %.pre177, %block_.L_460f44 ], [ %4438, %block_.L_460ee7 ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.46, %block_.L_460f44 ], [ %MEMORY.53, %block_.L_460ee7 ]
  %4522 = add i64 %4521, 5
  store i64 %4522, i64* %3, align 8
  br label %block_.L_460f4e

block_.L_460f4e:                                  ; preds = %block_.L_460f49, %block_.L_460d29
  %4523 = phi i64 [ %4152, %block_.L_460d29 ], [ %4522, %block_.L_460f49 ]
  %MEMORY.56 = phi %struct.Memory* [ %MEMORY.46, %block_.L_460d29 ], [ %MEMORY.55, %block_.L_460f49 ]
  %4524 = load i64, i64* %RBP.i, align 8
  %4525 = add i64 %4524, -752
  %4526 = add i64 %4523, 11
  store i64 %4526, i64* %3, align 8
  %4527 = inttoptr i64 %4525 to i32*
  %4528 = load i32, i32* %4527, align 4
  %4529 = add i32 %4528, 1
  %4530 = zext i32 %4529 to i64
  store i64 %4530, i64* %RAX.i2177, align 8
  %4531 = icmp eq i32 %4528, -1
  %4532 = icmp eq i32 %4529, 0
  %4533 = or i1 %4531, %4532
  %4534 = zext i1 %4533 to i8
  store i8 %4534, i8* %40, align 1
  %4535 = and i32 %4529, 255
  %4536 = tail call i32 @llvm.ctpop.i32(i32 %4535)
  %4537 = trunc i32 %4536 to i8
  %4538 = and i8 %4537, 1
  %4539 = xor i8 %4538, 1
  store i8 %4539, i8* %47, align 1
  %4540 = xor i32 %4529, %4528
  %4541 = lshr i32 %4540, 4
  %4542 = trunc i32 %4541 to i8
  %4543 = and i8 %4542, 1
  store i8 %4543, i8* %53, align 1
  %4544 = zext i1 %4532 to i8
  store i8 %4544, i8* %56, align 1
  %4545 = lshr i32 %4529, 31
  %4546 = trunc i32 %4545 to i8
  store i8 %4546, i8* %59, align 1
  %4547 = lshr i32 %4528, 31
  %4548 = xor i32 %4545, %4547
  %4549 = add nuw nsw i32 %4548, %4545
  %4550 = icmp eq i32 %4549, 2
  %4551 = zext i1 %4550 to i8
  store i8 %4551, i8* %65, align 1
  %4552 = add i64 %4523, 20
  store i64 %4552, i64* %3, align 8
  store i32 %4529, i32* %4527, align 4
  %4553 = load i64, i64* %3, align 8
  %4554 = add i64 %4553, -745
  store i64 %4554, i64* %3, align 8
  br label %block_.L_460c79

block_.L_460f67.loopexit:                         ; preds = %block_.L_460c79
  br label %block_.L_460f67

block_.L_460f67:                                  ; preds = %block_.L_460f67.loopexit, %block_460cac
  %4555 = phi i64 [ %3894, %block_460cac ], [ %3849, %block_.L_460f67.loopexit ]
  %4556 = add i64 %4555, 5
  store i64 %4556, i64* %3, align 8
  br label %block_.L_460f6c

block_.L_460f6c:                                  ; preds = %block_.L_460a37, %block_.L_460f67
  %4557 = phi i64 [ %3194, %block_.L_460a37 ], [ %4556, %block_.L_460f67 ]
  %MEMORY.58 = phi %struct.Memory* [ %MEMORY.38, %block_.L_460a37 ], [ %MEMORY.46, %block_.L_460f67 ]
  %4558 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %4559 = add i32 %4558, -10
  %4560 = icmp ult i32 %4558, 10
  %4561 = zext i1 %4560 to i8
  store i8 %4561, i8* %40, align 1
  %4562 = and i32 %4559, 255
  %4563 = tail call i32 @llvm.ctpop.i32(i32 %4562)
  %4564 = trunc i32 %4563 to i8
  %4565 = and i8 %4564, 1
  %4566 = xor i8 %4565, 1
  store i8 %4566, i8* %47, align 1
  %4567 = xor i32 %4559, %4558
  %4568 = lshr i32 %4567, 4
  %4569 = trunc i32 %4568 to i8
  %4570 = and i8 %4569, 1
  store i8 %4570, i8* %53, align 1
  %4571 = icmp eq i32 %4559, 0
  %4572 = zext i1 %4571 to i8
  store i8 %4572, i8* %56, align 1
  %4573 = lshr i32 %4559, 31
  %4574 = trunc i32 %4573 to i8
  store i8 %4574, i8* %59, align 1
  %4575 = lshr i32 %4558, 31
  %4576 = xor i32 %4573, %4575
  %4577 = add nuw nsw i32 %4576, %4575
  %4578 = icmp eq i32 %4577, 2
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %65, align 1
  %4580 = icmp ne i8 %4574, 0
  %4581 = xor i1 %4580, %4578
  %.v240 = select i1 %4581, i64 875, i64 14
  %4582 = add i64 %4557, %.v240
  store i64 %4582, i64* %3, align 8
  br i1 %4581, label %block_.L_4612d7, label %block_460f7a

block_460f7a:                                     ; preds = %block_.L_460f6c
  %4583 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %4584 = zext i32 %4583 to i64
  store i64 %4584, i64* %RAX.i2177, align 8
  %4585 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %4586 = sub i32 %4583, %4585
  %4587 = icmp ult i32 %4583, %4585
  %4588 = zext i1 %4587 to i8
  store i8 %4588, i8* %40, align 1
  %4589 = and i32 %4586, 255
  %4590 = tail call i32 @llvm.ctpop.i32(i32 %4589)
  %4591 = trunc i32 %4590 to i8
  %4592 = and i8 %4591, 1
  %4593 = xor i8 %4592, 1
  store i8 %4593, i8* %47, align 1
  %4594 = xor i32 %4585, %4583
  %4595 = xor i32 %4594, %4586
  %4596 = lshr i32 %4595, 4
  %4597 = trunc i32 %4596 to i8
  %4598 = and i8 %4597, 1
  store i8 %4598, i8* %53, align 1
  %4599 = icmp eq i32 %4586, 0
  %4600 = zext i1 %4599 to i8
  store i8 %4600, i8* %56, align 1
  %4601 = lshr i32 %4586, 31
  %4602 = trunc i32 %4601 to i8
  store i8 %4602, i8* %59, align 1
  %4603 = lshr i32 %4583, 31
  %4604 = lshr i32 %4585, 31
  %4605 = xor i32 %4604, %4603
  %4606 = xor i32 %4601, %4603
  %4607 = add nuw nsw i32 %4606, %4605
  %4608 = icmp eq i32 %4607, 2
  %4609 = zext i1 %4608 to i8
  store i8 %4609, i8* %65, align 1
  %4610 = icmp ne i8 %4602, 0
  %4611 = xor i1 %4610, %4608
  %.demorgan219 = or i1 %4599, %4611
  %.v241 = select i1 %.demorgan219, i64 20, i64 861
  %4612 = add i64 %4582, %.v241
  store i64 %4612, i64* %3, align 8
  br i1 %.demorgan219, label %block_460f8e, label %block_.L_4612d7

block_460f8e:                                     ; preds = %block_460f7a
  %4613 = load i64, i64* %RBP.i, align 8
  %4614 = add i64 %4613, -1252
  store i64 %4614, i64* %RSI.i2169, align 8
  store i64 3, i64* %RCX.i2157, align 8
  %4615 = add i64 %4613, -1360
  store i64 %4615, i64* %RDX.i2056, align 8
  %4616 = add i64 %4613, -48
  %4617 = add i64 %4612, 22
  store i64 %4617, i64* %3, align 8
  %4618 = inttoptr i64 %4616 to i32*
  %4619 = load i32, i32* %4618, align 4
  %4620 = zext i32 %4619 to i64
  store i64 %4620, i64* %RDI.i2050, align 8
  %4621 = add i64 %4612, 110882
  %4622 = add i64 %4612, 27
  %4623 = load i64, i64* %6, align 8
  %4624 = add i64 %4623, -8
  %4625 = inttoptr i64 %4624 to i64*
  store i64 %4622, i64* %4625, align 8
  store i64 %4624, i64* %6, align 8
  store i64 %4621, i64* %3, align 8
  %call2_460fa4 = tail call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* nonnull %0, i64 %4621, %struct.Memory* %MEMORY.58)
  %4626 = load i64, i64* %RBP.i, align 8
  %4627 = add i64 %4626, -1252
  %4628 = load i64, i64* %3, align 8
  %4629 = add i64 %4628, 7
  store i64 %4629, i64* %3, align 8
  %4630 = inttoptr i64 %4627 to i32*
  %4631 = load i32, i32* %4630, align 4
  %4632 = add i32 %4631, -5
  %4633 = icmp ult i32 %4631, 5
  %4634 = zext i1 %4633 to i8
  store i8 %4634, i8* %40, align 1
  %4635 = and i32 %4632, 255
  %4636 = tail call i32 @llvm.ctpop.i32(i32 %4635)
  %4637 = trunc i32 %4636 to i8
  %4638 = and i8 %4637, 1
  %4639 = xor i8 %4638, 1
  store i8 %4639, i8* %47, align 1
  %4640 = xor i32 %4632, %4631
  %4641 = lshr i32 %4640, 4
  %4642 = trunc i32 %4641 to i8
  %4643 = and i8 %4642, 1
  store i8 %4643, i8* %53, align 1
  %4644 = icmp eq i32 %4632, 0
  %4645 = zext i1 %4644 to i8
  store i8 %4645, i8* %56, align 1
  %4646 = lshr i32 %4632, 31
  %4647 = trunc i32 %4646 to i8
  store i8 %4647, i8* %59, align 1
  %4648 = lshr i32 %4631, 31
  %4649 = xor i32 %4646, %4648
  %4650 = add nuw nsw i32 %4649, %4648
  %4651 = icmp eq i32 %4650, 2
  %4652 = zext i1 %4651 to i8
  store i8 %4652, i8* %65, align 1
  %4653 = icmp ne i8 %4647, 0
  %4654 = xor i1 %4653, %4651
  %.demorgan220 = or i1 %4644, %4654
  %.v246 = select i1 %.demorgan220, i64 13, i64 809
  %4655 = add i64 %4628, %.v246
  store i64 %4655, i64* %3, align 8
  br i1 %.demorgan220, label %block_460fb6, label %block_.L_4612d2

block_460fb6:                                     ; preds = %block_460f8e
  %4656 = add i64 %4626, -752
  %4657 = add i64 %4655, 10
  store i64 %4657, i64* %3, align 8
  %4658 = inttoptr i64 %4656 to i32*
  store i32 0, i32* %4658, align 4
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_460fc0

block_.L_460fc0:                                  ; preds = %block_.L_4612b9, %block_460fb6
  %4660 = phi i64 [ %.pre184, %block_460fb6 ], [ %5531, %block_.L_4612b9 ]
  %MEMORY.59 = phi %struct.Memory* [ %call2_460fa4, %block_460fb6 ], [ %MEMORY.74, %block_.L_4612b9 ]
  %4661 = load i64, i64* %RBP.i, align 8
  %4662 = add i64 %4661, -752
  %4663 = add i64 %4660, 6
  store i64 %4663, i64* %3, align 8
  %4664 = inttoptr i64 %4662 to i32*
  %4665 = load i32, i32* %4664, align 4
  %4666 = zext i32 %4665 to i64
  store i64 %4666, i64* %RAX.i2177, align 8
  %4667 = add i64 %4661, -1252
  %4668 = add i64 %4660, 12
  store i64 %4668, i64* %3, align 8
  %4669 = inttoptr i64 %4667 to i32*
  %4670 = load i32, i32* %4669, align 4
  %4671 = sub i32 %4665, %4670
  %4672 = icmp ult i32 %4665, %4670
  %4673 = zext i1 %4672 to i8
  store i8 %4673, i8* %40, align 1
  %4674 = and i32 %4671, 255
  %4675 = tail call i32 @llvm.ctpop.i32(i32 %4674)
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = xor i8 %4677, 1
  store i8 %4678, i8* %47, align 1
  %4679 = xor i32 %4670, %4665
  %4680 = xor i32 %4679, %4671
  %4681 = lshr i32 %4680, 4
  %4682 = trunc i32 %4681 to i8
  %4683 = and i8 %4682, 1
  store i8 %4683, i8* %53, align 1
  %4684 = icmp eq i32 %4671, 0
  %4685 = zext i1 %4684 to i8
  store i8 %4685, i8* %56, align 1
  %4686 = lshr i32 %4671, 31
  %4687 = trunc i32 %4686 to i8
  store i8 %4687, i8* %59, align 1
  %4688 = lshr i32 %4665, 31
  %4689 = lshr i32 %4670, 31
  %4690 = xor i32 %4689, %4688
  %4691 = xor i32 %4686, %4688
  %4692 = add nuw nsw i32 %4691, %4690
  %4693 = icmp eq i32 %4692, 2
  %4694 = zext i1 %4693 to i8
  store i8 %4694, i8* %65, align 1
  %4695 = icmp ne i8 %4687, 0
  %4696 = xor i1 %4695, %4693
  %.v247 = select i1 %4696, i64 18, i64 781
  %4697 = add i64 %4660, %.v247
  store i64 %4697, i64* %3, align 8
  br i1 %4696, label %block_460fd2, label %block_.L_4612cd

block_460fd2:                                     ; preds = %block_.L_460fc0
  %4698 = add i64 %4697, 7
  store i64 %4698, i64* %3, align 8
  %4699 = load i32, i32* %4664, align 4
  %4700 = sext i32 %4699 to i64
  store i64 %4700, i64* %RAX.i2177, align 8
  %4701 = shl nsw i64 %4700, 2
  %4702 = add i64 %4661, -1360
  %4703 = add i64 %4702, %4701
  %4704 = add i64 %4697, 14
  store i64 %4704, i64* %3, align 8
  %4705 = inttoptr i64 %4703 to i32*
  %4706 = load i32, i32* %4705, align 4
  %4707 = zext i32 %4706 to i64
  store i64 %4707, i64* %RCX.i2157, align 8
  %4708 = add i64 %4661, -1364
  %4709 = add i64 %4697, 20
  store i64 %4709, i64* %3, align 8
  %4710 = inttoptr i64 %4708 to i32*
  store i32 %4706, i32* %4710, align 4
  %4711 = load i64, i64* %RBP.i, align 8
  %4712 = add i64 %4711, -1364
  %4713 = load i64, i64* %3, align 8
  %4714 = add i64 %4713, 6
  store i64 %4714, i64* %3, align 8
  %4715 = inttoptr i64 %4712 to i32*
  %4716 = load i32, i32* %4715, align 4
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RDI.i2050, align 8
  %4718 = add i64 %4711, -48
  %4719 = add i64 %4713, 9
  store i64 %4719, i64* %3, align 8
  %4720 = inttoptr i64 %4718 to i32*
  %4721 = load i32, i32* %4720, align 4
  %4722 = zext i32 %4721 to i64
  store i64 %4722, i64* %RSI.i2169, align 8
  %4723 = add i64 %4713, -312630
  %4724 = add i64 %4713, 14
  %4725 = load i64, i64* %6, align 8
  %4726 = add i64 %4725, -8
  %4727 = inttoptr i64 %4726 to i64*
  store i64 %4724, i64* %4727, align 8
  store i64 %4726, i64* %6, align 8
  store i64 %4723, i64* %3, align 8
  %call2_460fef = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %4723, %struct.Memory* %MEMORY.59)
  %4728 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4729 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %4730 = and i32 %4728, 255
  %4731 = tail call i32 @llvm.ctpop.i32(i32 %4730)
  %4732 = trunc i32 %4731 to i8
  %4733 = and i8 %4732, 1
  %4734 = xor i8 %4733, 1
  store i8 %4734, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4735 = icmp eq i32 %4728, 0
  %4736 = zext i1 %4735 to i8
  store i8 %4736, i8* %56, align 1
  %4737 = lshr i32 %4728, 31
  %4738 = trunc i32 %4737 to i8
  store i8 %4738, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v248 = select i1 %4735, i64 14, i64 9
  %4739 = add i64 %4729, %.v248
  store i64 %4739, i64* %3, align 8
  br i1 %4735, label %block_.L_461002, label %block_460ffd

block_460ffd:                                     ; preds = %block_460fd2
  %4740 = add i64 %4739, 700
  br label %block_.L_4612b9

block_.L_461002:                                  ; preds = %block_460fd2
  store i64 ptrtoint (%G__0x57fe04_type* @G__0x57fe04 to i64), i64* %RDX.i2056, align 8
  %4741 = load i64, i64* %RBP.i, align 8
  %4742 = add i64 %4741, -1364
  %4743 = add i64 %4739, 16
  store i64 %4743, i64* %3, align 8
  %4744 = inttoptr i64 %4742 to i32*
  %4745 = load i32, i32* %4744, align 4
  %4746 = zext i32 %4745 to i64
  store i64 %4746, i64* %RDI.i2050, align 8
  %4747 = add i64 %4741, -72
  %4748 = add i64 %4739, 19
  store i64 %4748, i64* %3, align 8
  %4749 = inttoptr i64 %4747 to i32*
  %4750 = load i32, i32* %4749, align 4
  %4751 = zext i32 %4750 to i64
  store i64 %4751, i64* %RSI.i2169, align 8
  %4752 = add i64 %4741, -48
  %4753 = add i64 %4739, 22
  store i64 %4753, i64* %3, align 8
  %4754 = inttoptr i64 %4752 to i32*
  %4755 = load i32, i32* %4754, align 4
  %4756 = zext i32 %4755 to i64
  store i64 %4756, i64* %RCX.i2157, align 8
  %4757 = add i64 %4741, -60
  %4758 = add i64 %4739, 26
  store i64 %4758, i64* %3, align 8
  %4759 = inttoptr i64 %4757 to i32*
  %4760 = load i32, i32* %4759, align 4
  %4761 = zext i32 %4760 to i64
  store i64 %4761, i64* %68, align 8
  %4762 = add i64 %4741, -64
  %4763 = add i64 %4739, 30
  store i64 %4763, i64* %3, align 8
  %4764 = inttoptr i64 %4762 to i32*
  %4765 = load i32, i32* %4764, align 4
  %4766 = zext i32 %4765 to i64
  store i64 %4766, i64* %4659, align 8
  %4767 = add i64 %4739, -360914
  %4768 = add i64 %4739, 35
  %4769 = load i64, i64* %6, align 8
  %4770 = add i64 %4769, -8
  %4771 = inttoptr i64 %4770 to i64*
  store i64 %4768, i64* %4771, align 8
  store i64 %4770, i64* %6, align 8
  store i64 %4767, i64* %3, align 8
  %call2_461020 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %4767, %struct.Memory* %MEMORY.59)
  %4772 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4773 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %4774 = and i32 %4772, 255
  %4775 = tail call i32 @llvm.ctpop.i32(i32 %4774)
  %4776 = trunc i32 %4775 to i8
  %4777 = and i8 %4776, 1
  %4778 = xor i8 %4777, 1
  store i8 %4778, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4779 = icmp eq i32 %4772, 0
  %4780 = zext i1 %4779 to i8
  store i8 %4780, i8* %56, align 1
  %4781 = lshr i32 %4772, 31
  %4782 = trunc i32 %4781 to i8
  store i8 %4782, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v249 = select i1 %4779, i64 655, i64 9
  %4783 = add i64 %4773, %.v249
  store i64 %4783, i64* %3, align 8
  br i1 %4779, label %block_.L_4612b4, label %block_46102e

block_46102e:                                     ; preds = %block_.L_461002
  %4784 = load i64, i64* %RBP.i, align 8
  %4785 = add i64 %4784, -1364
  %4786 = add i64 %4783, 6
  store i64 %4786, i64* %3, align 8
  %4787 = inttoptr i64 %4785 to i32*
  %4788 = load i32, i32* %4787, align 4
  %4789 = zext i32 %4788 to i64
  store i64 %4789, i64* %RDI.i2050, align 8
  %4790 = add i64 %4783, -333998
  %4791 = add i64 %4783, 11
  %4792 = load i64, i64* %6, align 8
  %4793 = add i64 %4792, -8
  %4794 = inttoptr i64 %4793 to i64*
  store i64 %4791, i64* %4794, align 8
  store i64 %4793, i64* %6, align 8
  store i64 %4790, i64* %3, align 8
  %call2_461034 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %4790, %struct.Memory* %MEMORY.59)
  %4795 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4796 = load i64, i64* %3, align 8
  %4797 = add i32 %4795, -1
  %4798 = icmp eq i32 %4795, 0
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %40, align 1
  %4800 = and i32 %4797, 255
  %4801 = tail call i32 @llvm.ctpop.i32(i32 %4800)
  %4802 = trunc i32 %4801 to i8
  %4803 = and i8 %4802, 1
  %4804 = xor i8 %4803, 1
  store i8 %4804, i8* %47, align 1
  %4805 = xor i32 %4797, %4795
  %4806 = lshr i32 %4805, 4
  %4807 = trunc i32 %4806 to i8
  %4808 = and i8 %4807, 1
  store i8 %4808, i8* %53, align 1
  %4809 = icmp eq i32 %4797, 0
  %4810 = zext i1 %4809 to i8
  store i8 %4810, i8* %56, align 1
  %4811 = lshr i32 %4797, 31
  %4812 = trunc i32 %4811 to i8
  store i8 %4812, i8* %59, align 1
  %4813 = lshr i32 %4795, 31
  %4814 = xor i32 %4811, %4813
  %4815 = add nuw nsw i32 %4814, %4813
  %4816 = icmp eq i32 %4815, 2
  %4817 = zext i1 %4816 to i8
  store i8 %4817, i8* %65, align 1
  %.v250 = select i1 %4809, i64 9, i64 382
  %4818 = add i64 %4796, %.v250
  store i64 %4818, i64* %3, align 8
  br i1 %4809, label %block_461042, label %block_.L_4611b7

block_461042:                                     ; preds = %block_46102e
  store i64 1, i64* %RSI.i2169, align 8
  %4819 = load i64, i64* %RBP.i, align 8
  %4820 = add i64 %4819, -724
  store i64 %4820, i64* %RDX.i2056, align 8
  %4821 = add i64 %4819, -1364
  %4822 = add i64 %4818, 18
  store i64 %4822, i64* %3, align 8
  %4823 = inttoptr i64 %4821 to i32*
  %4824 = load i32, i32* %4823, align 4
  %4825 = zext i32 %4824 to i64
  store i64 %4825, i64* %RDI.i2050, align 8
  %4826 = add i64 %4818, -333826
  %4827 = add i64 %4818, 23
  %4828 = load i64, i64* %6, align 8
  %4829 = add i64 %4828, -8
  %4830 = inttoptr i64 %4829 to i64*
  store i64 %4827, i64* %4830, align 8
  store i64 %4829, i64* %6, align 8
  store i64 %4826, i64* %3, align 8
  %call2_461054 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %4826, %struct.Memory* %MEMORY.59)
  %4831 = load i64, i64* %3, align 8
  store i64 2, i64* %RDX.i2056, align 8
  store i64 0, i64* %RSI.i2169, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RCX.i2157, align 8
  %4832 = load i64, i64* %RBP.i, align 8
  %4833 = add i64 %4832, -724
  %4834 = add i64 %4831, 15
  store i64 %4834, i64* %3, align 8
  %4835 = inttoptr i64 %4833 to i32*
  %4836 = load i32, i32* %4835, align 4
  %4837 = zext i32 %4836 to i64
  store i64 %4837, i64* %RDI.i2050, align 8
  %4838 = add i64 %4832, -72
  %4839 = add i64 %4831, 18
  store i64 %4839, i64* %3, align 8
  %4840 = inttoptr i64 %4838 to i32*
  %4841 = load i32, i32* %4840, align 4
  %4842 = zext i32 %4841 to i64
  store i64 %4842, i64* %RSI.i2169, align 8
  %4843 = add i64 %4832, -1504
  %4844 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4845 = add i64 %4831, 24
  store i64 %4845, i64* %3, align 8
  %4846 = inttoptr i64 %4843 to i32*
  store i32 %4844, i32* %4846, align 4
  %4847 = load i64, i64* %3, align 8
  %4848 = add i64 %4847, -326337
  %4849 = add i64 %4847, 5
  %4850 = load i64, i64* %6, align 8
  %4851 = add i64 %4850, -8
  %4852 = inttoptr i64 %4851 to i64*
  store i64 %4849, i64* %4852, align 8
  store i64 %4851, i64* %6, align 8
  store i64 %4848, i64* %3, align 8
  %call2_461071 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %4848, %struct.Memory* %MEMORY.59)
  %4853 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4854 = load i64, i64* %3, align 8
  %4855 = add i32 %4853, -1
  %4856 = icmp eq i32 %4853, 0
  %4857 = zext i1 %4856 to i8
  store i8 %4857, i8* %40, align 1
  %4858 = and i32 %4855, 255
  %4859 = tail call i32 @llvm.ctpop.i32(i32 %4858)
  %4860 = trunc i32 %4859 to i8
  %4861 = and i8 %4860, 1
  %4862 = xor i8 %4861, 1
  store i8 %4862, i8* %47, align 1
  %4863 = xor i32 %4855, %4853
  %4864 = lshr i32 %4863, 4
  %4865 = trunc i32 %4864 to i8
  %4866 = and i8 %4865, 1
  store i8 %4866, i8* %53, align 1
  %4867 = icmp eq i32 %4855, 0
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %56, align 1
  %4869 = lshr i32 %4855, 31
  %4870 = trunc i32 %4869 to i8
  store i8 %4870, i8* %59, align 1
  %4871 = lshr i32 %4853, 31
  %4872 = xor i32 %4869, %4871
  %4873 = add nuw nsw i32 %4872, %4871
  %4874 = icmp eq i32 %4873, 2
  %4875 = zext i1 %4874 to i8
  store i8 %4875, i8* %65, align 1
  %4876 = icmp ne i8 %4870, 0
  %4877 = xor i1 %4876, %4874
  %4878 = or i1 %4867, %4877
  %.v257 = select i1 %4878, i64 311, i64 9
  %4879 = add i64 %4854, %.v257
  store i64 %4879, i64* %3, align 8
  br i1 %4878, label %block_.L_4611ad, label %block_46107f

block_46107f:                                     ; preds = %block_461042
  %4880 = add i64 %4879, -340767
  %4881 = add i64 %4879, 5
  %4882 = load i64, i64* %6, align 8
  %4883 = add i64 %4882, -8
  %4884 = inttoptr i64 %4883 to i64*
  store i64 %4881, i64* %4884, align 8
  store i64 %4883, i64* %6, align 8
  store i64 %4880, i64* %3, align 8
  %call2_46107f = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %4880, %struct.Memory* %MEMORY.59)
  %4885 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57fe0e_type* @G__0x57fe0e to i64), i64* %RDX.i2056, align 8
  %4886 = load i64, i64* %RBP.i, align 8
  %4887 = add i64 %4886, -724
  %4888 = add i64 %4885, 16
  store i64 %4888, i64* %3, align 8
  %4889 = inttoptr i64 %4887 to i32*
  %4890 = load i32, i32* %4889, align 4
  %4891 = zext i32 %4890 to i64
  store i64 %4891, i64* %RDI.i2050, align 8
  %4892 = add i64 %4886, -72
  %4893 = add i64 %4885, 19
  store i64 %4893, i64* %3, align 8
  %4894 = inttoptr i64 %4892 to i32*
  %4895 = load i32, i32* %4894, align 4
  %4896 = zext i32 %4895 to i64
  store i64 %4896, i64* %RSI.i2169, align 8
  %4897 = add i64 %4886, -48
  %4898 = add i64 %4885, 22
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4897 to i32*
  %4900 = load i32, i32* %4899, align 4
  %4901 = zext i32 %4900 to i64
  store i64 %4901, i64* %RCX.i2157, align 8
  %4902 = add i64 %4886, -60
  %4903 = add i64 %4885, 26
  store i64 %4903, i64* %3, align 8
  %4904 = inttoptr i64 %4902 to i32*
  %4905 = load i32, i32* %4904, align 4
  %4906 = zext i32 %4905 to i64
  store i64 %4906, i64* %68, align 8
  %4907 = add i64 %4886, -64
  %4908 = add i64 %4885, 30
  store i64 %4908, i64* %3, align 8
  %4909 = inttoptr i64 %4907 to i32*
  %4910 = load i32, i32* %4909, align 4
  %4911 = zext i32 %4910 to i64
  store i64 %4911, i64* %4659, align 8
  %4912 = add i64 %4885, -361044
  %4913 = add i64 %4885, 35
  %4914 = load i64, i64* %6, align 8
  %4915 = add i64 %4914, -8
  %4916 = inttoptr i64 %4915 to i64*
  store i64 %4913, i64* %4916, align 8
  store i64 %4915, i64* %6, align 8
  store i64 %4912, i64* %3, align 8
  %call2_4610a2 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %4912, %struct.Memory* %MEMORY.59)
  %4917 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4918 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %4919 = and i32 %4917, 255
  %4920 = tail call i32 @llvm.ctpop.i32(i32 %4919)
  %4921 = trunc i32 %4920 to i8
  %4922 = and i8 %4921, 1
  %4923 = xor i8 %4922, 1
  store i8 %4923, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4924 = icmp eq i32 %4917, 0
  %4925 = zext i1 %4924 to i8
  store i8 %4925, i8* %56, align 1
  %4926 = lshr i32 %4917, 31
  %4927 = trunc i32 %4926 to i8
  store i8 %4927, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v258 = select i1 %4924, i64 257, i64 9
  %4928 = add i64 %4918, %.v258
  store i64 %4928, i64* %3, align 8
  br i1 %4924, label %block_.L_4611a8, label %block_4610b0

block_4610b0:                                     ; preds = %block_46107f
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %4929 = load i64, i64* %RBP.i, align 8
  %4930 = add i64 %4929, -48
  %4931 = add i64 %4928, 7
  store i64 %4931, i64* %3, align 8
  %4932 = inttoptr i64 %4930 to i32*
  %4933 = load i32, i32* %4932, align 4
  %4934 = zext i32 %4933 to i64
  store i64 %4934, i64* %RDI.i2050, align 8
  %4935 = add i64 %4929, -60
  %4936 = add i64 %4928, 10
  store i64 %4936, i64* %3, align 8
  %4937 = inttoptr i64 %4935 to i32*
  %4938 = load i32, i32* %4937, align 4
  %4939 = zext i32 %4938 to i64
  store i64 %4939, i64* %RDX.i2056, align 8
  %4940 = add i64 %4929, -64
  %4941 = add i64 %4928, 13
  store i64 %4941, i64* %3, align 8
  %4942 = inttoptr i64 %4940 to i32*
  %4943 = load i32, i32* %4942, align 4
  %4944 = zext i32 %4943 to i64
  store i64 %4944, i64* %RCX.i2157, align 8
  %4945 = add i64 %4928, 9584
  %4946 = add i64 %4928, 18
  %4947 = load i64, i64* %6, align 8
  %4948 = add i64 %4947, -8
  %4949 = inttoptr i64 %4948 to i64*
  store i64 %4946, i64* %4949, align 8
  store i64 %4948, i64* %6, align 8
  store i64 %4945, i64* %3, align 8
  %call2_4610bd = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %4945, %struct.Memory* %MEMORY.59)
  %4950 = load i64, i64* %RBP.i, align 8
  %4951 = add i64 %4950, -748
  %4952 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %4953 = load i64, i64* %3, align 8
  %4954 = add i64 %4953, 6
  store i64 %4954, i64* %3, align 8
  %4955 = inttoptr i64 %4951 to i32*
  store i32 %4952, i32* %4955, align 4
  %4956 = load i64, i64* %RBP.i, align 8
  %4957 = add i64 %4956, -748
  %4958 = load i64, i64* %3, align 8
  %4959 = add i64 %4958, 7
  store i64 %4959, i64* %3, align 8
  %4960 = inttoptr i64 %4957 to i32*
  %4961 = load i32, i32* %4960, align 4
  %4962 = add i32 %4961, -5
  %4963 = icmp ult i32 %4961, 5
  %4964 = zext i1 %4963 to i8
  store i8 %4964, i8* %40, align 1
  %4965 = and i32 %4962, 255
  %4966 = tail call i32 @llvm.ctpop.i32(i32 %4965)
  %4967 = trunc i32 %4966 to i8
  %4968 = and i8 %4967, 1
  %4969 = xor i8 %4968, 1
  store i8 %4969, i8* %47, align 1
  %4970 = xor i32 %4962, %4961
  %4971 = lshr i32 %4970, 4
  %4972 = trunc i32 %4971 to i8
  %4973 = and i8 %4972, 1
  store i8 %4973, i8* %53, align 1
  %4974 = icmp eq i32 %4962, 0
  %4975 = zext i1 %4974 to i8
  store i8 %4975, i8* %56, align 1
  %4976 = lshr i32 %4962, 31
  %4977 = trunc i32 %4976 to i8
  store i8 %4977, i8* %59, align 1
  %4978 = lshr i32 %4961, 31
  %4979 = xor i32 %4976, %4978
  %4980 = add nuw nsw i32 %4979, %4978
  %4981 = icmp eq i32 %4980, 2
  %4982 = zext i1 %4981 to i8
  store i8 %4982, i8* %65, align 1
  %.v259 = select i1 %4974, i64 214, i64 13
  %4983 = add i64 %4958, %.v259
  store i64 %4983, i64* %3, align 8
  br i1 %4974, label %block_.L_46119e, label %block_4610d5

block_4610d5:                                     ; preds = %block_4610b0
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %4984 = add i64 %4956, -48
  %4985 = add i64 %4983, 7
  store i64 %4985, i64* %3, align 8
  %4986 = inttoptr i64 %4984 to i32*
  %4987 = load i32, i32* %4986, align 4
  %4988 = zext i32 %4987 to i64
  store i64 %4988, i64* %RDI.i2050, align 8
  %4989 = add i64 %4956, -60
  %4990 = add i64 %4983, 10
  store i64 %4990, i64* %3, align 8
  %4991 = inttoptr i64 %4989 to i32*
  %4992 = load i32, i32* %4991, align 4
  %4993 = zext i32 %4992 to i64
  store i64 %4993, i64* %RDX.i2056, align 8
  %4994 = add i64 %4956, -64
  %4995 = add i64 %4983, 13
  store i64 %4995, i64* %3, align 8
  %4996 = inttoptr i64 %4994 to i32*
  %4997 = load i32, i32* %4996, align 4
  %4998 = zext i32 %4997 to i64
  store i64 %4998, i64* %RCX.i2157, align 8
  %4999 = add i64 %4983, -13301
  %5000 = add i64 %4983, 18
  %5001 = load i64, i64* %6, align 8
  %5002 = add i64 %5001, -8
  %5003 = inttoptr i64 %5002 to i64*
  store i64 %5000, i64* %5003, align 8
  store i64 %5002, i64* %6, align 8
  store i64 %4999, i64* %3, align 8
  %call2_4610e2 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %4999, %struct.Memory* %MEMORY.59)
  %5004 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %5005 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %5006 = and i32 %5004, 255
  %5007 = tail call i32 @llvm.ctpop.i32(i32 %5006)
  %5008 = trunc i32 %5007 to i8
  %5009 = and i8 %5008, 1
  %5010 = xor i8 %5009, 1
  store i8 %5010, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5011 = icmp eq i32 %5004, 0
  %5012 = zext i1 %5011 to i8
  store i8 %5012, i8* %56, align 1
  %5013 = lshr i32 %5004, 31
  %5014 = trunc i32 %5013 to i8
  store i8 %5014, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v260 = select i1 %5011, i64 183, i64 9
  %5015 = add i64 %5005, %.v260
  store i64 %5015, i64* %3, align 8
  br i1 %5011, label %block_.L_46119e, label %block_4610f0

block_4610f0:                                     ; preds = %block_4610d5
  %5016 = add i64 %5015, -340880
  %5017 = add i64 %5015, 5
  %5018 = load i64, i64* %6, align 8
  %5019 = add i64 %5018, -8
  %5020 = inttoptr i64 %5019 to i64*
  store i64 %5017, i64* %5020, align 8
  store i64 %5019, i64* %6, align 8
  store i64 %5016, i64* %3, align 8
  %call2_4610f0 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5016, %struct.Memory* %MEMORY.59)
  %5021 = load i64, i64* %RBP.i, align 8
  %5022 = add i64 %5021, -748
  %5023 = load i64, i64* %3, align 8
  %5024 = add i64 %5023, 7
  store i64 %5024, i64* %3, align 8
  %5025 = inttoptr i64 %5022 to i32*
  %5026 = load i32, i32* %5025, align 4
  store i8 0, i8* %40, align 1
  %5027 = and i32 %5026, 255
  %5028 = tail call i32 @llvm.ctpop.i32(i32 %5027)
  %5029 = trunc i32 %5028 to i8
  %5030 = and i8 %5029, 1
  %5031 = xor i8 %5030, 1
  store i8 %5031, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5032 = icmp eq i32 %5026, 0
  %5033 = zext i1 %5032 to i8
  store i8 %5033, i8* %56, align 1
  %5034 = lshr i32 %5026, 31
  %5035 = trunc i32 %5034 to i8
  store i8 %5035, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v261 = select i1 %5032, i64 13, i64 102
  %5036 = add i64 %5023, %.v261
  store i64 %5036, i64* %3, align 8
  br i1 %5032, label %block_461102, label %block_.L_46115b

block_461102:                                     ; preds = %block_4610f0
  %5037 = add i64 %5021, -56
  %5038 = add i64 %5036, 5
  store i64 %5038, i64* %3, align 8
  %5039 = inttoptr i64 %5037 to i64*
  %5040 = load i64, i64* %5039, align 8
  store i8 0, i8* %40, align 1
  %5041 = trunc i64 %5040 to i32
  %5042 = and i32 %5041, 255
  %5043 = tail call i32 @llvm.ctpop.i32(i32 %5042)
  %5044 = trunc i32 %5043 to i8
  %5045 = and i8 %5044, 1
  %5046 = xor i8 %5045, 1
  store i8 %5046, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5047 = icmp eq i64 %5040, 0
  %5048 = zext i1 %5047 to i8
  store i8 %5048, i8* %56, align 1
  %5049 = lshr i64 %5040, 63
  %5050 = trunc i64 %5049 to i8
  store i8 %5050, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v263 = select i1 %5047, i64 23, i64 11
  %5051 = add i64 %5036, %.v263
  store i64 %5051, i64* %3, align 8
  br i1 %5047, label %block_.L_461119, label %block_46110d

block_46110d:                                     ; preds = %block_461102
  %5052 = add i64 %5021, -724
  %5053 = add i64 %5051, 6
  store i64 %5053, i64* %3, align 8
  %5054 = inttoptr i64 %5052 to i32*
  %5055 = load i32, i32* %5054, align 4
  %5056 = zext i32 %5055 to i64
  store i64 %5056, i64* %RAX.i2177, align 8
  %5057 = add i64 %5051, 10
  store i64 %5057, i64* %3, align 8
  %5058 = load i64, i64* %5039, align 8
  store i64 %5058, i64* %RCX.i2157, align 8
  %5059 = add i64 %5051, 12
  store i64 %5059, i64* %3, align 8
  %5060 = inttoptr i64 %5058 to i32*
  store i32 %5055, i32* %5060, align 4
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_461119

block_.L_461119:                                  ; preds = %block_46110d, %block_461102
  %5061 = phi i64 [ %.pre185, %block_46110d ], [ %5051, %block_461102 ]
  %5062 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %5063 = trunc i64 %5062 to i32
  %5064 = and i32 %5063, 255
  %5065 = tail call i32 @llvm.ctpop.i32(i32 %5064)
  %5066 = trunc i32 %5065 to i8
  %5067 = and i8 %5066, 1
  %5068 = xor i8 %5067, 1
  store i8 %5068, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5069 = icmp eq i64 %5062, 0
  %5070 = zext i1 %5069 to i8
  store i8 %5070, i8* %56, align 1
  %5071 = lshr i64 %5062, 63
  %5072 = trunc i64 %5071 to i8
  store i8 %5072, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v264 = select i1 %5069, i64 54, i64 15
  %5073 = add i64 %5061, %.v264
  store i64 %5073, i64* %3, align 8
  br i1 %5069, label %block_.L_46114f, label %block_461128

block_461128:                                     ; preds = %block_.L_461119
  store i64 5, i64* %RCX.i2157, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %68, align 8
  %5074 = load i64, i64* %RBP.i, align 8
  %5075 = add i64 %5074, -1176
  %5076 = add i64 %5073, 22
  store i64 %5076, i64* %3, align 8
  %5077 = inttoptr i64 %5075 to i64*
  %5078 = load i64, i64* %5077, align 8
  store i64 %5078, i64* %RDI.i2050, align 8
  %5079 = add i64 %5074, -1180
  %5080 = add i64 %5073, 28
  store i64 %5080, i64* %3, align 8
  %5081 = inttoptr i64 %5079 to i32*
  %5082 = load i32, i32* %5081, align 4
  %5083 = zext i32 %5082 to i64
  store i64 %5083, i64* %RSI.i2169, align 8
  %5084 = add i64 %5074, -724
  %5085 = add i64 %5073, 34
  store i64 %5085, i64* %3, align 8
  %5086 = inttoptr i64 %5084 to i32*
  %5087 = load i32, i32* %5086, align 4
  %5088 = zext i32 %5087 to i64
  store i64 %5088, i64* %RDX.i2056, align 8
  %5089 = add i64 %5073, -299368
  %5090 = add i64 %5073, 39
  %5091 = load i64, i64* %6, align 8
  %5092 = add i64 %5091, -8
  %5093 = inttoptr i64 %5092 to i64*
  store i64 %5090, i64* %5093, align 8
  store i64 %5092, i64* %6, align 8
  store i64 %5089, i64* %3, align 8
  %call2_46114a = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %5089, %struct.Memory* %MEMORY.59)
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_46114f

block_.L_46114f:                                  ; preds = %block_461128, %block_.L_461119
  %5094 = phi i64 [ %5073, %block_.L_461119 ], [ %.pre186, %block_461128 ]
  %MEMORY.61 = phi %struct.Memory* [ %MEMORY.59, %block_.L_461119 ], [ %call2_46114a, %block_461128 ]
  %5095 = load i64, i64* %RBP.i, align 8
  %5096 = add i64 %5095, -44
  %5097 = add i64 %5094, 7
  store i64 %5097, i64* %3, align 8
  %5098 = inttoptr i64 %5096 to i32*
  store i32 5, i32* %5098, align 4
  %5099 = load i64, i64* %3, align 8
  %5100 = add i64 %5099, 544
  store i64 %5100, i64* %3, align 8
  br label %block_.L_461376

block_.L_46115b:                                  ; preds = %block_4610f0
  store i64 5, i64* %RAX.i2177, align 8
  %5101 = add i64 %5036, 11
  store i64 %5101, i64* %3, align 8
  %5102 = load i32, i32* %5025, align 4
  %5103 = sub i32 5, %5102
  %5104 = zext i32 %5103 to i64
  store i64 %5104, i64* %RAX.i2177, align 8
  %5105 = icmp ugt i32 %5102, 5
  %5106 = zext i1 %5105 to i8
  store i8 %5106, i8* %40, align 1
  %5107 = and i32 %5103, 255
  %5108 = tail call i32 @llvm.ctpop.i32(i32 %5107)
  %5109 = trunc i32 %5108 to i8
  %5110 = and i8 %5109, 1
  %5111 = xor i8 %5110, 1
  store i8 %5111, i8* %47, align 1
  %5112 = xor i32 %5103, %5102
  %5113 = lshr i32 %5112, 4
  %5114 = trunc i32 %5113 to i8
  %5115 = and i8 %5114, 1
  store i8 %5115, i8* %53, align 1
  %5116 = icmp eq i32 %5103, 0
  %5117 = zext i1 %5116 to i8
  store i8 %5117, i8* %56, align 1
  %5118 = lshr i32 %5103, 31
  %5119 = trunc i32 %5118 to i8
  store i8 %5119, i8* %59, align 1
  %5120 = lshr i32 %5102, 31
  %5121 = add nuw nsw i32 %5118, %5120
  %5122 = icmp eq i32 %5121, 2
  %5123 = zext i1 %5122 to i8
  store i8 %5123, i8* %65, align 1
  %5124 = add i64 %5021, -1168
  %5125 = add i64 %5036, 17
  store i64 %5125, i64* %3, align 8
  %5126 = inttoptr i64 %5124 to i32*
  %5127 = load i32, i32* %5126, align 4
  %5128 = sub i32 %5103, %5127
  %5129 = icmp ult i32 %5103, %5127
  %5130 = zext i1 %5129 to i8
  store i8 %5130, i8* %40, align 1
  %5131 = and i32 %5128, 255
  %5132 = tail call i32 @llvm.ctpop.i32(i32 %5131)
  %5133 = trunc i32 %5132 to i8
  %5134 = and i8 %5133, 1
  %5135 = xor i8 %5134, 1
  store i8 %5135, i8* %47, align 1
  %5136 = xor i32 %5127, %5103
  %5137 = xor i32 %5136, %5128
  %5138 = lshr i32 %5137, 4
  %5139 = trunc i32 %5138 to i8
  %5140 = and i8 %5139, 1
  store i8 %5140, i8* %53, align 1
  %5141 = icmp eq i32 %5128, 0
  %5142 = zext i1 %5141 to i8
  store i8 %5142, i8* %56, align 1
  %5143 = lshr i32 %5128, 31
  %5144 = trunc i32 %5143 to i8
  store i8 %5144, i8* %59, align 1
  %5145 = lshr i32 %5127, 31
  %5146 = xor i32 %5145, %5118
  %5147 = xor i32 %5143, %5118
  %5148 = add nuw nsw i32 %5147, %5146
  %5149 = icmp eq i32 %5148, 2
  %5150 = zext i1 %5149 to i8
  store i8 %5150, i8* %65, align 1
  %5151 = icmp ne i8 %5144, 0
  %5152 = xor i1 %5151, %5149
  %5153 = or i1 %5141, %5152
  %.v262 = select i1 %5153, i64 52, i64 23
  %5154 = add i64 %5036, %.v262
  store i64 %5154, i64* %3, align 8
  br i1 %5153, label %block_.L_46118f, label %block_461172

block_461172:                                     ; preds = %block_.L_46115b
  store i64 5, i64* %RAX.i2177, align 8
  %5155 = add i64 %5021, -724
  %5156 = add i64 %5154, 11
  store i64 %5156, i64* %3, align 8
  %5157 = inttoptr i64 %5155 to i32*
  %5158 = load i32, i32* %5157, align 4
  %5159 = zext i32 %5158 to i64
  store i64 %5159, i64* %RCX.i2157, align 8
  %5160 = add i64 %5021, -1164
  %5161 = add i64 %5154, 17
  store i64 %5161, i64* %3, align 8
  %5162 = inttoptr i64 %5160 to i32*
  store i32 %5158, i32* %5162, align 4
  %5163 = load i64, i64* %RAX.i2177, align 8
  %5164 = load i64, i64* %RBP.i, align 8
  %5165 = add i64 %5164, -748
  %5166 = load i64, i64* %3, align 8
  %5167 = add i64 %5166, 6
  store i64 %5167, i64* %3, align 8
  %5168 = trunc i64 %5163 to i32
  %5169 = inttoptr i64 %5165 to i32*
  %5170 = load i32, i32* %5169, align 4
  %5171 = sub i32 %5168, %5170
  %5172 = zext i32 %5171 to i64
  store i64 %5172, i64* %RAX.i2177, align 8
  %5173 = icmp ult i32 %5168, %5170
  %5174 = zext i1 %5173 to i8
  store i8 %5174, i8* %40, align 1
  %5175 = and i32 %5171, 255
  %5176 = tail call i32 @llvm.ctpop.i32(i32 %5175)
  %5177 = trunc i32 %5176 to i8
  %5178 = and i8 %5177, 1
  %5179 = xor i8 %5178, 1
  store i8 %5179, i8* %47, align 1
  %5180 = xor i32 %5170, %5168
  %5181 = xor i32 %5180, %5171
  %5182 = lshr i32 %5181, 4
  %5183 = trunc i32 %5182 to i8
  %5184 = and i8 %5183, 1
  store i8 %5184, i8* %53, align 1
  %5185 = icmp eq i32 %5171, 0
  %5186 = zext i1 %5185 to i8
  store i8 %5186, i8* %56, align 1
  %5187 = lshr i32 %5171, 31
  %5188 = trunc i32 %5187 to i8
  store i8 %5188, i8* %59, align 1
  %5189 = lshr i32 %5168, 31
  %5190 = lshr i32 %5170, 31
  %5191 = xor i32 %5190, %5189
  %5192 = xor i32 %5187, %5189
  %5193 = add nuw nsw i32 %5192, %5191
  %5194 = icmp eq i32 %5193, 2
  %5195 = zext i1 %5194 to i8
  store i8 %5195, i8* %65, align 1
  %5196 = add i64 %5164, -1168
  %5197 = add i64 %5166, 12
  store i64 %5197, i64* %3, align 8
  %5198 = inttoptr i64 %5196 to i32*
  store i32 %5171, i32* %5198, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_46118f

block_.L_46118f:                                  ; preds = %block_461172, %block_.L_46115b
  %5199 = phi i64 [ %.pre187, %block_461172 ], [ %5154, %block_.L_46115b ]
  %5200 = add i64 %5199, 20
  store i64 %5200, i64* %3, align 8
  br label %block_.L_4611a3

block_.L_46119e:                                  ; preds = %block_4610d5, %block_4610b0
  %5201 = phi i64 [ %5015, %block_4610d5 ], [ %4983, %block_4610b0 ]
  %5202 = add i64 %5201, -341054
  %5203 = add i64 %5201, 5
  %5204 = load i64, i64* %6, align 8
  %5205 = add i64 %5204, -8
  %5206 = inttoptr i64 %5205 to i64*
  store i64 %5203, i64* %5206, align 8
  store i64 %5205, i64* %6, align 8
  store i64 %5202, i64* %3, align 8
  %call2_46119e = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5202, %struct.Memory* %MEMORY.59)
  %.pre188 = load i64, i64* %3, align 8
  br label %block_.L_4611a3

block_.L_4611a3:                                  ; preds = %block_.L_46119e, %block_.L_46118f
  %5207 = phi i64 [ %.pre188, %block_.L_46119e ], [ %5200, %block_.L_46118f ]
  %MEMORY.64 = phi %struct.Memory* [ %call2_46119e, %block_.L_46119e ], [ %MEMORY.59, %block_.L_46118f ]
  %5208 = add i64 %5207, 5
  store i64 %5208, i64* %3, align 8
  br label %block_.L_4611a8

block_.L_4611a8:                                  ; preds = %block_.L_4611a3, %block_46107f
  %5209 = phi i64 [ %4928, %block_46107f ], [ %5208, %block_.L_4611a3 ]
  %MEMORY.65 = phi %struct.Memory* [ %MEMORY.59, %block_46107f ], [ %MEMORY.64, %block_.L_4611a3 ]
  %5210 = add i64 %5209, 10
  store i64 %5210, i64* %3, align 8
  br label %block_.L_4611b2

block_.L_4611ad:                                  ; preds = %block_461042
  %5211 = add i64 %4879, -341069
  %5212 = add i64 %4879, 5
  %5213 = load i64, i64* %6, align 8
  %5214 = add i64 %5213, -8
  %5215 = inttoptr i64 %5214 to i64*
  store i64 %5212, i64* %5215, align 8
  store i64 %5214, i64* %6, align 8
  store i64 %5211, i64* %3, align 8
  %call2_4611ad = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5211, %struct.Memory* %MEMORY.59)
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_4611b2

block_.L_4611b2:                                  ; preds = %block_.L_4611ad, %block_.L_4611a8
  %5216 = phi i64 [ %.pre189, %block_.L_4611ad ], [ %5210, %block_.L_4611a8 ]
  %MEMORY.66 = phi %struct.Memory* [ %MEMORY.59, %block_.L_4611ad ], [ %MEMORY.65, %block_.L_4611a8 ]
  %5217 = add i64 %5216, 253
  br label %block_.L_4612af

block_.L_4611b7:                                  ; preds = %block_46102e
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %5218 = load i64, i64* %RBP.i, align 8
  %5219 = add i64 %5218, -48
  %5220 = add i64 %4818, 7
  store i64 %5220, i64* %3, align 8
  %5221 = inttoptr i64 %5219 to i32*
  %5222 = load i32, i32* %5221, align 4
  %5223 = zext i32 %5222 to i64
  store i64 %5223, i64* %RDI.i2050, align 8
  %5224 = add i64 %5218, -60
  %5225 = add i64 %4818, 10
  store i64 %5225, i64* %3, align 8
  %5226 = inttoptr i64 %5224 to i32*
  %5227 = load i32, i32* %5226, align 4
  %5228 = zext i32 %5227 to i64
  store i64 %5228, i64* %RDX.i2056, align 8
  %5229 = add i64 %5218, -64
  %5230 = add i64 %4818, 13
  store i64 %5230, i64* %3, align 8
  %5231 = inttoptr i64 %5229 to i32*
  %5232 = load i32, i32* %5231, align 4
  %5233 = zext i32 %5232 to i64
  store i64 %5233, i64* %RCX.i2157, align 8
  %5234 = add i64 %4818, 9321
  %5235 = add i64 %4818, 18
  %5236 = load i64, i64* %6, align 8
  %5237 = add i64 %5236, -8
  %5238 = inttoptr i64 %5237 to i64*
  store i64 %5235, i64* %5238, align 8
  store i64 %5237, i64* %6, align 8
  store i64 %5234, i64* %3, align 8
  %call2_4611c4 = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %5234, %struct.Memory* %MEMORY.59)
  %5239 = load i64, i64* %RBP.i, align 8
  %5240 = add i64 %5239, -748
  %5241 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %5242 = load i64, i64* %3, align 8
  %5243 = add i64 %5242, 6
  store i64 %5243, i64* %3, align 8
  %5244 = inttoptr i64 %5240 to i32*
  store i32 %5241, i32* %5244, align 4
  %5245 = load i64, i64* %RBP.i, align 8
  %5246 = add i64 %5245, -748
  %5247 = load i64, i64* %3, align 8
  %5248 = add i64 %5247, 7
  store i64 %5248, i64* %3, align 8
  %5249 = inttoptr i64 %5246 to i32*
  %5250 = load i32, i32* %5249, align 4
  %5251 = add i32 %5250, -5
  %5252 = icmp ult i32 %5250, 5
  %5253 = zext i1 %5252 to i8
  store i8 %5253, i8* %40, align 1
  %5254 = and i32 %5251, 255
  %5255 = tail call i32 @llvm.ctpop.i32(i32 %5254)
  %5256 = trunc i32 %5255 to i8
  %5257 = and i8 %5256, 1
  %5258 = xor i8 %5257, 1
  store i8 %5258, i8* %47, align 1
  %5259 = xor i32 %5251, %5250
  %5260 = lshr i32 %5259, 4
  %5261 = trunc i32 %5260 to i8
  %5262 = and i8 %5261, 1
  store i8 %5262, i8* %53, align 1
  %5263 = icmp eq i32 %5251, 0
  %5264 = zext i1 %5263 to i8
  store i8 %5264, i8* %56, align 1
  %5265 = lshr i32 %5251, 31
  %5266 = trunc i32 %5265 to i8
  store i8 %5266, i8* %59, align 1
  %5267 = lshr i32 %5250, 31
  %5268 = xor i32 %5265, %5267
  %5269 = add nuw nsw i32 %5268, %5267
  %5270 = icmp eq i32 %5269, 2
  %5271 = zext i1 %5270 to i8
  store i8 %5271, i8* %65, align 1
  %.v251 = select i1 %5263, i64 214, i64 13
  %5272 = add i64 %5247, %.v251
  store i64 %5272, i64* %3, align 8
  br i1 %5263, label %block_.L_4612a5, label %block_4611dc

block_4611dc:                                     ; preds = %block_.L_4611b7
  store i64 0, i64* %RAX.i2177, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2169, align 8
  %5273 = add i64 %5245, -48
  %5274 = add i64 %5272, 7
  store i64 %5274, i64* %3, align 8
  %5275 = inttoptr i64 %5273 to i32*
  %5276 = load i32, i32* %5275, align 4
  %5277 = zext i32 %5276 to i64
  store i64 %5277, i64* %RDI.i2050, align 8
  %5278 = add i64 %5245, -60
  %5279 = add i64 %5272, 10
  store i64 %5279, i64* %3, align 8
  %5280 = inttoptr i64 %5278 to i32*
  %5281 = load i32, i32* %5280, align 4
  %5282 = zext i32 %5281 to i64
  store i64 %5282, i64* %RDX.i2056, align 8
  %5283 = add i64 %5245, -64
  %5284 = add i64 %5272, 13
  store i64 %5284, i64* %3, align 8
  %5285 = inttoptr i64 %5283 to i32*
  %5286 = load i32, i32* %5285, align 4
  %5287 = zext i32 %5286 to i64
  store i64 %5287, i64* %RCX.i2157, align 8
  %5288 = add i64 %5272, -13564
  %5289 = add i64 %5272, 18
  %5290 = load i64, i64* %6, align 8
  %5291 = add i64 %5290, -8
  %5292 = inttoptr i64 %5291 to i64*
  store i64 %5289, i64* %5292, align 8
  store i64 %5291, i64* %6, align 8
  store i64 %5288, i64* %3, align 8
  %call2_4611e9 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %5288, %struct.Memory* %MEMORY.59)
  %5293 = load i32, i32* %EAX.i2087.pre-phi, align 4
  %5294 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %5295 = and i32 %5293, 255
  %5296 = tail call i32 @llvm.ctpop.i32(i32 %5295)
  %5297 = trunc i32 %5296 to i8
  %5298 = and i8 %5297, 1
  %5299 = xor i8 %5298, 1
  store i8 %5299, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5300 = icmp eq i32 %5293, 0
  %5301 = zext i1 %5300 to i8
  store i8 %5301, i8* %56, align 1
  %5302 = lshr i32 %5293, 31
  %5303 = trunc i32 %5302 to i8
  store i8 %5303, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v252 = select i1 %5300, i64 183, i64 9
  %5304 = add i64 %5294, %.v252
  store i64 %5304, i64* %3, align 8
  br i1 %5300, label %block_.L_4612a5, label %block_4611f7

block_4611f7:                                     ; preds = %block_4611dc
  %5305 = add i64 %5304, -341143
  %5306 = add i64 %5304, 5
  %5307 = load i64, i64* %6, align 8
  %5308 = add i64 %5307, -8
  %5309 = inttoptr i64 %5308 to i64*
  store i64 %5306, i64* %5309, align 8
  store i64 %5308, i64* %6, align 8
  store i64 %5305, i64* %3, align 8
  %call2_4611f7 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5305, %struct.Memory* %MEMORY.59)
  %5310 = load i64, i64* %RBP.i, align 8
  %5311 = add i64 %5310, -748
  %5312 = load i64, i64* %3, align 8
  %5313 = add i64 %5312, 7
  store i64 %5313, i64* %3, align 8
  %5314 = inttoptr i64 %5311 to i32*
  %5315 = load i32, i32* %5314, align 4
  store i8 0, i8* %40, align 1
  %5316 = and i32 %5315, 255
  %5317 = tail call i32 @llvm.ctpop.i32(i32 %5316)
  %5318 = trunc i32 %5317 to i8
  %5319 = and i8 %5318, 1
  %5320 = xor i8 %5319, 1
  store i8 %5320, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5321 = icmp eq i32 %5315, 0
  %5322 = zext i1 %5321 to i8
  store i8 %5322, i8* %56, align 1
  %5323 = lshr i32 %5315, 31
  %5324 = trunc i32 %5323 to i8
  store i8 %5324, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v253 = select i1 %5321, i64 13, i64 102
  %5325 = add i64 %5312, %.v253
  store i64 %5325, i64* %3, align 8
  br i1 %5321, label %block_461209, label %block_.L_461262

block_461209:                                     ; preds = %block_4611f7
  %5326 = add i64 %5310, -56
  %5327 = add i64 %5325, 5
  store i64 %5327, i64* %3, align 8
  %5328 = inttoptr i64 %5326 to i64*
  %5329 = load i64, i64* %5328, align 8
  store i8 0, i8* %40, align 1
  %5330 = trunc i64 %5329 to i32
  %5331 = and i32 %5330, 255
  %5332 = tail call i32 @llvm.ctpop.i32(i32 %5331)
  %5333 = trunc i32 %5332 to i8
  %5334 = and i8 %5333, 1
  %5335 = xor i8 %5334, 1
  store i8 %5335, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5336 = icmp eq i64 %5329, 0
  %5337 = zext i1 %5336 to i8
  store i8 %5337, i8* %56, align 1
  %5338 = lshr i64 %5329, 63
  %5339 = trunc i64 %5338 to i8
  store i8 %5339, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v255 = select i1 %5336, i64 23, i64 11
  %5340 = add i64 %5325, %.v255
  store i64 %5340, i64* %3, align 8
  br i1 %5336, label %block_.L_461220, label %block_461214

block_461214:                                     ; preds = %block_461209
  %5341 = add i64 %5310, -1364
  %5342 = add i64 %5340, 6
  store i64 %5342, i64* %3, align 8
  %5343 = inttoptr i64 %5341 to i32*
  %5344 = load i32, i32* %5343, align 4
  %5345 = zext i32 %5344 to i64
  store i64 %5345, i64* %RAX.i2177, align 8
  %5346 = add i64 %5340, 10
  store i64 %5346, i64* %3, align 8
  %5347 = load i64, i64* %5328, align 8
  store i64 %5347, i64* %RCX.i2157, align 8
  %5348 = add i64 %5340, 12
  store i64 %5348, i64* %3, align 8
  %5349 = inttoptr i64 %5347 to i32*
  store i32 %5344, i32* %5349, align 4
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_461220

block_.L_461220:                                  ; preds = %block_461214, %block_461209
  %5350 = phi i64 [ %.pre190, %block_461214 ], [ %5340, %block_461209 ]
  %5351 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %5352 = trunc i64 %5351 to i32
  %5353 = and i32 %5352, 255
  %5354 = tail call i32 @llvm.ctpop.i32(i32 %5353)
  %5355 = trunc i32 %5354 to i8
  %5356 = and i8 %5355, 1
  %5357 = xor i8 %5356, 1
  store i8 %5357, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5358 = icmp eq i64 %5351, 0
  %5359 = zext i1 %5358 to i8
  store i8 %5359, i8* %56, align 1
  %5360 = lshr i64 %5351, 63
  %5361 = trunc i64 %5360 to i8
  store i8 %5361, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v256 = select i1 %5358, i64 54, i64 15
  %5362 = add i64 %5350, %.v256
  store i64 %5362, i64* %3, align 8
  br i1 %5358, label %block_.L_461256, label %block_46122f

block_46122f:                                     ; preds = %block_.L_461220
  store i64 5, i64* %RCX.i2157, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %68, align 8
  %5363 = load i64, i64* %RBP.i, align 8
  %5364 = add i64 %5363, -1176
  %5365 = add i64 %5362, 22
  store i64 %5365, i64* %3, align 8
  %5366 = inttoptr i64 %5364 to i64*
  %5367 = load i64, i64* %5366, align 8
  store i64 %5367, i64* %RDI.i2050, align 8
  %5368 = add i64 %5363, -1180
  %5369 = add i64 %5362, 28
  store i64 %5369, i64* %3, align 8
  %5370 = inttoptr i64 %5368 to i32*
  %5371 = load i32, i32* %5370, align 4
  %5372 = zext i32 %5371 to i64
  store i64 %5372, i64* %RSI.i2169, align 8
  %5373 = add i64 %5363, -1364
  %5374 = add i64 %5362, 34
  store i64 %5374, i64* %3, align 8
  %5375 = inttoptr i64 %5373 to i32*
  %5376 = load i32, i32* %5375, align 4
  %5377 = zext i32 %5376 to i64
  store i64 %5377, i64* %RDX.i2056, align 8
  %5378 = add i64 %5362, -299631
  %5379 = add i64 %5362, 39
  %5380 = load i64, i64* %6, align 8
  %5381 = add i64 %5380, -8
  %5382 = inttoptr i64 %5381 to i64*
  store i64 %5379, i64* %5382, align 8
  store i64 %5381, i64* %6, align 8
  store i64 %5378, i64* %3, align 8
  %call2_461251 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %5378, %struct.Memory* %MEMORY.59)
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_461256

block_.L_461256:                                  ; preds = %block_46122f, %block_.L_461220
  %5383 = phi i64 [ %5362, %block_.L_461220 ], [ %.pre191, %block_46122f ]
  %MEMORY.68 = phi %struct.Memory* [ %MEMORY.59, %block_.L_461220 ], [ %call2_461251, %block_46122f ]
  %5384 = load i64, i64* %RBP.i, align 8
  %5385 = add i64 %5384, -44
  %5386 = add i64 %5383, 7
  store i64 %5386, i64* %3, align 8
  %5387 = inttoptr i64 %5385 to i32*
  store i32 5, i32* %5387, align 4
  %5388 = load i64, i64* %3, align 8
  %5389 = add i64 %5388, 281
  store i64 %5389, i64* %3, align 8
  br label %block_.L_461376

block_.L_461262:                                  ; preds = %block_4611f7
  store i64 5, i64* %RAX.i2177, align 8
  %5390 = add i64 %5325, 11
  store i64 %5390, i64* %3, align 8
  %5391 = load i32, i32* %5314, align 4
  %5392 = sub i32 5, %5391
  %5393 = zext i32 %5392 to i64
  store i64 %5393, i64* %RAX.i2177, align 8
  %5394 = icmp ugt i32 %5391, 5
  %5395 = zext i1 %5394 to i8
  store i8 %5395, i8* %40, align 1
  %5396 = and i32 %5392, 255
  %5397 = tail call i32 @llvm.ctpop.i32(i32 %5396)
  %5398 = trunc i32 %5397 to i8
  %5399 = and i8 %5398, 1
  %5400 = xor i8 %5399, 1
  store i8 %5400, i8* %47, align 1
  %5401 = xor i32 %5392, %5391
  %5402 = lshr i32 %5401, 4
  %5403 = trunc i32 %5402 to i8
  %5404 = and i8 %5403, 1
  store i8 %5404, i8* %53, align 1
  %5405 = icmp eq i32 %5392, 0
  %5406 = zext i1 %5405 to i8
  store i8 %5406, i8* %56, align 1
  %5407 = lshr i32 %5392, 31
  %5408 = trunc i32 %5407 to i8
  store i8 %5408, i8* %59, align 1
  %5409 = lshr i32 %5391, 31
  %5410 = add nuw nsw i32 %5407, %5409
  %5411 = icmp eq i32 %5410, 2
  %5412 = zext i1 %5411 to i8
  store i8 %5412, i8* %65, align 1
  %5413 = add i64 %5310, -1168
  %5414 = add i64 %5325, 17
  store i64 %5414, i64* %3, align 8
  %5415 = inttoptr i64 %5413 to i32*
  %5416 = load i32, i32* %5415, align 4
  %5417 = sub i32 %5392, %5416
  %5418 = icmp ult i32 %5392, %5416
  %5419 = zext i1 %5418 to i8
  store i8 %5419, i8* %40, align 1
  %5420 = and i32 %5417, 255
  %5421 = tail call i32 @llvm.ctpop.i32(i32 %5420)
  %5422 = trunc i32 %5421 to i8
  %5423 = and i8 %5422, 1
  %5424 = xor i8 %5423, 1
  store i8 %5424, i8* %47, align 1
  %5425 = xor i32 %5416, %5392
  %5426 = xor i32 %5425, %5417
  %5427 = lshr i32 %5426, 4
  %5428 = trunc i32 %5427 to i8
  %5429 = and i8 %5428, 1
  store i8 %5429, i8* %53, align 1
  %5430 = icmp eq i32 %5417, 0
  %5431 = zext i1 %5430 to i8
  store i8 %5431, i8* %56, align 1
  %5432 = lshr i32 %5417, 31
  %5433 = trunc i32 %5432 to i8
  store i8 %5433, i8* %59, align 1
  %5434 = lshr i32 %5416, 31
  %5435 = xor i32 %5434, %5407
  %5436 = xor i32 %5432, %5407
  %5437 = add nuw nsw i32 %5436, %5435
  %5438 = icmp eq i32 %5437, 2
  %5439 = zext i1 %5438 to i8
  store i8 %5439, i8* %65, align 1
  %5440 = icmp ne i8 %5433, 0
  %5441 = xor i1 %5440, %5438
  %5442 = or i1 %5430, %5441
  %.v254 = select i1 %5442, i64 52, i64 23
  %5443 = add i64 %5325, %.v254
  store i64 %5443, i64* %3, align 8
  br i1 %5442, label %block_.L_461296, label %block_461279

block_461279:                                     ; preds = %block_.L_461262
  store i64 5, i64* %RAX.i2177, align 8
  %5444 = add i64 %5310, -1364
  %5445 = add i64 %5443, 11
  store i64 %5445, i64* %3, align 8
  %5446 = inttoptr i64 %5444 to i32*
  %5447 = load i32, i32* %5446, align 4
  %5448 = zext i32 %5447 to i64
  store i64 %5448, i64* %RCX.i2157, align 8
  %5449 = add i64 %5310, -1164
  %5450 = add i64 %5443, 17
  store i64 %5450, i64* %3, align 8
  %5451 = inttoptr i64 %5449 to i32*
  store i32 %5447, i32* %5451, align 4
  %5452 = load i64, i64* %RAX.i2177, align 8
  %5453 = load i64, i64* %RBP.i, align 8
  %5454 = add i64 %5453, -748
  %5455 = load i64, i64* %3, align 8
  %5456 = add i64 %5455, 6
  store i64 %5456, i64* %3, align 8
  %5457 = trunc i64 %5452 to i32
  %5458 = inttoptr i64 %5454 to i32*
  %5459 = load i32, i32* %5458, align 4
  %5460 = sub i32 %5457, %5459
  %5461 = zext i32 %5460 to i64
  store i64 %5461, i64* %RAX.i2177, align 8
  %5462 = icmp ult i32 %5457, %5459
  %5463 = zext i1 %5462 to i8
  store i8 %5463, i8* %40, align 1
  %5464 = and i32 %5460, 255
  %5465 = tail call i32 @llvm.ctpop.i32(i32 %5464)
  %5466 = trunc i32 %5465 to i8
  %5467 = and i8 %5466, 1
  %5468 = xor i8 %5467, 1
  store i8 %5468, i8* %47, align 1
  %5469 = xor i32 %5459, %5457
  %5470 = xor i32 %5469, %5460
  %5471 = lshr i32 %5470, 4
  %5472 = trunc i32 %5471 to i8
  %5473 = and i8 %5472, 1
  store i8 %5473, i8* %53, align 1
  %5474 = icmp eq i32 %5460, 0
  %5475 = zext i1 %5474 to i8
  store i8 %5475, i8* %56, align 1
  %5476 = lshr i32 %5460, 31
  %5477 = trunc i32 %5476 to i8
  store i8 %5477, i8* %59, align 1
  %5478 = lshr i32 %5457, 31
  %5479 = lshr i32 %5459, 31
  %5480 = xor i32 %5479, %5478
  %5481 = xor i32 %5476, %5478
  %5482 = add nuw nsw i32 %5481, %5480
  %5483 = icmp eq i32 %5482, 2
  %5484 = zext i1 %5483 to i8
  store i8 %5484, i8* %65, align 1
  %5485 = add i64 %5453, -1168
  %5486 = add i64 %5455, 12
  store i64 %5486, i64* %3, align 8
  %5487 = inttoptr i64 %5485 to i32*
  store i32 %5460, i32* %5487, align 4
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_461296

block_.L_461296:                                  ; preds = %block_461279, %block_.L_461262
  %5488 = phi i64 [ %.pre192, %block_461279 ], [ %5443, %block_.L_461262 ]
  %5489 = add i64 %5488, 20
  store i64 %5489, i64* %3, align 8
  br label %block_.L_4612aa

block_.L_4612a5:                                  ; preds = %block_4611dc, %block_.L_4611b7
  %5490 = phi i64 [ %5304, %block_4611dc ], [ %5272, %block_.L_4611b7 ]
  %5491 = add i64 %5490, -341317
  %5492 = add i64 %5490, 5
  %5493 = load i64, i64* %6, align 8
  %5494 = add i64 %5493, -8
  %5495 = inttoptr i64 %5494 to i64*
  store i64 %5492, i64* %5495, align 8
  store i64 %5494, i64* %6, align 8
  store i64 %5491, i64* %3, align 8
  %call2_4612a5 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5491, %struct.Memory* %MEMORY.59)
  %.pre193 = load i64, i64* %3, align 8
  br label %block_.L_4612aa

block_.L_4612aa:                                  ; preds = %block_.L_4612a5, %block_.L_461296
  %5496 = phi i64 [ %.pre193, %block_.L_4612a5 ], [ %5489, %block_.L_461296 ]
  %MEMORY.71 = phi %struct.Memory* [ %call2_4612a5, %block_.L_4612a5 ], [ %MEMORY.59, %block_.L_461296 ]
  %5497 = add i64 %5496, 5
  store i64 %5497, i64* %3, align 8
  br label %block_.L_4612af

block_.L_4612af:                                  ; preds = %block_.L_4612aa, %block_.L_4611b2
  %storemerge99 = phi i64 [ %5217, %block_.L_4611b2 ], [ %5497, %block_.L_4612aa ]
  %MEMORY.72 = phi %struct.Memory* [ %MEMORY.66, %block_.L_4611b2 ], [ %MEMORY.71, %block_.L_4612aa ]
  %5498 = add i64 %storemerge99, 5
  store i64 %5498, i64* %3, align 8
  br label %block_.L_4612b4

block_.L_4612b4:                                  ; preds = %block_.L_4612af, %block_.L_461002
  %5499 = phi i64 [ %4783, %block_.L_461002 ], [ %5498, %block_.L_4612af ]
  %MEMORY.73 = phi %struct.Memory* [ %MEMORY.59, %block_.L_461002 ], [ %MEMORY.72, %block_.L_4612af ]
  %5500 = add i64 %5499, 5
  store i64 %5500, i64* %3, align 8
  br label %block_.L_4612b9

block_.L_4612b9:                                  ; preds = %block_.L_4612b4, %block_460ffd
  %storemerge = phi i64 [ %4740, %block_460ffd ], [ %5500, %block_.L_4612b4 ]
  %MEMORY.74 = phi %struct.Memory* [ %MEMORY.59, %block_460ffd ], [ %MEMORY.73, %block_.L_4612b4 ]
  %5501 = load i64, i64* %RBP.i, align 8
  %5502 = add i64 %5501, -752
  %5503 = add i64 %storemerge, 6
  store i64 %5503, i64* %3, align 8
  %5504 = inttoptr i64 %5502 to i32*
  %5505 = load i32, i32* %5504, align 4
  %5506 = add i32 %5505, 1
  %5507 = zext i32 %5506 to i64
  store i64 %5507, i64* %RAX.i2177, align 8
  %5508 = icmp eq i32 %5505, -1
  %5509 = icmp eq i32 %5506, 0
  %5510 = or i1 %5508, %5509
  %5511 = zext i1 %5510 to i8
  store i8 %5511, i8* %40, align 1
  %5512 = and i32 %5506, 255
  %5513 = tail call i32 @llvm.ctpop.i32(i32 %5512)
  %5514 = trunc i32 %5513 to i8
  %5515 = and i8 %5514, 1
  %5516 = xor i8 %5515, 1
  store i8 %5516, i8* %47, align 1
  %5517 = xor i32 %5506, %5505
  %5518 = lshr i32 %5517, 4
  %5519 = trunc i32 %5518 to i8
  %5520 = and i8 %5519, 1
  store i8 %5520, i8* %53, align 1
  %5521 = zext i1 %5509 to i8
  store i8 %5521, i8* %56, align 1
  %5522 = lshr i32 %5506, 31
  %5523 = trunc i32 %5522 to i8
  store i8 %5523, i8* %59, align 1
  %5524 = lshr i32 %5505, 31
  %5525 = xor i32 %5522, %5524
  %5526 = add nuw nsw i32 %5525, %5522
  %5527 = icmp eq i32 %5526, 2
  %5528 = zext i1 %5527 to i8
  store i8 %5528, i8* %65, align 1
  %5529 = add i64 %storemerge, 15
  store i64 %5529, i64* %3, align 8
  store i32 %5506, i32* %5504, align 4
  %5530 = load i64, i64* %3, align 8
  %5531 = add i64 %5530, -776
  store i64 %5531, i64* %3, align 8
  br label %block_.L_460fc0

block_.L_4612cd:                                  ; preds = %block_.L_460fc0
  %5532 = add i64 %4697, 5
  store i64 %5532, i64* %3, align 8
  br label %block_.L_4612d2

block_.L_4612d2:                                  ; preds = %block_460f8e, %block_.L_4612cd
  %5533 = phi i64 [ %4655, %block_460f8e ], [ %5532, %block_.L_4612cd ]
  %MEMORY.75 = phi %struct.Memory* [ %call2_460fa4, %block_460f8e ], [ %MEMORY.59, %block_.L_4612cd ]
  %5534 = add i64 %5533, 5
  store i64 %5534, i64* %3, align 8
  br label %block_.L_4612d7

block_.L_4612d7:                                  ; preds = %block_460f7a, %block_.L_4612d2, %block_.L_460f6c
  %5535 = phi i64 [ %4582, %block_.L_460f6c ], [ %4612, %block_460f7a ], [ %5534, %block_.L_4612d2 ]
  %MEMORY.76 = phi %struct.Memory* [ %MEMORY.58, %block_.L_460f6c ], [ %MEMORY.58, %block_460f7a ], [ %MEMORY.75, %block_.L_4612d2 ]
  %5536 = load i64, i64* %RBP.i, align 8
  %5537 = add i64 %5536, -1168
  %5538 = add i64 %5535, 12
  store i64 %5538, i64* %3, align 8
  %5539 = inttoptr i64 %5537 to i32*
  %5540 = load i32, i32* %5539, align 4
  store i8 0, i8* %40, align 1
  %5541 = and i32 %5540, 255
  %5542 = tail call i32 @llvm.ctpop.i32(i32 %5541)
  %5543 = trunc i32 %5542 to i8
  %5544 = and i8 %5543, 1
  %5545 = xor i8 %5544, 1
  store i8 %5545, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5546 = icmp eq i32 %5540, 0
  %5547 = zext i1 %5546 to i8
  store i8 %5547, i8* %56, align 1
  %5548 = lshr i32 %5540, 31
  %5549 = trunc i32 %5548 to i8
  store i8 %5549, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v242 = select i1 %5546, i64 101, i64 18
  %5550 = add i64 %5535, %.v242
  store i64 %5550, i64* %3, align 8
  br i1 %5546, label %block_.L_46133c, label %block_4612e9

block_4612e9:                                     ; preds = %block_.L_4612d7
  %5551 = add i64 %5536, -56
  %5552 = add i64 %5550, 5
  store i64 %5552, i64* %3, align 8
  %5553 = inttoptr i64 %5551 to i64*
  %5554 = load i64, i64* %5553, align 8
  store i8 0, i8* %40, align 1
  %5555 = trunc i64 %5554 to i32
  %5556 = and i32 %5555, 255
  %5557 = tail call i32 @llvm.ctpop.i32(i32 %5556)
  %5558 = trunc i32 %5557 to i8
  %5559 = and i8 %5558, 1
  %5560 = xor i8 %5559, 1
  store i8 %5560, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5561 = icmp eq i64 %5554, 0
  %5562 = zext i1 %5561 to i8
  store i8 %5562, i8* %56, align 1
  %5563 = lshr i64 %5554, 63
  %5564 = trunc i64 %5563 to i8
  store i8 %5564, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v243 = select i1 %5561, i64 23, i64 11
  %5565 = add i64 %5550, %.v243
  store i64 %5565, i64* %3, align 8
  br i1 %5561, label %block_.L_461300, label %block_4612f4

block_4612f4:                                     ; preds = %block_4612e9
  %5566 = add i64 %5536, -1164
  %5567 = add i64 %5565, 6
  store i64 %5567, i64* %3, align 8
  %5568 = inttoptr i64 %5566 to i32*
  %5569 = load i32, i32* %5568, align 4
  %5570 = zext i32 %5569 to i64
  store i64 %5570, i64* %RAX.i2177, align 8
  %5571 = add i64 %5565, 10
  store i64 %5571, i64* %3, align 8
  %5572 = load i64, i64* %5553, align 8
  store i64 %5572, i64* %RCX.i2157, align 8
  %5573 = add i64 %5565, 12
  store i64 %5573, i64* %3, align 8
  %5574 = inttoptr i64 %5572 to i32*
  store i32 %5569, i32* %5574, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_461300

block_.L_461300:                                  ; preds = %block_4612f4, %block_4612e9
  %5575 = phi i64 [ %.pre194, %block_4612f4 ], [ %5565, %block_4612e9 ]
  %5576 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %5577 = trunc i64 %5576 to i32
  %5578 = and i32 %5577, 255
  %5579 = tail call i32 @llvm.ctpop.i32(i32 %5578)
  %5580 = trunc i32 %5579 to i8
  %5581 = and i8 %5580, 1
  %5582 = xor i8 %5581, 1
  store i8 %5582, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5583 = icmp eq i64 %5576, 0
  %5584 = zext i1 %5583 to i8
  store i8 %5584, i8* %56, align 1
  %5585 = lshr i64 %5576, 63
  %5586 = trunc i64 %5585 to i8
  store i8 %5586, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v244 = select i1 %5583, i64 55, i64 15
  %5587 = add i64 %5575, %.v244
  store i64 %5587, i64* %3, align 8
  br i1 %5583, label %block_.L_461337, label %block_46130f

block_46130f:                                     ; preds = %block_.L_461300
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %68, align 8
  %5588 = load i64, i64* %RBP.i, align 8
  %5589 = add i64 %5588, -1176
  %5590 = add i64 %5587, 17
  store i64 %5590, i64* %3, align 8
  %5591 = inttoptr i64 %5589 to i64*
  %5592 = load i64, i64* %5591, align 8
  store i64 %5592, i64* %RDI.i2050, align 8
  %5593 = add i64 %5588, -1180
  %5594 = add i64 %5587, 23
  store i64 %5594, i64* %3, align 8
  %5595 = inttoptr i64 %5593 to i32*
  %5596 = load i32, i32* %5595, align 4
  %5597 = zext i32 %5596 to i64
  store i64 %5597, i64* %RSI.i2169, align 8
  %5598 = add i64 %5588, -1164
  %5599 = add i64 %5587, 29
  store i64 %5599, i64* %3, align 8
  %5600 = inttoptr i64 %5598 to i32*
  %5601 = load i32, i32* %5600, align 4
  %5602 = zext i32 %5601 to i64
  store i64 %5602, i64* %RDX.i2056, align 8
  %5603 = add i64 %5588, -1168
  %5604 = add i64 %5587, 35
  store i64 %5604, i64* %3, align 8
  %5605 = inttoptr i64 %5603 to i32*
  %5606 = load i32, i32* %5605, align 4
  %5607 = zext i32 %5606 to i64
  store i64 %5607, i64* %RCX.i2157, align 8
  %5608 = add i64 %5587, -299855
  %5609 = add i64 %5587, 40
  %5610 = load i64, i64* %6, align 8
  %5611 = add i64 %5610, -8
  %5612 = inttoptr i64 %5611 to i64*
  store i64 %5609, i64* %5612, align 8
  store i64 %5611, i64* %6, align 8
  store i64 %5608, i64* %3, align 8
  %call2_461332 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %5608, %struct.Memory* %MEMORY.76)
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_461337

block_.L_461337:                                  ; preds = %block_46130f, %block_.L_461300
  %5613 = phi i64 [ %5587, %block_.L_461300 ], [ %.pre195, %block_46130f ]
  %MEMORY.78 = phi %struct.Memory* [ %MEMORY.76, %block_.L_461300 ], [ %call2_461332, %block_46130f ]
  %5614 = add i64 %5613, 54
  br label %block_.L_46136d

block_.L_46133c:                                  ; preds = %block_.L_4612d7
  %5615 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %5616 = trunc i64 %5615 to i32
  %5617 = and i32 %5616, 255
  %5618 = tail call i32 @llvm.ctpop.i32(i32 %5617)
  %5619 = trunc i32 %5618 to i8
  %5620 = and i8 %5619, 1
  %5621 = xor i8 %5620, 1
  store i8 %5621, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5622 = icmp eq i64 %5615, 0
  %5623 = zext i1 %5622 to i8
  store i8 %5623, i8* %56, align 1
  %5624 = lshr i64 %5615, 63
  %5625 = trunc i64 %5624 to i8
  store i8 %5625, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v245 = select i1 %5622, i64 44, i64 15
  %5626 = add i64 %5550, %.v245
  store i64 %5626, i64* %3, align 8
  br i1 %5622, label %block_.L_461368, label %block_46134b

block_46134b:                                     ; preds = %block_.L_46133c
  store i64 0, i64* %RAX.i2177, align 8
  store i64 0, i64* %RCX.i2157, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %68, align 8
  %5627 = add i64 %5536, -1176
  %5628 = add i64 %5626, 14
  store i64 %5628, i64* %3, align 8
  %5629 = inttoptr i64 %5627 to i64*
  %5630 = load i64, i64* %5629, align 8
  store i64 %5630, i64* %RDI.i2050, align 8
  %5631 = add i64 %5536, -1180
  %5632 = add i64 %5626, 20
  store i64 %5632, i64* %3, align 8
  %5633 = inttoptr i64 %5631 to i32*
  %5634 = load i32, i32* %5633, align 4
  %5635 = zext i32 %5634 to i64
  store i64 %5635, i64* %RSI.i2169, align 8
  store i64 0, i64* %RDX.i2056, align 8
  store i64 0, i64* %RCX.i2157, align 8
  %5636 = add i64 %5626, -299915
  %5637 = add i64 %5626, 29
  %5638 = load i64, i64* %6, align 8
  %5639 = add i64 %5638, -8
  %5640 = inttoptr i64 %5639 to i64*
  store i64 %5637, i64* %5640, align 8
  store i64 %5639, i64* %6, align 8
  store i64 %5636, i64* %3, align 8
  %call2_461363 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %5636, %struct.Memory* %MEMORY.76)
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_461368

block_.L_461368:                                  ; preds = %block_46134b, %block_.L_46133c
  %5641 = phi i64 [ %5626, %block_.L_46133c ], [ %.pre196, %block_46134b ]
  %MEMORY.79 = phi %struct.Memory* [ %MEMORY.76, %block_.L_46133c ], [ %call2_461363, %block_46134b ]
  %5642 = add i64 %5641, 5
  store i64 %5642, i64* %3, align 8
  br label %block_.L_46136d

block_.L_46136d:                                  ; preds = %block_.L_461368, %block_.L_461337
  %storemerge100 = phi i64 [ %5614, %block_.L_461337 ], [ %5642, %block_.L_461368 ]
  %MEMORY.80 = phi %struct.Memory* [ %MEMORY.78, %block_.L_461337 ], [ %MEMORY.79, %block_.L_461368 ]
  %5643 = load i64, i64* %RBP.i, align 8
  %5644 = add i64 %5643, -1168
  %5645 = add i64 %storemerge100, 6
  store i64 %5645, i64* %3, align 8
  %5646 = inttoptr i64 %5644 to i32*
  %5647 = load i32, i32* %5646, align 4
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RAX.i2177, align 8
  %5649 = add i64 %5643, -44
  %5650 = add i64 %storemerge100, 9
  store i64 %5650, i64* %3, align 8
  %5651 = inttoptr i64 %5649 to i32*
  store i32 %5647, i32* %5651, align 4
  %.pre200 = load i64, i64* %3, align 8
  br label %block_.L_461376

block_.L_461376:                                  ; preds = %block_.L_46136d, %block_.L_461256, %block_.L_46114f, %block_.L_460e93, %block_.L_4609e0, %block_.L_4608f9, %block_.L_460795, %block_.L_46006d
  %5652 = phi i64 [ %.pre200, %block_.L_46136d ], [ %5389, %block_.L_461256 ], [ %5100, %block_.L_46114f ], [ %4330, %block_.L_460e93 ], [ %3057, %block_.L_4609e0 ], [ %2810, %block_.L_4608f9 ], [ %2447, %block_.L_460795 ], [ %334, %block_.L_46006d ]
  %MEMORY.81 = phi %struct.Memory* [ %MEMORY.80, %block_.L_46136d ], [ %MEMORY.68, %block_.L_461256 ], [ %MEMORY.61, %block_.L_46114f ], [ %MEMORY.50, %block_.L_460e93 ], [ %MEMORY.36, %block_.L_4609e0 ], [ %MEMORY.32, %block_.L_4608f9 ], [ %MEMORY.23, %block_.L_460795 ], [ %MEMORY.2, %block_.L_46006d ]
  %5653 = load i64, i64* %RBP.i, align 8
  %5654 = add i64 %5653, -44
  %5655 = add i64 %5652, 3
  store i64 %5655, i64* %3, align 8
  %5656 = inttoptr i64 %5654 to i32*
  %5657 = load i32, i32* %5656, align 4
  %5658 = zext i32 %5657 to i64
  store i64 %5658, i64* %RAX.i2177, align 8
  %5659 = load i64, i64* %6, align 8
  %5660 = add i64 %5659, 1496
  store i64 %5660, i64* %6, align 8
  %5661 = icmp ugt i64 %5659, -1497
  %5662 = zext i1 %5661 to i8
  store i8 %5662, i8* %40, align 1
  %5663 = trunc i64 %5660 to i32
  %5664 = and i32 %5663, 255
  %5665 = tail call i32 @llvm.ctpop.i32(i32 %5664)
  %5666 = trunc i32 %5665 to i8
  %5667 = and i8 %5666, 1
  %5668 = xor i8 %5667, 1
  store i8 %5668, i8* %47, align 1
  %5669 = xor i64 %5659, 16
  %5670 = xor i64 %5669, %5660
  %5671 = lshr i64 %5670, 4
  %5672 = trunc i64 %5671 to i8
  %5673 = and i8 %5672, 1
  store i8 %5673, i8* %53, align 1
  %5674 = icmp eq i64 %5660, 0
  %5675 = zext i1 %5674 to i8
  store i8 %5675, i8* %56, align 1
  %5676 = lshr i64 %5660, 63
  %5677 = trunc i64 %5676 to i8
  store i8 %5677, i8* %59, align 1
  %5678 = lshr i64 %5659, 63
  %5679 = xor i64 %5676, %5678
  %5680 = add nuw nsw i64 %5679, %5676
  %5681 = icmp eq i64 %5680, 2
  %5682 = zext i1 %5681 to i8
  store i8 %5682, i8* %65, align 1
  %5683 = add i64 %5652, 11
  store i64 %5683, i64* %3, align 8
  %5684 = add i64 %5659, 1504
  %5685 = inttoptr i64 %5660 to i64*
  %5686 = load i64, i64* %5685, align 8
  store i64 %5686, i64* %RBX.i2181, align 8
  store i64 %5684, i64* %6, align 8
  %5687 = add i64 %5652, 13
  store i64 %5687, i64* %3, align 8
  %5688 = add i64 %5659, 1512
  %5689 = inttoptr i64 %5684 to i64*
  %5690 = load i64, i64* %5689, align 8
  store i64 %5690, i64* %R12.i2183, align 8
  store i64 %5688, i64* %6, align 8
  %5691 = add i64 %5652, 15
  store i64 %5691, i64* %3, align 8
  %5692 = add i64 %5659, 1520
  %5693 = inttoptr i64 %5688 to i64*
  %5694 = load i64, i64* %5693, align 8
  store i64 %5694, i64* %R13.i2185, align 8
  store i64 %5692, i64* %6, align 8
  %5695 = add i64 %5652, 17
  store i64 %5695, i64* %3, align 8
  %5696 = add i64 %5659, 1528
  %5697 = inttoptr i64 %5692 to i64*
  %5698 = load i64, i64* %5697, align 8
  store i64 %5698, i64* %R14.i2187, align 8
  store i64 %5696, i64* %6, align 8
  %5699 = add i64 %5652, 19
  store i64 %5699, i64* %3, align 8
  %5700 = add i64 %5659, 1536
  %5701 = inttoptr i64 %5696 to i64*
  %5702 = load i64, i64* %5701, align 8
  store i64 %5702, i64* %R15.i1872, align 8
  store i64 %5700, i64* %6, align 8
  %5703 = add i64 %5652, 20
  store i64 %5703, i64* %3, align 8
  %5704 = add i64 %5659, 1544
  %5705 = inttoptr i64 %5700 to i64*
  %5706 = load i64, i64* %5705, align 8
  store i64 %5706, i64* %RBP.i, align 8
  store i64 %5704, i64* %6, align 8
  %5707 = add i64 %5652, 21
  store i64 %5707, i64* %3, align 8
  %5708 = inttoptr i64 %5704 to i64*
  %5709 = load i64, i64* %5708, align 8
  store i64 %5709, i64* %3, align 8
  %5710 = add i64 %5659, 1552
  store i64 %5710, i64* %6, align 8
  ret %struct.Memory* %MEMORY.81
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
define %struct.Memory* @routine_subq__0x5d8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -1496
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 1496
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %29
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fe4e___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe4e_type* @G__0x57fe4e to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
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
define %struct.Memory* @routine_subl_MINUS0x44__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -68
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %5, %11
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = icmp ult i32 %5, %11
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %12, 255
  %18 = tail call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i32 %11, %5
  %24 = xor i32 %23, %12
  %25 = lshr i32 %24, 4
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1
  %29 = icmp eq i32 %12, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %5, 31
  %36 = lshr i32 %11, 31
  %37 = xor i32 %36, %35
  %38 = xor i32 %32, %35
  %39 = add nuw nsw i32 %38, %37
  %40 = icmp eq i32 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -748
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1164
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x490__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x498__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1176
  %5 = load i64, i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x49c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1180
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_45fffb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_460000(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460028(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0xaef___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2799, i64* %RSI, align 8
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
define %struct.Memory* @routine_jle_.L_460079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460041(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_je_.L_46006d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x498__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x49c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1180
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
define %struct.Memory* @routine_jmpq_.L_461376(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -720
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_callq_.chainlinks2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2e8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
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
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -76
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
define %struct.Memory* @routine_jge_.L_4601c6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x488__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x2e8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
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
define %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -720
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movl__eax__MINUS0x558__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1368
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4a4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1188
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
define %struct.Memory* @routine_cmpl_MINUS0x2f8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -760
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
define %struct.Memory* @routine_jge_.L_460154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4a4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1188
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
define %struct.Memory* @routine_movl_MINUS0x488__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1160
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
define %struct.Memory* @routine_cmpl_MINUS0x4a0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1184
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
define %struct.Memory* @routine_jne_.L_46013b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -960
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3c0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -960
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
define %struct.Memory* @routine_jmpq_.L_460154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460140(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x4a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1188
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4600f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_4601a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x32__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_4601a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4a0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1184
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
define %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x488__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1160
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -960
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
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
define %struct.Memory* @routine_movl__eax__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -760
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4601ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4601b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -744
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46009a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.double_atari_chain2_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x2d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -728
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x2d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -728
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jne_.L_460201(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460272(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xb02___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2818, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x55c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1372
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
define %struct.Memory* @routine_movq__rdx__MINUS0x568__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1384
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
define %struct.Memory* @routine_movl_MINUS0x55c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1372
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
define %struct.Memory* @routine_movl__eax__MINUS0x56c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1388
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
define %struct.Memory* @routine_movq_MINUS0x568__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1384
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x570__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1392
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
define %struct.Memory* @routine_movl_MINUS0x56c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1388
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
define %struct.Memory* @routine_movl_MINUS0x570__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1392
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x3__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_460535(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
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
define %struct.Memory* @routine_movl_MINUS0x2e4__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -740
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1192
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xb54ce4___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb060b8___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jle_.L_460350(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_460339(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1192
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
define %struct.Memory* @routine_addl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ugt i32 %6, -21
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
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
define %struct.Memory* @routine_cmpl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -72
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
define %struct.Memory* @routine_je_.L_460339(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x14___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RAX, align 8
  %9 = icmp ult i32 %6, 20
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
define %struct.Memory* @routine_jne_.L_460350(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1192
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_callq_.is_self_atari(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46041f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460355(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4ac__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1196
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
define %struct.Memory* @routine_jge_.L_4603c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4ac__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1196
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4a8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1192
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
define %struct.Memory* @routine_jne_.L_4603a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4603c1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4603ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1196
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46035f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_460415(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_460415(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46041a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46041f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4a8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1192
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
define %struct.Memory* @routine_callq_.edge_closing_backfill(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46050c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460442(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4b0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
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
define %struct.Memory* @routine_jge_.L_4604ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4b0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x2d4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -724
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
define %struct.Memory* @routine_jne_.L_460495(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4604ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46049a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1200
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46044c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_460502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_460502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
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
define %struct.Memory* @routine_jmpq_.L_460507(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46050c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x488__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.edge_block_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
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
define %struct.Memory* @routine_movl__eax__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -752
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46027c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x488__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2e4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -740
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -728
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
define %struct.Memory* @routine_movl_MINUS0x48__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
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
define %struct.Memory* @routine_movq_MINUS0x498__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1176
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_460869(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_4605b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
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
define %struct.Memory* @routine_jle_.L_4605b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460869(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x2f0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
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
define %struct.Memory* @routine_movl_MINUS0x488__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1160
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
define %struct.Memory* @routine_movl__eax__MINUS0x2d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -724
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
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
define %struct.Memory* @routine_movl__r9d__MINUS0x574__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1396
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x578__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1400
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x57c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1404
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x580__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1408
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x584__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1412
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x585__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1413
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_46062b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x490__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
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
define %struct.Memory* @routine_movb__al__MINUS0x585__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1413
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x585__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1413
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fe92___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe92_type* @G__0x57fe92 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4b4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1204
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4b8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4bc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1212
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
define %struct.Memory* @routine_movl_MINUS0x578__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1400
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
define %struct.Memory* @routine_movq__rdi__MINUS0x590__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1424
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
define %struct.Memory* @routine_movl_MINUS0x57c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1404
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
define %struct.Memory* @routine_movq__rsi__MINUS0x598__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1432
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
define %struct.Memory* @routine_movl_MINUS0x580__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1408
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
define %struct.Memory* @routine_movq__rcx__MINUS0x5a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1440
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
define %struct.Memory* @routine_movl_MINUS0x584__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1412
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
define %struct.Memory* @routine_movl__r8d__MINUS0x5a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1444
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
define %struct.Memory* @routine_movl_MINUS0x574__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1396
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
define %struct.Memory* @routine_movq_MINUS0x5a0__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1440
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
define %struct.Memory* @routine_movq_MINUS0x598__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1432
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
define %struct.Memory* @routine_movq_MINUS0x590__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1424
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
define %struct.Memory* @routine_movl_MINUS0x5a4__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1444
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_460850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1212
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
define %struct.Memory* @routine_jne_.L_4607ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1204
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
define %struct.Memory* @routine_movl_MINUS0x4b8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
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
define %struct.Memory* @routine_callq_.do_find_defense(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -748
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x2ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -748
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_je_.L_4607e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2ec__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -748
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
define %struct.Memory* @routine_jne_.L_4607a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46075f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_460795(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57e5fb___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
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
define %struct.Memory* @routine_subl_MINUS0x2ec__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -748
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
define %struct.Memory* @routine_cmpl_MINUS0x490__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1168
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
define %struct.Memory* @routine_jle_.L_4607d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2d4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
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
define %struct.Memory* @routine_movl__ecx__MINUS0x48c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1164
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x490__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1168
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4607da(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4607df(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4607e9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46084b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_460846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x48c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1164
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x490__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460850(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460855(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46057b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jg_.L_460950(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x2d4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -724
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
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
define %struct.Memory* @routine_callq_.find_cap(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1216
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1216
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
define %struct.Memory* @routine_jne_.L_460905(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4608c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4608f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fde6___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fde6_type* @G__0x57fde6 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1216
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_subl__ecx___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i32, i32* %ECX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %4 to i32
  %10 = sub i32 %9, %5
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %RAX, align 8
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
define %struct.Memory* @routine_jle_.L_460941(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460946(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46094b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460950(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb54ce0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb54ce0_type* @G_0xb54ce0 to i32*), align 8
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
define %struct.Memory* @routine_jg_.L_460a37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.draw_back(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1220
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1220
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
define %struct.Memory* @routine_jne_.L_4609ec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4609aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4609e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fdf0___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fdf0_type* @G__0x57fdf0 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4c4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1220
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
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
define %struct.Memory* @routine_jle_.L_460a28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460a2d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460a32(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460a37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_jg_.L_460f6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1224
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_460c4d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4d0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1232
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 4, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__esi___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4d0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1232
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
define %struct.Memory* @routine_movl__eax__MINUS0x5a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1448
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jle_.L_460af1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4cc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1228
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
define %struct.Memory* @routine_jmpq_.L_460c39(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.break_chain2_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_jge_.L_460c34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460b46(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4d4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
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
define %struct.Memory* @routine_jge_.L_460bba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4d4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4d0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -1232
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %4, %13
  %15 = icmp ult i32 %4, %13
  %16 = zext i1 %15 to i8
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %16, i8* %17, align 1
  %18 = and i32 %14, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18)
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1
  %24 = xor i32 %13, %4
  %25 = xor i32 %24, %14
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %14, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %14, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %4, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add nuw nsw i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_460ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460bba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460ba6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1236
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460b50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_460c16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_460c16(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4d0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1232
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
define %struct.Memory* @routine_movslq_MINUS0x2f8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
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
define %struct.Memory* @routine_movl__ecx__MINUS0x488__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1160
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3c0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -960
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2f8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -760
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460c1b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460c20(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460b34(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460a78(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c8__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1224
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
define %struct.Memory* @routine_movl_MINUS0x4c8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1224
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
define %struct.Memory* @routine_movl__edx__MINUS0x2f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -752
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_460f67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_460cb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_460cb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460f67(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d__MINUS0x5ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1452
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x5b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1456
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x5b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1460
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1464
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x5bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1468
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x5bd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1469
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_460d29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x5bd__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1469
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x5bd__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1469
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fdfa___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fdfa_type* @G__0x57fdfa to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4d8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4dc__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1244
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4e0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5b0__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1456
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
define %struct.Memory* @routine_movq__rdi__MINUS0x5c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1480
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5b4__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1460
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
define %struct.Memory* @routine_movq__rsi__MINUS0x5d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1488
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5b8__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1464
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
define %struct.Memory* @routine_movq__rcx__MINUS0x5d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5bc__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1468
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
define %struct.Memory* @routine_movl__r8d__MINUS0x5dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1500
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5ac__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1452
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
define %struct.Memory* @routine_movq_MINUS0x5d8__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5d0__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x5c8__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x5dc__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1500
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
define %struct.Memory* @routine_je_.L_460f4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
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
define %struct.Memory* @routine_jne_.L_460eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4d8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1240
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
define %struct.Memory* @routine_movl_MINUS0x4dc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1244
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
define %struct.Memory* @routine_je_.L_460ee2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_460e9f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_460e5d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_460e93(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_460ed3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460ed8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460edd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460ee7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460f49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_460f44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_460f4e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460f53(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460c79(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460f6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_4612d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_4612d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4e4__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1252
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
define %struct.Memory* @routine_leaq_MINUS0x550__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1360
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
define %struct.Memory* @routine_cmpl__0x5__MINUS0x4e4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1252
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, -5
  %10 = icmp ult i32 %8, 5
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
define %struct.Memory* @routine_jg_.L_4612d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_MINUS0x4e4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1252
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
define %struct.Memory* @routine_jge_.L_4612cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x550__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1360
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
define %struct.Memory* @routine_movl__ecx__MINUS0x554__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1364
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x554__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
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
define %struct.Memory* @routine_je_.L_461002(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4612b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fe04___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe04_type* @G__0x57fe04 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.trymove(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4612b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4611b7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x5e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1504
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_4611ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fe0e___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe0e_type* @G__0x57fe0e to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4611a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46119e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_46115b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_461119(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46114f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_46118f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_461194(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_461199(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4611a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4611a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4611b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4612af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4612a5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_461262(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_461220(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x554__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
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
define %struct.Memory* @routine_je_.L_461256(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x554__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
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
define %struct.Memory* @routine_jle_.L_461296(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x554__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
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
define %struct.Memory* @routine_jmpq_.L_46129b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4612a0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4612aa(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4612b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_460fc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4612d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4612d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4612dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46133c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_461300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1164
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
define %struct.Memory* @routine_je_.L_461337(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x48c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1164
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
define %struct.Memory* @routine_movl_MINUS0x490__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
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
define %struct.Memory* @routine_jmpq_.L_46136d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_461368(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x490__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1168
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
define %struct.Memory* @routine_addq__0x5d8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 1496
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -1497
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
  %17 = xor i64 %3, 16
  %18 = xor i64 %17, %6
  %19 = lshr i64 %18, 4
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i64 %6, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i64 %6, 63
  %27 = trunc i64 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i64 %3, 63
  %30 = xor i64 %26, %29
  %31 = add nuw nsw i64 %30, %26
  %32 = icmp eq i64 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
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
