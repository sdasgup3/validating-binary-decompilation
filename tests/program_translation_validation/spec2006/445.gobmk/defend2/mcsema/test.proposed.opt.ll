; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xae23a4_type = type <{ [4 x i8] }>
%G_0xafd960_type = type <{ [4 x i8] }>
%G_0xb060b8_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb8af28_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57a739_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fbff_type = type <{ [8 x i8] }>
%G__0x57fc87_type = type <{ [8 x i8] }>
%G__0x57fd27_type = type <{ [8 x i8] }>
%G__0x57fd3a_type = type <{ [8 x i8] }>
%G__0x57fd49_type = type <{ [8 x i8] }>
%G__0x57fd53_type = type <{ [8 x i8] }>
%G__0x57fd5d_type = type <{ [8 x i8] }>
%G__0x57fd73_type = type <{ [8 x i8] }>
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
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G_0xae23a4 = local_unnamed_addr global %G_0xae23a4_type zeroinitializer
@G_0xafd960 = local_unnamed_addr global %G_0xafd960_type zeroinitializer
@G_0xb060b8 = local_unnamed_addr global %G_0xb060b8_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb8af28 = local_unnamed_addr global %G_0xb8af28_type zeroinitializer
@G_0xb8b850 = local_unnamed_addr global %G_0xb8b850_type zeroinitializer
@G_0xb8b854 = local_unnamed_addr global %G_0xb8b854_type zeroinitializer
@G__0x57a739 = global %G__0x57a739_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fbff = global %G__0x57fbff_type zeroinitializer
@G__0x57fc87 = global %G__0x57fc87_type zeroinitializer
@G__0x57fd27 = global %G__0x57fd27_type zeroinitializer
@G__0x57fd3a = global %G__0x57fd3a_type zeroinitializer
@G__0x57fd49 = global %G__0x57fd49_type zeroinitializer
@G__0x57fd53 = global %G__0x57fd53_type zeroinitializer
@G__0x57fd5d = global %G__0x57fd5d_type zeroinitializer
@G__0x57fd73 = global %G__0x57fd73_type zeroinitializer

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

declare %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4691b0.special_rescue2_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415250.has_neighbor(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @defend2(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1785, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i1942, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i1940, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i1938, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i1936 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %31 = load i64, i64* %RBX.i1936, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %3, align 8
  %34 = add i64 %7, -48
  %35 = inttoptr i64 %34 to i64*
  store i64 %31, i64* %35, align 8
  %36 = load i64, i64* %3, align 8
  %37 = add i64 %7, -984
  store i64 %37, i64* %6, align 8
  %38 = icmp ult i64 %34, 936
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
  %RAX.i1932 = getelementptr inbounds %union.anon, %union.anon* %65, i64 0, i32 0
  store i64 3, i64* %RAX.i1932, align 8
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i1930 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a739_type* @G__0x57a739 to i64), i64* %R8.i1930, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i1927 = bitcast %union.anon* %67 to i32*
  %68 = load i64, i64* %RBP.i, align 8
  %69 = add i64 %68, -48
  %70 = load i32, i32* %EDI.i1927, align 4
  %71 = add i64 %36, 25
  store i64 %71, i64* %3, align 8
  %72 = inttoptr i64 %69 to i32*
  store i32 %70, i32* %72, align 4
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i1924 = getelementptr inbounds %union.anon, %union.anon* %73, i64 0, i32 0
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -56
  %76 = load i64, i64* %RSI.i1924, align 8
  %77 = load i64, i64* %3, align 8
  %78 = add i64 %77, 4
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %75 to i64*
  store i64 %76, i64* %79, align 8
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i1921 = bitcast %union.anon* %80 to i32*
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -60
  %83 = load i32, i32* %EDX.i1921, align 4
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 3
  store i64 %85, i64* %3, align 8
  %86 = inttoptr i64 %82 to i32*
  store i32 %83, i32* %86, align 4
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i1918 = bitcast %union.anon* %87 to i32*
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -64
  %90 = load i32, i32* %ECX.i1918, align 4
  %91 = load i64, i64* %3, align 8
  %92 = add i64 %91, 3
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %89 to i32*
  store i32 %90, i32* %93, align 4
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -544
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 10
  store i64 %97, i64* %3, align 8
  %98 = inttoptr i64 %95 to i32*
  store i32 0, i32* %98, align 4
  %99 = load i64, i64* %RBP.i, align 8
  %100 = add i64 %99, -548
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 10
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %100 to i32*
  store i32 0, i32* %103, align 4
  %104 = load i64, i64* %RBP.i, align 8
  %105 = add i64 %104, -568
  %106 = load i64, i64* %R8.i1930, align 8
  %107 = load i64, i64* %3, align 8
  %108 = add i64 %107, 7
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %105 to i64*
  store i64 %106, i64* %109, align 8
  %RCX.i1908 = getelementptr inbounds %union.anon, %union.anon* %87, i64 0, i32 0
  %110 = load i64, i64* %RBP.i, align 8
  %111 = add i64 %110, -48
  %112 = load i64, i64* %3, align 8
  %113 = add i64 %112, 3
  store i64 %113, i64* %3, align 8
  %114 = inttoptr i64 %111 to i32*
  %115 = load i32, i32* %114, align 4
  %116 = add i64 %110, -572
  %117 = add i64 %112, 9
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %116 to i32*
  store i32 %115, i32* %118, align 4
  %119 = load i64, i64* %3, align 8
  %120 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  %121 = add i32 %120, 1
  %122 = zext i32 %121 to i64
  store i64 %122, i64* %RCX.i1908, align 8
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
  store i64 %149, i64* %RSI.i1924, align 8
  %150 = add nsw i64 %149, 12099168
  %151 = add i64 %119, 29
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %150 to i8*
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i64
  store i64 %154, i64* %RCX.i1908, align 8
  %155 = add i64 %144, -68
  %156 = zext i8 %153 to i32
  %157 = add i64 %119, 32
  store i64 %157, i64* %3, align 8
  %158 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %158, align 4
  %159 = load i64, i64* %RAX.i1932, align 8
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
  store i64 %168, i64* %RAX.i1932, align 8
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
  %EAX.i1884 = bitcast %union.anon* %65 to i32*
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
  store i64 %201, i64* %RSI.i1924, align 8
  %202 = add nsw i64 %201, 12099168
  %203 = add i64 %197, 12
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i8*
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i64
  store i64 %206, i64* %RAX.i1932, align 8
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
  %.v202 = select i1 %220, i64 42, i64 21
  %224 = add i64 %197, %.v202
  store i64 %224, i64* %3, align 8
  br i1 %220, label %block_.L_4644a4, label %block_46448f

block_46448f:                                     ; preds = %entry
  %225 = add i64 %224, 4
  store i64 %225, i64* %3, align 8
  %226 = load i32, i32* %199, align 4
  %227 = sext i32 %226 to i64
  store i64 %227, i64* %RAX.i1932, align 8
  %228 = add nsw i64 %227, 12099168
  %229 = add i64 %224, 12
  store i64 %229, i64* %3, align 8
  %230 = inttoptr i64 %228 to i8*
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i64
  store i64 %232, i64* %RCX.i1908, align 8
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
  %.v203 = select i1 %246, i64 21, i64 26
  %250 = add i64 %224, %.v203
  store i64 %250, i64* %3, align 8
  br i1 %246, label %block_.L_4644a4, label %block_.L_4644a9

block_.L_4644a4:                                  ; preds = %block_46448f, %entry
  %251 = phi i64 [ %250, %block_46448f ], [ %224, %entry ]
  %252 = add i64 %251, 45
  store i64 %252, i64* %3, align 8
  %.pre187 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  br label %block_.L_4644d1

block_.L_4644a9:                                  ; preds = %block_46448f
  %RDI.i1863 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1863, align 8
  store i64 1185, i64* %RSI.i1924, align 8
  %RDX.i1859 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fbff_type* @G__0x57fbff to i64), i64* %RDX.i1859, align 8
  store i64 4294967295, i64* %RAX.i1932, align 8
  store i64 4294967295, i64* %RCX.i1908, align 8
  store i64 4294967295, i64* %R8.i1930, align 8
  %253 = add i64 %250, -74777
  %254 = add i64 %250, 40
  %255 = load i64, i64* %6, align 8
  %256 = add i64 %255, -8
  %257 = inttoptr i64 %256 to i64*
  store i64 %254, i64* %257, align 8
  store i64 %256, i64* %6, align 8
  store i64 %253, i64* %3, align 8
  %call2_4644cc = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %253, %struct.Memory* %2)
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_4644d1

block_.L_4644d1:                                  ; preds = %block_.L_4644a9, %block_.L_4644a4
  %RDI.i1847.pre-phi = phi i64* [ %RDI.i1863, %block_.L_4644a9 ], [ %.pre187, %block_.L_4644a4 ]
  %258 = phi i64 [ %.pre123, %block_.L_4644a9 ], [ %252, %block_.L_4644a4 ]
  %259 = phi i64 [ %.pre, %block_.L_4644a9 ], [ %195, %block_.L_4644a4 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_4644cc, %block_.L_4644a9 ], [ %2, %block_.L_4644a4 ]
  %260 = add i64 %259, -48
  %261 = add i64 %258, 3
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %260 to i32*
  %263 = load i32, i32* %262, align 4
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RDI.i1847.pre-phi, align 8
  %265 = add i64 %258, -347473
  %266 = add i64 %258, 8
  %267 = load i64, i64* %6, align 8
  %268 = add i64 %267, -8
  %269 = inttoptr i64 %268 to i64*
  store i64 %266, i64* %269, align 8
  store i64 %268, i64* %6, align 8
  store i64 %265, i64* %3, align 8
  %call2_4644d4 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %265, %struct.Memory* %MEMORY.1)
  %270 = load i32, i32* %EAX.i1884, align 4
  %271 = load i64, i64* %3, align 8
  %272 = add i32 %270, -2
  %273 = icmp ult i32 %270, 2
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
  %.v204 = select i1 %284, i64 9, i64 14
  %293 = add i64 %271, %.v204
  store i64 %293, i64* %3, align 8
  br i1 %284, label %block_4644e2, label %block_.L_4644e7

block_4644e2:                                     ; preds = %block_.L_4644d1
  %294 = add i64 %293, 45
  store i64 %294, i64* %3, align 8
  %.pre188 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  br label %block_.L_46450f

block_.L_4644e7:                                  ; preds = %block_.L_4644d1
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1847.pre-phi, align 8
  store i64 1186, i64* %RSI.i1924, align 8
  %RDX.i1836 = getelementptr inbounds %union.anon, %union.anon* %80, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fd27_type* @G__0x57fd27 to i64), i64* %RDX.i1836, align 8
  store i64 4294967295, i64* %RAX.i1932, align 8
  store i64 4294967295, i64* %RCX.i1908, align 8
  store i64 4294967295, i64* %R8.i1930, align 8
  %295 = add i64 %293, -74839
  %296 = add i64 %293, 40
  %297 = load i64, i64* %6, align 8
  %298 = add i64 %297, -8
  %299 = inttoptr i64 %298 to i64*
  store i64 %296, i64* %299, align 8
  store i64 %298, i64* %6, align 8
  store i64 %295, i64* %3, align 8
  %call2_46450a = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %295, %struct.Memory* %call2_4644d4)
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_46450f

block_.L_46450f:                                  ; preds = %block_.L_4644e7, %block_4644e2
  %RDX.i1822.pre-phi = phi i64* [ %RDX.i1836, %block_.L_4644e7 ], [ %.pre188, %block_4644e2 ]
  %300 = phi i64 [ %.pre124, %block_.L_4644e7 ], [ %294, %block_4644e2 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_46450a, %block_.L_4644e7 ], [ %call2_4644d4, %block_4644e2 ]
  store i64 2, i64* %RSI.i1924, align 8
  %301 = load i64, i64* %RBP.i, align 8
  %302 = add i64 %301, -88
  store i64 %302, i64* %RDX.i1822.pre-phi, align 8
  %303 = add i64 %301, -48
  %304 = add i64 %300, 12
  store i64 %304, i64* %3, align 8
  %305 = inttoptr i64 %303 to i32*
  %306 = load i32, i32* %305, align 4
  %307 = zext i32 %306 to i64
  store i64 %307, i64* %RDI.i1847.pre-phi, align 8
  %308 = add i64 %300, -347343
  %309 = add i64 %300, 17
  %310 = load i64, i64* %6, align 8
  %311 = add i64 %310, -8
  %312 = inttoptr i64 %311 to i64*
  store i64 %309, i64* %312, align 8
  store i64 %311, i64* %6, align 8
  store i64 %308, i64* %3, align 8
  %call2_46451b = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %308, %struct.Memory* %MEMORY.2)
  %313 = load i64, i64* %RBP.i, align 8
  %314 = add i64 %313, -80
  %315 = load i32, i32* %EAX.i1884, align 4
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
  %325 = add i32 %324, -2
  %326 = icmp ult i32 %324, 2
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
  %.v205 = select i1 %337, i64 10, i64 15
  %346 = add i64 %321, %.v205
  store i64 %346, i64* %3, align 8
  br i1 %337, label %block_46452d, label %block_.L_464532

block_46452d:                                     ; preds = %block_.L_46450f
  %347 = add i64 %346, 118
  store i64 %347, i64* %3, align 8
  br label %block_.L_4645a3

block_.L_464532:                                  ; preds = %block_.L_46450f
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i1847.pre-phi, align 8
  store i64 1189, i64* %RSI.i1924, align 8
  store i64 ptrtoint (%G__0x57fd3a_type* @G__0x57fd3a to i64), i64* %RDX.i1822.pre-phi, align 8
  store i64 20, i64* %RAX.i1932, align 8
  %348 = add i64 %319, -48
  %349 = add i64 %346, 33
  store i64 %349, i64* %3, align 8
  %350 = inttoptr i64 %348 to i32*
  %351 = load i32, i32* %350, align 4
  %352 = zext i32 %351 to i64
  store i64 %352, i64* %RCX.i1908, align 8
  %353 = add i64 %319, -752
  %354 = add i64 %346, 39
  store i64 %354, i64* %3, align 8
  %355 = inttoptr i64 %353 to i32*
  store i32 20, i32* %355, align 4
  %356 = load i32, i32* %ECX.i1918, align 4
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %3, align 8
  store i64 %357, i64* %RAX.i1932, align 8
  %359 = load i64, i64* %RBP.i, align 8
  %360 = add i64 %359, -760
  %361 = load i64, i64* %RDX.i1822.pre-phi, align 8
  %362 = add i64 %358, 9
  store i64 %362, i64* %3, align 8
  %363 = inttoptr i64 %360 to i64*
  store i64 %361, i64* %363, align 8
  %364 = load i64, i64* %3, align 8
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %366 = load i32, i32* %EAX.i1884, align 8
  %367 = sext i32 %366 to i64
  %368 = lshr i64 %367, 32
  store i64 %368, i64* %365, align 8
  %369 = load i64, i64* %RBP.i, align 8
  %370 = add i64 %369, -752
  %371 = add i64 %364, 7
  store i64 %371, i64* %3, align 8
  %372 = inttoptr i64 %370 to i32*
  %373 = load i32, i32* %372, align 4
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RCX.i1908, align 8
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

; <label>:384:                                    ; preds = %block_.L_464532
  %385 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %375, %struct.Memory* %call2_46451b)
  %.pre125 = load i64, i64* %RAX.i1932, align 8
  %.pre126 = load i64, i64* %3, align 8
  %.pre127 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1783

; <label>:386:                                    ; preds = %block_.L_464532
  %387 = srem i64 %379, %377
  %388 = and i64 %380, 4294967295
  store i64 %388, i64* %RAX.i1932, align 8
  %389 = and i64 %387, 4294967295
  store i64 %389, i64* %RDX.i1822.pre-phi, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  br label %routine_idivl__ecx.exit1783

routine_idivl__ecx.exit1783:                      ; preds = %386, %384
  %390 = phi i64 [ %.pre127, %384 ], [ %369, %386 ]
  %391 = phi i64 [ %.pre126, %384 ], [ %375, %386 ]
  %392 = phi i64 [ %.pre125, %384 ], [ %388, %386 ]
  %393 = phi %struct.Memory* [ %385, %384 ], [ %call2_46451b, %386 ]
  %394 = trunc i64 %392 to i32
  %395 = add i32 %394, -1
  %396 = zext i32 %395 to i64
  store i64 %396, i64* %RAX.i1932, align 8
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
  %R8D.i1777 = bitcast %union.anon* %66 to i32*
  %417 = add i64 %390, -48
  %418 = add i64 %391, 7
  store i64 %418, i64* %3, align 8
  %419 = inttoptr i64 %417 to i32*
  %420 = load i32, i32* %419, align 4
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %R8.i1930, align 8
  %422 = add i64 %390, -764
  %423 = add i64 %391, 13
  store i64 %423, i64* %3, align 8
  %424 = inttoptr i64 %422 to i32*
  store i32 %395, i32* %424, align 4
  %425 = load i32, i32* %R8D.i1777, align 4
  %426 = zext i32 %425 to i64
  %427 = load i64, i64* %3, align 8
  store i64 %426, i64* %RAX.i1932, align 8
  %428 = sext i32 %425 to i64
  %429 = lshr i64 %428, 32
  store i64 %429, i64* %365, align 8
  %430 = load i32, i32* %ECX.i1918, align 4
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

; <label>:439:                                    ; preds = %routine_idivl__ecx.exit1783
  %440 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %431, %struct.Memory* %393)
  %.pre128 = load i64, i64* %RDX.i1822.pre-phi, align 8
  %.pre129 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:441:                                    ; preds = %routine_idivl__ecx.exit1783
  %442 = srem i64 %434, %432
  %443 = and i64 %435, 4294967295
  store i64 %443, i64* %RAX.i1932, align 8
  %444 = and i64 %442, 4294967295
  store i64 %444, i64* %RDX.i1822.pre-phi, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %441, %439
  %445 = phi i64 [ %.pre129, %439 ], [ %431, %441 ]
  %446 = phi i64 [ %.pre128, %439 ], [ %444, %441 ]
  %447 = phi %struct.Memory* [ %440, %439 ], [ %393, %441 ]
  %448 = trunc i64 %446 to i32
  %449 = add i32 %448, -1
  %450 = zext i32 %449 to i64
  store i64 %450, i64* %RDX.i1822.pre-phi, align 8
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
  %R9.i1761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -760
  %473 = add i64 %445, 10
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %R9.i1761, align 8
  %476 = add i64 %471, -768
  %477 = add i64 %445, 16
  store i64 %477, i64* %3, align 8
  %478 = inttoptr i64 %476 to i32*
  store i32 %449, i32* %478, align 4
  %479 = load i64, i64* %R9.i1761, align 8
  %480 = load i64, i64* %3, align 8
  store i64 %479, i64* %RDX.i1822.pre-phi, align 8
  %481 = load i64, i64* %RBP.i, align 8
  %482 = add i64 %481, -764
  %483 = add i64 %480, 9
  store i64 %483, i64* %3, align 8
  %484 = inttoptr i64 %482 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = zext i32 %485 to i64
  store i64 %486, i64* %RCX.i1908, align 8
  %487 = add i64 %481, -768
  %488 = add i64 %480, 16
  store i64 %488, i64* %3, align 8
  %489 = inttoptr i64 %487 to i32*
  %490 = load i32, i32* %489, align 4
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %R8.i1930, align 8
  %492 = add i64 %480, -75006
  %493 = add i64 %480, 21
  %494 = load i64, i64* %6, align 8
  %495 = add i64 %494, -8
  %496 = inttoptr i64 %495 to i64*
  store i64 %493, i64* %496, align 8
  store i64 %495, i64* %6, align 8
  store i64 %492, i64* %3, align 8
  %call2_46459e = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %492, %struct.Memory* %447)
  %.pre130 = load i64, i64* %RBP.i, align 8
  %.pre131 = load i64, i64* %3, align 8
  br label %block_.L_4645a3

block_.L_4645a3:                                  ; preds = %routine_idivl__ecx.exit, %block_46452d
  %497 = phi i64 [ %.pre131, %routine_idivl__ecx.exit ], [ %347, %block_46452d ]
  %498 = phi i64 [ %.pre130, %routine_idivl__ecx.exit ], [ %319, %block_46452d ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_46459e, %routine_idivl__ecx.exit ], [ %call2_46451b, %block_46452d ]
  %499 = add i64 %498, -552
  %500 = add i64 %497, 10
  store i64 %500, i64* %3, align 8
  %501 = inttoptr i64 %499 to i32*
  store i32 0, i32* %501, align 4
  %.pre132 = load i64, i64* %3, align 8
  br label %block_.L_4645ad

block_.L_4645ad:                                  ; preds = %block_4645bc, %block_.L_4645a3
  %502 = phi i64 [ %601, %block_4645bc ], [ %.pre132, %block_.L_4645a3 ]
  %503 = load i64, i64* %RBP.i, align 8
  %504 = add i64 %503, -552
  %505 = add i64 %502, 6
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = zext i32 %507 to i64
  store i64 %508, i64* %RAX.i1932, align 8
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
  %.v206 = select i1 %538, i64 15, i64 78
  %539 = add i64 %502, %.v206
  store i64 %539, i64* %3, align 8
  br i1 %538, label %block_4645bc, label %block_.L_4645fb

block_4645bc:                                     ; preds = %block_.L_4645ad
  %540 = add i64 %539, 7
  store i64 %540, i64* %3, align 8
  %541 = load i32, i32* %506, align 4
  %542 = sext i32 %541 to i64
  store i64 %542, i64* %RAX.i1932, align 8
  %543 = shl nsw i64 %542, 2
  %544 = add i64 %503, -88
  %545 = add i64 %544, %543
  %546 = add i64 %539, 11
  store i64 %546, i64* %3, align 8
  %547 = inttoptr i64 %545 to i32*
  %548 = load i32, i32* %547, align 4
  %549 = zext i32 %548 to i64
  store i64 %549, i64* %RCX.i1908, align 8
  %550 = add i64 %539, 18
  store i64 %550, i64* %3, align 8
  %551 = load i32, i32* %506, align 4
  %552 = sext i32 %551 to i64
  store i64 %552, i64* %RAX.i1932, align 8
  %553 = shl nsw i64 %552, 2
  %554 = add i64 %503, -536
  %555 = add i64 %554, %553
  %556 = add i64 %539, 25
  store i64 %556, i64* %3, align 8
  %557 = inttoptr i64 %555 to i32*
  store i32 %548, i32* %557, align 4
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -552
  %560 = load i64, i64* %3, align 8
  %561 = add i64 %560, 7
  store i64 %561, i64* %3, align 8
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562, align 4
  %564 = sext i32 %563 to i64
  store i64 %564, i64* %RAX.i1932, align 8
  %565 = shl nsw i64 %564, 2
  %566 = add i64 %558, -336
  %567 = add i64 %566, %565
  %568 = add i64 %560, 18
  store i64 %568, i64* %3, align 8
  %569 = inttoptr i64 %567 to i32*
  store i32 0, i32* %569, align 4
  %570 = load i64, i64* %RBP.i, align 8
  %571 = add i64 %570, -552
  %572 = load i64, i64* %3, align 8
  %573 = add i64 %572, 6
  store i64 %573, i64* %3, align 8
  %574 = inttoptr i64 %571 to i32*
  %575 = load i32, i32* %574, align 4
  %576 = add i32 %575, 1
  %577 = zext i32 %576 to i64
  store i64 %577, i64* %RAX.i1932, align 8
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
  br label %block_.L_4645ad

block_.L_4645fb:                                  ; preds = %block_.L_4645ad
  %602 = add i64 %503, -536
  store i64 %602, i64* %RSI.i1924, align 8
  %603 = add i64 %539, 10
  store i64 %603, i64* %3, align 8
  %604 = load i32, i32* %511, align 4
  %605 = zext i32 %604 to i64
  store i64 %605, i64* %RAX.i1932, align 8
  %606 = add i64 %503, -136
  %607 = add i64 %539, 16
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
  store i64 %615, i64* %RDI.i1847.pre-phi, align 8
  %616 = add i64 %611, -10363
  %617 = add i64 %611, 8
  %618 = load i64, i64* %6, align 8
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %6, align 8
  store i64 %616, i64* %3, align 8
  %call2_46460e = tail call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* nonnull %0, i64 %616, %struct.Memory* %MEMORY.3)
  %621 = load i64, i64* %RBP.i, align 8
  %622 = add i64 %621, -536
  %623 = load i64, i64* %3, align 8
  store i64 %622, i64* %RSI.i1924, align 8
  %624 = add i64 %621, -48
  %625 = add i64 %623, 10
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RDI.i1847.pre-phi, align 8
  %629 = add i64 %623, 9117
  %630 = add i64 %623, 15
  %631 = load i64, i64* %6, align 8
  %632 = add i64 %631, -8
  %633 = inttoptr i64 %632 to i64*
  store i64 %630, i64* %633, align 8
  store i64 %632, i64* %6, align 8
  store i64 %629, i64* %3, align 8
  %call2_46461d = tail call %struct.Memory* @sub_4669b0.break_chain2_efficient_moves(%struct.State* nonnull %0, i64 %629, %struct.Memory* %call2_46460e)
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -536
  %636 = load i64, i64* %3, align 8
  store i64 %635, i64* %RCX.i1908, align 8
  %637 = add i64 %634, -88
  store i64 %637, i64* %RSI.i1924, align 8
  %638 = add i64 %634, -48
  %639 = add i64 %636, 14
  store i64 %639, i64* %3, align 8
  %640 = inttoptr i64 %638 to i32*
  %641 = load i32, i32* %640, align 4
  %642 = zext i32 %641 to i64
  store i64 %642, i64* %RDI.i1847.pre-phi, align 8
  %643 = add i64 %634, -80
  %644 = add i64 %636, 17
  store i64 %644, i64* %3, align 8
  %645 = inttoptr i64 %643 to i32*
  %646 = load i32, i32* %645, align 4
  %647 = zext i32 %646 to i64
  store i64 %647, i64* %RDX.i1822.pre-phi, align 8
  %R8D.i1675 = bitcast %union.anon* %66 to i32*
  %648 = add i64 %634, -68
  %649 = add i64 %636, 21
  store i64 %649, i64* %3, align 8
  %650 = inttoptr i64 %648 to i32*
  %651 = load i32, i32* %650, align 4
  %652 = zext i32 %651 to i64
  store i64 %652, i64* %R8.i1930, align 8
  %653 = add i64 %636, -8050
  %654 = add i64 %636, 26
  %655 = load i64, i64* %6, align 8
  %656 = add i64 %655, -8
  %657 = inttoptr i64 %656 to i64*
  store i64 %654, i64* %657, align 8
  store i64 %656, i64* %6, align 8
  store i64 %653, i64* %3, align 8
  %call2_464637 = tail call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* nonnull %0, i64 %653, %struct.Memory* %call2_46461d)
  %658 = load i64, i64* %RBP.i, align 8
  %659 = add i64 %658, -536
  %660 = load i64, i64* %3, align 8
  store i64 %659, i64* %RSI.i1924, align 8
  %661 = add i64 %658, -48
  %662 = add i64 %660, 10
  store i64 %662, i64* %3, align 8
  %663 = inttoptr i64 %661 to i32*
  %664 = load i32, i32* %663, align 4
  %665 = zext i32 %664 to i64
  store i64 %665, i64* %RDI.i1847.pre-phi, align 8
  %666 = add i64 %660, 12372
  %667 = add i64 %660, 15
  %668 = load i64, i64* %6, align 8
  %669 = add i64 %668, -8
  %670 = inttoptr i64 %669 to i64*
  store i64 %667, i64* %670, align 8
  store i64 %669, i64* %6, align 8
  store i64 %666, i64* %3, align 8
  %call2_464646 = tail call %struct.Memory* @sub_467690.edge_clamp_moves(%struct.State* nonnull %0, i64 %666, %struct.Memory* %call2_464637)
  %671 = load i64, i64* %3, align 8
  %672 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %673 = zext i32 %672 to i64
  store i64 %673, i64* %RAX.i1932, align 8
  %674 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
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
  %.v207 = select i1 %.demorgan, i64 20, i64 96
  %701 = add i64 %671, %.v207
  store i64 %701, i64* %3, align 8
  br i1 %.demorgan, label %block_46465f, label %block_.L_4646ab

block_46465f:                                     ; preds = %block_.L_4645fb
  %702 = load i64, i64* %RBP.i, align 8
  %703 = add i64 %702, -552
  %704 = add i64 %701, 10
  store i64 %704, i64* %3, align 8
  %705 = inttoptr i64 %703 to i32*
  store i32 0, i32* %705, align 4
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_464669

block_.L_464669:                                  ; preds = %block_464678, %block_46465f
  %706 = phi i64 [ %796, %block_464678 ], [ %.pre133, %block_46465f ]
  %707 = load i64, i64* %RBP.i, align 8
  %708 = add i64 %707, -552
  %709 = add i64 %706, 6
  store i64 %709, i64* %3, align 8
  %710 = inttoptr i64 %708 to i32*
  %711 = load i32, i32* %710, align 4
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RAX.i1932, align 8
  %713 = add i64 %707, -80
  %714 = add i64 %706, 9
  store i64 %714, i64* %3, align 8
  %715 = inttoptr i64 %713 to i32*
  %716 = load i32, i32* %715, align 4
  %717 = sub i32 %711, %716
  %718 = icmp ult i32 %711, %716
  %719 = zext i1 %718 to i8
  store i8 %719, i8* %40, align 1
  %720 = and i32 %717, 255
  %721 = tail call i32 @llvm.ctpop.i32(i32 %720)
  %722 = trunc i32 %721 to i8
  %723 = and i8 %722, 1
  %724 = xor i8 %723, 1
  store i8 %724, i8* %47, align 1
  %725 = xor i32 %716, %711
  %726 = xor i32 %725, %717
  %727 = lshr i32 %726, 4
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  store i8 %729, i8* %52, align 1
  %730 = icmp eq i32 %717, 0
  %731 = zext i1 %730 to i8
  store i8 %731, i8* %55, align 1
  %732 = lshr i32 %717, 31
  %733 = trunc i32 %732 to i8
  store i8 %733, i8* %58, align 1
  %734 = lshr i32 %711, 31
  %735 = lshr i32 %716, 31
  %736 = xor i32 %735, %734
  %737 = xor i32 %732, %734
  %738 = add nuw nsw i32 %737, %736
  %739 = icmp eq i32 %738, 2
  %740 = zext i1 %739 to i8
  store i8 %740, i8* %64, align 1
  %741 = icmp ne i8 %733, 0
  %742 = xor i1 %741, %739
  %.v263 = select i1 %742, i64 15, i64 61
  %743 = add i64 %706, %.v263
  store i64 %743, i64* %3, align 8
  br i1 %742, label %block_464678, label %block_.L_4646a6

block_464678:                                     ; preds = %block_.L_464669
  %744 = add i64 %707, -536
  store i64 %744, i64* %RDX.i1822.pre-phi, align 8
  %745 = add i64 %707, -48
  %746 = add i64 %743, 10
  store i64 %746, i64* %3, align 8
  %747 = inttoptr i64 %745 to i32*
  %748 = load i32, i32* %747, align 4
  %749 = zext i32 %748 to i64
  store i64 %749, i64* %RDI.i1847.pre-phi, align 8
  %750 = add i64 %743, 17
  store i64 %750, i64* %3, align 8
  %751 = load i32, i32* %710, align 4
  %752 = sext i32 %751 to i64
  store i64 %752, i64* %RAX.i1932, align 8
  %753 = shl nsw i64 %752, 2
  %754 = add i64 %707, -88
  %755 = add i64 %754, %753
  %756 = add i64 %743, 21
  store i64 %756, i64* %3, align 8
  %757 = inttoptr i64 %755 to i32*
  %758 = load i32, i32* %757, align 4
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RSI.i1924, align 8
  %760 = add i64 %743, 14936
  %761 = add i64 %743, 26
  %762 = load i64, i64* %6, align 8
  %763 = add i64 %762, -8
  %764 = inttoptr i64 %763 to i64*
  store i64 %761, i64* %764, align 8
  store i64 %763, i64* %6, align 8
  store i64 %760, i64* %3, align 8
  %call2_46468d = tail call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* nonnull %0, i64 %760, %struct.Memory* %call2_464646)
  %765 = load i64, i64* %RBP.i, align 8
  %766 = add i64 %765, -552
  %767 = load i64, i64* %3, align 8
  %768 = add i64 %767, 6
  store i64 %768, i64* %3, align 8
  %769 = inttoptr i64 %766 to i32*
  %770 = load i32, i32* %769, align 4
  %771 = add i32 %770, 1
  %772 = zext i32 %771 to i64
  store i64 %772, i64* %RAX.i1932, align 8
  %773 = icmp eq i32 %770, -1
  %774 = icmp eq i32 %771, 0
  %775 = or i1 %773, %774
  %776 = zext i1 %775 to i8
  store i8 %776, i8* %40, align 1
  %777 = and i32 %771, 255
  %778 = tail call i32 @llvm.ctpop.i32(i32 %777)
  %779 = trunc i32 %778 to i8
  %780 = and i8 %779, 1
  %781 = xor i8 %780, 1
  store i8 %781, i8* %47, align 1
  %782 = xor i32 %771, %770
  %783 = lshr i32 %782, 4
  %784 = trunc i32 %783 to i8
  %785 = and i8 %784, 1
  store i8 %785, i8* %52, align 1
  %786 = zext i1 %774 to i8
  store i8 %786, i8* %55, align 1
  %787 = lshr i32 %771, 31
  %788 = trunc i32 %787 to i8
  store i8 %788, i8* %58, align 1
  %789 = lshr i32 %770, 31
  %790 = xor i32 %787, %789
  %791 = add nuw nsw i32 %790, %787
  %792 = icmp eq i32 %791, 2
  %793 = zext i1 %792 to i8
  store i8 %793, i8* %64, align 1
  %794 = add i64 %767, 15
  store i64 %794, i64* %3, align 8
  store i32 %771, i32* %769, align 4
  %795 = load i64, i64* %3, align 8
  %796 = add i64 %795, -56
  store i64 %796, i64* %3, align 8
  br label %block_.L_464669

block_.L_4646a6:                                  ; preds = %block_.L_464669
  %797 = add i64 %743, 5
  store i64 %797, i64* %3, align 8
  %.pre134 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br label %block_.L_4646ab

block_.L_4646ab:                                  ; preds = %block_.L_4645fb, %block_.L_4646a6
  %798 = phi i32 [ %.pre134, %block_.L_4646a6 ], [ %672, %block_.L_4645fb ]
  %799 = phi i64 [ %797, %block_.L_4646a6 ], [ %701, %block_.L_4645fb ]
  %800 = zext i32 %798 to i64
  store i64 %800, i64* %RAX.i1932, align 8
  %801 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %802 = sub i32 %798, %801
  %803 = icmp ult i32 %798, %801
  %804 = zext i1 %803 to i8
  store i8 %804, i8* %40, align 1
  %805 = and i32 %802, 255
  %806 = tail call i32 @llvm.ctpop.i32(i32 %805)
  %807 = trunc i32 %806 to i8
  %808 = and i8 %807, 1
  %809 = xor i8 %808, 1
  store i8 %809, i8* %47, align 1
  %810 = xor i32 %801, %798
  %811 = xor i32 %810, %802
  %812 = lshr i32 %811, 4
  %813 = trunc i32 %812 to i8
  %814 = and i8 %813, 1
  store i8 %814, i8* %52, align 1
  %815 = icmp eq i32 %802, 0
  %816 = zext i1 %815 to i8
  store i8 %816, i8* %55, align 1
  %817 = lshr i32 %802, 31
  %818 = trunc i32 %817 to i8
  store i8 %818, i8* %58, align 1
  %819 = lshr i32 %798, 31
  %820 = lshr i32 %801, 31
  %821 = xor i32 %820, %819
  %822 = xor i32 %817, %819
  %823 = add nuw nsw i32 %822, %821
  %824 = icmp eq i32 %823, 2
  %825 = zext i1 %824 to i8
  store i8 %825, i8* %64, align 1
  %826 = icmp ne i8 %818, 0
  %827 = xor i1 %826, %824
  %.demorgan189 = or i1 %815, %827
  %.v208 = select i1 %.demorgan189, i64 20, i64 39
  %828 = add i64 %799, %.v208
  store i64 %828, i64* %3, align 8
  br i1 %.demorgan189, label %block_4646bf, label %block_.L_4646d2

block_4646bf:                                     ; preds = %block_.L_4646ab
  %829 = load i64, i64* %RBP.i, align 8
  %830 = add i64 %829, -536
  store i64 %830, i64* %RDX.i1822.pre-phi, align 8
  %831 = add i64 %829, -88
  store i64 %831, i64* %RSI.i1924, align 8
  %832 = add i64 %829, -48
  %833 = add i64 %828, 14
  store i64 %833, i64* %3, align 8
  %834 = inttoptr i64 %832 to i32*
  %835 = load i32, i32* %834, align 4
  %836 = zext i32 %835 to i64
  store i64 %836, i64* %RDI.i1847.pre-phi, align 8
  %837 = add i64 %828, 19185
  %838 = add i64 %828, 19
  %839 = load i64, i64* %6, align 8
  %840 = add i64 %839, -8
  %841 = inttoptr i64 %840 to i64*
  store i64 %838, i64* %841, align 8
  store i64 %840, i64* %6, align 8
  store i64 %837, i64* %3, align 8
  %call2_4646cd = tail call %struct.Memory* @sub_4691b0.special_rescue2_moves(%struct.State* nonnull %0, i64 %837, %struct.Memory* %call2_464646)
  %.pre135 = load i64, i64* %3, align 8
  br label %block_.L_4646d2

block_.L_4646d2:                                  ; preds = %block_.L_4646ab, %block_4646bf
  %842 = phi i64 [ %828, %block_.L_4646ab ], [ %.pre135, %block_4646bf ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_464646, %block_.L_4646ab ], [ %call2_4646cd, %block_4646bf ]
  %843 = load i64, i64* %RBP.i, align 8
  %844 = add i64 %843, -536
  store i64 %844, i64* %RSI.i1924, align 8
  store i64 0, i64* %R8.i1930, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %845 = add i64 %843, -48
  %846 = add i64 %842, 13
  store i64 %846, i64* %3, align 8
  %847 = inttoptr i64 %845 to i32*
  %848 = load i32, i32* %847, align 4
  %849 = zext i32 %848 to i64
  store i64 %849, i64* %RDI.i1847.pre-phi, align 8
  %850 = add i64 %843, -68
  %851 = add i64 %842, 16
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RDX.i1822.pre-phi, align 8
  %855 = add i64 %843, -568
  %856 = add i64 %842, 23
  store i64 %856, i64* %3, align 8
  %857 = inttoptr i64 %855 to i64*
  %858 = load i64, i64* %857, align 8
  store i64 %858, i64* %RCX.i1908, align 8
  %859 = add i64 %842, -6722
  %860 = add i64 %842, 28
  %861 = load i64, i64* %6, align 8
  %862 = add i64 %861, -8
  %863 = inttoptr i64 %862 to i64*
  store i64 %860, i64* %863, align 8
  store i64 %862, i64* %6, align 8
  store i64 %859, i64* %3, align 8
  %call2_4646e9 = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %859, %struct.Memory* %MEMORY.7)
  %864 = load i64, i64* %RBP.i, align 8
  %865 = add i64 %864, -552
  %866 = load i64, i64* %3, align 8
  %867 = add i64 %866, 10
  store i64 %867, i64* %3, align 8
  %868 = inttoptr i64 %865 to i32*
  store i32 0, i32* %868, align 4
  %AL.i1584 = bitcast %union.anon* %65 to i8*
  %CL.i1585 = bitcast %union.anon* %87 to i8*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1559 = bitcast %union.anon* %869 to i32*
  %870 = getelementptr inbounds %union.anon, %union.anon* %869, i64 0, i32 0
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1557 = bitcast %union.anon* %871 to i32*
  %872 = getelementptr inbounds %union.anon, %union.anon* %871, i64 0, i32 0
  %ESI.i1546 = bitcast %union.anon* %73 to i32*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i1489 = bitcast %union.anon* %873 to i32*
  %874 = getelementptr inbounds %union.anon, %union.anon* %873, i64 0, i32 0
  %EBX.i1474 = bitcast %union.anon* %30 to i32*
  %875 = bitcast i64* %6 to i64**
  %.pre136 = load i64, i64* %3, align 8
  br label %block_.L_4646f8

block_.L_4646f8:                                  ; preds = %block_.L_46493c, %block_.L_4646d2
  %876 = phi i64 [ %.pre136, %block_.L_4646d2 ], [ %1472, %block_.L_46493c ]
  %877 = load i64, i64* %RBP.i, align 8
  %878 = add i64 %877, -552
  %879 = add i64 %876, 6
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = zext i32 %881 to i64
  store i64 %882, i64* %RAX.i1932, align 8
  %883 = add i64 %877, -136
  %884 = add i64 %876, 12
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = sub i32 %881, %886
  %888 = icmp ult i32 %881, %886
  %889 = zext i1 %888 to i8
  store i8 %889, i8* %40, align 1
  %890 = and i32 %887, 255
  %891 = tail call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  store i8 %894, i8* %47, align 1
  %895 = xor i32 %886, %881
  %896 = xor i32 %895, %887
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  store i8 %899, i8* %52, align 1
  %900 = icmp eq i32 %887, 0
  %901 = zext i1 %900 to i8
  store i8 %901, i8* %55, align 1
  %902 = lshr i32 %887, 31
  %903 = trunc i32 %902 to i8
  store i8 %903, i8* %58, align 1
  %904 = lshr i32 %881, 31
  %905 = lshr i32 %886, 31
  %906 = xor i32 %905, %904
  %907 = xor i32 %902, %904
  %908 = add nuw nsw i32 %907, %906
  %909 = icmp eq i32 %908, 2
  %910 = zext i1 %909 to i8
  store i8 %910, i8* %64, align 1
  %911 = icmp ne i8 %903, 0
  %912 = xor i1 %911, %909
  %.v209 = select i1 %912, i64 18, i64 605
  %913 = add i64 %876, %.v209
  store i64 %913, i64* %3, align 8
  br i1 %912, label %block_46470a, label %block_.L_464955

block_46470a:                                     ; preds = %block_.L_4646f8
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %CL.i1585, align 1
  %914 = add i64 %913, 11
  store i64 %914, i64* %3, align 8
  %915 = load i32, i32* %880, align 4
  %916 = sext i32 %915 to i64
  store i64 %916, i64* %RDX.i1822.pre-phi, align 8
  %917 = shl nsw i64 %916, 2
  %918 = add i64 %877, -536
  %919 = add i64 %918, %917
  %920 = add i64 %913, 18
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = zext i32 %922 to i64
  store i64 %923, i64* %RAX.i1932, align 8
  %924 = add i64 %877, -76
  %925 = add i64 %913, 21
  store i64 %925, i64* %3, align 8
  %926 = inttoptr i64 %924 to i32*
  store i32 %922, i32* %926, align 4
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -76
  %929 = load i64, i64* %3, align 8
  %930 = add i64 %929, 3
  store i64 %930, i64* %3, align 8
  %931 = inttoptr i64 %928 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = zext i32 %932 to i64
  store i64 %933, i64* %RDI.i1847.pre-phi, align 8
  %934 = add i64 %927, -68
  %935 = add i64 %929, 6
  store i64 %935, i64* %3, align 8
  %936 = inttoptr i64 %934 to i32*
  %937 = load i32, i32* %936, align 4
  %938 = zext i32 %937 to i64
  store i64 %938, i64* %RSI.i1924, align 8
  %939 = add i64 %927, -48
  %940 = add i64 %929, 9
  store i64 %940, i64* %3, align 8
  %941 = inttoptr i64 %939 to i32*
  %942 = load i32, i32* %941, align 4
  %943 = zext i32 %942 to i64
  store i64 %943, i64* %RAX.i1932, align 8
  %944 = add i64 %927, -60
  %945 = add i64 %929, 13
  store i64 %945, i64* %3, align 8
  %946 = inttoptr i64 %944 to i32*
  %947 = load i32, i32* %946, align 4
  %948 = zext i32 %947 to i64
  store i64 %948, i64* %R8.i1930, align 8
  %949 = add i64 %927, -64
  %950 = add i64 %929, 17
  store i64 %950, i64* %3, align 8
  %951 = inttoptr i64 %949 to i32*
  %952 = load i32, i32* %951, align 4
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %870, align 8
  %954 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %872, align 8
  %956 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %957 = sub i32 %954, %956
  %958 = icmp ult i32 %954, %956
  %959 = zext i1 %958 to i8
  store i8 %959, i8* %40, align 1
  %960 = and i32 %957, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %47, align 1
  %965 = xor i32 %956, %954
  %966 = xor i32 %965, %957
  %967 = lshr i32 %966, 4
  %968 = trunc i32 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %52, align 1
  %970 = icmp eq i32 %957, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %55, align 1
  %972 = lshr i32 %957, 31
  %973 = trunc i32 %972 to i8
  store i8 %973, i8* %58, align 1
  %974 = lshr i32 %954, 31
  %975 = lshr i32 %956, 31
  %976 = xor i32 %975, %974
  %977 = xor i32 %972, %974
  %978 = add nuw nsw i32 %977, %976
  %979 = icmp eq i32 %978, 2
  %980 = zext i1 %979 to i8
  store i8 %980, i8* %64, align 1
  %981 = add i64 %927, -772
  %982 = add i64 %929, 40
  store i64 %982, i64* %3, align 8
  %983 = inttoptr i64 %981 to i32*
  store i32 %952, i32* %983, align 4
  %984 = load i64, i64* %RBP.i, align 8
  %985 = add i64 %984, -776
  %986 = load i32, i32* %EDI.i1927, align 4
  %987 = load i64, i64* %3, align 8
  %988 = add i64 %987, 6
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %985 to i32*
  store i32 %986, i32* %989, align 4
  %990 = load i64, i64* %RBP.i, align 8
  %991 = add i64 %990, -780
  %992 = load i32, i32* %ESI.i1546, align 4
  %993 = load i64, i64* %3, align 8
  %994 = add i64 %993, 6
  store i64 %994, i64* %3, align 8
  %995 = inttoptr i64 %991 to i32*
  store i32 %992, i32* %995, align 4
  %996 = load i64, i64* %RBP.i, align 8
  %997 = add i64 %996, -784
  %998 = load i32, i32* %EAX.i1884, align 4
  %999 = load i64, i64* %3, align 8
  %1000 = add i64 %999, 6
  store i64 %1000, i64* %3, align 8
  %1001 = inttoptr i64 %997 to i32*
  store i32 %998, i32* %1001, align 4
  %1002 = load i64, i64* %RBP.i, align 8
  %1003 = add i64 %1002, -788
  %1004 = load i32, i32* %R8D.i1675, align 4
  %1005 = load i64, i64* %3, align 8
  %1006 = add i64 %1005, 7
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1003 to i32*
  store i32 %1004, i32* %1007, align 4
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -789
  %1010 = load i8, i8* %CL.i1585, align 1
  %1011 = load i64, i64* %3, align 8
  %1012 = add i64 %1011, 6
  store i64 %1012, i64* %3, align 8
  %1013 = inttoptr i64 %1009 to i8*
  store i8 %1010, i8* %1013, align 1
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, 22
  %1016 = add i64 %1014, 6
  %1017 = load i8, i8* %55, align 1
  %1018 = icmp eq i8 %1017, 0
  %1019 = load i8, i8* %58, align 1
  %1020 = icmp ne i8 %1019, 0
  %1021 = load i8, i8* %64, align 1
  %1022 = icmp ne i8 %1021, 0
  %1023 = xor i1 %1020, %1022
  %1024 = xor i1 %1023, true
  %1025 = and i1 %1018, %1024
  %1026 = select i1 %1025, i64 %1015, i64 %1016
  store i64 %1026, i64* %3, align 8
  br i1 %1025, label %block_.L_46477c, label %block_46476c

block_46476c:                                     ; preds = %block_46470a
  %1027 = load i64, i64* %RBP.i, align 8
  %1028 = add i64 %1027, -548
  %1029 = add i64 %1026, 7
  store i64 %1029, i64* %3, align 8
  %1030 = inttoptr i64 %1028 to i32*
  %1031 = load i32, i32* %1030, align 4
  store i8 0, i8* %40, align 1
  %1032 = and i32 %1031, 255
  %1033 = tail call i32 @llvm.ctpop.i32(i32 %1032)
  %1034 = trunc i32 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = xor i8 %1035, 1
  store i8 %1036, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1037 = icmp eq i32 %1031, 0
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %55, align 1
  %1039 = lshr i32 %1031, 31
  %1040 = trunc i32 %1039 to i8
  store i8 %1040, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 %1038, i8* %AL.i1584, align 1
  %1041 = add i64 %1027, -789
  %1042 = add i64 %1026, 16
  store i64 %1042, i64* %3, align 8
  %1043 = inttoptr i64 %1041 to i8*
  store i8 %1038, i8* %1043, align 1
  %.pre180 = load i64, i64* %3, align 8
  br label %block_.L_46477c

block_.L_46477c:                                  ; preds = %block_46476c, %block_46470a
  %1044 = phi i64 [ %.pre180, %block_46476c ], [ %1015, %block_46470a ]
  %1045 = load i64, i64* %RBP.i, align 8
  %1046 = add i64 %1045, -789
  %1047 = add i64 %1044, 6
  store i64 %1047, i64* %3, align 8
  %1048 = inttoptr i64 %1046 to i8*
  %1049 = load i8, i8* %1048, align 1
  store i64 ptrtoint (%G__0x57fd49_type* @G__0x57fd49 to i64), i64* %RDX.i1822.pre-phi, align 8
  %1050 = add i64 %1045, -576
  store i64 %1050, i64* %RCX.i1908, align 8
  %1051 = add i64 %1045, -580
  store i64 %1051, i64* %RSI.i1924, align 8
  %1052 = add i64 %1045, -584
  store i64 %1052, i64* %RDI.i1847.pre-phi, align 8
  %1053 = and i8 %1049, 1
  store i8 %1053, i8* %AL.i1584, align 1
  store i8 0, i8* %40, align 1
  %1054 = zext i8 %1053 to i32
  %1055 = tail call i32 @llvm.ctpop.i32(i32 %1054)
  %1056 = trunc i32 %1055 to i8
  %1057 = xor i8 %1056, 1
  store i8 %1057, i8* %47, align 1
  %1058 = xor i8 %1053, 1
  store i8 %1058, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %1059 = zext i8 %1053 to i64
  store i64 %1059, i64* %R8.i1930, align 8
  %1060 = add i64 %1045, -776
  %1061 = add i64 %1044, 50
  store i64 %1061, i64* %3, align 8
  %1062 = inttoptr i64 %1060 to i32*
  %1063 = load i32, i32* %1062, align 4
  %1064 = zext i32 %1063 to i64
  store i64 %1064, i64* %870, align 8
  %1065 = add i64 %1045, -800
  %1066 = add i64 %1044, 57
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i64*
  store i64 %1052, i64* %1067, align 8
  %1068 = load i32, i32* %R9D.i1559, align 4
  %1069 = zext i32 %1068 to i64
  %1070 = load i64, i64* %3, align 8
  store i64 %1069, i64* %RDI.i1847.pre-phi, align 8
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -780
  %1073 = add i64 %1070, 10
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  %1075 = load i32, i32* %1074, align 4
  %1076 = zext i32 %1075 to i64
  store i64 %1076, i64* %872, align 8
  %1077 = add i64 %1071, -808
  %1078 = load i64, i64* %RSI.i1924, align 8
  %1079 = add i64 %1070, 17
  store i64 %1079, i64* %3, align 8
  %1080 = inttoptr i64 %1077 to i64*
  store i64 %1078, i64* %1080, align 8
  %1081 = load i32, i32* %R10D.i1557, align 4
  %1082 = zext i32 %1081 to i64
  %1083 = load i64, i64* %3, align 8
  store i64 %1082, i64* %RSI.i1924, align 8
  %1084 = load i64, i64* %RBP.i, align 8
  %1085 = add i64 %1084, -784
  %1086 = add i64 %1083, 10
  store i64 %1086, i64* %3, align 8
  %1087 = inttoptr i64 %1085 to i32*
  %1088 = load i32, i32* %1087, align 4
  %1089 = zext i32 %1088 to i64
  store i64 %1089, i64* %874, align 8
  %1090 = add i64 %1084, -816
  %1091 = load i64, i64* %RCX.i1908, align 8
  %1092 = add i64 %1083, 17
  store i64 %1092, i64* %3, align 8
  %1093 = inttoptr i64 %1090 to i64*
  store i64 %1091, i64* %1093, align 8
  %1094 = load i32, i32* %R11D.i1489, align 4
  %1095 = zext i32 %1094 to i64
  %1096 = load i64, i64* %3, align 8
  store i64 %1095, i64* %RCX.i1908, align 8
  %1097 = load i64, i64* %RBP.i, align 8
  %1098 = add i64 %1097, -788
  %1099 = add i64 %1096, 9
  store i64 %1099, i64* %3, align 8
  %1100 = inttoptr i64 %1098 to i32*
  %1101 = load i32, i32* %1100, align 4
  %1102 = zext i32 %1101 to i64
  store i64 %1102, i64* %RBX.i1936, align 8
  %1103 = add i64 %1097, -820
  %1104 = load i32, i32* %R8D.i1675, align 4
  %1105 = add i64 %1096, 16
  store i64 %1105, i64* %3, align 8
  %1106 = inttoptr i64 %1103 to i32*
  store i32 %1104, i32* %1106, align 4
  %1107 = load i32, i32* %EBX.i1474, align 4
  %1108 = zext i32 %1107 to i64
  %1109 = load i64, i64* %3, align 8
  store i64 %1108, i64* %R8.i1930, align 8
  %1110 = load i64, i64* %RBP.i, align 8
  %1111 = add i64 %1110, -772
  %1112 = add i64 %1109, 10
  store i64 %1112, i64* %3, align 8
  %1113 = inttoptr i64 %1111 to i32*
  %1114 = load i32, i32* %1113, align 4
  %1115 = zext i32 %1114 to i64
  store i64 %1115, i64* %870, align 8
  %1116 = add i64 %1110, -816
  %1117 = add i64 %1109, 17
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i64*
  %1119 = load i64, i64* %1118, align 8
  store i64 %1119, i64* %R14.i1942, align 8
  %1120 = load i64*, i64** %875, align 8
  %1121 = add i64 %1109, 21
  store i64 %1121, i64* %3, align 8
  store i64 %1119, i64* %1120, align 8
  %1122 = load i64, i64* %RBP.i, align 8
  %1123 = add i64 %1122, -808
  %1124 = load i64, i64* %3, align 8
  %1125 = add i64 %1124, 7
  store i64 %1125, i64* %3, align 8
  %1126 = inttoptr i64 %1123 to i64*
  %1127 = load i64, i64* %1126, align 8
  store i64 %1127, i64* %R15.i1785, align 8
  %1128 = load i64, i64* %6, align 8
  %1129 = add i64 %1128, 8
  %1130 = add i64 %1124, 12
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1129 to i64*
  store i64 %1127, i64* %1131, align 8
  %1132 = load i64, i64* %RBP.i, align 8
  %1133 = add i64 %1132, -800
  %1134 = load i64, i64* %3, align 8
  %1135 = add i64 %1134, 7
  store i64 %1135, i64* %3, align 8
  %1136 = inttoptr i64 %1133 to i64*
  %1137 = load i64, i64* %1136, align 8
  store i64 %1137, i64* %R12.i1938, align 8
  %1138 = load i64, i64* %6, align 8
  %1139 = add i64 %1138, 16
  %1140 = add i64 %1134, 12
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i64*
  store i64 %1137, i64* %1141, align 8
  %1142 = load i64, i64* %RBP.i, align 8
  %1143 = add i64 %1142, -820
  %1144 = load i64, i64* %3, align 8
  %1145 = add i64 %1144, 7
  store i64 %1145, i64* %3, align 8
  %1146 = inttoptr i64 %1143 to i32*
  %1147 = load i32, i32* %1146, align 4
  %1148 = zext i32 %1147 to i64
  store i64 %1148, i64* %R13.i1940, align 8
  %1149 = load i64, i64* %6, align 8
  %1150 = add i64 %1149, 24
  %1151 = add i64 %1144, 12
  store i64 %1151, i64* %3, align 8
  %1152 = inttoptr i64 %1150 to i32*
  store i32 %1147, i32* %1152, align 4
  %1153 = load i64, i64* %3, align 8
  %1154 = add i64 %1153, -350768
  %1155 = add i64 %1153, 5
  %1156 = load i64, i64* %6, align 8
  %1157 = add i64 %1156, -8
  %1158 = inttoptr i64 %1157 to i64*
  store i64 %1155, i64* %1158, align 8
  store i64 %1157, i64* %6, align 8
  store i64 %1154, i64* %3, align 8
  %call2_464820 = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %1154, %struct.Memory* %call2_4646e9)
  %1159 = load i32, i32* %EAX.i1884, align 4
  %1160 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1161 = and i32 %1159, 255
  %1162 = tail call i32 @llvm.ctpop.i32(i32 %1161)
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  store i8 %1165, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1166 = icmp eq i32 %1159, 0
  %1167 = zext i1 %1166 to i8
  store i8 %1167, i8* %55, align 1
  %1168 = lshr i32 %1159, 31
  %1169 = trunc i32 %1168 to i8
  store i8 %1169, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v256 = select i1 %1166, i64 279, i64 9
  %1170 = add i64 %1160, %.v256
  store i64 %1170, i64* %3, align 8
  br i1 %1166, label %block_.L_46493c, label %block_46482e

block_46482e:                                     ; preds = %block_.L_46477c
  %1171 = load i64, i64* %RBP.i, align 8
  %1172 = add i64 %1171, -584
  %1173 = add i64 %1170, 7
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i32*
  %1175 = load i32, i32* %1174, align 4
  %1176 = icmp eq i32 %1175, 0
  %.v257 = select i1 %1176, i64 13, i64 208
  %1177 = add i64 %1170, %.v257
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RSI.i1924, align 8
  %1178 = add i64 %1171, -48
  %1179 = add i64 %1177, 7
  store i64 %1179, i64* %3, align 8
  %1180 = inttoptr i64 %1178 to i32*
  %1181 = load i32, i32* %1180, align 4
  %1182 = zext i32 %1181 to i64
  store i64 %1182, i64* %RDI.i1847.pre-phi, align 8
  %1183 = add i64 %1171, -576
  %1184 = add i64 %1177, 13
  store i64 %1184, i64* %3, align 8
  %1185 = inttoptr i64 %1183 to i32*
  %1186 = load i32, i32* %1185, align 4
  %1187 = zext i32 %1186 to i64
  store i64 %1187, i64* %RDX.i1822.pre-phi, align 8
  %1188 = add i64 %1171, -580
  %1189 = add i64 %1177, 19
  store i64 %1189, i64* %3, align 8
  %1190 = inttoptr i64 %1188 to i32*
  %1191 = load i32, i32* %1190, align 4
  %1192 = zext i32 %1191 to i64
  store i64 %1192, i64* %RCX.i1908, align 8
  br i1 %1176, label %block_46483b, label %block_.L_4648fe

block_46483b:                                     ; preds = %block_46482e
  %1193 = add i64 %1177, -27483
  %1194 = add i64 %1177, 24
  %1195 = load i64, i64* %6, align 8
  %1196 = add i64 %1195, -8
  %1197 = inttoptr i64 %1196 to i64*
  store i64 %1194, i64* %1197, align 8
  store i64 %1196, i64* %6, align 8
  store i64 %1193, i64* %3, align 8
  %call2_46484e = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %1193, %struct.Memory* %call2_4646e9)
  %1198 = load i64, i64* %RBP.i, align 8
  %1199 = add i64 %1198, -588
  %1200 = load i32, i32* %EAX.i1884, align 4
  %1201 = load i64, i64* %3, align 8
  %1202 = add i64 %1201, 6
  store i64 %1202, i64* %3, align 8
  %1203 = inttoptr i64 %1199 to i32*
  store i32 %1200, i32* %1203, align 4
  %1204 = load i64, i64* %3, align 8
  %1205 = add i64 %1204, -355065
  %1206 = add i64 %1204, 5
  %1207 = load i64, i64* %6, align 8
  %1208 = add i64 %1207, -8
  %1209 = inttoptr i64 %1208 to i64*
  store i64 %1206, i64* %1209, align 8
  store i64 %1208, i64* %6, align 8
  store i64 %1205, i64* %3, align 8
  %call2_464859 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1205, %struct.Memory* %call2_4646e9)
  %1210 = load i64, i64* %RBP.i, align 8
  %1211 = add i64 %1210, -588
  %1212 = load i64, i64* %3, align 8
  %1213 = add i64 %1212, 7
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1211 to i32*
  %1215 = load i32, i32* %1214, align 4
  store i8 0, i8* %40, align 1
  %1216 = and i32 %1215, 255
  %1217 = tail call i32 @llvm.ctpop.i32(i32 %1216)
  %1218 = trunc i32 %1217 to i8
  %1219 = and i8 %1218, 1
  %1220 = xor i8 %1219, 1
  store i8 %1220, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1221 = icmp eq i32 %1215, 0
  %1222 = zext i1 %1221 to i8
  store i8 %1222, i8* %55, align 1
  %1223 = lshr i32 %1215, 31
  %1224 = trunc i32 %1223 to i8
  store i8 %1224, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v259 = select i1 %1221, i64 13, i64 96
  %1225 = add i64 %1212, %.v259
  store i64 %1225, i64* %3, align 8
  br i1 %1221, label %block_46486b, label %block_.L_4648be

block_46486b:                                     ; preds = %block_46483b
  %1226 = add i64 %1210, -56
  %1227 = add i64 %1225, 5
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i64*
  %1229 = load i64, i64* %1228, align 8
  store i8 0, i8* %40, align 1
  %1230 = trunc i64 %1229 to i32
  %1231 = and i32 %1230, 255
  %1232 = tail call i32 @llvm.ctpop.i32(i32 %1231)
  %1233 = trunc i32 %1232 to i8
  %1234 = and i8 %1233, 1
  %1235 = xor i8 %1234, 1
  store i8 %1235, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1236 = icmp eq i64 %1229, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %55, align 1
  %1238 = lshr i64 %1229, 63
  %1239 = trunc i64 %1238 to i8
  store i8 %1239, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v261 = select i1 %1236, i64 20, i64 11
  %1240 = add i64 %1225, %.v261
  store i64 %1240, i64* %3, align 8
  br i1 %1236, label %block_.L_46487f, label %block_464876

block_464876:                                     ; preds = %block_46486b
  %1241 = add i64 %1210, -76
  %1242 = add i64 %1240, 3
  store i64 %1242, i64* %3, align 8
  %1243 = inttoptr i64 %1241 to i32*
  %1244 = load i32, i32* %1243, align 4
  %1245 = zext i32 %1244 to i64
  store i64 %1245, i64* %RAX.i1932, align 8
  %1246 = add i64 %1240, 7
  store i64 %1246, i64* %3, align 8
  %1247 = load i64, i64* %1228, align 8
  store i64 %1247, i64* %RCX.i1908, align 8
  %1248 = add i64 %1240, 9
  store i64 %1248, i64* %3, align 8
  %1249 = inttoptr i64 %1247 to i32*
  store i32 %1244, i32* %1249, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_46487f

block_.L_46487f:                                  ; preds = %block_464876, %block_46486b
  %1250 = phi i64 [ %.pre181, %block_464876 ], [ %1240, %block_46486b ]
  %1251 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %1252 = trunc i64 %1251 to i32
  %1253 = and i32 %1252, 255
  %1254 = tail call i32 @llvm.ctpop.i32(i32 %1253)
  %1255 = trunc i32 %1254 to i8
  %1256 = and i8 %1255, 1
  %1257 = xor i8 %1256, 1
  store i8 %1257, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1258 = icmp eq i64 %1251, 0
  %1259 = zext i1 %1258 to i8
  store i8 %1259, i8* %55, align 1
  %1260 = lshr i64 %1251, 63
  %1261 = trunc i64 %1260 to i8
  store i8 %1261, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v262 = select i1 %1258, i64 51, i64 15
  %1262 = add i64 %1250, %.v262
  store i64 %1262, i64* %3, align 8
  br i1 %1258, label %block_.L_4648b2, label %block_46488e

block_46488e:                                     ; preds = %block_.L_46487f
  store i64 5, i64* %RCX.i1908, align 8
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8.i1930, align 8
  %1263 = load i64, i64* %RBP.i, align 8
  %1264 = add i64 %1263, -568
  %1265 = add i64 %1262, 22
  store i64 %1265, i64* %3, align 8
  %1266 = inttoptr i64 %1264 to i64*
  %1267 = load i64, i64* %1266, align 8
  store i64 %1267, i64* %RDI.i1847.pre-phi, align 8
  %1268 = add i64 %1263, -572
  %1269 = add i64 %1262, 28
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  %1271 = load i32, i32* %1270, align 4
  %1272 = zext i32 %1271 to i64
  store i64 %1272, i64* %RSI.i1924, align 8
  %1273 = add i64 %1263, -76
  %1274 = add i64 %1262, 31
  store i64 %1274, i64* %3, align 8
  %1275 = inttoptr i64 %1273 to i32*
  %1276 = load i32, i32* %1275, align 4
  %1277 = zext i32 %1276 to i64
  store i64 %1277, i64* %RDX.i1822.pre-phi, align 8
  %1278 = add i64 %1262, -313550
  %1279 = add i64 %1262, 36
  %1280 = load i64, i64* %6, align 8
  %1281 = add i64 %1280, -8
  %1282 = inttoptr i64 %1281 to i64*
  store i64 %1279, i64* %1282, align 8
  store i64 %1281, i64* %6, align 8
  store i64 %1278, i64* %3, align 8
  %call2_4648ad = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %1278, %struct.Memory* %call2_4646e9)
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_4648b2

block_.L_4648b2:                                  ; preds = %block_46488e, %block_.L_46487f
  %1283 = phi i64 [ %1262, %block_.L_46487f ], [ %.pre182, %block_46488e ]
  %MEMORY.11 = phi %struct.Memory* [ %call2_4646e9, %block_.L_46487f ], [ %call2_4648ad, %block_46488e ]
  %1284 = load i64, i64* %RBP.i, align 8
  %1285 = add i64 %1284, -44
  %1286 = add i64 %1283, 7
  store i64 %1286, i64* %3, align 8
  %1287 = inttoptr i64 %1285 to i32*
  store i32 5, i32* %1287, align 4
  %1288 = load i64, i64* %3, align 8
  %1289 = add i64 %1288, 3197
  store i64 %1289, i64* %3, align 8
  br label %block_.L_465536

block_.L_4648be:                                  ; preds = %block_46483b
  store i64 5, i64* %RAX.i1932, align 8
  %1290 = add i64 %1225, 11
  store i64 %1290, i64* %3, align 8
  %1291 = load i32, i32* %1214, align 4
  %1292 = sub i32 5, %1291
  %1293 = zext i32 %1292 to i64
  store i64 %1293, i64* %RAX.i1932, align 8
  %1294 = icmp ugt i32 %1291, 5
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %40, align 1
  %1296 = and i32 %1292, 255
  %1297 = tail call i32 @llvm.ctpop.i32(i32 %1296)
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  %1300 = xor i8 %1299, 1
  store i8 %1300, i8* %47, align 1
  %1301 = xor i32 %1292, %1291
  %1302 = lshr i32 %1301, 4
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  store i8 %1304, i8* %52, align 1
  %1305 = icmp eq i32 %1292, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %55, align 1
  %1307 = lshr i32 %1292, 31
  %1308 = trunc i32 %1307 to i8
  store i8 %1308, i8* %58, align 1
  %1309 = lshr i32 %1291, 31
  %1310 = add nuw nsw i32 %1307, %1309
  %1311 = icmp eq i32 %1310, 2
  %1312 = zext i1 %1311 to i8
  store i8 %1312, i8* %64, align 1
  %1313 = add i64 %1210, -548
  %1314 = add i64 %1225, 17
  store i64 %1314, i64* %3, align 8
  %1315 = inttoptr i64 %1313 to i32*
  %1316 = load i32, i32* %1315, align 4
  %1317 = sub i32 %1292, %1316
  %1318 = icmp ult i32 %1292, %1316
  %1319 = zext i1 %1318 to i8
  store i8 %1319, i8* %40, align 1
  %1320 = and i32 %1317, 255
  %1321 = tail call i32 @llvm.ctpop.i32(i32 %1320)
  %1322 = trunc i32 %1321 to i8
  %1323 = and i8 %1322, 1
  %1324 = xor i8 %1323, 1
  store i8 %1324, i8* %47, align 1
  %1325 = xor i32 %1316, %1292
  %1326 = xor i32 %1325, %1317
  %1327 = lshr i32 %1326, 4
  %1328 = trunc i32 %1327 to i8
  %1329 = and i8 %1328, 1
  store i8 %1329, i8* %52, align 1
  %1330 = icmp eq i32 %1317, 0
  %1331 = zext i1 %1330 to i8
  store i8 %1331, i8* %55, align 1
  %1332 = lshr i32 %1317, 31
  %1333 = trunc i32 %1332 to i8
  store i8 %1333, i8* %58, align 1
  %1334 = lshr i32 %1316, 31
  %1335 = xor i32 %1334, %1307
  %1336 = xor i32 %1332, %1307
  %1337 = add nuw nsw i32 %1336, %1335
  %1338 = icmp eq i32 %1337, 2
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %64, align 1
  %1340 = icmp ne i8 %1333, 0
  %1341 = xor i1 %1340, %1338
  %1342 = or i1 %1330, %1341
  %.v260 = select i1 %1342, i64 49, i64 23
  %1343 = add i64 %1225, %.v260
  store i64 %1343, i64* %3, align 8
  br i1 %1342, label %block_.L_4648ef, label %block_4648d5

block_4648d5:                                     ; preds = %block_.L_4648be
  store i64 5, i64* %RAX.i1932, align 8
  %1344 = add i64 %1210, -76
  %1345 = add i64 %1343, 8
  store i64 %1345, i64* %3, align 8
  %1346 = inttoptr i64 %1344 to i32*
  %1347 = load i32, i32* %1346, align 4
  %1348 = zext i32 %1347 to i64
  store i64 %1348, i64* %RCX.i1908, align 8
  %1349 = add i64 %1210, -544
  %1350 = add i64 %1343, 14
  store i64 %1350, i64* %3, align 8
  %1351 = inttoptr i64 %1349 to i32*
  store i32 %1347, i32* %1351, align 4
  %1352 = load i64, i64* %RAX.i1932, align 8
  %1353 = load i64, i64* %RBP.i, align 8
  %1354 = add i64 %1353, -588
  %1355 = load i64, i64* %3, align 8
  %1356 = add i64 %1355, 6
  store i64 %1356, i64* %3, align 8
  %1357 = trunc i64 %1352 to i32
  %1358 = inttoptr i64 %1354 to i32*
  %1359 = load i32, i32* %1358, align 4
  %1360 = sub i32 %1357, %1359
  %1361 = zext i32 %1360 to i64
  store i64 %1361, i64* %RAX.i1932, align 8
  %1362 = icmp ult i32 %1357, %1359
  %1363 = zext i1 %1362 to i8
  store i8 %1363, i8* %40, align 1
  %1364 = and i32 %1360, 255
  %1365 = tail call i32 @llvm.ctpop.i32(i32 %1364)
  %1366 = trunc i32 %1365 to i8
  %1367 = and i8 %1366, 1
  %1368 = xor i8 %1367, 1
  store i8 %1368, i8* %47, align 1
  %1369 = xor i32 %1359, %1357
  %1370 = xor i32 %1369, %1360
  %1371 = lshr i32 %1370, 4
  %1372 = trunc i32 %1371 to i8
  %1373 = and i8 %1372, 1
  store i8 %1373, i8* %52, align 1
  %1374 = icmp eq i32 %1360, 0
  %1375 = zext i1 %1374 to i8
  store i8 %1375, i8* %55, align 1
  %1376 = lshr i32 %1360, 31
  %1377 = trunc i32 %1376 to i8
  store i8 %1377, i8* %58, align 1
  %1378 = lshr i32 %1357, 31
  %1379 = lshr i32 %1359, 31
  %1380 = xor i32 %1379, %1378
  %1381 = xor i32 %1376, %1378
  %1382 = add nuw nsw i32 %1381, %1380
  %1383 = icmp eq i32 %1382, 2
  %1384 = zext i1 %1383 to i8
  store i8 %1384, i8* %64, align 1
  %1385 = add i64 %1353, -548
  %1386 = add i64 %1355, 12
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  store i32 %1360, i32* %1387, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_4648ef

block_.L_4648ef:                                  ; preds = %block_4648d5, %block_.L_4648be
  %1388 = phi i64 [ %.pre184, %block_4648d5 ], [ %1343, %block_.L_4648be ]
  %1389 = add i64 %1388, 72
  store i64 %1389, i64* %3, align 8
  br label %block_.L_464937

block_.L_4648fe:                                  ; preds = %block_46482e
  %1390 = add i64 %1177, -27678
  %1391 = add i64 %1177, 24
  %1392 = load i64, i64* %6, align 8
  %1393 = add i64 %1392, -8
  %1394 = inttoptr i64 %1393 to i64*
  store i64 %1391, i64* %1394, align 8
  store i64 %1393, i64* %6, align 8
  store i64 %1390, i64* %3, align 8
  %call2_464911 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %1390, %struct.Memory* %call2_4646e9)
  %1395 = load i32, i32* %EAX.i1884, align 4
  %1396 = load i64, i64* %3, align 8
  %1397 = add i32 %1395, -5
  %1398 = icmp ult i32 %1395, 5
  %1399 = zext i1 %1398 to i8
  store i8 %1399, i8* %40, align 1
  %1400 = and i32 %1397, 255
  %1401 = tail call i32 @llvm.ctpop.i32(i32 %1400)
  %1402 = trunc i32 %1401 to i8
  %1403 = and i8 %1402, 1
  %1404 = xor i8 %1403, 1
  store i8 %1404, i8* %47, align 1
  %1405 = xor i32 %1397, %1395
  %1406 = lshr i32 %1405, 4
  %1407 = trunc i32 %1406 to i8
  %1408 = and i8 %1407, 1
  store i8 %1408, i8* %52, align 1
  %1409 = icmp eq i32 %1397, 0
  %1410 = zext i1 %1409 to i8
  store i8 %1410, i8* %55, align 1
  %1411 = lshr i32 %1397, 31
  %1412 = trunc i32 %1411 to i8
  store i8 %1412, i8* %58, align 1
  %1413 = lshr i32 %1395, 31
  %1414 = xor i32 %1411, %1413
  %1415 = add nuw nsw i32 %1414, %1413
  %1416 = icmp eq i32 %1415, 2
  %1417 = zext i1 %1416 to i8
  store i8 %1417, i8* %64, align 1
  %.v258 = select i1 %1409, i64 28, i64 9
  %1418 = add i64 %1396, %.v258
  store i64 %1418, i64* %3, align 8
  br i1 %1409, label %block_.L_464932, label %block_46491f

block_46491f:                                     ; preds = %block_.L_4648fe
  %1419 = load i64, i64* %RBP.i, align 8
  %1420 = add i64 %1419, -76
  %1421 = add i64 %1418, 3
  store i64 %1421, i64* %3, align 8
  %1422 = inttoptr i64 %1420 to i32*
  %1423 = load i32, i32* %1422, align 4
  %1424 = zext i32 %1423 to i64
  store i64 %1424, i64* %RAX.i1932, align 8
  %1425 = add i64 %1419, -544
  %1426 = add i64 %1418, 9
  store i64 %1426, i64* %3, align 8
  %1427 = inttoptr i64 %1425 to i32*
  store i32 %1423, i32* %1427, align 4
  %1428 = load i64, i64* %RBP.i, align 8
  %1429 = add i64 %1428, -548
  %1430 = load i64, i64* %3, align 8
  %1431 = add i64 %1430, 10
  store i64 %1431, i64* %3, align 8
  %1432 = inttoptr i64 %1429 to i32*
  store i32 1, i32* %1432, align 4
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_464932

block_.L_464932:                                  ; preds = %block_46491f, %block_.L_4648fe
  %1433 = phi i64 [ %.pre185, %block_46491f ], [ %1418, %block_.L_4648fe ]
  %1434 = add i64 %1433, -355282
  %1435 = add i64 %1433, 5
  %1436 = load i64, i64* %6, align 8
  %1437 = add i64 %1436, -8
  %1438 = inttoptr i64 %1437 to i64*
  store i64 %1435, i64* %1438, align 8
  store i64 %1437, i64* %6, align 8
  store i64 %1434, i64* %3, align 8
  %call2_464932 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %1434, %struct.Memory* %call2_4646e9)
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_464937

block_.L_464937:                                  ; preds = %block_.L_464932, %block_.L_4648ef
  %1439 = phi i64 [ %.pre186, %block_.L_464932 ], [ %1389, %block_.L_4648ef ]
  %1440 = add i64 %1439, 5
  store i64 %1440, i64* %3, align 8
  br label %block_.L_46493c

block_.L_46493c:                                  ; preds = %block_.L_464937, %block_.L_46477c
  %1441 = phi i64 [ %1440, %block_.L_464937 ], [ %1170, %block_.L_46477c ]
  %1442 = load i64, i64* %RBP.i, align 8
  %1443 = add i64 %1442, -552
  %1444 = add i64 %1441, 11
  store i64 %1444, i64* %3, align 8
  %1445 = inttoptr i64 %1443 to i32*
  %1446 = load i32, i32* %1445, align 4
  %1447 = add i32 %1446, 1
  %1448 = zext i32 %1447 to i64
  store i64 %1448, i64* %RAX.i1932, align 8
  %1449 = icmp eq i32 %1446, -1
  %1450 = icmp eq i32 %1447, 0
  %1451 = or i1 %1449, %1450
  %1452 = zext i1 %1451 to i8
  store i8 %1452, i8* %40, align 1
  %1453 = and i32 %1447, 255
  %1454 = tail call i32 @llvm.ctpop.i32(i32 %1453)
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = xor i8 %1456, 1
  store i8 %1457, i8* %47, align 1
  %1458 = xor i32 %1447, %1446
  %1459 = lshr i32 %1458, 4
  %1460 = trunc i32 %1459 to i8
  %1461 = and i8 %1460, 1
  store i8 %1461, i8* %52, align 1
  %1462 = zext i1 %1450 to i8
  store i8 %1462, i8* %55, align 1
  %1463 = lshr i32 %1447, 31
  %1464 = trunc i32 %1463 to i8
  store i8 %1464, i8* %58, align 1
  %1465 = lshr i32 %1446, 31
  %1466 = xor i32 %1463, %1465
  %1467 = add nuw nsw i32 %1466, %1463
  %1468 = icmp eq i32 %1467, 2
  %1469 = zext i1 %1468 to i8
  store i8 %1469, i8* %64, align 1
  %1470 = add i64 %1441, 20
  store i64 %1470, i64* %3, align 8
  store i32 %1447, i32* %1445, align 4
  %1471 = load i64, i64* %3, align 8
  %1472 = add i64 %1471, -600
  store i64 %1472, i64* %3, align 8
  br label %block_.L_4646f8

block_.L_464955:                                  ; preds = %block_.L_4646f8
  %1473 = add i64 %913, 6
  store i64 %1473, i64* %3, align 8
  %1474 = load i32, i32* %885, align 4
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RAX.i1932, align 8
  %1476 = add i64 %877, -540
  %1477 = add i64 %913, 12
  store i64 %1477, i64* %3, align 8
  %1478 = inttoptr i64 %1476 to i32*
  store i32 %1474, i32* %1478, align 4
  %1479 = load i64, i64* %RBP.i, align 8
  %1480 = add i64 %1479, -552
  %1481 = load i64, i64* %3, align 8
  %1482 = add i64 %1481, 10
  store i64 %1482, i64* %3, align 8
  %1483 = inttoptr i64 %1480 to i32*
  store i32 0, i32* %1483, align 4
  %.pre137 = load i64, i64* %3, align 8
  br label %block_.L_46496b

block_.L_46496b:                                  ; preds = %block_.L_464c36, %block_.L_464955
  %1484 = phi i64 [ %.pre137, %block_.L_464955 ], [ %2441, %block_.L_464c36 ]
  %MEMORY.16 = phi %struct.Memory* [ %call2_4646e9, %block_.L_464955 ], [ %call2_464b02, %block_.L_464c36 ]
  %1485 = load i64, i64* %RBP.i, align 8
  %1486 = add i64 %1485, -552
  %1487 = add i64 %1484, 6
  store i64 %1487, i64* %3, align 8
  %1488 = inttoptr i64 %1486 to i32*
  %1489 = load i32, i32* %1488, align 4
  %1490 = zext i32 %1489 to i64
  store i64 %1490, i64* %RAX.i1932, align 8
  %1491 = add i64 %1485, -80
  %1492 = add i64 %1484, 9
  store i64 %1492, i64* %3, align 8
  %1493 = inttoptr i64 %1491 to i32*
  %1494 = load i32, i32* %1493, align 4
  %1495 = sub i32 %1489, %1494
  %1496 = icmp ult i32 %1489, %1494
  %1497 = zext i1 %1496 to i8
  store i8 %1497, i8* %40, align 1
  %1498 = and i32 %1495, 255
  %1499 = tail call i32 @llvm.ctpop.i32(i32 %1498)
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = xor i8 %1501, 1
  store i8 %1502, i8* %47, align 1
  %1503 = xor i32 %1494, %1489
  %1504 = xor i32 %1503, %1495
  %1505 = lshr i32 %1504, 4
  %1506 = trunc i32 %1505 to i8
  %1507 = and i8 %1506, 1
  store i8 %1507, i8* %52, align 1
  %1508 = icmp eq i32 %1495, 0
  %1509 = zext i1 %1508 to i8
  store i8 %1509, i8* %55, align 1
  %1510 = lshr i32 %1495, 31
  %1511 = trunc i32 %1510 to i8
  store i8 %1511, i8* %58, align 1
  %1512 = lshr i32 %1489, 31
  %1513 = lshr i32 %1494, 31
  %1514 = xor i32 %1513, %1512
  %1515 = xor i32 %1510, %1512
  %1516 = add nuw nsw i32 %1515, %1514
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  store i8 %1518, i8* %64, align 1
  %1519 = icmp ne i8 %1511, 0
  %1520 = xor i1 %1519, %1517
  %.v210 = select i1 %1520, i64 15, i64 740
  %1521 = add i64 %1484, %.v210
  store i64 %1521, i64* %3, align 8
  br i1 %1520, label %block_46497a, label %block_.L_464c4f

block_46497a:                                     ; preds = %block_.L_46496b
  %1522 = add i64 %1521, 7
  store i64 %1522, i64* %3, align 8
  %1523 = load i32, i32* %1488, align 4
  %1524 = sext i32 %1523 to i64
  store i64 %1524, i64* %RAX.i1932, align 8
  %1525 = shl nsw i64 %1524, 2
  %1526 = add i64 %1485, -88
  %1527 = add i64 %1526, %1525
  %1528 = add i64 %1521, 11
  store i64 %1528, i64* %3, align 8
  %1529 = inttoptr i64 %1527 to i32*
  %1530 = load i32, i32* %1529, align 4
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RDI.i1847.pre-phi, align 8
  %1532 = add i64 %1485, -72
  %1533 = add i64 %1521, 14
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i32*
  %1535 = load i32, i32* %1534, align 4
  %1536 = zext i32 %1535 to i64
  store i64 %1536, i64* %RSI.i1924, align 8
  %1537 = add i64 %1521, -329434
  %1538 = add i64 %1521, 19
  %1539 = load i64, i64* %6, align 8
  %1540 = add i64 %1539, -8
  %1541 = inttoptr i64 %1540 to i64*
  store i64 %1538, i64* %1541, align 8
  store i64 %1540, i64* %6, align 8
  store i64 %1537, i64* %3, align 8
  %call2_464988 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %1537, %struct.Memory* %MEMORY.16)
  %1542 = load i32, i32* %EAX.i1884, align 4
  %1543 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1544 = and i32 %1542, 255
  %1545 = tail call i32 @llvm.ctpop.i32(i32 %1544)
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  %1548 = xor i8 %1547, 1
  store i8 %1548, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1549 = icmp eq i32 %1542, 0
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %55, align 1
  %1551 = lshr i32 %1542, 31
  %1552 = trunc i32 %1551 to i8
  store i8 %1552, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v245 = select i1 %1549, i64 350, i64 9
  %1553 = add i64 %1543, %.v245
  store i64 %1553, i64* %3, align 8
  br i1 %1549, label %block_46497a.block_.L_464aeb_crit_edge, label %block_464996

block_46497a.block_.L_464aeb_crit_edge:           ; preds = %block_46497a
  %.pre175 = load i64, i64* %RBP.i, align 8
  br label %block_.L_464aeb

block_464996:                                     ; preds = %block_46497a
  store i64 6, i64* %RDX.i1822.pre-phi, align 8
  %1554 = load i64, i64* %RBP.i, align 8
  %1555 = add i64 %1554, -128
  store i64 %1555, i64* %RCX.i1908, align 8
  %1556 = add i64 %1554, -552
  %1557 = add i64 %1553, 16
  store i64 %1557, i64* %3, align 8
  %1558 = inttoptr i64 %1556 to i32*
  %1559 = load i32, i32* %1558, align 4
  %1560 = sext i32 %1559 to i64
  store i64 %1560, i64* %RAX.i1932, align 8
  %1561 = shl nsw i64 %1560, 2
  %1562 = add i64 %1554, -88
  %1563 = add i64 %1562, %1561
  %1564 = add i64 %1553, 20
  store i64 %1564, i64* %3, align 8
  %1565 = inttoptr i64 %1563 to i32*
  %1566 = load i32, i32* %1565, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RDI.i1847.pre-phi, align 8
  %1568 = add i64 %1554, -68
  %1569 = add i64 %1553, 23
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RSI.i1924, align 8
  %1573 = add i64 %1553, -340966
  %1574 = add i64 %1553, 28
  %1575 = load i64, i64* %6, align 8
  %1576 = add i64 %1575, -8
  %1577 = inttoptr i64 %1576 to i64*
  store i64 %1574, i64* %1577, align 8
  store i64 %1576, i64* %6, align 8
  store i64 %1573, i64* %3, align 8
  %call2_4649ad = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %1573, %struct.Memory* %MEMORY.16)
  %1578 = load i64, i64* %RBP.i, align 8
  %1579 = add i64 %1578, -92
  %1580 = load i32, i32* %EAX.i1884, align 4
  %1581 = load i64, i64* %3, align 8
  %1582 = add i64 %1581, 3
  store i64 %1582, i64* %3, align 8
  %1583 = inttoptr i64 %1579 to i32*
  store i32 %1580, i32* %1583, align 4
  %1584 = load i64, i64* %RBP.i, align 8
  %1585 = add i64 %1584, -556
  %1586 = load i64, i64* %3, align 8
  %1587 = add i64 %1586, 10
  store i64 %1587, i64* %3, align 8
  %1588 = inttoptr i64 %1585 to i32*
  store i32 0, i32* %1588, align 4
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_4649bf

block_.L_4649bf:                                  ; preds = %block_.L_464acd, %block_464996
  %1589 = phi i64 [ %.pre171, %block_464996 ], [ %1980, %block_.L_464acd ]
  %1590 = load i64, i64* %RBP.i, align 8
  %1591 = add i64 %1590, -556
  %1592 = add i64 %1589, 6
  store i64 %1592, i64* %3, align 8
  %1593 = inttoptr i64 %1591 to i32*
  %1594 = load i32, i32* %1593, align 4
  %1595 = zext i32 %1594 to i64
  store i64 %1595, i64* %RAX.i1932, align 8
  %1596 = add i64 %1590, -92
  %1597 = add i64 %1589, 9
  store i64 %1597, i64* %3, align 8
  %1598 = inttoptr i64 %1596 to i32*
  %1599 = load i32, i32* %1598, align 4
  %1600 = sub i32 %1594, %1599
  %1601 = icmp ult i32 %1594, %1599
  %1602 = zext i1 %1601 to i8
  store i8 %1602, i8* %40, align 1
  %1603 = and i32 %1600, 255
  %1604 = tail call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  store i8 %1607, i8* %47, align 1
  %1608 = xor i32 %1599, %1594
  %1609 = xor i32 %1608, %1600
  %1610 = lshr i32 %1609, 4
  %1611 = trunc i32 %1610 to i8
  %1612 = and i8 %1611, 1
  store i8 %1612, i8* %52, align 1
  %1613 = icmp eq i32 %1600, 0
  %1614 = zext i1 %1613 to i8
  store i8 %1614, i8* %55, align 1
  %1615 = lshr i32 %1600, 31
  %1616 = trunc i32 %1615 to i8
  store i8 %1616, i8* %58, align 1
  %1617 = lshr i32 %1594, 31
  %1618 = lshr i32 %1599, 31
  %1619 = xor i32 %1618, %1617
  %1620 = xor i32 %1615, %1617
  %1621 = add nuw nsw i32 %1620, %1619
  %1622 = icmp eq i32 %1621, 2
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %64, align 1
  %1624 = icmp ne i8 %1616, 0
  %1625 = xor i1 %1624, %1622
  %.v246 = select i1 %1625, i64 15, i64 295
  %1626 = add i64 %1589, %.v246
  store i64 %1626, i64* %3, align 8
  br i1 %1625, label %block_4649ce, label %block_.L_464ae6

block_4649ce:                                     ; preds = %block_.L_4649bf
  %1627 = add i64 %1626, 7
  store i64 %1627, i64* %3, align 8
  %1628 = load i32, i32* %1593, align 4
  %1629 = sext i32 %1628 to i64
  store i64 %1629, i64* %RAX.i1932, align 8
  %1630 = shl nsw i64 %1629, 2
  %1631 = add i64 %1590, -128
  %1632 = add i64 %1631, %1630
  %1633 = add i64 %1626, 11
  store i64 %1633, i64* %3, align 8
  %1634 = inttoptr i64 %1632 to i32*
  %1635 = load i32, i32* %1634, align 4
  %1636 = zext i32 %1635 to i64
  store i64 %1636, i64* %RCX.i1908, align 8
  %1637 = add i64 %1590, -76
  %1638 = add i64 %1626, 14
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  store i32 %1635, i32* %1639, align 4
  %1640 = load i64, i64* %RBP.i, align 8
  %1641 = add i64 %1640, -76
  %1642 = load i64, i64* %3, align 8
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %3, align 8
  %1644 = inttoptr i64 %1641 to i32*
  %1645 = load i32, i32* %1644, align 4
  %1646 = zext i32 %1645 to i64
  store i64 %1646, i64* %RDI.i1847.pre-phi, align 8
  %1647 = add i64 %1640, -68
  %1648 = add i64 %1642, 6
  store i64 %1648, i64* %3, align 8
  %1649 = inttoptr i64 %1647 to i32*
  %1650 = load i32, i32* %1649, align 4
  %1651 = zext i32 %1650 to i64
  store i64 %1651, i64* %RSI.i1924, align 8
  %1652 = add i64 %1642, -329532
  %1653 = add i64 %1642, 11
  %1654 = load i64, i64* %6, align 8
  %1655 = add i64 %1654, -8
  %1656 = inttoptr i64 %1655 to i64*
  store i64 %1653, i64* %1656, align 8
  store i64 %1655, i64* %6, align 8
  store i64 %1652, i64* %3, align 8
  %call2_4649e2 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %1652, %struct.Memory* %MEMORY.16)
  %1657 = load i32, i32* %EAX.i1884, align 4
  %1658 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1659 = and i32 %1657, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1664 = icmp eq i32 %1657, 0
  %1665 = zext i1 %1664 to i8
  store i8 %1665, i8* %55, align 1
  %1666 = lshr i32 %1657, 31
  %1667 = trunc i32 %1666 to i8
  store i8 %1667, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v252 = select i1 %1664, i64 29, i64 9
  %1668 = add i64 %1658, %.v252
  store i64 %1668, i64* %3, align 8
  br i1 %1664, label %block_.L_464a04, label %block_4649f0

block_4649f0:                                     ; preds = %block_4649ce
  %1669 = load i64, i64* %RBP.i, align 8
  %1670 = add i64 %1669, -76
  %1671 = add i64 %1668, 3
  store i64 %1671, i64* %3, align 8
  %1672 = inttoptr i64 %1670 to i32*
  %1673 = load i32, i32* %1672, align 4
  %1674 = zext i32 %1673 to i64
  store i64 %1674, i64* %RDI.i1847.pre-phi, align 8
  %1675 = add i64 %1669, -68
  %1676 = add i64 %1668, 6
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1675 to i32*
  %1678 = load i32, i32* %1677, align 4
  %1679 = zext i32 %1678 to i64
  store i64 %1679, i64* %RSI.i1924, align 8
  %1680 = add i64 %1668, -325536
  %1681 = add i64 %1668, 11
  %1682 = load i64, i64* %6, align 8
  %1683 = add i64 %1682, -8
  %1684 = inttoptr i64 %1683 to i64*
  store i64 %1681, i64* %1684, align 8
  store i64 %1683, i64* %6, align 8
  store i64 %1680, i64* %3, align 8
  %call2_4649f6 = tail call %struct.Memory* @sub_415250.has_neighbor(%struct.State* nonnull %0, i64 %1680, %struct.Memory* %MEMORY.16)
  %1685 = load i32, i32* %EAX.i1884, align 4
  %1686 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1687 = and i32 %1685, 255
  %1688 = tail call i32 @llvm.ctpop.i32(i32 %1687)
  %1689 = trunc i32 %1688 to i8
  %1690 = and i8 %1689, 1
  %1691 = xor i8 %1690, 1
  store i8 %1691, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1692 = icmp eq i32 %1685, 0
  %1693 = zext i1 %1692 to i8
  store i8 %1693, i8* %55, align 1
  %1694 = lshr i32 %1685, 31
  %1695 = trunc i32 %1694 to i8
  store i8 %1695, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v253 = select i1 %1692, i64 210, i64 9
  %1696 = add i64 %1686, %.v253
  store i64 %1696, i64* %3, align 8
  br i1 %1692, label %block_.L_464acd, label %block_.L_464a04

block_.L_464a04:                                  ; preds = %block_4649f0, %block_4649ce
  %1697 = phi i64 [ %1696, %block_4649f0 ], [ %1668, %block_4649ce ]
  %1698 = load i64, i64* %RBP.i, align 8
  %1699 = add i64 %1698, -592
  %1700 = add i64 %1697, 15
  store i64 %1700, i64* %3, align 8
  %1701 = inttoptr i64 %1699 to i32*
  store i32 0, i32* %1701, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_464a13

block_.L_464a13:                                  ; preds = %block_.L_464a59, %block_.L_464a04
  %1702 = phi i64 [ %1828, %block_.L_464a59 ], [ %.pre172, %block_.L_464a04 ]
  %1703 = load i64, i64* %RBP.i, align 8
  %1704 = add i64 %1703, -592
  %1705 = add i64 %1702, 6
  store i64 %1705, i64* %3, align 8
  %1706 = inttoptr i64 %1704 to i32*
  %1707 = load i32, i32* %1706, align 4
  %1708 = zext i32 %1707 to i64
  store i64 %1708, i64* %RAX.i1932, align 8
  %1709 = add i64 %1703, -136
  %1710 = add i64 %1702, 12
  store i64 %1710, i64* %3, align 8
  %1711 = inttoptr i64 %1709 to i32*
  %1712 = load i32, i32* %1711, align 4
  %1713 = sub i32 %1707, %1712
  %1714 = icmp ult i32 %1707, %1712
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %40, align 1
  %1716 = and i32 %1713, 255
  %1717 = tail call i32 @llvm.ctpop.i32(i32 %1716)
  %1718 = trunc i32 %1717 to i8
  %1719 = and i8 %1718, 1
  %1720 = xor i8 %1719, 1
  store i8 %1720, i8* %47, align 1
  %1721 = xor i32 %1712, %1707
  %1722 = xor i32 %1721, %1713
  %1723 = lshr i32 %1722, 4
  %1724 = trunc i32 %1723 to i8
  %1725 = and i8 %1724, 1
  store i8 %1725, i8* %52, align 1
  %1726 = icmp eq i32 %1713, 0
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %55, align 1
  %1728 = lshr i32 %1713, 31
  %1729 = trunc i32 %1728 to i8
  store i8 %1729, i8* %58, align 1
  %1730 = lshr i32 %1707, 31
  %1731 = lshr i32 %1712, 31
  %1732 = xor i32 %1731, %1730
  %1733 = xor i32 %1728, %1730
  %1734 = add nuw nsw i32 %1733, %1732
  %1735 = icmp eq i32 %1734, 2
  %1736 = zext i1 %1735 to i8
  store i8 %1736, i8* %64, align 1
  %1737 = icmp ne i8 %1729, 0
  %1738 = xor i1 %1737, %1735
  %.v201 = select i1 %1738, i64 18, i64 95
  %1739 = add i64 %1702, %.v201
  store i64 %1739, i64* %3, align 8
  br i1 %1738, label %block_464a25, label %block_.L_464a72.loopexit

block_464a25:                                     ; preds = %block_.L_464a13
  %1740 = add i64 %1739, 7
  store i64 %1740, i64* %3, align 8
  %1741 = load i32, i32* %1706, align 4
  %1742 = sext i32 %1741 to i64
  store i64 %1742, i64* %RAX.i1932, align 8
  %1743 = shl nsw i64 %1742, 2
  %1744 = add i64 %1703, -536
  %1745 = add i64 %1744, %1743
  %1746 = add i64 %1739, 14
  store i64 %1746, i64* %3, align 8
  %1747 = inttoptr i64 %1745 to i32*
  %1748 = load i32, i32* %1747, align 4
  %1749 = zext i32 %1748 to i64
  store i64 %1749, i64* %RCX.i1908, align 8
  %1750 = add i64 %1703, -76
  %1751 = add i64 %1739, 17
  store i64 %1751, i64* %3, align 8
  %1752 = inttoptr i64 %1750 to i32*
  %1753 = load i32, i32* %1752, align 4
  %1754 = sub i32 %1748, %1753
  %1755 = icmp ult i32 %1748, %1753
  %1756 = zext i1 %1755 to i8
  store i8 %1756, i8* %40, align 1
  %1757 = and i32 %1754, 255
  %1758 = tail call i32 @llvm.ctpop.i32(i32 %1757)
  %1759 = trunc i32 %1758 to i8
  %1760 = and i8 %1759, 1
  %1761 = xor i8 %1760, 1
  store i8 %1761, i8* %47, align 1
  %1762 = xor i32 %1753, %1748
  %1763 = xor i32 %1762, %1754
  %1764 = lshr i32 %1763, 4
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  store i8 %1766, i8* %52, align 1
  %1767 = icmp eq i32 %1754, 0
  %1768 = zext i1 %1767 to i8
  store i8 %1768, i8* %55, align 1
  %1769 = lshr i32 %1754, 31
  %1770 = trunc i32 %1769 to i8
  store i8 %1770, i8* %58, align 1
  %1771 = lshr i32 %1748, 31
  %1772 = lshr i32 %1753, 31
  %1773 = xor i32 %1772, %1771
  %1774 = xor i32 %1769, %1771
  %1775 = add nuw nsw i32 %1774, %1773
  %1776 = icmp eq i32 %1775, 2
  %1777 = zext i1 %1776 to i8
  store i8 %1777, i8* %64, align 1
  %.v200 = select i1 %1767, i64 23, i64 52
  %1778 = add i64 %1739, %.v200
  store i64 %1778, i64* %3, align 8
  br i1 %1767, label %block_464a3c, label %block_.L_464a59

block_464a3c:                                     ; preds = %block_464a25
  %1779 = add i64 %1778, 7
  store i64 %1779, i64* %3, align 8
  %1780 = load i32, i32* %1706, align 4
  %1781 = sext i32 %1780 to i64
  store i64 %1781, i64* %RAX.i1932, align 8
  %1782 = shl nsw i64 %1781, 2
  %1783 = add i64 %1703, -336
  %1784 = add i64 %1783, %1782
  %1785 = add i64 %1778, 14
  store i64 %1785, i64* %3, align 8
  %1786 = inttoptr i64 %1784 to i32*
  %1787 = load i32, i32* %1786, align 4
  %1788 = zext i32 %1787 to i64
  store i64 %1788, i64* %RCX.i1908, align 8
  store i8 0, i8* %40, align 1
  %1789 = and i32 %1787, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %1794 = icmp eq i32 %1787, 0
  %1795 = zext i1 %1794 to i8
  store i8 %1795, i8* %55, align 1
  %1796 = lshr i32 %1787, 31
  %1797 = trunc i32 %1796 to i8
  store i8 %1797, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %1798 = add i64 %1778, 24
  store i64 %1798, i64* %3, align 8
  store i32 %1787, i32* %1786, align 4
  %1799 = load i64, i64* %3, align 8
  %1800 = add i64 %1799, 30
  store i64 %1800, i64* %3, align 8
  %.pre173 = load i64, i64* %RBP.i, align 8
  br label %block_.L_464a72

block_.L_464a59:                                  ; preds = %block_464a25
  %1801 = add i64 %1778, 11
  store i64 %1801, i64* %3, align 8
  %1802 = load i32, i32* %1706, align 4
  %1803 = add i32 %1802, 1
  %1804 = zext i32 %1803 to i64
  store i64 %1804, i64* %RAX.i1932, align 8
  %1805 = icmp eq i32 %1802, -1
  %1806 = icmp eq i32 %1803, 0
  %1807 = or i1 %1805, %1806
  %1808 = zext i1 %1807 to i8
  store i8 %1808, i8* %40, align 1
  %1809 = and i32 %1803, 255
  %1810 = tail call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  store i8 %1813, i8* %47, align 1
  %1814 = xor i32 %1803, %1802
  %1815 = lshr i32 %1814, 4
  %1816 = trunc i32 %1815 to i8
  %1817 = and i8 %1816, 1
  store i8 %1817, i8* %52, align 1
  %1818 = zext i1 %1806 to i8
  store i8 %1818, i8* %55, align 1
  %1819 = lshr i32 %1803, 31
  %1820 = trunc i32 %1819 to i8
  store i8 %1820, i8* %58, align 1
  %1821 = lshr i32 %1802, 31
  %1822 = xor i32 %1819, %1821
  %1823 = add nuw nsw i32 %1822, %1819
  %1824 = icmp eq i32 %1823, 2
  %1825 = zext i1 %1824 to i8
  store i8 %1825, i8* %64, align 1
  %1826 = add i64 %1778, 20
  store i64 %1826, i64* %3, align 8
  store i32 %1803, i32* %1706, align 4
  %1827 = load i64, i64* %3, align 8
  %1828 = add i64 %1827, -90
  store i64 %1828, i64* %3, align 8
  br label %block_.L_464a13

block_.L_464a72.loopexit:                         ; preds = %block_.L_464a13
  br label %block_.L_464a72

block_.L_464a72:                                  ; preds = %block_.L_464a72.loopexit, %block_464a3c
  %1829 = phi i64 [ %1800, %block_464a3c ], [ %1739, %block_.L_464a72.loopexit ]
  %1830 = phi i64 [ %.pre173, %block_464a3c ], [ %1703, %block_.L_464a72.loopexit ]
  %1831 = add i64 %1830, -592
  %1832 = add i64 %1829, 6
  store i64 %1832, i64* %3, align 8
  %1833 = inttoptr i64 %1831 to i32*
  %1834 = load i32, i32* %1833, align 4
  %1835 = zext i32 %1834 to i64
  store i64 %1835, i64* %RAX.i1932, align 8
  %1836 = add i64 %1830, -136
  %1837 = add i64 %1829, 12
  store i64 %1837, i64* %3, align 8
  %1838 = inttoptr i64 %1836 to i32*
  %1839 = load i32, i32* %1838, align 4
  %1840 = sub i32 %1834, %1839
  %1841 = icmp ult i32 %1834, %1839
  %1842 = zext i1 %1841 to i8
  store i8 %1842, i8* %40, align 1
  %1843 = and i32 %1840, 255
  %1844 = tail call i32 @llvm.ctpop.i32(i32 %1843)
  %1845 = trunc i32 %1844 to i8
  %1846 = and i8 %1845, 1
  %1847 = xor i8 %1846, 1
  store i8 %1847, i8* %47, align 1
  %1848 = xor i32 %1839, %1834
  %1849 = xor i32 %1848, %1840
  %1850 = lshr i32 %1849, 4
  %1851 = trunc i32 %1850 to i8
  %1852 = and i8 %1851, 1
  store i8 %1852, i8* %52, align 1
  %1853 = icmp eq i32 %1840, 0
  %1854 = zext i1 %1853 to i8
  store i8 %1854, i8* %55, align 1
  %1855 = lshr i32 %1840, 31
  %1856 = trunc i32 %1855 to i8
  store i8 %1856, i8* %58, align 1
  %1857 = lshr i32 %1834, 31
  %1858 = lshr i32 %1839, 31
  %1859 = xor i32 %1858, %1857
  %1860 = xor i32 %1855, %1857
  %1861 = add nuw nsw i32 %1860, %1859
  %1862 = icmp eq i32 %1861, 2
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %64, align 1
  %.v254 = select i1 %1853, i64 18, i64 81
  %1864 = add i64 %1829, %.v254
  store i64 %1864, i64* %3, align 8
  br i1 %1853, label %block_464a84, label %block_.L_464ac3

block_464a84:                                     ; preds = %block_.L_464a72
  %1865 = add i64 %1864, 7
  store i64 %1865, i64* %3, align 8
  %1866 = load i32, i32* %1838, align 4
  %1867 = add i32 %1866, -50
  %1868 = icmp ult i32 %1866, 50
  %1869 = zext i1 %1868 to i8
  store i8 %1869, i8* %40, align 1
  %1870 = and i32 %1867, 255
  %1871 = tail call i32 @llvm.ctpop.i32(i32 %1870)
  %1872 = trunc i32 %1871 to i8
  %1873 = and i8 %1872, 1
  %1874 = xor i8 %1873, 1
  store i8 %1874, i8* %47, align 1
  %1875 = xor i32 %1866, 16
  %1876 = xor i32 %1875, %1867
  %1877 = lshr i32 %1876, 4
  %1878 = trunc i32 %1877 to i8
  %1879 = and i8 %1878, 1
  store i8 %1879, i8* %52, align 1
  %1880 = icmp eq i32 %1867, 0
  %1881 = zext i1 %1880 to i8
  store i8 %1881, i8* %55, align 1
  %1882 = lshr i32 %1867, 31
  %1883 = trunc i32 %1882 to i8
  store i8 %1883, i8* %58, align 1
  %1884 = lshr i32 %1866, 31
  %1885 = xor i32 %1882, %1884
  %1886 = add nuw nsw i32 %1885, %1884
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %64, align 1
  %1889 = icmp ne i8 %1883, 0
  %1890 = xor i1 %1889, %1887
  %.v255 = select i1 %1890, i64 13, i64 63
  %1891 = add i64 %1864, %.v255
  store i64 %1891, i64* %3, align 8
  br i1 %1890, label %block_464a91, label %block_.L_464ac3

block_464a91:                                     ; preds = %block_464a84
  %1892 = add i64 %1830, -76
  %1893 = add i64 %1891, 3
  store i64 %1893, i64* %3, align 8
  %1894 = inttoptr i64 %1892 to i32*
  %1895 = load i32, i32* %1894, align 4
  %1896 = zext i32 %1895 to i64
  store i64 %1896, i64* %RAX.i1932, align 8
  %1897 = add i64 %1891, 10
  store i64 %1897, i64* %3, align 8
  %1898 = load i32, i32* %1838, align 4
  %1899 = sext i32 %1898 to i64
  store i64 %1899, i64* %RCX.i1908, align 8
  %1900 = shl nsw i64 %1899, 2
  %1901 = add i64 %1830, -536
  %1902 = add i64 %1901, %1900
  %1903 = add i64 %1891, 17
  store i64 %1903, i64* %3, align 8
  %1904 = inttoptr i64 %1902 to i32*
  store i32 %1895, i32* %1904, align 4
  %1905 = load i64, i64* %RBP.i, align 8
  %1906 = add i64 %1905, -136
  %1907 = load i64, i64* %3, align 8
  %1908 = add i64 %1907, 7
  store i64 %1908, i64* %3, align 8
  %1909 = inttoptr i64 %1906 to i32*
  %1910 = load i32, i32* %1909, align 4
  %1911 = sext i32 %1910 to i64
  store i64 %1911, i64* %RCX.i1908, align 8
  %1912 = shl nsw i64 %1911, 2
  %1913 = add i64 %1905, -336
  %1914 = add i64 %1913, %1912
  %1915 = add i64 %1907, 18
  store i64 %1915, i64* %3, align 8
  %1916 = inttoptr i64 %1914 to i32*
  store i32 0, i32* %1916, align 4
  %1917 = load i64, i64* %RBP.i, align 8
  %1918 = add i64 %1917, -136
  %1919 = load i64, i64* %3, align 8
  %1920 = add i64 %1919, 6
  store i64 %1920, i64* %3, align 8
  %1921 = inttoptr i64 %1918 to i32*
  %1922 = load i32, i32* %1921, align 4
  %1923 = add i32 %1922, 1
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RAX.i1932, align 8
  %1925 = icmp eq i32 %1922, -1
  %1926 = icmp eq i32 %1923, 0
  %1927 = or i1 %1925, %1926
  %1928 = zext i1 %1927 to i8
  store i8 %1928, i8* %40, align 1
  %1929 = and i32 %1923, 255
  %1930 = tail call i32 @llvm.ctpop.i32(i32 %1929)
  %1931 = trunc i32 %1930 to i8
  %1932 = and i8 %1931, 1
  %1933 = xor i8 %1932, 1
  store i8 %1933, i8* %47, align 1
  %1934 = xor i32 %1923, %1922
  %1935 = lshr i32 %1934, 4
  %1936 = trunc i32 %1935 to i8
  %1937 = and i8 %1936, 1
  store i8 %1937, i8* %52, align 1
  %1938 = zext i1 %1926 to i8
  store i8 %1938, i8* %55, align 1
  %1939 = lshr i32 %1923, 31
  %1940 = trunc i32 %1939 to i8
  store i8 %1940, i8* %58, align 1
  %1941 = lshr i32 %1922, 31
  %1942 = xor i32 %1939, %1941
  %1943 = add nuw nsw i32 %1942, %1939
  %1944 = icmp eq i32 %1943, 2
  %1945 = zext i1 %1944 to i8
  store i8 %1945, i8* %64, align 1
  %1946 = add i64 %1919, 15
  store i64 %1946, i64* %3, align 8
  store i32 %1923, i32* %1921, align 4
  %.pre174 = load i64, i64* %3, align 8
  br label %block_.L_464ac3

block_.L_464ac3:                                  ; preds = %block_.L_464a72, %block_464a84, %block_464a91
  %1947 = phi i64 [ %1891, %block_464a84 ], [ %.pre174, %block_464a91 ], [ %1864, %block_.L_464a72 ]
  %1948 = add i64 %1947, 10
  store i64 %1948, i64* %3, align 8
  br label %block_.L_464acd

block_.L_464acd:                                  ; preds = %block_.L_464ac3, %block_4649f0
  %1949 = phi i64 [ %1948, %block_.L_464ac3 ], [ %1696, %block_4649f0 ]
  %1950 = load i64, i64* %RBP.i, align 8
  %1951 = add i64 %1950, -556
  %1952 = add i64 %1949, 11
  store i64 %1952, i64* %3, align 8
  %1953 = inttoptr i64 %1951 to i32*
  %1954 = load i32, i32* %1953, align 4
  %1955 = add i32 %1954, 1
  %1956 = zext i32 %1955 to i64
  store i64 %1956, i64* %RAX.i1932, align 8
  %1957 = icmp eq i32 %1954, -1
  %1958 = icmp eq i32 %1955, 0
  %1959 = or i1 %1957, %1958
  %1960 = zext i1 %1959 to i8
  store i8 %1960, i8* %40, align 1
  %1961 = and i32 %1955, 255
  %1962 = tail call i32 @llvm.ctpop.i32(i32 %1961)
  %1963 = trunc i32 %1962 to i8
  %1964 = and i8 %1963, 1
  %1965 = xor i8 %1964, 1
  store i8 %1965, i8* %47, align 1
  %1966 = xor i32 %1955, %1954
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  store i8 %1969, i8* %52, align 1
  %1970 = zext i1 %1958 to i8
  store i8 %1970, i8* %55, align 1
  %1971 = lshr i32 %1955, 31
  %1972 = trunc i32 %1971 to i8
  store i8 %1972, i8* %58, align 1
  %1973 = lshr i32 %1954, 31
  %1974 = xor i32 %1971, %1973
  %1975 = add nuw nsw i32 %1974, %1971
  %1976 = icmp eq i32 %1975, 2
  %1977 = zext i1 %1976 to i8
  store i8 %1977, i8* %64, align 1
  %1978 = add i64 %1949, 20
  store i64 %1978, i64* %3, align 8
  store i32 %1955, i32* %1953, align 4
  %1979 = load i64, i64* %3, align 8
  %1980 = add i64 %1979, -290
  store i64 %1980, i64* %3, align 8
  br label %block_.L_4649bf

block_.L_464ae6:                                  ; preds = %block_.L_4649bf
  %1981 = add i64 %1626, 5
  store i64 %1981, i64* %3, align 8
  br label %block_.L_464aeb

block_.L_464aeb:                                  ; preds = %block_46497a.block_.L_464aeb_crit_edge, %block_.L_464ae6
  %1982 = phi i64 [ %.pre175, %block_46497a.block_.L_464aeb_crit_edge ], [ %1590, %block_.L_464ae6 ]
  %1983 = phi i64 [ %1553, %block_46497a.block_.L_464aeb_crit_edge ], [ %1981, %block_.L_464ae6 ]
  store i64 3, i64* %RDX.i1822.pre-phi, align 8
  %1984 = add i64 %1982, -128
  store i64 %1984, i64* %RCX.i1908, align 8
  %1985 = add i64 %1982, -552
  %1986 = add i64 %1983, 16
  store i64 %1986, i64* %3, align 8
  %1987 = inttoptr i64 %1985 to i32*
  %1988 = load i32, i32* %1987, align 4
  %1989 = sext i32 %1988 to i64
  store i64 %1989, i64* %RAX.i1932, align 8
  %1990 = shl nsw i64 %1989, 2
  %1991 = add i64 %1982, -88
  %1992 = add i64 %1991, %1990
  %1993 = add i64 %1983, 20
  store i64 %1993, i64* %3, align 8
  %1994 = inttoptr i64 %1992 to i32*
  %1995 = load i32, i32* %1994, align 4
  %1996 = zext i32 %1995 to i64
  store i64 %1996, i64* %RDI.i1847.pre-phi, align 8
  %1997 = add i64 %1982, -72
  %1998 = add i64 %1983, 23
  store i64 %1998, i64* %3, align 8
  %1999 = inttoptr i64 %1997 to i32*
  %2000 = load i32, i32* %1999, align 4
  %2001 = zext i32 %2000 to i64
  store i64 %2001, i64* %RSI.i1924, align 8
  %2002 = add i64 %1983, -341307
  %2003 = add i64 %1983, 28
  %2004 = load i64, i64* %6, align 8
  %2005 = add i64 %2004, -8
  %2006 = inttoptr i64 %2005 to i64*
  store i64 %2003, i64* %2006, align 8
  store i64 %2005, i64* %6, align 8
  store i64 %2002, i64* %3, align 8
  %call2_464b02 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %2002, %struct.Memory* %MEMORY.16)
  %2007 = load i64, i64* %RBP.i, align 8
  %2008 = add i64 %2007, -92
  %2009 = load i32, i32* %EAX.i1884, align 4
  %2010 = load i64, i64* %3, align 8
  %2011 = add i64 %2010, 3
  store i64 %2011, i64* %3, align 8
  %2012 = inttoptr i64 %2008 to i32*
  store i32 %2009, i32* %2012, align 4
  %2013 = load i64, i64* %RBP.i, align 8
  %2014 = add i64 %2013, -92
  %2015 = load i64, i64* %3, align 8
  %2016 = add i64 %2015, 4
  store i64 %2016, i64* %3, align 8
  %2017 = inttoptr i64 %2014 to i32*
  %2018 = load i32, i32* %2017, align 4
  %2019 = add i32 %2018, -2
  %2020 = icmp ult i32 %2018, 2
  %2021 = zext i1 %2020 to i8
  store i8 %2021, i8* %40, align 1
  %2022 = and i32 %2019, 255
  %2023 = tail call i32 @llvm.ctpop.i32(i32 %2022)
  %2024 = trunc i32 %2023 to i8
  %2025 = and i8 %2024, 1
  %2026 = xor i8 %2025, 1
  store i8 %2026, i8* %47, align 1
  %2027 = xor i32 %2019, %2018
  %2028 = lshr i32 %2027, 4
  %2029 = trunc i32 %2028 to i8
  %2030 = and i8 %2029, 1
  store i8 %2030, i8* %52, align 1
  %2031 = icmp eq i32 %2019, 0
  %2032 = zext i1 %2031 to i8
  store i8 %2032, i8* %55, align 1
  %2033 = lshr i32 %2019, 31
  %2034 = trunc i32 %2033 to i8
  store i8 %2034, i8* %58, align 1
  %2035 = lshr i32 %2018, 31
  %2036 = xor i32 %2033, %2035
  %2037 = add nuw nsw i32 %2036, %2035
  %2038 = icmp eq i32 %2037, 2
  %2039 = zext i1 %2038 to i8
  store i8 %2039, i8* %64, align 1
  %2040 = icmp ne i8 %2034, 0
  %2041 = xor i1 %2040, %2038
  %.demorgan197 = or i1 %2031, %2041
  %.v247 = select i1 %.demorgan197, i64 10, i64 300
  %2042 = add i64 %2015, %.v247
  store i64 %2042, i64* %3, align 8
  br i1 %.demorgan197, label %block_464b14, label %block_.L_464c36

block_464b14:                                     ; preds = %block_.L_464aeb
  %2043 = add i64 %2013, -556
  %2044 = add i64 %2042, 10
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  store i32 0, i32* %2045, align 4
  %.pre176 = load i64, i64* %3, align 8
  br label %block_.L_464b1e

block_.L_464b1e:                                  ; preds = %block_.L_464c18, %block_464b14
  %2046 = phi i64 [ %2408, %block_.L_464c18 ], [ %.pre176, %block_464b14 ]
  %2047 = load i64, i64* %RBP.i, align 8
  %2048 = add i64 %2047, -556
  %2049 = add i64 %2046, 6
  store i64 %2049, i64* %3, align 8
  %2050 = inttoptr i64 %2048 to i32*
  %2051 = load i32, i32* %2050, align 4
  %2052 = zext i32 %2051 to i64
  store i64 %2052, i64* %RAX.i1932, align 8
  %2053 = add i64 %2047, -92
  %2054 = add i64 %2046, 9
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = sub i32 %2051, %2056
  %2058 = icmp ult i32 %2051, %2056
  %2059 = zext i1 %2058 to i8
  store i8 %2059, i8* %40, align 1
  %2060 = and i32 %2057, 255
  %2061 = tail call i32 @llvm.ctpop.i32(i32 %2060)
  %2062 = trunc i32 %2061 to i8
  %2063 = and i8 %2062, 1
  %2064 = xor i8 %2063, 1
  store i8 %2064, i8* %47, align 1
  %2065 = xor i32 %2056, %2051
  %2066 = xor i32 %2065, %2057
  %2067 = lshr i32 %2066, 4
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  store i8 %2069, i8* %52, align 1
  %2070 = icmp eq i32 %2057, 0
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %55, align 1
  %2072 = lshr i32 %2057, 31
  %2073 = trunc i32 %2072 to i8
  store i8 %2073, i8* %58, align 1
  %2074 = lshr i32 %2051, 31
  %2075 = lshr i32 %2056, 31
  %2076 = xor i32 %2075, %2074
  %2077 = xor i32 %2072, %2074
  %2078 = add nuw nsw i32 %2077, %2076
  %2079 = icmp eq i32 %2078, 2
  %2080 = zext i1 %2079 to i8
  store i8 %2080, i8* %64, align 1
  %2081 = icmp ne i8 %2073, 0
  %2082 = xor i1 %2081, %2079
  %.v248 = select i1 %2082, i64 15, i64 275
  %2083 = add i64 %2046, %.v248
  store i64 %2083, i64* %3, align 8
  br i1 %2082, label %block_464b2d, label %block_.L_464c31

block_464b2d:                                     ; preds = %block_.L_464b1e
  %2084 = add i64 %2083, 7
  store i64 %2084, i64* %3, align 8
  %2085 = load i32, i32* %2050, align 4
  %2086 = sext i32 %2085 to i64
  store i64 %2086, i64* %RAX.i1932, align 8
  %2087 = shl nsw i64 %2086, 2
  %2088 = add i64 %2047, -128
  %2089 = add i64 %2088, %2087
  %2090 = add i64 %2083, 11
  store i64 %2090, i64* %3, align 8
  %2091 = inttoptr i64 %2089 to i32*
  %2092 = load i32, i32* %2091, align 4
  %2093 = zext i32 %2092 to i64
  store i64 %2093, i64* %RCX.i1908, align 8
  %2094 = add i64 %2047, -76
  %2095 = add i64 %2083, 14
  store i64 %2095, i64* %3, align 8
  %2096 = inttoptr i64 %2094 to i32*
  store i32 %2092, i32* %2096, align 4
  %2097 = load i64, i64* %RBP.i, align 8
  %2098 = add i64 %2097, -76
  %2099 = load i64, i64* %3, align 8
  %2100 = add i64 %2099, 3
  store i64 %2100, i64* %3, align 8
  %2101 = inttoptr i64 %2098 to i32*
  %2102 = load i32, i32* %2101, align 4
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RDI.i1847.pre-phi, align 8
  %2104 = add i64 %2097, -68
  %2105 = add i64 %2099, 6
  store i64 %2105, i64* %3, align 8
  %2106 = inttoptr i64 %2104 to i32*
  %2107 = load i32, i32* %2106, align 4
  %2108 = zext i32 %2107 to i64
  store i64 %2108, i64* %RSI.i1924, align 8
  %2109 = add i64 %2099, -329883
  %2110 = add i64 %2099, 11
  %2111 = load i64, i64* %6, align 8
  %2112 = add i64 %2111, -8
  %2113 = inttoptr i64 %2112 to i64*
  store i64 %2110, i64* %2113, align 8
  store i64 %2112, i64* %6, align 8
  store i64 %2109, i64* %3, align 8
  %call2_464b41 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %2109, %struct.Memory* %call2_464b02)
  %2114 = load i32, i32* %EAX.i1884, align 4
  %2115 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2116 = and i32 %2114, 255
  %2117 = tail call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  store i8 %2120, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2121 = icmp eq i32 %2114, 0
  %2122 = zext i1 %2121 to i8
  store i8 %2122, i8* %55, align 1
  %2123 = lshr i32 %2114, 31
  %2124 = trunc i32 %2123 to i8
  store i8 %2124, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v249 = select i1 %2121, i64 9, i64 210
  %2125 = add i64 %2115, %.v249
  store i64 %2125, i64* %3, align 8
  br i1 %2121, label %block_464b4f, label %block_.L_464c18

block_464b4f:                                     ; preds = %block_464b2d
  %2126 = load i64, i64* %RBP.i, align 8
  %2127 = add i64 %2126, -596
  %2128 = add i64 %2125, 15
  store i64 %2128, i64* %3, align 8
  %2129 = inttoptr i64 %2127 to i32*
  store i32 0, i32* %2129, align 4
  %.pre177 = load i64, i64* %3, align 8
  br label %block_.L_464b5e

block_.L_464b5e:                                  ; preds = %block_.L_464ba4, %block_464b4f
  %2130 = phi i64 [ %2256, %block_.L_464ba4 ], [ %.pre177, %block_464b4f ]
  %2131 = load i64, i64* %RBP.i, align 8
  %2132 = add i64 %2131, -596
  %2133 = add i64 %2130, 6
  store i64 %2133, i64* %3, align 8
  %2134 = inttoptr i64 %2132 to i32*
  %2135 = load i32, i32* %2134, align 4
  %2136 = zext i32 %2135 to i64
  store i64 %2136, i64* %RAX.i1932, align 8
  %2137 = add i64 %2131, -136
  %2138 = add i64 %2130, 12
  store i64 %2138, i64* %3, align 8
  %2139 = inttoptr i64 %2137 to i32*
  %2140 = load i32, i32* %2139, align 4
  %2141 = sub i32 %2135, %2140
  %2142 = icmp ult i32 %2135, %2140
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %40, align 1
  %2144 = and i32 %2141, 255
  %2145 = tail call i32 @llvm.ctpop.i32(i32 %2144)
  %2146 = trunc i32 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = xor i8 %2147, 1
  store i8 %2148, i8* %47, align 1
  %2149 = xor i32 %2140, %2135
  %2150 = xor i32 %2149, %2141
  %2151 = lshr i32 %2150, 4
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  store i8 %2153, i8* %52, align 1
  %2154 = icmp eq i32 %2141, 0
  %2155 = zext i1 %2154 to i8
  store i8 %2155, i8* %55, align 1
  %2156 = lshr i32 %2141, 31
  %2157 = trunc i32 %2156 to i8
  store i8 %2157, i8* %58, align 1
  %2158 = lshr i32 %2135, 31
  %2159 = lshr i32 %2140, 31
  %2160 = xor i32 %2159, %2158
  %2161 = xor i32 %2156, %2158
  %2162 = add nuw nsw i32 %2161, %2160
  %2163 = icmp eq i32 %2162, 2
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %64, align 1
  %2165 = icmp ne i8 %2157, 0
  %2166 = xor i1 %2165, %2163
  %.v199 = select i1 %2166, i64 18, i64 95
  %2167 = add i64 %2130, %.v199
  store i64 %2167, i64* %3, align 8
  br i1 %2166, label %block_464b70, label %block_.L_464bbd.loopexit

block_464b70:                                     ; preds = %block_.L_464b5e
  %2168 = add i64 %2167, 7
  store i64 %2168, i64* %3, align 8
  %2169 = load i32, i32* %2134, align 4
  %2170 = sext i32 %2169 to i64
  store i64 %2170, i64* %RAX.i1932, align 8
  %2171 = shl nsw i64 %2170, 2
  %2172 = add i64 %2131, -536
  %2173 = add i64 %2172, %2171
  %2174 = add i64 %2167, 14
  store i64 %2174, i64* %3, align 8
  %2175 = inttoptr i64 %2173 to i32*
  %2176 = load i32, i32* %2175, align 4
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RCX.i1908, align 8
  %2178 = add i64 %2131, -76
  %2179 = add i64 %2167, 17
  store i64 %2179, i64* %3, align 8
  %2180 = inttoptr i64 %2178 to i32*
  %2181 = load i32, i32* %2180, align 4
  %2182 = sub i32 %2176, %2181
  %2183 = icmp ult i32 %2176, %2181
  %2184 = zext i1 %2183 to i8
  store i8 %2184, i8* %40, align 1
  %2185 = and i32 %2182, 255
  %2186 = tail call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  store i8 %2189, i8* %47, align 1
  %2190 = xor i32 %2181, %2176
  %2191 = xor i32 %2190, %2182
  %2192 = lshr i32 %2191, 4
  %2193 = trunc i32 %2192 to i8
  %2194 = and i8 %2193, 1
  store i8 %2194, i8* %52, align 1
  %2195 = icmp eq i32 %2182, 0
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %55, align 1
  %2197 = lshr i32 %2182, 31
  %2198 = trunc i32 %2197 to i8
  store i8 %2198, i8* %58, align 1
  %2199 = lshr i32 %2176, 31
  %2200 = lshr i32 %2181, 31
  %2201 = xor i32 %2200, %2199
  %2202 = xor i32 %2197, %2199
  %2203 = add nuw nsw i32 %2202, %2201
  %2204 = icmp eq i32 %2203, 2
  %2205 = zext i1 %2204 to i8
  store i8 %2205, i8* %64, align 1
  %.v198 = select i1 %2195, i64 23, i64 52
  %2206 = add i64 %2167, %.v198
  store i64 %2206, i64* %3, align 8
  br i1 %2195, label %block_464b87, label %block_.L_464ba4

block_464b87:                                     ; preds = %block_464b70
  %2207 = add i64 %2206, 7
  store i64 %2207, i64* %3, align 8
  %2208 = load i32, i32* %2134, align 4
  %2209 = sext i32 %2208 to i64
  store i64 %2209, i64* %RAX.i1932, align 8
  %2210 = shl nsw i64 %2209, 2
  %2211 = add i64 %2131, -336
  %2212 = add i64 %2211, %2210
  %2213 = add i64 %2206, 14
  store i64 %2213, i64* %3, align 8
  %2214 = inttoptr i64 %2212 to i32*
  %2215 = load i32, i32* %2214, align 4
  %2216 = zext i32 %2215 to i64
  store i64 %2216, i64* %RCX.i1908, align 8
  store i8 0, i8* %40, align 1
  %2217 = and i32 %2215, 255
  %2218 = tail call i32 @llvm.ctpop.i32(i32 %2217)
  %2219 = trunc i32 %2218 to i8
  %2220 = and i8 %2219, 1
  %2221 = xor i8 %2220, 1
  store i8 %2221, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2222 = icmp eq i32 %2215, 0
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %55, align 1
  %2224 = lshr i32 %2215, 31
  %2225 = trunc i32 %2224 to i8
  store i8 %2225, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %2226 = add i64 %2206, 24
  store i64 %2226, i64* %3, align 8
  store i32 %2215, i32* %2214, align 4
  %2227 = load i64, i64* %3, align 8
  %2228 = add i64 %2227, 30
  store i64 %2228, i64* %3, align 8
  %.pre178 = load i64, i64* %RBP.i, align 8
  br label %block_.L_464bbd

block_.L_464ba4:                                  ; preds = %block_464b70
  %2229 = add i64 %2206, 11
  store i64 %2229, i64* %3, align 8
  %2230 = load i32, i32* %2134, align 4
  %2231 = add i32 %2230, 1
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RAX.i1932, align 8
  %2233 = icmp eq i32 %2230, -1
  %2234 = icmp eq i32 %2231, 0
  %2235 = or i1 %2233, %2234
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %40, align 1
  %2237 = and i32 %2231, 255
  %2238 = tail call i32 @llvm.ctpop.i32(i32 %2237)
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  %2241 = xor i8 %2240, 1
  store i8 %2241, i8* %47, align 1
  %2242 = xor i32 %2231, %2230
  %2243 = lshr i32 %2242, 4
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  store i8 %2245, i8* %52, align 1
  %2246 = zext i1 %2234 to i8
  store i8 %2246, i8* %55, align 1
  %2247 = lshr i32 %2231, 31
  %2248 = trunc i32 %2247 to i8
  store i8 %2248, i8* %58, align 1
  %2249 = lshr i32 %2230, 31
  %2250 = xor i32 %2247, %2249
  %2251 = add nuw nsw i32 %2250, %2247
  %2252 = icmp eq i32 %2251, 2
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %64, align 1
  %2254 = add i64 %2206, 20
  store i64 %2254, i64* %3, align 8
  store i32 %2231, i32* %2134, align 4
  %2255 = load i64, i64* %3, align 8
  %2256 = add i64 %2255, -90
  store i64 %2256, i64* %3, align 8
  br label %block_.L_464b5e

block_.L_464bbd.loopexit:                         ; preds = %block_.L_464b5e
  br label %block_.L_464bbd

block_.L_464bbd:                                  ; preds = %block_.L_464bbd.loopexit, %block_464b87
  %2257 = phi i64 [ %2228, %block_464b87 ], [ %2167, %block_.L_464bbd.loopexit ]
  %2258 = phi i64 [ %.pre178, %block_464b87 ], [ %2131, %block_.L_464bbd.loopexit ]
  %2259 = add i64 %2258, -596
  %2260 = add i64 %2257, 6
  store i64 %2260, i64* %3, align 8
  %2261 = inttoptr i64 %2259 to i32*
  %2262 = load i32, i32* %2261, align 4
  %2263 = zext i32 %2262 to i64
  store i64 %2263, i64* %RAX.i1932, align 8
  %2264 = add i64 %2258, -136
  %2265 = add i64 %2257, 12
  store i64 %2265, i64* %3, align 8
  %2266 = inttoptr i64 %2264 to i32*
  %2267 = load i32, i32* %2266, align 4
  %2268 = sub i32 %2262, %2267
  %2269 = icmp ult i32 %2262, %2267
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %40, align 1
  %2271 = and i32 %2268, 255
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %47, align 1
  %2276 = xor i32 %2267, %2262
  %2277 = xor i32 %2276, %2268
  %2278 = lshr i32 %2277, 4
  %2279 = trunc i32 %2278 to i8
  %2280 = and i8 %2279, 1
  store i8 %2280, i8* %52, align 1
  %2281 = icmp eq i32 %2268, 0
  %2282 = zext i1 %2281 to i8
  store i8 %2282, i8* %55, align 1
  %2283 = lshr i32 %2268, 31
  %2284 = trunc i32 %2283 to i8
  store i8 %2284, i8* %58, align 1
  %2285 = lshr i32 %2262, 31
  %2286 = lshr i32 %2267, 31
  %2287 = xor i32 %2286, %2285
  %2288 = xor i32 %2283, %2285
  %2289 = add nuw nsw i32 %2288, %2287
  %2290 = icmp eq i32 %2289, 2
  %2291 = zext i1 %2290 to i8
  store i8 %2291, i8* %64, align 1
  %.v250 = select i1 %2281, i64 18, i64 81
  %2292 = add i64 %2257, %.v250
  store i64 %2292, i64* %3, align 8
  br i1 %2281, label %block_464bcf, label %block_.L_464c0e

block_464bcf:                                     ; preds = %block_.L_464bbd
  %2293 = add i64 %2292, 7
  store i64 %2293, i64* %3, align 8
  %2294 = load i32, i32* %2266, align 4
  %2295 = add i32 %2294, -50
  %2296 = icmp ult i32 %2294, 50
  %2297 = zext i1 %2296 to i8
  store i8 %2297, i8* %40, align 1
  %2298 = and i32 %2295, 255
  %2299 = tail call i32 @llvm.ctpop.i32(i32 %2298)
  %2300 = trunc i32 %2299 to i8
  %2301 = and i8 %2300, 1
  %2302 = xor i8 %2301, 1
  store i8 %2302, i8* %47, align 1
  %2303 = xor i32 %2294, 16
  %2304 = xor i32 %2303, %2295
  %2305 = lshr i32 %2304, 4
  %2306 = trunc i32 %2305 to i8
  %2307 = and i8 %2306, 1
  store i8 %2307, i8* %52, align 1
  %2308 = icmp eq i32 %2295, 0
  %2309 = zext i1 %2308 to i8
  store i8 %2309, i8* %55, align 1
  %2310 = lshr i32 %2295, 31
  %2311 = trunc i32 %2310 to i8
  store i8 %2311, i8* %58, align 1
  %2312 = lshr i32 %2294, 31
  %2313 = xor i32 %2310, %2312
  %2314 = add nuw nsw i32 %2313, %2312
  %2315 = icmp eq i32 %2314, 2
  %2316 = zext i1 %2315 to i8
  store i8 %2316, i8* %64, align 1
  %2317 = icmp ne i8 %2311, 0
  %2318 = xor i1 %2317, %2315
  %.v251 = select i1 %2318, i64 13, i64 63
  %2319 = add i64 %2292, %.v251
  store i64 %2319, i64* %3, align 8
  br i1 %2318, label %block_464bdc, label %block_.L_464c0e

block_464bdc:                                     ; preds = %block_464bcf
  %2320 = add i64 %2258, -76
  %2321 = add i64 %2319, 3
  store i64 %2321, i64* %3, align 8
  %2322 = inttoptr i64 %2320 to i32*
  %2323 = load i32, i32* %2322, align 4
  %2324 = zext i32 %2323 to i64
  store i64 %2324, i64* %RAX.i1932, align 8
  %2325 = add i64 %2319, 10
  store i64 %2325, i64* %3, align 8
  %2326 = load i32, i32* %2266, align 4
  %2327 = sext i32 %2326 to i64
  store i64 %2327, i64* %RCX.i1908, align 8
  %2328 = shl nsw i64 %2327, 2
  %2329 = add i64 %2258, -536
  %2330 = add i64 %2329, %2328
  %2331 = add i64 %2319, 17
  store i64 %2331, i64* %3, align 8
  %2332 = inttoptr i64 %2330 to i32*
  store i32 %2323, i32* %2332, align 4
  %2333 = load i64, i64* %RBP.i, align 8
  %2334 = add i64 %2333, -136
  %2335 = load i64, i64* %3, align 8
  %2336 = add i64 %2335, 7
  store i64 %2336, i64* %3, align 8
  %2337 = inttoptr i64 %2334 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = sext i32 %2338 to i64
  store i64 %2339, i64* %RCX.i1908, align 8
  %2340 = shl nsw i64 %2339, 2
  %2341 = add i64 %2333, -336
  %2342 = add i64 %2341, %2340
  %2343 = add i64 %2335, 18
  store i64 %2343, i64* %3, align 8
  %2344 = inttoptr i64 %2342 to i32*
  store i32 0, i32* %2344, align 4
  %2345 = load i64, i64* %RBP.i, align 8
  %2346 = add i64 %2345, -136
  %2347 = load i64, i64* %3, align 8
  %2348 = add i64 %2347, 6
  store i64 %2348, i64* %3, align 8
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349, align 4
  %2351 = add i32 %2350, 1
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RAX.i1932, align 8
  %2353 = icmp eq i32 %2350, -1
  %2354 = icmp eq i32 %2351, 0
  %2355 = or i1 %2353, %2354
  %2356 = zext i1 %2355 to i8
  store i8 %2356, i8* %40, align 1
  %2357 = and i32 %2351, 255
  %2358 = tail call i32 @llvm.ctpop.i32(i32 %2357)
  %2359 = trunc i32 %2358 to i8
  %2360 = and i8 %2359, 1
  %2361 = xor i8 %2360, 1
  store i8 %2361, i8* %47, align 1
  %2362 = xor i32 %2351, %2350
  %2363 = lshr i32 %2362, 4
  %2364 = trunc i32 %2363 to i8
  %2365 = and i8 %2364, 1
  store i8 %2365, i8* %52, align 1
  %2366 = zext i1 %2354 to i8
  store i8 %2366, i8* %55, align 1
  %2367 = lshr i32 %2351, 31
  %2368 = trunc i32 %2367 to i8
  store i8 %2368, i8* %58, align 1
  %2369 = lshr i32 %2350, 31
  %2370 = xor i32 %2367, %2369
  %2371 = add nuw nsw i32 %2370, %2367
  %2372 = icmp eq i32 %2371, 2
  %2373 = zext i1 %2372 to i8
  store i8 %2373, i8* %64, align 1
  %2374 = add i64 %2347, 15
  store i64 %2374, i64* %3, align 8
  store i32 %2351, i32* %2349, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_464c0e

block_.L_464c0e:                                  ; preds = %block_.L_464bbd, %block_464bcf, %block_464bdc
  %2375 = phi i64 [ %2319, %block_464bcf ], [ %.pre179, %block_464bdc ], [ %2292, %block_.L_464bbd ]
  %2376 = add i64 %2375, 10
  store i64 %2376, i64* %3, align 8
  br label %block_.L_464c18

block_.L_464c18:                                  ; preds = %block_464b2d, %block_.L_464c0e
  %2377 = phi i64 [ %2376, %block_.L_464c0e ], [ %2125, %block_464b2d ]
  %2378 = load i64, i64* %RBP.i, align 8
  %2379 = add i64 %2378, -556
  %2380 = add i64 %2377, 11
  store i64 %2380, i64* %3, align 8
  %2381 = inttoptr i64 %2379 to i32*
  %2382 = load i32, i32* %2381, align 4
  %2383 = add i32 %2382, 1
  %2384 = zext i32 %2383 to i64
  store i64 %2384, i64* %RAX.i1932, align 8
  %2385 = icmp eq i32 %2382, -1
  %2386 = icmp eq i32 %2383, 0
  %2387 = or i1 %2385, %2386
  %2388 = zext i1 %2387 to i8
  store i8 %2388, i8* %40, align 1
  %2389 = and i32 %2383, 255
  %2390 = tail call i32 @llvm.ctpop.i32(i32 %2389)
  %2391 = trunc i32 %2390 to i8
  %2392 = and i8 %2391, 1
  %2393 = xor i8 %2392, 1
  store i8 %2393, i8* %47, align 1
  %2394 = xor i32 %2383, %2382
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %52, align 1
  %2398 = zext i1 %2386 to i8
  store i8 %2398, i8* %55, align 1
  %2399 = lshr i32 %2383, 31
  %2400 = trunc i32 %2399 to i8
  store i8 %2400, i8* %58, align 1
  %2401 = lshr i32 %2382, 31
  %2402 = xor i32 %2399, %2401
  %2403 = add nuw nsw i32 %2402, %2399
  %2404 = icmp eq i32 %2403, 2
  %2405 = zext i1 %2404 to i8
  store i8 %2405, i8* %64, align 1
  %2406 = add i64 %2377, 20
  store i64 %2406, i64* %3, align 8
  store i32 %2383, i32* %2381, align 4
  %2407 = load i64, i64* %3, align 8
  %2408 = add i64 %2407, -270
  store i64 %2408, i64* %3, align 8
  br label %block_.L_464b1e

block_.L_464c31:                                  ; preds = %block_.L_464b1e
  %2409 = add i64 %2083, 5
  store i64 %2409, i64* %3, align 8
  br label %block_.L_464c36

block_.L_464c36:                                  ; preds = %block_.L_464aeb, %block_.L_464c31
  %2410 = phi i64 [ %2047, %block_.L_464c31 ], [ %2013, %block_.L_464aeb ]
  %2411 = phi i64 [ %2409, %block_.L_464c31 ], [ %2042, %block_.L_464aeb ]
  %2412 = add i64 %2410, -552
  %2413 = add i64 %2411, 11
  store i64 %2413, i64* %3, align 8
  %2414 = inttoptr i64 %2412 to i32*
  %2415 = load i32, i32* %2414, align 4
  %2416 = add i32 %2415, 1
  %2417 = zext i32 %2416 to i64
  store i64 %2417, i64* %RAX.i1932, align 8
  %2418 = icmp eq i32 %2415, -1
  %2419 = icmp eq i32 %2416, 0
  %2420 = or i1 %2418, %2419
  %2421 = zext i1 %2420 to i8
  store i8 %2421, i8* %40, align 1
  %2422 = and i32 %2416, 255
  %2423 = tail call i32 @llvm.ctpop.i32(i32 %2422)
  %2424 = trunc i32 %2423 to i8
  %2425 = and i8 %2424, 1
  %2426 = xor i8 %2425, 1
  store i8 %2426, i8* %47, align 1
  %2427 = xor i32 %2416, %2415
  %2428 = lshr i32 %2427, 4
  %2429 = trunc i32 %2428 to i8
  %2430 = and i8 %2429, 1
  store i8 %2430, i8* %52, align 1
  %2431 = zext i1 %2419 to i8
  store i8 %2431, i8* %55, align 1
  %2432 = lshr i32 %2416, 31
  %2433 = trunc i32 %2432 to i8
  store i8 %2433, i8* %58, align 1
  %2434 = lshr i32 %2415, 31
  %2435 = xor i32 %2432, %2434
  %2436 = add nuw nsw i32 %2435, %2432
  %2437 = icmp eq i32 %2436, 2
  %2438 = zext i1 %2437 to i8
  store i8 %2438, i8* %64, align 1
  %2439 = add i64 %2411, 20
  store i64 %2439, i64* %3, align 8
  store i32 %2416, i32* %2414, align 4
  %2440 = load i64, i64* %3, align 8
  %2441 = add i64 %2440, -735
  store i64 %2441, i64* %3, align 8
  br label %block_.L_46496b

block_.L_464c4f:                                  ; preds = %block_.L_46496b
  %2442 = add i64 %1485, -536
  store i64 %2442, i64* %RSI.i1924, align 8
  %2443 = add i64 %1485, -48
  %2444 = add i64 %1521, 10
  store i64 %2444, i64* %3, align 8
  %2445 = inttoptr i64 %2443 to i32*
  %2446 = load i32, i32* %2445, align 4
  %2447 = zext i32 %2446 to i64
  store i64 %2447, i64* %RDI.i1847.pre-phi, align 8
  %2448 = add i64 %1485, -72
  %2449 = add i64 %1521, 13
  store i64 %2449, i64* %3, align 8
  %2450 = inttoptr i64 %2448 to i32*
  %2451 = load i32, i32* %2450, align 4
  %2452 = zext i32 %2451 to i64
  store i64 %2452, i64* %RDX.i1822.pre-phi, align 8
  %2453 = add i64 %1485, -568
  %2454 = add i64 %1521, 20
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i64*
  %2456 = load i64, i64* %2455, align 8
  store i64 %2456, i64* %RCX.i1908, align 8
  %2457 = add i64 %1485, -540
  %2458 = add i64 %1521, 27
  store i64 %2458, i64* %3, align 8
  %2459 = inttoptr i64 %2457 to i32*
  %2460 = load i32, i32* %2459, align 4
  %2461 = zext i32 %2460 to i64
  store i64 %2461, i64* %R8.i1930, align 8
  %2462 = add i64 %1521, -8127
  %2463 = add i64 %1521, 32
  %2464 = load i64, i64* %6, align 8
  %2465 = add i64 %2464, -8
  %2466 = inttoptr i64 %2465 to i64*
  store i64 %2463, i64* %2466, align 8
  store i64 %2465, i64* %6, align 8
  store i64 %2462, i64* %3, align 8
  %call2_464c6a = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %2462, %struct.Memory* %MEMORY.16)
  %2467 = load i64, i64* %RBP.i, align 8
  %2468 = add i64 %2467, -540
  %2469 = load i64, i64* %3, align 8
  %2470 = add i64 %2469, 6
  store i64 %2470, i64* %3, align 8
  %2471 = inttoptr i64 %2468 to i32*
  %2472 = load i32, i32* %2471, align 4
  %2473 = zext i32 %2472 to i64
  store i64 %2473, i64* %RDX.i1822.pre-phi, align 8
  %2474 = add i64 %2467, -552
  %2475 = add i64 %2469, 12
  store i64 %2475, i64* %3, align 8
  %2476 = inttoptr i64 %2474 to i32*
  store i32 %2472, i32* %2476, align 4
  %.pre138 = load i64, i64* %3, align 8
  br label %block_.L_464c7b

block_.L_464c7b:                                  ; preds = %block_.L_464ebf, %block_.L_464c4f
  %2477 = phi i64 [ %.pre138, %block_.L_464c4f ], [ %3073, %block_.L_464ebf ]
  %2478 = load i64, i64* %RBP.i, align 8
  %2479 = add i64 %2478, -552
  %2480 = add i64 %2477, 6
  store i64 %2480, i64* %3, align 8
  %2481 = inttoptr i64 %2479 to i32*
  %2482 = load i32, i32* %2481, align 4
  %2483 = zext i32 %2482 to i64
  store i64 %2483, i64* %RAX.i1932, align 8
  %2484 = add i64 %2478, -136
  %2485 = add i64 %2477, 12
  store i64 %2485, i64* %3, align 8
  %2486 = inttoptr i64 %2484 to i32*
  %2487 = load i32, i32* %2486, align 4
  %2488 = sub i32 %2482, %2487
  %2489 = icmp ult i32 %2482, %2487
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %40, align 1
  %2491 = and i32 %2488, 255
  %2492 = tail call i32 @llvm.ctpop.i32(i32 %2491)
  %2493 = trunc i32 %2492 to i8
  %2494 = and i8 %2493, 1
  %2495 = xor i8 %2494, 1
  store i8 %2495, i8* %47, align 1
  %2496 = xor i32 %2487, %2482
  %2497 = xor i32 %2496, %2488
  %2498 = lshr i32 %2497, 4
  %2499 = trunc i32 %2498 to i8
  %2500 = and i8 %2499, 1
  store i8 %2500, i8* %52, align 1
  %2501 = icmp eq i32 %2488, 0
  %2502 = zext i1 %2501 to i8
  store i8 %2502, i8* %55, align 1
  %2503 = lshr i32 %2488, 31
  %2504 = trunc i32 %2503 to i8
  store i8 %2504, i8* %58, align 1
  %2505 = lshr i32 %2482, 31
  %2506 = lshr i32 %2487, 31
  %2507 = xor i32 %2506, %2505
  %2508 = xor i32 %2503, %2505
  %2509 = add nuw nsw i32 %2508, %2507
  %2510 = icmp eq i32 %2509, 2
  %2511 = zext i1 %2510 to i8
  store i8 %2511, i8* %64, align 1
  %2512 = icmp ne i8 %2504, 0
  %2513 = xor i1 %2512, %2510
  %.v211 = select i1 %2513, i64 18, i64 605
  %2514 = add i64 %2477, %.v211
  store i64 %2514, i64* %3, align 8
  br i1 %2513, label %block_464c8d, label %block_.L_464ed8

block_464c8d:                                     ; preds = %block_.L_464c7b
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %CL.i1585, align 1
  %2515 = add i64 %2514, 11
  store i64 %2515, i64* %3, align 8
  %2516 = load i32, i32* %2481, align 4
  %2517 = sext i32 %2516 to i64
  store i64 %2517, i64* %RDX.i1822.pre-phi, align 8
  %2518 = shl nsw i64 %2517, 2
  %2519 = add i64 %2478, -536
  %2520 = add i64 %2519, %2518
  %2521 = add i64 %2514, 18
  store i64 %2521, i64* %3, align 8
  %2522 = inttoptr i64 %2520 to i32*
  %2523 = load i32, i32* %2522, align 4
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RAX.i1932, align 8
  %2525 = add i64 %2478, -76
  %2526 = add i64 %2514, 21
  store i64 %2526, i64* %3, align 8
  %2527 = inttoptr i64 %2525 to i32*
  store i32 %2523, i32* %2527, align 4
  %2528 = load i64, i64* %RBP.i, align 8
  %2529 = add i64 %2528, -76
  %2530 = load i64, i64* %3, align 8
  %2531 = add i64 %2530, 3
  store i64 %2531, i64* %3, align 8
  %2532 = inttoptr i64 %2529 to i32*
  %2533 = load i32, i32* %2532, align 4
  %2534 = zext i32 %2533 to i64
  store i64 %2534, i64* %RDI.i1847.pre-phi, align 8
  %2535 = add i64 %2528, -68
  %2536 = add i64 %2530, 6
  store i64 %2536, i64* %3, align 8
  %2537 = inttoptr i64 %2535 to i32*
  %2538 = load i32, i32* %2537, align 4
  %2539 = zext i32 %2538 to i64
  store i64 %2539, i64* %RSI.i1924, align 8
  %2540 = add i64 %2528, -48
  %2541 = add i64 %2530, 9
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  %2543 = load i32, i32* %2542, align 4
  %2544 = zext i32 %2543 to i64
  store i64 %2544, i64* %RAX.i1932, align 8
  %2545 = add i64 %2528, -60
  %2546 = add i64 %2530, 13
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = zext i32 %2548 to i64
  store i64 %2549, i64* %R8.i1930, align 8
  %2550 = add i64 %2528, -64
  %2551 = add i64 %2530, 17
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2550 to i32*
  %2553 = load i32, i32* %2552, align 4
  %2554 = zext i32 %2553 to i64
  store i64 %2554, i64* %870, align 8
  %2555 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %872, align 8
  %2557 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %2558 = sub i32 %2555, %2557
  %2559 = icmp ult i32 %2555, %2557
  %2560 = zext i1 %2559 to i8
  store i8 %2560, i8* %40, align 1
  %2561 = and i32 %2558, 255
  %2562 = tail call i32 @llvm.ctpop.i32(i32 %2561)
  %2563 = trunc i32 %2562 to i8
  %2564 = and i8 %2563, 1
  %2565 = xor i8 %2564, 1
  store i8 %2565, i8* %47, align 1
  %2566 = xor i32 %2557, %2555
  %2567 = xor i32 %2566, %2558
  %2568 = lshr i32 %2567, 4
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  store i8 %2570, i8* %52, align 1
  %2571 = icmp eq i32 %2558, 0
  %2572 = zext i1 %2571 to i8
  store i8 %2572, i8* %55, align 1
  %2573 = lshr i32 %2558, 31
  %2574 = trunc i32 %2573 to i8
  store i8 %2574, i8* %58, align 1
  %2575 = lshr i32 %2555, 31
  %2576 = lshr i32 %2557, 31
  %2577 = xor i32 %2576, %2575
  %2578 = xor i32 %2573, %2575
  %2579 = add nuw nsw i32 %2578, %2577
  %2580 = icmp eq i32 %2579, 2
  %2581 = zext i1 %2580 to i8
  store i8 %2581, i8* %64, align 1
  %2582 = add i64 %2528, -824
  %2583 = add i64 %2530, 40
  store i64 %2583, i64* %3, align 8
  %2584 = inttoptr i64 %2582 to i32*
  store i32 %2553, i32* %2584, align 4
  %2585 = load i64, i64* %RBP.i, align 8
  %2586 = add i64 %2585, -828
  %2587 = load i32, i32* %EDI.i1927, align 4
  %2588 = load i64, i64* %3, align 8
  %2589 = add i64 %2588, 6
  store i64 %2589, i64* %3, align 8
  %2590 = inttoptr i64 %2586 to i32*
  store i32 %2587, i32* %2590, align 4
  %2591 = load i64, i64* %RBP.i, align 8
  %2592 = add i64 %2591, -832
  %2593 = load i32, i32* %ESI.i1546, align 4
  %2594 = load i64, i64* %3, align 8
  %2595 = add i64 %2594, 6
  store i64 %2595, i64* %3, align 8
  %2596 = inttoptr i64 %2592 to i32*
  store i32 %2593, i32* %2596, align 4
  %2597 = load i64, i64* %RBP.i, align 8
  %2598 = add i64 %2597, -836
  %2599 = load i32, i32* %EAX.i1884, align 4
  %2600 = load i64, i64* %3, align 8
  %2601 = add i64 %2600, 6
  store i64 %2601, i64* %3, align 8
  %2602 = inttoptr i64 %2598 to i32*
  store i32 %2599, i32* %2602, align 4
  %2603 = load i64, i64* %RBP.i, align 8
  %2604 = add i64 %2603, -840
  %2605 = load i32, i32* %R8D.i1675, align 4
  %2606 = load i64, i64* %3, align 8
  %2607 = add i64 %2606, 7
  store i64 %2607, i64* %3, align 8
  %2608 = inttoptr i64 %2604 to i32*
  store i32 %2605, i32* %2608, align 4
  %2609 = load i64, i64* %RBP.i, align 8
  %2610 = add i64 %2609, -841
  %2611 = load i8, i8* %CL.i1585, align 1
  %2612 = load i64, i64* %3, align 8
  %2613 = add i64 %2612, 6
  store i64 %2613, i64* %3, align 8
  %2614 = inttoptr i64 %2610 to i8*
  store i8 %2611, i8* %2614, align 1
  %2615 = load i64, i64* %3, align 8
  %2616 = add i64 %2615, 22
  %2617 = add i64 %2615, 6
  %2618 = load i8, i8* %55, align 1
  %2619 = icmp eq i8 %2618, 0
  %2620 = load i8, i8* %58, align 1
  %2621 = icmp ne i8 %2620, 0
  %2622 = load i8, i8* %64, align 1
  %2623 = icmp ne i8 %2622, 0
  %2624 = xor i1 %2621, %2623
  %2625 = xor i1 %2624, true
  %2626 = and i1 %2619, %2625
  %2627 = select i1 %2626, i64 %2616, i64 %2617
  store i64 %2627, i64* %3, align 8
  br i1 %2626, label %block_.L_464cff, label %block_464cef

block_464cef:                                     ; preds = %block_464c8d
  %2628 = load i64, i64* %RBP.i, align 8
  %2629 = add i64 %2628, -548
  %2630 = add i64 %2627, 7
  store i64 %2630, i64* %3, align 8
  %2631 = inttoptr i64 %2629 to i32*
  %2632 = load i32, i32* %2631, align 4
  store i8 0, i8* %40, align 1
  %2633 = and i32 %2632, 255
  %2634 = tail call i32 @llvm.ctpop.i32(i32 %2633)
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = xor i8 %2636, 1
  store i8 %2637, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2638 = icmp eq i32 %2632, 0
  %2639 = zext i1 %2638 to i8
  store i8 %2639, i8* %55, align 1
  %2640 = lshr i32 %2632, 31
  %2641 = trunc i32 %2640 to i8
  store i8 %2641, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 %2639, i8* %AL.i1584, align 1
  %2642 = add i64 %2628, -841
  %2643 = add i64 %2627, 16
  store i64 %2643, i64* %3, align 8
  %2644 = inttoptr i64 %2642 to i8*
  store i8 %2639, i8* %2644, align 1
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_464cff

block_.L_464cff:                                  ; preds = %block_464cef, %block_464c8d
  %2645 = phi i64 [ %.pre165, %block_464cef ], [ %2616, %block_464c8d ]
  %2646 = load i64, i64* %RBP.i, align 8
  %2647 = add i64 %2646, -841
  %2648 = add i64 %2645, 6
  store i64 %2648, i64* %3, align 8
  %2649 = inttoptr i64 %2647 to i8*
  %2650 = load i8, i8* %2649, align 1
  store i64 ptrtoint (%G__0x57fd53_type* @G__0x57fd53 to i64), i64* %RDX.i1822.pre-phi, align 8
  %2651 = add i64 %2646, -600
  store i64 %2651, i64* %RCX.i1908, align 8
  %2652 = add i64 %2646, -604
  store i64 %2652, i64* %RSI.i1924, align 8
  %2653 = add i64 %2646, -608
  store i64 %2653, i64* %RDI.i1847.pre-phi, align 8
  %2654 = and i8 %2650, 1
  store i8 %2654, i8* %AL.i1584, align 1
  store i8 0, i8* %40, align 1
  %2655 = zext i8 %2654 to i32
  %2656 = tail call i32 @llvm.ctpop.i32(i32 %2655)
  %2657 = trunc i32 %2656 to i8
  %2658 = xor i8 %2657, 1
  store i8 %2658, i8* %47, align 1
  %2659 = xor i8 %2654, 1
  store i8 %2659, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %2660 = zext i8 %2654 to i64
  store i64 %2660, i64* %R8.i1930, align 8
  %2661 = add i64 %2646, -828
  %2662 = add i64 %2645, 50
  store i64 %2662, i64* %3, align 8
  %2663 = inttoptr i64 %2661 to i32*
  %2664 = load i32, i32* %2663, align 4
  %2665 = zext i32 %2664 to i64
  store i64 %2665, i64* %870, align 8
  %2666 = add i64 %2646, -856
  %2667 = add i64 %2645, 57
  store i64 %2667, i64* %3, align 8
  %2668 = inttoptr i64 %2666 to i64*
  store i64 %2653, i64* %2668, align 8
  %2669 = load i32, i32* %R9D.i1559, align 4
  %2670 = zext i32 %2669 to i64
  %2671 = load i64, i64* %3, align 8
  store i64 %2670, i64* %RDI.i1847.pre-phi, align 8
  %2672 = load i64, i64* %RBP.i, align 8
  %2673 = add i64 %2672, -832
  %2674 = add i64 %2671, 10
  store i64 %2674, i64* %3, align 8
  %2675 = inttoptr i64 %2673 to i32*
  %2676 = load i32, i32* %2675, align 4
  %2677 = zext i32 %2676 to i64
  store i64 %2677, i64* %872, align 8
  %2678 = add i64 %2672, -864
  %2679 = load i64, i64* %RSI.i1924, align 8
  %2680 = add i64 %2671, 17
  store i64 %2680, i64* %3, align 8
  %2681 = inttoptr i64 %2678 to i64*
  store i64 %2679, i64* %2681, align 8
  %2682 = load i32, i32* %R10D.i1557, align 4
  %2683 = zext i32 %2682 to i64
  %2684 = load i64, i64* %3, align 8
  store i64 %2683, i64* %RSI.i1924, align 8
  %2685 = load i64, i64* %RBP.i, align 8
  %2686 = add i64 %2685, -836
  %2687 = add i64 %2684, 10
  store i64 %2687, i64* %3, align 8
  %2688 = inttoptr i64 %2686 to i32*
  %2689 = load i32, i32* %2688, align 4
  %2690 = zext i32 %2689 to i64
  store i64 %2690, i64* %874, align 8
  %2691 = add i64 %2685, -872
  %2692 = load i64, i64* %RCX.i1908, align 8
  %2693 = add i64 %2684, 17
  store i64 %2693, i64* %3, align 8
  %2694 = inttoptr i64 %2691 to i64*
  store i64 %2692, i64* %2694, align 8
  %2695 = load i32, i32* %R11D.i1489, align 4
  %2696 = zext i32 %2695 to i64
  %2697 = load i64, i64* %3, align 8
  store i64 %2696, i64* %RCX.i1908, align 8
  %2698 = load i64, i64* %RBP.i, align 8
  %2699 = add i64 %2698, -840
  %2700 = add i64 %2697, 9
  store i64 %2700, i64* %3, align 8
  %2701 = inttoptr i64 %2699 to i32*
  %2702 = load i32, i32* %2701, align 4
  %2703 = zext i32 %2702 to i64
  store i64 %2703, i64* %RBX.i1936, align 8
  %2704 = add i64 %2698, -876
  %2705 = load i32, i32* %R8D.i1675, align 4
  %2706 = add i64 %2697, 16
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2704 to i32*
  store i32 %2705, i32* %2707, align 4
  %2708 = load i32, i32* %EBX.i1474, align 4
  %2709 = zext i32 %2708 to i64
  %2710 = load i64, i64* %3, align 8
  store i64 %2709, i64* %R8.i1930, align 8
  %2711 = load i64, i64* %RBP.i, align 8
  %2712 = add i64 %2711, -824
  %2713 = add i64 %2710, 10
  store i64 %2713, i64* %3, align 8
  %2714 = inttoptr i64 %2712 to i32*
  %2715 = load i32, i32* %2714, align 4
  %2716 = zext i32 %2715 to i64
  store i64 %2716, i64* %870, align 8
  %2717 = add i64 %2711, -872
  %2718 = add i64 %2710, 17
  store i64 %2718, i64* %3, align 8
  %2719 = inttoptr i64 %2717 to i64*
  %2720 = load i64, i64* %2719, align 8
  store i64 %2720, i64* %R14.i1942, align 8
  %2721 = load i64*, i64** %875, align 8
  %2722 = add i64 %2710, 21
  store i64 %2722, i64* %3, align 8
  store i64 %2720, i64* %2721, align 8
  %2723 = load i64, i64* %RBP.i, align 8
  %2724 = add i64 %2723, -864
  %2725 = load i64, i64* %3, align 8
  %2726 = add i64 %2725, 7
  store i64 %2726, i64* %3, align 8
  %2727 = inttoptr i64 %2724 to i64*
  %2728 = load i64, i64* %2727, align 8
  store i64 %2728, i64* %R15.i1785, align 8
  %2729 = load i64, i64* %6, align 8
  %2730 = add i64 %2729, 8
  %2731 = add i64 %2725, 12
  store i64 %2731, i64* %3, align 8
  %2732 = inttoptr i64 %2730 to i64*
  store i64 %2728, i64* %2732, align 8
  %2733 = load i64, i64* %RBP.i, align 8
  %2734 = add i64 %2733, -856
  %2735 = load i64, i64* %3, align 8
  %2736 = add i64 %2735, 7
  store i64 %2736, i64* %3, align 8
  %2737 = inttoptr i64 %2734 to i64*
  %2738 = load i64, i64* %2737, align 8
  store i64 %2738, i64* %R12.i1938, align 8
  %2739 = load i64, i64* %6, align 8
  %2740 = add i64 %2739, 16
  %2741 = add i64 %2735, 12
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2740 to i64*
  store i64 %2738, i64* %2742, align 8
  %2743 = load i64, i64* %RBP.i, align 8
  %2744 = add i64 %2743, -876
  %2745 = load i64, i64* %3, align 8
  %2746 = add i64 %2745, 7
  store i64 %2746, i64* %3, align 8
  %2747 = inttoptr i64 %2744 to i32*
  %2748 = load i32, i32* %2747, align 4
  %2749 = zext i32 %2748 to i64
  store i64 %2749, i64* %R13.i1940, align 8
  %2750 = load i64, i64* %6, align 8
  %2751 = add i64 %2750, 24
  %2752 = add i64 %2745, 12
  store i64 %2752, i64* %3, align 8
  %2753 = inttoptr i64 %2751 to i32*
  store i32 %2748, i32* %2753, align 4
  %2754 = load i64, i64* %3, align 8
  %2755 = add i64 %2754, -352179
  %2756 = add i64 %2754, 5
  %2757 = load i64, i64* %6, align 8
  %2758 = add i64 %2757, -8
  %2759 = inttoptr i64 %2758 to i64*
  store i64 %2756, i64* %2759, align 8
  store i64 %2758, i64* %6, align 8
  store i64 %2755, i64* %3, align 8
  %call2_464da3 = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %2755, %struct.Memory* %call2_464c6a)
  %2760 = load i32, i32* %EAX.i1884, align 4
  %2761 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2762 = and i32 %2760, 255
  %2763 = tail call i32 @llvm.ctpop.i32(i32 %2762)
  %2764 = trunc i32 %2763 to i8
  %2765 = and i8 %2764, 1
  %2766 = xor i8 %2765, 1
  store i8 %2766, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2767 = icmp eq i32 %2760, 0
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %55, align 1
  %2769 = lshr i32 %2760, 31
  %2770 = trunc i32 %2769 to i8
  store i8 %2770, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v238 = select i1 %2767, i64 279, i64 9
  %2771 = add i64 %2761, %.v238
  store i64 %2771, i64* %3, align 8
  br i1 %2767, label %block_.L_464ebf, label %block_464db1

block_464db1:                                     ; preds = %block_.L_464cff
  %2772 = load i64, i64* %RBP.i, align 8
  %2773 = add i64 %2772, -608
  %2774 = add i64 %2771, 7
  store i64 %2774, i64* %3, align 8
  %2775 = inttoptr i64 %2773 to i32*
  %2776 = load i32, i32* %2775, align 4
  %2777 = icmp eq i32 %2776, 0
  %.v239 = select i1 %2777, i64 13, i64 208
  %2778 = add i64 %2771, %.v239
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RSI.i1924, align 8
  %2779 = add i64 %2772, -48
  %2780 = add i64 %2778, 7
  store i64 %2780, i64* %3, align 8
  %2781 = inttoptr i64 %2779 to i32*
  %2782 = load i32, i32* %2781, align 4
  %2783 = zext i32 %2782 to i64
  store i64 %2783, i64* %RDI.i1847.pre-phi, align 8
  %2784 = add i64 %2772, -600
  %2785 = add i64 %2778, 13
  store i64 %2785, i64* %3, align 8
  %2786 = inttoptr i64 %2784 to i32*
  %2787 = load i32, i32* %2786, align 4
  %2788 = zext i32 %2787 to i64
  store i64 %2788, i64* %RDX.i1822.pre-phi, align 8
  %2789 = add i64 %2772, -604
  %2790 = add i64 %2778, 19
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i32*
  %2792 = load i32, i32* %2791, align 4
  %2793 = zext i32 %2792 to i64
  store i64 %2793, i64* %RCX.i1908, align 8
  br i1 %2777, label %block_464dbe, label %block_.L_464e81

block_464dbe:                                     ; preds = %block_464db1
  %2794 = add i64 %2778, -28894
  %2795 = add i64 %2778, 24
  %2796 = load i64, i64* %6, align 8
  %2797 = add i64 %2796, -8
  %2798 = inttoptr i64 %2797 to i64*
  store i64 %2795, i64* %2798, align 8
  store i64 %2797, i64* %6, align 8
  store i64 %2794, i64* %3, align 8
  %call2_464dd1 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %2794, %struct.Memory* %call2_464c6a)
  %2799 = load i64, i64* %RBP.i, align 8
  %2800 = add i64 %2799, -612
  %2801 = load i32, i32* %EAX.i1884, align 4
  %2802 = load i64, i64* %3, align 8
  %2803 = add i64 %2802, 6
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2800 to i32*
  store i32 %2801, i32* %2804, align 4
  %2805 = load i64, i64* %3, align 8
  %2806 = add i64 %2805, -356476
  %2807 = add i64 %2805, 5
  %2808 = load i64, i64* %6, align 8
  %2809 = add i64 %2808, -8
  %2810 = inttoptr i64 %2809 to i64*
  store i64 %2807, i64* %2810, align 8
  store i64 %2809, i64* %6, align 8
  store i64 %2806, i64* %3, align 8
  %call2_464ddc = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %2806, %struct.Memory* %call2_464c6a)
  %2811 = load i64, i64* %RBP.i, align 8
  %2812 = add i64 %2811, -612
  %2813 = load i64, i64* %3, align 8
  %2814 = add i64 %2813, 7
  store i64 %2814, i64* %3, align 8
  %2815 = inttoptr i64 %2812 to i32*
  %2816 = load i32, i32* %2815, align 4
  store i8 0, i8* %40, align 1
  %2817 = and i32 %2816, 255
  %2818 = tail call i32 @llvm.ctpop.i32(i32 %2817)
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  %2821 = xor i8 %2820, 1
  store i8 %2821, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2822 = icmp eq i32 %2816, 0
  %2823 = zext i1 %2822 to i8
  store i8 %2823, i8* %55, align 1
  %2824 = lshr i32 %2816, 31
  %2825 = trunc i32 %2824 to i8
  store i8 %2825, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v241 = select i1 %2822, i64 13, i64 96
  %2826 = add i64 %2813, %.v241
  store i64 %2826, i64* %3, align 8
  br i1 %2822, label %block_464dee, label %block_.L_464e41

block_464dee:                                     ; preds = %block_464dbe
  %2827 = add i64 %2811, -56
  %2828 = add i64 %2826, 5
  store i64 %2828, i64* %3, align 8
  %2829 = inttoptr i64 %2827 to i64*
  %2830 = load i64, i64* %2829, align 8
  store i8 0, i8* %40, align 1
  %2831 = trunc i64 %2830 to i32
  %2832 = and i32 %2831, 255
  %2833 = tail call i32 @llvm.ctpop.i32(i32 %2832)
  %2834 = trunc i32 %2833 to i8
  %2835 = and i8 %2834, 1
  %2836 = xor i8 %2835, 1
  store i8 %2836, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2837 = icmp eq i64 %2830, 0
  %2838 = zext i1 %2837 to i8
  store i8 %2838, i8* %55, align 1
  %2839 = lshr i64 %2830, 63
  %2840 = trunc i64 %2839 to i8
  store i8 %2840, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v243 = select i1 %2837, i64 20, i64 11
  %2841 = add i64 %2826, %.v243
  store i64 %2841, i64* %3, align 8
  br i1 %2837, label %block_.L_464e02, label %block_464df9

block_464df9:                                     ; preds = %block_464dee
  %2842 = add i64 %2811, -76
  %2843 = add i64 %2841, 3
  store i64 %2843, i64* %3, align 8
  %2844 = inttoptr i64 %2842 to i32*
  %2845 = load i32, i32* %2844, align 4
  %2846 = zext i32 %2845 to i64
  store i64 %2846, i64* %RAX.i1932, align 8
  %2847 = add i64 %2841, 7
  store i64 %2847, i64* %3, align 8
  %2848 = load i64, i64* %2829, align 8
  store i64 %2848, i64* %RCX.i1908, align 8
  %2849 = add i64 %2841, 9
  store i64 %2849, i64* %3, align 8
  %2850 = inttoptr i64 %2848 to i32*
  store i32 %2845, i32* %2850, align 4
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_464e02

block_.L_464e02:                                  ; preds = %block_464df9, %block_464dee
  %2851 = phi i64 [ %.pre166, %block_464df9 ], [ %2841, %block_464dee ]
  %2852 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %2853 = trunc i64 %2852 to i32
  %2854 = and i32 %2853, 255
  %2855 = tail call i32 @llvm.ctpop.i32(i32 %2854)
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = xor i8 %2857, 1
  store i8 %2858, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %2859 = icmp eq i64 %2852, 0
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %55, align 1
  %2861 = lshr i64 %2852, 63
  %2862 = trunc i64 %2861 to i8
  store i8 %2862, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v244 = select i1 %2859, i64 51, i64 15
  %2863 = add i64 %2851, %.v244
  store i64 %2863, i64* %3, align 8
  br i1 %2859, label %block_.L_464e35, label %block_464e11

block_464e11:                                     ; preds = %block_.L_464e02
  store i64 5, i64* %RCX.i1908, align 8
  store i64 ptrtoint (%G__0x57fd5d_type* @G__0x57fd5d to i64), i64* %R8.i1930, align 8
  %2864 = load i64, i64* %RBP.i, align 8
  %2865 = add i64 %2864, -568
  %2866 = add i64 %2863, 22
  store i64 %2866, i64* %3, align 8
  %2867 = inttoptr i64 %2865 to i64*
  %2868 = load i64, i64* %2867, align 8
  store i64 %2868, i64* %RDI.i1847.pre-phi, align 8
  %2869 = add i64 %2864, -572
  %2870 = add i64 %2863, 28
  store i64 %2870, i64* %3, align 8
  %2871 = inttoptr i64 %2869 to i32*
  %2872 = load i32, i32* %2871, align 4
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RSI.i1924, align 8
  %2874 = add i64 %2864, -76
  %2875 = add i64 %2863, 31
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i32*
  %2877 = load i32, i32* %2876, align 4
  %2878 = zext i32 %2877 to i64
  store i64 %2878, i64* %RDX.i1822.pre-phi, align 8
  %2879 = add i64 %2863, -314961
  %2880 = add i64 %2863, 36
  %2881 = load i64, i64* %6, align 8
  %2882 = add i64 %2881, -8
  %2883 = inttoptr i64 %2882 to i64*
  store i64 %2880, i64* %2883, align 8
  store i64 %2882, i64* %6, align 8
  store i64 %2879, i64* %3, align 8
  %call2_464e30 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %2879, %struct.Memory* %call2_464c6a)
  %.pre167 = load i64, i64* %3, align 8
  br label %block_.L_464e35

block_.L_464e35:                                  ; preds = %block_464e11, %block_.L_464e02
  %2884 = phi i64 [ %2863, %block_.L_464e02 ], [ %.pre167, %block_464e11 ]
  %MEMORY.33 = phi %struct.Memory* [ %call2_464c6a, %block_.L_464e02 ], [ %call2_464e30, %block_464e11 ]
  %2885 = load i64, i64* %RBP.i, align 8
  %2886 = add i64 %2885, -44
  %2887 = add i64 %2884, 7
  store i64 %2887, i64* %3, align 8
  %2888 = inttoptr i64 %2886 to i32*
  store i32 5, i32* %2888, align 4
  %2889 = load i64, i64* %3, align 8
  %2890 = add i64 %2889, 1786
  store i64 %2890, i64* %3, align 8
  br label %block_.L_465536

block_.L_464e41:                                  ; preds = %block_464dbe
  store i64 5, i64* %RAX.i1932, align 8
  %2891 = add i64 %2826, 11
  store i64 %2891, i64* %3, align 8
  %2892 = load i32, i32* %2815, align 4
  %2893 = sub i32 5, %2892
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RAX.i1932, align 8
  %2895 = icmp ugt i32 %2892, 5
  %2896 = zext i1 %2895 to i8
  store i8 %2896, i8* %40, align 1
  %2897 = and i32 %2893, 255
  %2898 = tail call i32 @llvm.ctpop.i32(i32 %2897)
  %2899 = trunc i32 %2898 to i8
  %2900 = and i8 %2899, 1
  %2901 = xor i8 %2900, 1
  store i8 %2901, i8* %47, align 1
  %2902 = xor i32 %2893, %2892
  %2903 = lshr i32 %2902, 4
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  store i8 %2905, i8* %52, align 1
  %2906 = icmp eq i32 %2893, 0
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %55, align 1
  %2908 = lshr i32 %2893, 31
  %2909 = trunc i32 %2908 to i8
  store i8 %2909, i8* %58, align 1
  %2910 = lshr i32 %2892, 31
  %2911 = add nuw nsw i32 %2908, %2910
  %2912 = icmp eq i32 %2911, 2
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %64, align 1
  %2914 = add i64 %2811, -548
  %2915 = add i64 %2826, 17
  store i64 %2915, i64* %3, align 8
  %2916 = inttoptr i64 %2914 to i32*
  %2917 = load i32, i32* %2916, align 4
  %2918 = sub i32 %2893, %2917
  %2919 = icmp ult i32 %2893, %2917
  %2920 = zext i1 %2919 to i8
  store i8 %2920, i8* %40, align 1
  %2921 = and i32 %2918, 255
  %2922 = tail call i32 @llvm.ctpop.i32(i32 %2921)
  %2923 = trunc i32 %2922 to i8
  %2924 = and i8 %2923, 1
  %2925 = xor i8 %2924, 1
  store i8 %2925, i8* %47, align 1
  %2926 = xor i32 %2917, %2893
  %2927 = xor i32 %2926, %2918
  %2928 = lshr i32 %2927, 4
  %2929 = trunc i32 %2928 to i8
  %2930 = and i8 %2929, 1
  store i8 %2930, i8* %52, align 1
  %2931 = icmp eq i32 %2918, 0
  %2932 = zext i1 %2931 to i8
  store i8 %2932, i8* %55, align 1
  %2933 = lshr i32 %2918, 31
  %2934 = trunc i32 %2933 to i8
  store i8 %2934, i8* %58, align 1
  %2935 = lshr i32 %2917, 31
  %2936 = xor i32 %2935, %2908
  %2937 = xor i32 %2933, %2908
  %2938 = add nuw nsw i32 %2937, %2936
  %2939 = icmp eq i32 %2938, 2
  %2940 = zext i1 %2939 to i8
  store i8 %2940, i8* %64, align 1
  %2941 = icmp ne i8 %2934, 0
  %2942 = xor i1 %2941, %2939
  %2943 = or i1 %2931, %2942
  %.v242 = select i1 %2943, i64 49, i64 23
  %2944 = add i64 %2826, %.v242
  store i64 %2944, i64* %3, align 8
  br i1 %2943, label %block_.L_464e72, label %block_464e58

block_464e58:                                     ; preds = %block_.L_464e41
  store i64 5, i64* %RAX.i1932, align 8
  %2945 = add i64 %2811, -76
  %2946 = add i64 %2944, 8
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i32*
  %2948 = load i32, i32* %2947, align 4
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %RCX.i1908, align 8
  %2950 = add i64 %2811, -544
  %2951 = add i64 %2944, 14
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i32*
  store i32 %2948, i32* %2952, align 4
  %2953 = load i64, i64* %RAX.i1932, align 8
  %2954 = load i64, i64* %RBP.i, align 8
  %2955 = add i64 %2954, -612
  %2956 = load i64, i64* %3, align 8
  %2957 = add i64 %2956, 6
  store i64 %2957, i64* %3, align 8
  %2958 = trunc i64 %2953 to i32
  %2959 = inttoptr i64 %2955 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = sub i32 %2958, %2960
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RAX.i1932, align 8
  %2963 = icmp ult i32 %2958, %2960
  %2964 = zext i1 %2963 to i8
  store i8 %2964, i8* %40, align 1
  %2965 = and i32 %2961, 255
  %2966 = tail call i32 @llvm.ctpop.i32(i32 %2965)
  %2967 = trunc i32 %2966 to i8
  %2968 = and i8 %2967, 1
  %2969 = xor i8 %2968, 1
  store i8 %2969, i8* %47, align 1
  %2970 = xor i32 %2960, %2958
  %2971 = xor i32 %2970, %2961
  %2972 = lshr i32 %2971, 4
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  store i8 %2974, i8* %52, align 1
  %2975 = icmp eq i32 %2961, 0
  %2976 = zext i1 %2975 to i8
  store i8 %2976, i8* %55, align 1
  %2977 = lshr i32 %2961, 31
  %2978 = trunc i32 %2977 to i8
  store i8 %2978, i8* %58, align 1
  %2979 = lshr i32 %2958, 31
  %2980 = lshr i32 %2960, 31
  %2981 = xor i32 %2980, %2979
  %2982 = xor i32 %2977, %2979
  %2983 = add nuw nsw i32 %2982, %2981
  %2984 = icmp eq i32 %2983, 2
  %2985 = zext i1 %2984 to i8
  store i8 %2985, i8* %64, align 1
  %2986 = add i64 %2954, -548
  %2987 = add i64 %2956, 12
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  store i32 %2961, i32* %2988, align 4
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_464e72

block_.L_464e72:                                  ; preds = %block_464e58, %block_.L_464e41
  %2989 = phi i64 [ %.pre168, %block_464e58 ], [ %2944, %block_.L_464e41 ]
  %2990 = add i64 %2989, 72
  store i64 %2990, i64* %3, align 8
  br label %block_.L_464eba

block_.L_464e81:                                  ; preds = %block_464db1
  %2991 = add i64 %2778, -29089
  %2992 = add i64 %2778, 24
  %2993 = load i64, i64* %6, align 8
  %2994 = add i64 %2993, -8
  %2995 = inttoptr i64 %2994 to i64*
  store i64 %2992, i64* %2995, align 8
  store i64 %2994, i64* %6, align 8
  store i64 %2991, i64* %3, align 8
  %call2_464e94 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %2991, %struct.Memory* %call2_464c6a)
  %2996 = load i32, i32* %EAX.i1884, align 4
  %2997 = load i64, i64* %3, align 8
  %2998 = add i32 %2996, -5
  %2999 = icmp ult i32 %2996, 5
  %3000 = zext i1 %2999 to i8
  store i8 %3000, i8* %40, align 1
  %3001 = and i32 %2998, 255
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %47, align 1
  %3006 = xor i32 %2998, %2996
  %3007 = lshr i32 %3006, 4
  %3008 = trunc i32 %3007 to i8
  %3009 = and i8 %3008, 1
  store i8 %3009, i8* %52, align 1
  %3010 = icmp eq i32 %2998, 0
  %3011 = zext i1 %3010 to i8
  store i8 %3011, i8* %55, align 1
  %3012 = lshr i32 %2998, 31
  %3013 = trunc i32 %3012 to i8
  store i8 %3013, i8* %58, align 1
  %3014 = lshr i32 %2996, 31
  %3015 = xor i32 %3012, %3014
  %3016 = add nuw nsw i32 %3015, %3014
  %3017 = icmp eq i32 %3016, 2
  %3018 = zext i1 %3017 to i8
  store i8 %3018, i8* %64, align 1
  %.v240 = select i1 %3010, i64 28, i64 9
  %3019 = add i64 %2997, %.v240
  store i64 %3019, i64* %3, align 8
  br i1 %3010, label %block_.L_464eb5, label %block_464ea2

block_464ea2:                                     ; preds = %block_.L_464e81
  %3020 = load i64, i64* %RBP.i, align 8
  %3021 = add i64 %3020, -76
  %3022 = add i64 %3019, 3
  store i64 %3022, i64* %3, align 8
  %3023 = inttoptr i64 %3021 to i32*
  %3024 = load i32, i32* %3023, align 4
  %3025 = zext i32 %3024 to i64
  store i64 %3025, i64* %RAX.i1932, align 8
  %3026 = add i64 %3020, -544
  %3027 = add i64 %3019, 9
  store i64 %3027, i64* %3, align 8
  %3028 = inttoptr i64 %3026 to i32*
  store i32 %3024, i32* %3028, align 4
  %3029 = load i64, i64* %RBP.i, align 8
  %3030 = add i64 %3029, -548
  %3031 = load i64, i64* %3, align 8
  %3032 = add i64 %3031, 10
  store i64 %3032, i64* %3, align 8
  %3033 = inttoptr i64 %3030 to i32*
  store i32 1, i32* %3033, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_464eb5

block_.L_464eb5:                                  ; preds = %block_464ea2, %block_.L_464e81
  %3034 = phi i64 [ %.pre169, %block_464ea2 ], [ %3019, %block_.L_464e81 ]
  %3035 = add i64 %3034, -356693
  %3036 = add i64 %3034, 5
  %3037 = load i64, i64* %6, align 8
  %3038 = add i64 %3037, -8
  %3039 = inttoptr i64 %3038 to i64*
  store i64 %3036, i64* %3039, align 8
  store i64 %3038, i64* %6, align 8
  store i64 %3035, i64* %3, align 8
  %call2_464eb5 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3035, %struct.Memory* %call2_464c6a)
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_464eba

block_.L_464eba:                                  ; preds = %block_.L_464eb5, %block_.L_464e72
  %3040 = phi i64 [ %.pre170, %block_.L_464eb5 ], [ %2990, %block_.L_464e72 ]
  %3041 = add i64 %3040, 5
  store i64 %3041, i64* %3, align 8
  br label %block_.L_464ebf

block_.L_464ebf:                                  ; preds = %block_.L_464eba, %block_.L_464cff
  %3042 = phi i64 [ %3041, %block_.L_464eba ], [ %2771, %block_.L_464cff ]
  %3043 = load i64, i64* %RBP.i, align 8
  %3044 = add i64 %3043, -552
  %3045 = add i64 %3042, 11
  store i64 %3045, i64* %3, align 8
  %3046 = inttoptr i64 %3044 to i32*
  %3047 = load i32, i32* %3046, align 4
  %3048 = add i32 %3047, 1
  %3049 = zext i32 %3048 to i64
  store i64 %3049, i64* %RAX.i1932, align 8
  %3050 = icmp eq i32 %3047, -1
  %3051 = icmp eq i32 %3048, 0
  %3052 = or i1 %3050, %3051
  %3053 = zext i1 %3052 to i8
  store i8 %3053, i8* %40, align 1
  %3054 = and i32 %3048, 255
  %3055 = tail call i32 @llvm.ctpop.i32(i32 %3054)
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = xor i8 %3057, 1
  store i8 %3058, i8* %47, align 1
  %3059 = xor i32 %3048, %3047
  %3060 = lshr i32 %3059, 4
  %3061 = trunc i32 %3060 to i8
  %3062 = and i8 %3061, 1
  store i8 %3062, i8* %52, align 1
  %3063 = zext i1 %3051 to i8
  store i8 %3063, i8* %55, align 1
  %3064 = lshr i32 %3048, 31
  %3065 = trunc i32 %3064 to i8
  store i8 %3065, i8* %58, align 1
  %3066 = lshr i32 %3047, 31
  %3067 = xor i32 %3064, %3066
  %3068 = add nuw nsw i32 %3067, %3064
  %3069 = icmp eq i32 %3068, 2
  %3070 = zext i1 %3069 to i8
  store i8 %3070, i8* %64, align 1
  %3071 = add i64 %3042, 20
  store i64 %3071, i64* %3, align 8
  store i32 %3048, i32* %3046, align 4
  %3072 = load i64, i64* %3, align 8
  %3073 = add i64 %3072, -600
  store i64 %3073, i64* %3, align 8
  br label %block_.L_464c7b

block_.L_464ed8:                                  ; preds = %block_.L_464c7b
  %3074 = add i64 %2514, 6
  store i64 %3074, i64* %3, align 8
  %3075 = load i32, i32* %2486, align 4
  %3076 = add i64 %2478, -540
  %3077 = add i64 %2514, 12
  store i64 %3077, i64* %3, align 8
  %3078 = inttoptr i64 %3076 to i32*
  store i32 %3075, i32* %3078, align 4
  %3079 = load i64, i64* %3, align 8
  %3080 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3081 = zext i32 %3080 to i64
  store i64 %3081, i64* %RAX.i1932, align 8
  %3082 = load i32, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  %3083 = sub i32 %3080, %3082
  %3084 = icmp ult i32 %3080, %3082
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %40, align 1
  %3086 = and i32 %3083, 255
  %3087 = tail call i32 @llvm.ctpop.i32(i32 %3086)
  %3088 = trunc i32 %3087 to i8
  %3089 = and i8 %3088, 1
  %3090 = xor i8 %3089, 1
  store i8 %3090, i8* %47, align 1
  %3091 = xor i32 %3082, %3080
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
  %3100 = lshr i32 %3080, 31
  %3101 = lshr i32 %3082, 31
  %3102 = xor i32 %3101, %3100
  %3103 = xor i32 %3098, %3100
  %3104 = add nuw nsw i32 %3103, %3102
  %3105 = icmp eq i32 %3104, 2
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %64, align 1
  %3107 = icmp ne i8 %3099, 0
  %3108 = xor i1 %3107, %3105
  %.demorgan190 = or i1 %3096, %3108
  %.v212 = select i1 %.demorgan190, i64 20, i64 40
  %3109 = add i64 %3079, %.v212
  store i64 %3109, i64* %3, align 8
  br i1 %.demorgan190, label %block_464ef8, label %block_.L_464f0c

block_464ef8:                                     ; preds = %block_.L_464ed8
  store i64 4, i64* %RSI.i1924, align 8
  %3110 = load i64, i64* %RBP.i, align 8
  %3111 = add i64 %3110, -536
  store i64 %3111, i64* %RDX.i1822.pre-phi, align 8
  %3112 = add i64 %3110, -48
  %3113 = add i64 %3109, 15
  store i64 %3113, i64* %3, align 8
  %3114 = inttoptr i64 %3112 to i32*
  %3115 = load i32, i32* %3114, align 4
  %3116 = zext i32 %3115 to i64
  store i64 %3116, i64* %RDI.i1847.pre-phi, align 8
  %3117 = add i64 %3109, 13176
  %3118 = add i64 %3109, 20
  %3119 = load i64, i64* %6, align 8
  %3120 = add i64 %3119, -8
  %3121 = inttoptr i64 %3120 to i64*
  store i64 %3118, i64* %3121, align 8
  store i64 %3120, i64* %6, align 8
  store i64 %3117, i64* %3, align 8
  %call2_464f07 = tail call %struct.Memory* @sub_468270.superstring_breakchain_moves(%struct.State* nonnull %0, i64 %3117, %struct.Memory* %call2_464c6a)
  %.pre139 = load i64, i64* %3, align 8
  %.pre140 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %.pre141 = load i32, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  br label %block_.L_464f0c

block_.L_464f0c:                                  ; preds = %block_.L_464ed8, %block_464ef8
  %3122 = phi i32 [ %3082, %block_.L_464ed8 ], [ %.pre141, %block_464ef8 ]
  %3123 = phi i32 [ %3080, %block_.L_464ed8 ], [ %.pre140, %block_464ef8 ]
  %3124 = phi i64 [ %3109, %block_.L_464ed8 ], [ %.pre139, %block_464ef8 ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_464c6a, %block_.L_464ed8 ], [ %call2_464f07, %block_464ef8 ]
  %3125 = zext i32 %3123 to i64
  store i64 %3125, i64* %RAX.i1932, align 8
  %3126 = sub i32 %3123, %3122
  %3127 = icmp ult i32 %3123, %3122
  %3128 = zext i1 %3127 to i8
  store i8 %3128, i8* %40, align 1
  %3129 = and i32 %3126, 255
  %3130 = tail call i32 @llvm.ctpop.i32(i32 %3129)
  %3131 = trunc i32 %3130 to i8
  %3132 = and i8 %3131, 1
  %3133 = xor i8 %3132, 1
  store i8 %3133, i8* %47, align 1
  %3134 = xor i32 %3122, %3123
  %3135 = xor i32 %3134, %3126
  %3136 = lshr i32 %3135, 4
  %3137 = trunc i32 %3136 to i8
  %3138 = and i8 %3137, 1
  store i8 %3138, i8* %52, align 1
  %3139 = icmp eq i32 %3126, 0
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %55, align 1
  %3141 = lshr i32 %3126, 31
  %3142 = trunc i32 %3141 to i8
  store i8 %3142, i8* %58, align 1
  %3143 = lshr i32 %3123, 31
  %3144 = lshr i32 %3122, 31
  %3145 = xor i32 %3144, %3143
  %3146 = xor i32 %3141, %3143
  %3147 = add nuw nsw i32 %3146, %3145
  %3148 = icmp eq i32 %3147, 2
  %3149 = zext i1 %3148 to i8
  store i8 %3149, i8* %64, align 1
  %3150 = icmp ne i8 %3142, 0
  %3151 = xor i1 %3150, %3148
  %.demorgan191 = or i1 %3139, %3151
  %.v213 = select i1 %.demorgan191, i64 20, i64 509
  %3152 = add i64 %3124, %.v213
  store i64 %3152, i64* %3, align 8
  %3153 = load i64, i64* %RBP.i, align 8
  br i1 %.demorgan191, label %block_464f20, label %block_.L_465109

block_464f20:                                     ; preds = %block_.L_464f0c
  %3154 = add i64 %3153, -616
  store i64 %3154, i64* %RSI.i1924, align 8
  store i64 3, i64* %RCX.i1908, align 8
  %3155 = add i64 %3153, -720
  store i64 %3155, i64* %RDX.i1822.pre-phi, align 8
  %3156 = add i64 %3153, -48
  %3157 = add i64 %3152, 22
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i32*
  %3159 = load i32, i32* %3158, align 4
  %3160 = zext i32 %3159 to i64
  store i64 %3160, i64* %RDI.i1847.pre-phi, align 8
  %3161 = add i64 %3152, 94608
  %3162 = add i64 %3152, 27
  %3163 = load i64, i64* %6, align 8
  %3164 = add i64 %3163, -8
  %3165 = inttoptr i64 %3164 to i64*
  store i64 %3162, i64* %3165, align 8
  store i64 %3164, i64* %6, align 8
  store i64 %3161, i64* %3, align 8
  %call2_464f36 = tail call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* nonnull %0, i64 %3161, %struct.Memory* %MEMORY.38)
  %3166 = load i64, i64* %RBP.i, align 8
  %3167 = add i64 %3166, -552
  %3168 = load i64, i64* %3, align 8
  %3169 = add i64 %3168, 10
  store i64 %3169, i64* %3, align 8
  %3170 = inttoptr i64 %3167 to i32*
  store i32 0, i32* %3170, align 4
  %.pre142 = load i64, i64* %3, align 8
  br label %block_.L_464f45

block_.L_464f45:                                  ; preds = %block_.L_46507b, %block_464f20
  %3171 = phi i64 [ %.pre142, %block_464f20 ], [ %3578, %block_.L_46507b ]
  %3172 = load i64, i64* %RBP.i, align 8
  %3173 = add i64 %3172, -552
  %3174 = add i64 %3171, 6
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RAX.i1932, align 8
  %3178 = add i64 %3172, -616
  %3179 = add i64 %3171, 12
  store i64 %3179, i64* %3, align 8
  %3180 = inttoptr i64 %3178 to i32*
  %3181 = load i32, i32* %3180, align 4
  %3182 = sub i32 %3176, %3181
  %3183 = icmp ult i32 %3176, %3181
  %3184 = zext i1 %3183 to i8
  store i8 %3184, i8* %40, align 1
  %3185 = and i32 %3182, 255
  %3186 = tail call i32 @llvm.ctpop.i32(i32 %3185)
  %3187 = trunc i32 %3186 to i8
  %3188 = and i8 %3187, 1
  %3189 = xor i8 %3188, 1
  store i8 %3189, i8* %47, align 1
  %3190 = xor i32 %3181, %3176
  %3191 = xor i32 %3190, %3182
  %3192 = lshr i32 %3191, 4
  %3193 = trunc i32 %3192 to i8
  %3194 = and i8 %3193, 1
  store i8 %3194, i8* %52, align 1
  %3195 = icmp eq i32 %3182, 0
  %3196 = zext i1 %3195 to i8
  store i8 %3196, i8* %55, align 1
  %3197 = lshr i32 %3182, 31
  %3198 = trunc i32 %3197 to i8
  store i8 %3198, i8* %58, align 1
  %3199 = lshr i32 %3176, 31
  %3200 = lshr i32 %3181, 31
  %3201 = xor i32 %3200, %3199
  %3202 = xor i32 %3197, %3199
  %3203 = add nuw nsw i32 %3202, %3201
  %3204 = icmp eq i32 %3203, 2
  %3205 = zext i1 %3204 to i8
  store i8 %3205, i8* %64, align 1
  %3206 = icmp ne i8 %3198, 0
  %3207 = xor i1 %3206, %3204
  %.v231 = select i1 %3207, i64 18, i64 330
  %3208 = add i64 %3171, %.v231
  store i64 %3208, i64* %3, align 8
  br i1 %3207, label %block_464f57, label %block_.L_46508f

block_464f57:                                     ; preds = %block_.L_464f45
  %3209 = add i64 %3208, 7
  store i64 %3209, i64* %3, align 8
  %3210 = load i32, i32* %3175, align 4
  %3211 = sext i32 %3210 to i64
  store i64 %3211, i64* %RAX.i1932, align 8
  %3212 = shl nsw i64 %3211, 2
  %3213 = add i64 %3172, -720
  %3214 = add i64 %3213, %3212
  %3215 = add i64 %3208, 14
  store i64 %3215, i64* %3, align 8
  %3216 = inttoptr i64 %3214 to i32*
  %3217 = load i32, i32* %3216, align 4
  %3218 = zext i32 %3217 to i64
  store i64 %3218, i64* %RCX.i1908, align 8
  %3219 = add i64 %3172, -724
  %3220 = add i64 %3208, 20
  store i64 %3220, i64* %3, align 8
  %3221 = inttoptr i64 %3219 to i32*
  store i32 %3217, i32* %3221, align 4
  %3222 = load i64, i64* %RBP.i, align 8
  %3223 = add i64 %3222, -724
  %3224 = load i64, i64* %3, align 8
  %3225 = add i64 %3224, 6
  store i64 %3225, i64* %3, align 8
  %3226 = inttoptr i64 %3223 to i32*
  %3227 = load i32, i32* %3226, align 4
  %3228 = zext i32 %3227 to i64
  store i64 %3228, i64* %RDI.i1847.pre-phi, align 8
  %3229 = add i64 %3222, -48
  %3230 = add i64 %3224, 9
  store i64 %3230, i64* %3, align 8
  %3231 = inttoptr i64 %3229 to i32*
  %3232 = load i32, i32* %3231, align 4
  %3233 = zext i32 %3232 to i64
  store i64 %3233, i64* %RSI.i1924, align 8
  %3234 = add i64 %3224, -328891
  %3235 = add i64 %3224, 14
  %3236 = load i64, i64* %6, align 8
  %3237 = add i64 %3236, -8
  %3238 = inttoptr i64 %3237 to i64*
  store i64 %3235, i64* %3238, align 8
  store i64 %3237, i64* %6, align 8
  store i64 %3234, i64* %3, align 8
  %call2_464f74 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %3234, %struct.Memory* %call2_464f36)
  %3239 = load i32, i32* %EAX.i1884, align 4
  %3240 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3241 = and i32 %3239, 255
  %3242 = tail call i32 @llvm.ctpop.i32(i32 %3241)
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = xor i8 %3244, 1
  store i8 %3245, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3246 = icmp eq i32 %3239, 0
  %3247 = zext i1 %3246 to i8
  store i8 %3247, i8* %55, align 1
  %3248 = lshr i32 %3239, 31
  %3249 = trunc i32 %3248 to i8
  store i8 %3249, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v234 = select i1 %3246, i64 14, i64 9
  %3250 = add i64 %3240, %.v234
  store i64 %3250, i64* %3, align 8
  br i1 %3246, label %block_.L_464f87, label %block_464f82

block_464f82:                                     ; preds = %block_464f57
  %3251 = add i64 %3250, 249
  br label %block_.L_46507b

block_.L_464f87:                                  ; preds = %block_464f57
  store i64 2, i64* %RDX.i1822.pre-phi, align 8
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RCX.i1908, align 8
  %3252 = load i64, i64* %RBP.i, align 8
  %3253 = add i64 %3252, -724
  %3254 = add i64 %3250, 15
  store i64 %3254, i64* %3, align 8
  %3255 = inttoptr i64 %3253 to i32*
  %3256 = load i32, i32* %3255, align 4
  %3257 = zext i32 %3256 to i64
  store i64 %3257, i64* %RDI.i1847.pre-phi, align 8
  %3258 = add i64 %3252, -68
  %3259 = add i64 %3250, 18
  store i64 %3259, i64* %3, align 8
  %3260 = inttoptr i64 %3258 to i32*
  %3261 = load i32, i32* %3260, align 4
  %3262 = zext i32 %3261 to i64
  store i64 %3262, i64* %RSI.i1924, align 8
  %3263 = add i64 %3250, -342487
  %3264 = add i64 %3250, 23
  %3265 = load i64, i64* %6, align 8
  %3266 = add i64 %3265, -8
  %3267 = inttoptr i64 %3266 to i64*
  store i64 %3264, i64* %3267, align 8
  store i64 %3266, i64* %6, align 8
  store i64 %3263, i64* %3, align 8
  %call2_464f99 = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %3263, %struct.Memory* %call2_464f36)
  %3268 = load i32, i32* %EAX.i1884, align 4
  %3269 = load i64, i64* %3, align 8
  %3270 = add i32 %3268, -1
  %3271 = icmp eq i32 %3268, 0
  %3272 = zext i1 %3271 to i8
  store i8 %3272, i8* %40, align 1
  %3273 = and i32 %3270, 255
  %3274 = tail call i32 @llvm.ctpop.i32(i32 %3273)
  %3275 = trunc i32 %3274 to i8
  %3276 = and i8 %3275, 1
  %3277 = xor i8 %3276, 1
  store i8 %3277, i8* %47, align 1
  %3278 = xor i32 %3270, %3268
  %3279 = lshr i32 %3278, 4
  %3280 = trunc i32 %3279 to i8
  %3281 = and i8 %3280, 1
  store i8 %3281, i8* %52, align 1
  %3282 = icmp eq i32 %3270, 0
  %3283 = zext i1 %3282 to i8
  store i8 %3283, i8* %55, align 1
  %3284 = lshr i32 %3270, 31
  %3285 = trunc i32 %3284 to i8
  store i8 %3285, i8* %58, align 1
  %3286 = lshr i32 %3268, 31
  %3287 = xor i32 %3284, %3286
  %3288 = add nuw nsw i32 %3287, %3286
  %3289 = icmp eq i32 %3288, 2
  %3290 = zext i1 %3289 to i8
  store i8 %3290, i8* %64, align 1
  %3291 = icmp ne i8 %3285, 0
  %3292 = xor i1 %3291, %3289
  %3293 = or i1 %3282, %3292
  %.v235 = select i1 %3293, i64 216, i64 9
  %3294 = add i64 %3269, %.v235
  store i64 %3294, i64* %3, align 8
  br i1 %3293, label %block_.L_465076, label %block_464fa7

block_464fa7:                                     ; preds = %block_.L_464f87
  %3295 = load i64, i64* %RBP.i, align 8
  %3296 = add i64 %3295, -728
  %3297 = add i64 %3294, 15
  store i64 %3297, i64* %3, align 8
  %3298 = inttoptr i64 %3296 to i32*
  store i32 0, i32* %3298, align 4
  %.pre145 = load i64, i64* %3, align 8
  br label %block_.L_464fb6

block_.L_464fb6:                                  ; preds = %block_.L_464fff, %block_464fa7
  %3299 = phi i64 [ %3425, %block_.L_464fff ], [ %.pre145, %block_464fa7 ]
  %3300 = load i64, i64* %RBP.i, align 8
  %3301 = add i64 %3300, -728
  %3302 = add i64 %3299, 6
  store i64 %3302, i64* %3, align 8
  %3303 = inttoptr i64 %3301 to i32*
  %3304 = load i32, i32* %3303, align 4
  %3305 = zext i32 %3304 to i64
  store i64 %3305, i64* %RAX.i1932, align 8
  %3306 = add i64 %3300, -136
  %3307 = add i64 %3299, 12
  store i64 %3307, i64* %3, align 8
  %3308 = inttoptr i64 %3306 to i32*
  %3309 = load i32, i32* %3308, align 4
  %3310 = sub i32 %3304, %3309
  %3311 = icmp ult i32 %3304, %3309
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %40, align 1
  %3313 = and i32 %3310, 255
  %3314 = tail call i32 @llvm.ctpop.i32(i32 %3313)
  %3315 = trunc i32 %3314 to i8
  %3316 = and i8 %3315, 1
  %3317 = xor i8 %3316, 1
  store i8 %3317, i8* %47, align 1
  %3318 = xor i32 %3309, %3304
  %3319 = xor i32 %3318, %3310
  %3320 = lshr i32 %3319, 4
  %3321 = trunc i32 %3320 to i8
  %3322 = and i8 %3321, 1
  store i8 %3322, i8* %52, align 1
  %3323 = icmp eq i32 %3310, 0
  %3324 = zext i1 %3323 to i8
  store i8 %3324, i8* %55, align 1
  %3325 = lshr i32 %3310, 31
  %3326 = trunc i32 %3325 to i8
  store i8 %3326, i8* %58, align 1
  %3327 = lshr i32 %3304, 31
  %3328 = lshr i32 %3309, 31
  %3329 = xor i32 %3328, %3327
  %3330 = xor i32 %3325, %3327
  %3331 = add nuw nsw i32 %3330, %3329
  %3332 = icmp eq i32 %3331, 2
  %3333 = zext i1 %3332 to i8
  store i8 %3333, i8* %64, align 1
  %3334 = icmp ne i8 %3326, 0
  %3335 = xor i1 %3334, %3332
  %.v196 = select i1 %3335, i64 18, i64 98
  %3336 = add i64 %3299, %.v196
  store i64 %3336, i64* %3, align 8
  br i1 %3335, label %block_464fc8, label %block_.L_465018.loopexit

block_464fc8:                                     ; preds = %block_.L_464fb6
  %3337 = add i64 %3336, 7
  store i64 %3337, i64* %3, align 8
  %3338 = load i32, i32* %3303, align 4
  %3339 = sext i32 %3338 to i64
  store i64 %3339, i64* %RAX.i1932, align 8
  %3340 = shl nsw i64 %3339, 2
  %3341 = add i64 %3300, -536
  %3342 = add i64 %3341, %3340
  %3343 = add i64 %3336, 14
  store i64 %3343, i64* %3, align 8
  %3344 = inttoptr i64 %3342 to i32*
  %3345 = load i32, i32* %3344, align 4
  %3346 = zext i32 %3345 to i64
  store i64 %3346, i64* %RCX.i1908, align 8
  %3347 = add i64 %3300, -724
  %3348 = add i64 %3336, 20
  store i64 %3348, i64* %3, align 8
  %3349 = inttoptr i64 %3347 to i32*
  %3350 = load i32, i32* %3349, align 4
  %3351 = sub i32 %3345, %3350
  %3352 = icmp ult i32 %3345, %3350
  %3353 = zext i1 %3352 to i8
  store i8 %3353, i8* %40, align 1
  %3354 = and i32 %3351, 255
  %3355 = tail call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  store i8 %3358, i8* %47, align 1
  %3359 = xor i32 %3350, %3345
  %3360 = xor i32 %3359, %3351
  %3361 = lshr i32 %3360, 4
  %3362 = trunc i32 %3361 to i8
  %3363 = and i8 %3362, 1
  store i8 %3363, i8* %52, align 1
  %3364 = icmp eq i32 %3351, 0
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %55, align 1
  %3366 = lshr i32 %3351, 31
  %3367 = trunc i32 %3366 to i8
  store i8 %3367, i8* %58, align 1
  %3368 = lshr i32 %3345, 31
  %3369 = lshr i32 %3350, 31
  %3370 = xor i32 %3369, %3368
  %3371 = xor i32 %3366, %3368
  %3372 = add nuw nsw i32 %3371, %3370
  %3373 = icmp eq i32 %3372, 2
  %3374 = zext i1 %3373 to i8
  store i8 %3374, i8* %64, align 1
  %.v195 = select i1 %3364, i64 26, i64 55
  %3375 = add i64 %3336, %.v195
  store i64 %3375, i64* %3, align 8
  br i1 %3364, label %block_464fe2, label %block_.L_464fff

block_464fe2:                                     ; preds = %block_464fc8
  %3376 = add i64 %3375, 7
  store i64 %3376, i64* %3, align 8
  %3377 = load i32, i32* %3303, align 4
  %3378 = sext i32 %3377 to i64
  store i64 %3378, i64* %RAX.i1932, align 8
  %3379 = shl nsw i64 %3378, 2
  %3380 = add i64 %3300, -336
  %3381 = add i64 %3380, %3379
  %3382 = add i64 %3375, 14
  store i64 %3382, i64* %3, align 8
  %3383 = inttoptr i64 %3381 to i32*
  %3384 = load i32, i32* %3383, align 4
  %3385 = zext i32 %3384 to i64
  store i64 %3385, i64* %RCX.i1908, align 8
  store i8 0, i8* %40, align 1
  %3386 = and i32 %3384, 255
  %3387 = tail call i32 @llvm.ctpop.i32(i32 %3386)
  %3388 = trunc i32 %3387 to i8
  %3389 = and i8 %3388, 1
  %3390 = xor i8 %3389, 1
  store i8 %3390, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3391 = icmp eq i32 %3384, 0
  %3392 = zext i1 %3391 to i8
  store i8 %3392, i8* %55, align 1
  %3393 = lshr i32 %3384, 31
  %3394 = trunc i32 %3393 to i8
  store i8 %3394, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %3395 = add i64 %3375, 24
  store i64 %3395, i64* %3, align 8
  store i32 %3384, i32* %3383, align 4
  %3396 = load i64, i64* %3, align 8
  %3397 = add i64 %3396, 30
  store i64 %3397, i64* %3, align 8
  %.pre146 = load i64, i64* %RBP.i, align 8
  br label %block_.L_465018

block_.L_464fff:                                  ; preds = %block_464fc8
  %3398 = add i64 %3375, 11
  store i64 %3398, i64* %3, align 8
  %3399 = load i32, i32* %3303, align 4
  %3400 = add i32 %3399, 1
  %3401 = zext i32 %3400 to i64
  store i64 %3401, i64* %RAX.i1932, align 8
  %3402 = icmp eq i32 %3399, -1
  %3403 = icmp eq i32 %3400, 0
  %3404 = or i1 %3402, %3403
  %3405 = zext i1 %3404 to i8
  store i8 %3405, i8* %40, align 1
  %3406 = and i32 %3400, 255
  %3407 = tail call i32 @llvm.ctpop.i32(i32 %3406)
  %3408 = trunc i32 %3407 to i8
  %3409 = and i8 %3408, 1
  %3410 = xor i8 %3409, 1
  store i8 %3410, i8* %47, align 1
  %3411 = xor i32 %3400, %3399
  %3412 = lshr i32 %3411, 4
  %3413 = trunc i32 %3412 to i8
  %3414 = and i8 %3413, 1
  store i8 %3414, i8* %52, align 1
  %3415 = zext i1 %3403 to i8
  store i8 %3415, i8* %55, align 1
  %3416 = lshr i32 %3400, 31
  %3417 = trunc i32 %3416 to i8
  store i8 %3417, i8* %58, align 1
  %3418 = lshr i32 %3399, 31
  %3419 = xor i32 %3416, %3418
  %3420 = add nuw nsw i32 %3419, %3416
  %3421 = icmp eq i32 %3420, 2
  %3422 = zext i1 %3421 to i8
  store i8 %3422, i8* %64, align 1
  %3423 = add i64 %3375, 20
  store i64 %3423, i64* %3, align 8
  store i32 %3400, i32* %3303, align 4
  %3424 = load i64, i64* %3, align 8
  %3425 = add i64 %3424, -93
  store i64 %3425, i64* %3, align 8
  br label %block_.L_464fb6

block_.L_465018.loopexit:                         ; preds = %block_.L_464fb6
  br label %block_.L_465018

block_.L_465018:                                  ; preds = %block_.L_465018.loopexit, %block_464fe2
  %3426 = phi i64 [ %3397, %block_464fe2 ], [ %3336, %block_.L_465018.loopexit ]
  %3427 = phi i64 [ %.pre146, %block_464fe2 ], [ %3300, %block_.L_465018.loopexit ]
  %3428 = add i64 %3427, -728
  %3429 = add i64 %3426, 6
  store i64 %3429, i64* %3, align 8
  %3430 = inttoptr i64 %3428 to i32*
  %3431 = load i32, i32* %3430, align 4
  %3432 = zext i32 %3431 to i64
  store i64 %3432, i64* %RAX.i1932, align 8
  %3433 = add i64 %3427, -136
  %3434 = add i64 %3426, 12
  store i64 %3434, i64* %3, align 8
  %3435 = inttoptr i64 %3433 to i32*
  %3436 = load i32, i32* %3435, align 4
  %3437 = sub i32 %3431, %3436
  %3438 = icmp ult i32 %3431, %3436
  %3439 = zext i1 %3438 to i8
  store i8 %3439, i8* %40, align 1
  %3440 = and i32 %3437, 255
  %3441 = tail call i32 @llvm.ctpop.i32(i32 %3440)
  %3442 = trunc i32 %3441 to i8
  %3443 = and i8 %3442, 1
  %3444 = xor i8 %3443, 1
  store i8 %3444, i8* %47, align 1
  %3445 = xor i32 %3436, %3431
  %3446 = xor i32 %3445, %3437
  %3447 = lshr i32 %3446, 4
  %3448 = trunc i32 %3447 to i8
  %3449 = and i8 %3448, 1
  store i8 %3449, i8* %52, align 1
  %3450 = icmp eq i32 %3437, 0
  %3451 = zext i1 %3450 to i8
  store i8 %3451, i8* %55, align 1
  %3452 = lshr i32 %3437, 31
  %3453 = trunc i32 %3452 to i8
  store i8 %3453, i8* %58, align 1
  %3454 = lshr i32 %3431, 31
  %3455 = lshr i32 %3436, 31
  %3456 = xor i32 %3455, %3454
  %3457 = xor i32 %3452, %3454
  %3458 = add nuw nsw i32 %3457, %3456
  %3459 = icmp eq i32 %3458, 2
  %3460 = zext i1 %3459 to i8
  store i8 %3460, i8* %64, align 1
  %.v236 = select i1 %3450, i64 18, i64 84
  %3461 = add i64 %3426, %.v236
  store i64 %3461, i64* %3, align 8
  br i1 %3450, label %block_46502a, label %block_.L_46506c

block_46502a:                                     ; preds = %block_.L_465018
  %3462 = add i64 %3461, 7
  store i64 %3462, i64* %3, align 8
  %3463 = load i32, i32* %3435, align 4
  %3464 = add i32 %3463, -50
  %3465 = icmp ult i32 %3463, 50
  %3466 = zext i1 %3465 to i8
  store i8 %3466, i8* %40, align 1
  %3467 = and i32 %3464, 255
  %3468 = tail call i32 @llvm.ctpop.i32(i32 %3467)
  %3469 = trunc i32 %3468 to i8
  %3470 = and i8 %3469, 1
  %3471 = xor i8 %3470, 1
  store i8 %3471, i8* %47, align 1
  %3472 = xor i32 %3463, 16
  %3473 = xor i32 %3472, %3464
  %3474 = lshr i32 %3473, 4
  %3475 = trunc i32 %3474 to i8
  %3476 = and i8 %3475, 1
  store i8 %3476, i8* %52, align 1
  %3477 = icmp eq i32 %3464, 0
  %3478 = zext i1 %3477 to i8
  store i8 %3478, i8* %55, align 1
  %3479 = lshr i32 %3464, 31
  %3480 = trunc i32 %3479 to i8
  store i8 %3480, i8* %58, align 1
  %3481 = lshr i32 %3463, 31
  %3482 = xor i32 %3479, %3481
  %3483 = add nuw nsw i32 %3482, %3481
  %3484 = icmp eq i32 %3483, 2
  %3485 = zext i1 %3484 to i8
  store i8 %3485, i8* %64, align 1
  %3486 = icmp ne i8 %3480, 0
  %3487 = xor i1 %3486, %3484
  %.v237 = select i1 %3487, i64 13, i64 66
  %3488 = add i64 %3461, %.v237
  store i64 %3488, i64* %3, align 8
  br i1 %3487, label %block_465037, label %block_.L_46506c

block_465037:                                     ; preds = %block_46502a
  %3489 = add i64 %3427, -724
  %3490 = add i64 %3488, 6
  store i64 %3490, i64* %3, align 8
  %3491 = inttoptr i64 %3489 to i32*
  %3492 = load i32, i32* %3491, align 4
  %3493 = zext i32 %3492 to i64
  store i64 %3493, i64* %RAX.i1932, align 8
  %3494 = add i64 %3488, 13
  store i64 %3494, i64* %3, align 8
  %3495 = load i32, i32* %3435, align 4
  %3496 = sext i32 %3495 to i64
  store i64 %3496, i64* %RCX.i1908, align 8
  %3497 = shl nsw i64 %3496, 2
  %3498 = add i64 %3427, -536
  %3499 = add i64 %3498, %3497
  %3500 = add i64 %3488, 20
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3499 to i32*
  store i32 %3492, i32* %3501, align 4
  %3502 = load i64, i64* %RBP.i, align 8
  %3503 = add i64 %3502, -136
  %3504 = load i64, i64* %3, align 8
  %3505 = add i64 %3504, 7
  store i64 %3505, i64* %3, align 8
  %3506 = inttoptr i64 %3503 to i32*
  %3507 = load i32, i32* %3506, align 4
  %3508 = sext i32 %3507 to i64
  store i64 %3508, i64* %RCX.i1908, align 8
  %3509 = shl nsw i64 %3508, 2
  %3510 = add i64 %3502, -336
  %3511 = add i64 %3510, %3509
  %3512 = add i64 %3504, 18
  store i64 %3512, i64* %3, align 8
  %3513 = inttoptr i64 %3511 to i32*
  store i32 0, i32* %3513, align 4
  %3514 = load i64, i64* %RBP.i, align 8
  %3515 = add i64 %3514, -136
  %3516 = load i64, i64* %3, align 8
  %3517 = add i64 %3516, 6
  store i64 %3517, i64* %3, align 8
  %3518 = inttoptr i64 %3515 to i32*
  %3519 = load i32, i32* %3518, align 4
  %3520 = add i32 %3519, 1
  %3521 = zext i32 %3520 to i64
  store i64 %3521, i64* %RAX.i1932, align 8
  %3522 = icmp eq i32 %3519, -1
  %3523 = icmp eq i32 %3520, 0
  %3524 = or i1 %3522, %3523
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %40, align 1
  %3526 = and i32 %3520, 255
  %3527 = tail call i32 @llvm.ctpop.i32(i32 %3526)
  %3528 = trunc i32 %3527 to i8
  %3529 = and i8 %3528, 1
  %3530 = xor i8 %3529, 1
  store i8 %3530, i8* %47, align 1
  %3531 = xor i32 %3520, %3519
  %3532 = lshr i32 %3531, 4
  %3533 = trunc i32 %3532 to i8
  %3534 = and i8 %3533, 1
  store i8 %3534, i8* %52, align 1
  %3535 = zext i1 %3523 to i8
  store i8 %3535, i8* %55, align 1
  %3536 = lshr i32 %3520, 31
  %3537 = trunc i32 %3536 to i8
  store i8 %3537, i8* %58, align 1
  %3538 = lshr i32 %3519, 31
  %3539 = xor i32 %3536, %3538
  %3540 = add nuw nsw i32 %3539, %3536
  %3541 = icmp eq i32 %3540, 2
  %3542 = zext i1 %3541 to i8
  store i8 %3542, i8* %64, align 1
  %3543 = add i64 %3516, 15
  store i64 %3543, i64* %3, align 8
  store i32 %3520, i32* %3518, align 4
  %.pre147 = load i64, i64* %3, align 8
  br label %block_.L_46506c

block_.L_46506c:                                  ; preds = %block_.L_465018, %block_46502a, %block_465037
  %3544 = phi i64 [ %3488, %block_46502a ], [ %.pre147, %block_465037 ], [ %3461, %block_.L_465018 ]
  %3545 = add i64 %3544, 10
  store i64 %3545, i64* %3, align 8
  br label %block_.L_465076

block_.L_465076:                                  ; preds = %block_.L_46506c, %block_.L_464f87
  %3546 = phi i64 [ %3545, %block_.L_46506c ], [ %3294, %block_.L_464f87 ]
  %3547 = add i64 %3546, 5
  store i64 %3547, i64* %3, align 8
  br label %block_.L_46507b

block_.L_46507b:                                  ; preds = %block_.L_465076, %block_464f82
  %storemerge = phi i64 [ %3251, %block_464f82 ], [ %3547, %block_.L_465076 ]
  %3548 = load i64, i64* %RBP.i, align 8
  %3549 = add i64 %3548, -552
  %3550 = add i64 %storemerge, 6
  store i64 %3550, i64* %3, align 8
  %3551 = inttoptr i64 %3549 to i32*
  %3552 = load i32, i32* %3551, align 4
  %3553 = add i32 %3552, 1
  %3554 = zext i32 %3553 to i64
  store i64 %3554, i64* %RAX.i1932, align 8
  %3555 = icmp eq i32 %3552, -1
  %3556 = icmp eq i32 %3553, 0
  %3557 = or i1 %3555, %3556
  %3558 = zext i1 %3557 to i8
  store i8 %3558, i8* %40, align 1
  %3559 = and i32 %3553, 255
  %3560 = tail call i32 @llvm.ctpop.i32(i32 %3559)
  %3561 = trunc i32 %3560 to i8
  %3562 = and i8 %3561, 1
  %3563 = xor i8 %3562, 1
  store i8 %3563, i8* %47, align 1
  %3564 = xor i32 %3553, %3552
  %3565 = lshr i32 %3564, 4
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  store i8 %3567, i8* %52, align 1
  %3568 = zext i1 %3556 to i8
  store i8 %3568, i8* %55, align 1
  %3569 = lshr i32 %3553, 31
  %3570 = trunc i32 %3569 to i8
  store i8 %3570, i8* %58, align 1
  %3571 = lshr i32 %3552, 31
  %3572 = xor i32 %3569, %3571
  %3573 = add nuw nsw i32 %3572, %3569
  %3574 = icmp eq i32 %3573, 2
  %3575 = zext i1 %3574 to i8
  store i8 %3575, i8* %64, align 1
  %3576 = add i64 %storemerge, 15
  store i64 %3576, i64* %3, align 8
  store i32 %3553, i32* %3551, align 4
  %3577 = load i64, i64* %3, align 8
  %3578 = add i64 %3577, -325
  store i64 %3578, i64* %3, align 8
  br label %block_.L_464f45

block_.L_46508f:                                  ; preds = %block_.L_464f45
  %3579 = add i64 %3208, 10
  store i64 %3579, i64* %3, align 8
  store i32 0, i32* %3175, align 4
  %.pre143 = load i64, i64* %3, align 8
  br label %block_.L_465099

block_.L_465099:                                  ; preds = %block_.L_4650f0, %block_.L_46508f
  %3580 = phi i64 [ %.pre143, %block_.L_46508f ], [ %3709, %block_.L_4650f0 ]
  %3581 = load i64, i64* %RBP.i, align 8
  %3582 = add i64 %3581, -552
  %3583 = add i64 %3580, 6
  store i64 %3583, i64* %3, align 8
  %3584 = inttoptr i64 %3582 to i32*
  %3585 = load i32, i32* %3584, align 4
  %3586 = zext i32 %3585 to i64
  store i64 %3586, i64* %RAX.i1932, align 8
  %3587 = add i64 %3581, -616
  %3588 = add i64 %3580, 12
  store i64 %3588, i64* %3, align 8
  %3589 = inttoptr i64 %3587 to i32*
  %3590 = load i32, i32* %3589, align 4
  %3591 = sub i32 %3585, %3590
  %3592 = icmp ult i32 %3585, %3590
  %3593 = zext i1 %3592 to i8
  store i8 %3593, i8* %40, align 1
  %3594 = and i32 %3591, 255
  %3595 = tail call i32 @llvm.ctpop.i32(i32 %3594)
  %3596 = trunc i32 %3595 to i8
  %3597 = and i8 %3596, 1
  %3598 = xor i8 %3597, 1
  store i8 %3598, i8* %47, align 1
  %3599 = xor i32 %3590, %3585
  %3600 = xor i32 %3599, %3591
  %3601 = lshr i32 %3600, 4
  %3602 = trunc i32 %3601 to i8
  %3603 = and i8 %3602, 1
  store i8 %3603, i8* %52, align 1
  %3604 = icmp eq i32 %3591, 0
  %3605 = zext i1 %3604 to i8
  store i8 %3605, i8* %55, align 1
  %3606 = lshr i32 %3591, 31
  %3607 = trunc i32 %3606 to i8
  store i8 %3607, i8* %58, align 1
  %3608 = lshr i32 %3585, 31
  %3609 = lshr i32 %3590, 31
  %3610 = xor i32 %3609, %3608
  %3611 = xor i32 %3606, %3608
  %3612 = add nuw nsw i32 %3611, %3610
  %3613 = icmp eq i32 %3612, 2
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %64, align 1
  %3615 = icmp ne i8 %3607, 0
  %3616 = xor i1 %3615, %3613
  %.v232 = select i1 %3616, i64 18, i64 107
  %3617 = add i64 %3580, %.v232
  store i64 %3617, i64* %3, align 8
  br i1 %3616, label %block_4650ab, label %block_.L_465104

block_4650ab:                                     ; preds = %block_.L_465099
  %3618 = add i64 %3617, 7
  store i64 %3618, i64* %3, align 8
  %3619 = load i32, i32* %3584, align 4
  %3620 = sext i32 %3619 to i64
  store i64 %3620, i64* %RAX.i1932, align 8
  %3621 = shl nsw i64 %3620, 2
  %3622 = add i64 %3581, -720
  %3623 = add i64 %3622, %3621
  %3624 = add i64 %3617, 14
  store i64 %3624, i64* %3, align 8
  %3625 = inttoptr i64 %3623 to i32*
  %3626 = load i32, i32* %3625, align 4
  %3627 = zext i32 %3626 to i64
  store i64 %3627, i64* %RCX.i1908, align 8
  %3628 = add i64 %3581, -732
  %3629 = add i64 %3617, 20
  store i64 %3629, i64* %3, align 8
  %3630 = inttoptr i64 %3628 to i32*
  store i32 %3626, i32* %3630, align 4
  %3631 = load i64, i64* %RBP.i, align 8
  %3632 = add i64 %3631, -732
  %3633 = load i64, i64* %3, align 8
  %3634 = add i64 %3633, 6
  store i64 %3634, i64* %3, align 8
  %3635 = inttoptr i64 %3632 to i32*
  %3636 = load i32, i32* %3635, align 4
  %3637 = zext i32 %3636 to i64
  store i64 %3637, i64* %RDI.i1847.pre-phi, align 8
  %3638 = add i64 %3631, -48
  %3639 = add i64 %3633, 9
  store i64 %3639, i64* %3, align 8
  %3640 = inttoptr i64 %3638 to i32*
  %3641 = load i32, i32* %3640, align 4
  %3642 = zext i32 %3641 to i64
  store i64 %3642, i64* %RSI.i1924, align 8
  %3643 = add i64 %3633, -329231
  %3644 = add i64 %3633, 14
  %3645 = load i64, i64* %6, align 8
  %3646 = add i64 %3645, -8
  %3647 = inttoptr i64 %3646 to i64*
  store i64 %3644, i64* %3647, align 8
  store i64 %3646, i64* %6, align 8
  store i64 %3643, i64* %3, align 8
  %call2_4650c8 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %3643, %struct.Memory* %call2_464f36)
  %3648 = load i32, i32* %EAX.i1884, align 4
  %3649 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3650 = and i32 %3648, 255
  %3651 = tail call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  store i8 %3654, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %3655 = icmp eq i32 %3648, 0
  %3656 = zext i1 %3655 to i8
  store i8 %3656, i8* %55, align 1
  %3657 = lshr i32 %3648, 31
  %3658 = trunc i32 %3657 to i8
  store i8 %3658, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v233 = select i1 %3655, i64 14, i64 9
  %3659 = add i64 %3649, %.v233
  store i64 %3659, i64* %3, align 8
  br i1 %3655, label %block_.L_4650db, label %block_4650d6

block_4650d6:                                     ; preds = %block_4650ab
  %3660 = add i64 %3659, 26
  store i64 %3660, i64* %3, align 8
  br label %block_.L_4650f0

block_.L_4650db:                                  ; preds = %block_4650ab
  %3661 = load i64, i64* %RBP.i, align 8
  %3662 = add i64 %3661, -536
  store i64 %3662, i64* %RDX.i1822.pre-phi, align 8
  %3663 = add i64 %3661, -48
  %3664 = add i64 %3659, 10
  store i64 %3664, i64* %3, align 8
  %3665 = inttoptr i64 %3663 to i32*
  %3666 = load i32, i32* %3665, align 4
  %3667 = zext i32 %3666 to i64
  store i64 %3667, i64* %RDI.i1847.pre-phi, align 8
  %3668 = add i64 %3661, -732
  %3669 = add i64 %3659, 16
  store i64 %3669, i64* %3, align 8
  %3670 = inttoptr i64 %3668 to i32*
  %3671 = load i32, i32* %3670, align 4
  %3672 = zext i32 %3671 to i64
  store i64 %3672, i64* %RSI.i1924, align 8
  %3673 = add i64 %3659, 12277
  %3674 = add i64 %3659, 21
  %3675 = load i64, i64* %6, align 8
  %3676 = add i64 %3675, -8
  %3677 = inttoptr i64 %3676 to i64*
  store i64 %3674, i64* %3677, align 8
  store i64 %3676, i64* %6, align 8
  store i64 %3673, i64* %3, align 8
  %call2_4650eb = tail call %struct.Memory* @sub_4680d0.special_rescue_moves(%struct.State* nonnull %0, i64 %3673, %struct.Memory* %call2_464f36)
  %.pre144 = load i64, i64* %3, align 8
  br label %block_.L_4650f0

block_.L_4650f0:                                  ; preds = %block_.L_4650db, %block_4650d6
  %3678 = phi i64 [ %.pre144, %block_.L_4650db ], [ %3660, %block_4650d6 ]
  %3679 = load i64, i64* %RBP.i, align 8
  %3680 = add i64 %3679, -552
  %3681 = add i64 %3678, 6
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i32*
  %3683 = load i32, i32* %3682, align 4
  %3684 = add i32 %3683, 1
  %3685 = zext i32 %3684 to i64
  store i64 %3685, i64* %RAX.i1932, align 8
  %3686 = icmp eq i32 %3683, -1
  %3687 = icmp eq i32 %3684, 0
  %3688 = or i1 %3686, %3687
  %3689 = zext i1 %3688 to i8
  store i8 %3689, i8* %40, align 1
  %3690 = and i32 %3684, 255
  %3691 = tail call i32 @llvm.ctpop.i32(i32 %3690)
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  %3694 = xor i8 %3693, 1
  store i8 %3694, i8* %47, align 1
  %3695 = xor i32 %3684, %3683
  %3696 = lshr i32 %3695, 4
  %3697 = trunc i32 %3696 to i8
  %3698 = and i8 %3697, 1
  store i8 %3698, i8* %52, align 1
  %3699 = zext i1 %3687 to i8
  store i8 %3699, i8* %55, align 1
  %3700 = lshr i32 %3684, 31
  %3701 = trunc i32 %3700 to i8
  store i8 %3701, i8* %58, align 1
  %3702 = lshr i32 %3683, 31
  %3703 = xor i32 %3700, %3702
  %3704 = add nuw nsw i32 %3703, %3700
  %3705 = icmp eq i32 %3704, 2
  %3706 = zext i1 %3705 to i8
  store i8 %3706, i8* %64, align 1
  %3707 = add i64 %3678, 15
  store i64 %3707, i64* %3, align 8
  store i32 %3684, i32* %3682, align 4
  %3708 = load i64, i64* %3, align 8
  %3709 = add i64 %3708, -102
  store i64 %3709, i64* %3, align 8
  br label %block_.L_465099

block_.L_465104:                                  ; preds = %block_.L_465099
  %3710 = add i64 %3617, 5
  store i64 %3710, i64* %3, align 8
  br label %block_.L_465109

block_.L_465109:                                  ; preds = %block_.L_464f0c, %block_.L_465104
  %3711 = phi i64 [ %3710, %block_.L_465104 ], [ %3152, %block_.L_464f0c ]
  %3712 = phi i64 [ %3581, %block_.L_465104 ], [ %3153, %block_.L_464f0c ]
  %MEMORY.47 = phi %struct.Memory* [ %call2_464f36, %block_.L_465104 ], [ %MEMORY.38, %block_.L_464f0c ]
  %3713 = add i64 %3712, -536
  store i64 %3713, i64* %RSI.i1924, align 8
  %3714 = add i64 %3712, -48
  %3715 = add i64 %3711, 10
  store i64 %3715, i64* %3, align 8
  %3716 = inttoptr i64 %3714 to i32*
  %3717 = load i32, i32* %3716, align 4
  %3718 = zext i32 %3717 to i64
  store i64 %3718, i64* %RDI.i1847.pre-phi, align 8
  %3719 = add i64 %3711, 6423
  %3720 = add i64 %3711, 15
  %3721 = load i64, i64* %6, align 8
  %3722 = add i64 %3721, -8
  %3723 = inttoptr i64 %3722 to i64*
  store i64 %3720, i64* %3723, align 8
  store i64 %3722, i64* %6, align 8
  store i64 %3719, i64* %3, align 8
  %call2_465113 = tail call %struct.Memory* @sub_466a20.break_chain2_defense_moves(%struct.State* nonnull %0, i64 %3719, %struct.Memory* %MEMORY.47)
  %3724 = load i64, i64* %3, align 8
  %3725 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RDI.i1847.pre-phi, align 8
  %3727 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %3728 = sub i32 %3725, %3727
  %3729 = icmp ult i32 %3725, %3727
  %3730 = zext i1 %3729 to i8
  store i8 %3730, i8* %40, align 1
  %3731 = and i32 %3728, 255
  %3732 = tail call i32 @llvm.ctpop.i32(i32 %3731)
  %3733 = trunc i32 %3732 to i8
  %3734 = and i8 %3733, 1
  %3735 = xor i8 %3734, 1
  store i8 %3735, i8* %47, align 1
  %3736 = xor i32 %3727, %3725
  %3737 = xor i32 %3736, %3728
  %3738 = lshr i32 %3737, 4
  %3739 = trunc i32 %3738 to i8
  %3740 = and i8 %3739, 1
  store i8 %3740, i8* %52, align 1
  %3741 = icmp eq i32 %3728, 0
  %3742 = zext i1 %3741 to i8
  store i8 %3742, i8* %55, align 1
  %3743 = lshr i32 %3728, 31
  %3744 = trunc i32 %3743 to i8
  store i8 %3744, i8* %58, align 1
  %3745 = lshr i32 %3725, 31
  %3746 = lshr i32 %3727, 31
  %3747 = xor i32 %3746, %3745
  %3748 = xor i32 %3743, %3745
  %3749 = add nuw nsw i32 %3748, %3747
  %3750 = icmp eq i32 %3749, 2
  %3751 = zext i1 %3750 to i8
  store i8 %3751, i8* %64, align 1
  %3752 = icmp ne i8 %3744, 0
  %3753 = xor i1 %3752, %3750
  %.demorgan192 = or i1 %3741, %3753
  %.v214 = select i1 %.demorgan192, i64 20, i64 39
  %3754 = add i64 %3724, %.v214
  store i64 %3754, i64* %3, align 8
  br i1 %.demorgan192, label %block_46512c, label %block_.L_46513f

block_46512c:                                     ; preds = %block_.L_465109
  %3755 = load i64, i64* %RBP.i, align 8
  %3756 = add i64 %3755, -536
  store i64 %3756, i64* %RDX.i1822.pre-phi, align 8
  %3757 = add i64 %3755, -88
  store i64 %3757, i64* %RSI.i1924, align 8
  %3758 = add i64 %3755, -48
  %3759 = add i64 %3754, 14
  store i64 %3759, i64* %3, align 8
  %3760 = inttoptr i64 %3758 to i32*
  %3761 = load i32, i32* %3760, align 4
  %3762 = zext i32 %3761 to i64
  store i64 %3762, i64* %RDI.i1847.pre-phi, align 8
  %3763 = add i64 %3754, 13092
  %3764 = add i64 %3754, 19
  %3765 = load i64, i64* %6, align 8
  %3766 = add i64 %3765, -8
  %3767 = inttoptr i64 %3766 to i64*
  store i64 %3764, i64* %3767, align 8
  store i64 %3766, i64* %6, align 8
  store i64 %3763, i64* %3, align 8
  %call2_46513a = tail call %struct.Memory* @sub_468450.special_rescue5_moves(%struct.State* nonnull %0, i64 %3763, %struct.Memory* %call2_465113)
  %.pre149 = load i64, i64* %3, align 8
  %.pre150 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  br label %block_.L_46513f

block_.L_46513f:                                  ; preds = %block_.L_465109, %block_46512c
  %3768 = phi i32 [ %3725, %block_.L_465109 ], [ %.pre150, %block_46512c ]
  %3769 = phi i64 [ %3754, %block_.L_465109 ], [ %.pre149, %block_46512c ]
  %MEMORY.48 = phi %struct.Memory* [ %call2_465113, %block_.L_465109 ], [ %call2_46513a, %block_46512c ]
  %3770 = zext i32 %3768 to i64
  store i64 %3770, i64* %RAX.i1932, align 8
  %3771 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %3772 = sub i32 %3768, %3771
  %3773 = icmp ult i32 %3768, %3771
  %3774 = zext i1 %3773 to i8
  store i8 %3774, i8* %40, align 1
  %3775 = and i32 %3772, 255
  %3776 = tail call i32 @llvm.ctpop.i32(i32 %3775)
  %3777 = trunc i32 %3776 to i8
  %3778 = and i8 %3777, 1
  %3779 = xor i8 %3778, 1
  store i8 %3779, i8* %47, align 1
  %3780 = xor i32 %3771, %3768
  %3781 = xor i32 %3780, %3772
  %3782 = lshr i32 %3781, 4
  %3783 = trunc i32 %3782 to i8
  %3784 = and i8 %3783, 1
  store i8 %3784, i8* %52, align 1
  %3785 = icmp eq i32 %3772, 0
  %3786 = zext i1 %3785 to i8
  store i8 %3786, i8* %55, align 1
  %3787 = lshr i32 %3772, 31
  %3788 = trunc i32 %3787 to i8
  store i8 %3788, i8* %58, align 1
  %3789 = lshr i32 %3768, 31
  %3790 = lshr i32 %3771, 31
  %3791 = xor i32 %3790, %3789
  %3792 = xor i32 %3787, %3789
  %3793 = add nuw nsw i32 %3792, %3791
  %3794 = icmp eq i32 %3793, 2
  %3795 = zext i1 %3794 to i8
  store i8 %3795, i8* %64, align 1
  %3796 = icmp ne i8 %3788, 0
  %3797 = xor i1 %3796, %3794
  %.demorgan193 = or i1 %3785, %3797
  %.v215 = select i1 %.demorgan193, i64 20, i64 35
  %3798 = add i64 %3769, %.v215
  store i64 %3798, i64* %3, align 8
  br i1 %.demorgan193, label %block_465153, label %block_.L_465162

block_465153:                                     ; preds = %block_.L_46513f
  %3799 = load i64, i64* %RBP.i, align 8
  %3800 = add i64 %3799, -536
  store i64 %3800, i64* %RSI.i1924, align 8
  %3801 = add i64 %3799, -48
  %3802 = add i64 %3798, 10
  store i64 %3802, i64* %3, align 8
  %3803 = inttoptr i64 %3801 to i32*
  %3804 = load i32, i32* %3803, align 4
  %3805 = zext i32 %3804 to i64
  store i64 %3805, i64* %RDI.i1847.pre-phi, align 8
  %3806 = add i64 %3798, 15357
  %3807 = add i64 %3798, 15
  %3808 = load i64, i64* %6, align 8
  %3809 = add i64 %3808, -8
  %3810 = inttoptr i64 %3809 to i64*
  store i64 %3807, i64* %3810, align 8
  store i64 %3809, i64* %6, align 8
  store i64 %3806, i64* %3, align 8
  %call2_46515d = tail call %struct.Memory* @sub_468d50.break_chain3_moves(%struct.State* nonnull %0, i64 %3806, %struct.Memory* %MEMORY.48)
  %.pre151 = load i64, i64* %3, align 8
  br label %block_.L_465162

block_.L_465162:                                  ; preds = %block_.L_46513f, %block_465153
  %3811 = phi i64 [ %3798, %block_.L_46513f ], [ %.pre151, %block_465153 ]
  %MEMORY.49 = phi %struct.Memory* [ %MEMORY.48, %block_.L_46513f ], [ %call2_46515d, %block_465153 ]
  %3812 = load i64, i64* %RBP.i, align 8
  %3813 = add i64 %3812, -536
  store i64 %3813, i64* %RSI.i1924, align 8
  %3814 = add i64 %3812, -48
  %3815 = add i64 %3811, 10
  store i64 %3815, i64* %3, align 8
  %3816 = inttoptr i64 %3814 to i32*
  %3817 = load i32, i32* %3816, align 4
  %3818 = zext i32 %3817 to i64
  store i64 %3818, i64* %RDI.i1847.pre-phi, align 8
  %3819 = add i64 %3812, -72
  %3820 = add i64 %3811, 13
  store i64 %3820, i64* %3, align 8
  %3821 = inttoptr i64 %3819 to i32*
  %3822 = load i32, i32* %3821, align 4
  %3823 = zext i32 %3822 to i64
  store i64 %3823, i64* %RDX.i1822.pre-phi, align 8
  %3824 = add i64 %3812, -568
  %3825 = add i64 %3811, 20
  store i64 %3825, i64* %3, align 8
  %3826 = inttoptr i64 %3824 to i64*
  %3827 = load i64, i64* %3826, align 8
  store i64 %3827, i64* %RCX.i1908, align 8
  %3828 = add i64 %3812, -540
  %3829 = add i64 %3811, 27
  store i64 %3829, i64* %3, align 8
  %3830 = inttoptr i64 %3828 to i32*
  %3831 = load i32, i32* %3830, align 4
  %3832 = zext i32 %3831 to i64
  store i64 %3832, i64* %R8.i1930, align 8
  %3833 = add i64 %3811, -9426
  %3834 = add i64 %3811, 32
  %3835 = load i64, i64* %6, align 8
  %3836 = add i64 %3835, -8
  %3837 = inttoptr i64 %3836 to i64*
  store i64 %3834, i64* %3837, align 8
  store i64 %3836, i64* %6, align 8
  store i64 %3833, i64* %3, align 8
  %call2_46517d = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %3833, %struct.Memory* %MEMORY.49)
  %3838 = load i64, i64* %RBP.i, align 8
  %3839 = add i64 %3838, -540
  %3840 = load i64, i64* %3, align 8
  %3841 = add i64 %3840, 6
  store i64 %3841, i64* %3, align 8
  %3842 = inttoptr i64 %3839 to i32*
  %3843 = load i32, i32* %3842, align 4
  %3844 = zext i32 %3843 to i64
  store i64 %3844, i64* %RDX.i1822.pre-phi, align 8
  %3845 = add i64 %3838, -552
  %3846 = add i64 %3840, 12
  store i64 %3846, i64* %3, align 8
  %3847 = inttoptr i64 %3845 to i32*
  store i32 %3843, i32* %3847, align 4
  %.pre152 = load i64, i64* %3, align 8
  br label %block_.L_46518e

block_.L_46518e:                                  ; preds = %block_.L_4653d2, %block_.L_465162
  %3848 = phi i64 [ %.pre152, %block_.L_465162 ], [ %4444, %block_.L_4653d2 ]
  %3849 = load i64, i64* %RBP.i, align 8
  %3850 = add i64 %3849, -552
  %3851 = add i64 %3848, 6
  store i64 %3851, i64* %3, align 8
  %3852 = inttoptr i64 %3850 to i32*
  %3853 = load i32, i32* %3852, align 4
  %3854 = zext i32 %3853 to i64
  store i64 %3854, i64* %RAX.i1932, align 8
  %3855 = add i64 %3849, -136
  %3856 = add i64 %3848, 12
  store i64 %3856, i64* %3, align 8
  %3857 = inttoptr i64 %3855 to i32*
  %3858 = load i32, i32* %3857, align 4
  %3859 = sub i32 %3853, %3858
  %3860 = icmp ult i32 %3853, %3858
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %40, align 1
  %3862 = and i32 %3859, 255
  %3863 = tail call i32 @llvm.ctpop.i32(i32 %3862)
  %3864 = trunc i32 %3863 to i8
  %3865 = and i8 %3864, 1
  %3866 = xor i8 %3865, 1
  store i8 %3866, i8* %47, align 1
  %3867 = xor i32 %3858, %3853
  %3868 = xor i32 %3867, %3859
  %3869 = lshr i32 %3868, 4
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  store i8 %3871, i8* %52, align 1
  %3872 = icmp eq i32 %3859, 0
  %3873 = zext i1 %3872 to i8
  store i8 %3873, i8* %55, align 1
  %3874 = lshr i32 %3859, 31
  %3875 = trunc i32 %3874 to i8
  store i8 %3875, i8* %58, align 1
  %3876 = lshr i32 %3853, 31
  %3877 = lshr i32 %3858, 31
  %3878 = xor i32 %3877, %3876
  %3879 = xor i32 %3874, %3876
  %3880 = add nuw nsw i32 %3879, %3878
  %3881 = icmp eq i32 %3880, 2
  %3882 = zext i1 %3881 to i8
  store i8 %3882, i8* %64, align 1
  %3883 = icmp ne i8 %3875, 0
  %3884 = xor i1 %3883, %3881
  %.v194 = select i1 %3884, i64 18, i64 605
  %3885 = add i64 %3848, %.v194
  store i64 %3885, i64* %3, align 8
  br i1 %3884, label %block_4651a0, label %block_.L_4653eb

block_4651a0:                                     ; preds = %block_.L_46518e
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i8 0, i8* %CL.i1585, align 1
  %3886 = add i64 %3885, 11
  store i64 %3886, i64* %3, align 8
  %3887 = load i32, i32* %3852, align 4
  %3888 = sext i32 %3887 to i64
  store i64 %3888, i64* %RDX.i1822.pre-phi, align 8
  %3889 = shl nsw i64 %3888, 2
  %3890 = add i64 %3849, -536
  %3891 = add i64 %3890, %3889
  %3892 = add i64 %3885, 18
  store i64 %3892, i64* %3, align 8
  %3893 = inttoptr i64 %3891 to i32*
  %3894 = load i32, i32* %3893, align 4
  %3895 = zext i32 %3894 to i64
  store i64 %3895, i64* %RAX.i1932, align 8
  %3896 = add i64 %3849, -76
  %3897 = add i64 %3885, 21
  store i64 %3897, i64* %3, align 8
  %3898 = inttoptr i64 %3896 to i32*
  store i32 %3894, i32* %3898, align 4
  %3899 = load i64, i64* %RBP.i, align 8
  %3900 = add i64 %3899, -76
  %3901 = load i64, i64* %3, align 8
  %3902 = add i64 %3901, 3
  store i64 %3902, i64* %3, align 8
  %3903 = inttoptr i64 %3900 to i32*
  %3904 = load i32, i32* %3903, align 4
  %3905 = zext i32 %3904 to i64
  store i64 %3905, i64* %RDI.i1847.pre-phi, align 8
  %3906 = add i64 %3899, -68
  %3907 = add i64 %3901, 6
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3906 to i32*
  %3909 = load i32, i32* %3908, align 4
  %3910 = zext i32 %3909 to i64
  store i64 %3910, i64* %RSI.i1924, align 8
  %3911 = add i64 %3899, -48
  %3912 = add i64 %3901, 9
  store i64 %3912, i64* %3, align 8
  %3913 = inttoptr i64 %3911 to i32*
  %3914 = load i32, i32* %3913, align 4
  %3915 = zext i32 %3914 to i64
  store i64 %3915, i64* %RAX.i1932, align 8
  %3916 = add i64 %3899, -60
  %3917 = add i64 %3901, 13
  store i64 %3917, i64* %3, align 8
  %3918 = inttoptr i64 %3916 to i32*
  %3919 = load i32, i32* %3918, align 4
  %3920 = zext i32 %3919 to i64
  store i64 %3920, i64* %R8.i1930, align 8
  %3921 = add i64 %3899, -64
  %3922 = add i64 %3901, 17
  store i64 %3922, i64* %3, align 8
  %3923 = inttoptr i64 %3921 to i32*
  %3924 = load i32, i32* %3923, align 4
  %3925 = zext i32 %3924 to i64
  store i64 %3925, i64* %870, align 8
  %3926 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3927 = zext i32 %3926 to i64
  store i64 %3927, i64* %872, align 8
  %3928 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %3929 = sub i32 %3926, %3928
  %3930 = icmp ult i32 %3926, %3928
  %3931 = zext i1 %3930 to i8
  store i8 %3931, i8* %40, align 1
  %3932 = and i32 %3929, 255
  %3933 = tail call i32 @llvm.ctpop.i32(i32 %3932)
  %3934 = trunc i32 %3933 to i8
  %3935 = and i8 %3934, 1
  %3936 = xor i8 %3935, 1
  store i8 %3936, i8* %47, align 1
  %3937 = xor i32 %3928, %3926
  %3938 = xor i32 %3937, %3929
  %3939 = lshr i32 %3938, 4
  %3940 = trunc i32 %3939 to i8
  %3941 = and i8 %3940, 1
  store i8 %3941, i8* %52, align 1
  %3942 = icmp eq i32 %3929, 0
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %55, align 1
  %3944 = lshr i32 %3929, 31
  %3945 = trunc i32 %3944 to i8
  store i8 %3945, i8* %58, align 1
  %3946 = lshr i32 %3926, 31
  %3947 = lshr i32 %3928, 31
  %3948 = xor i32 %3947, %3946
  %3949 = xor i32 %3944, %3946
  %3950 = add nuw nsw i32 %3949, %3948
  %3951 = icmp eq i32 %3950, 2
  %3952 = zext i1 %3951 to i8
  store i8 %3952, i8* %64, align 1
  %3953 = add i64 %3899, -880
  %3954 = add i64 %3901, 40
  store i64 %3954, i64* %3, align 8
  %3955 = inttoptr i64 %3953 to i32*
  store i32 %3924, i32* %3955, align 4
  %3956 = load i64, i64* %RBP.i, align 8
  %3957 = add i64 %3956, -884
  %3958 = load i32, i32* %EDI.i1927, align 4
  %3959 = load i64, i64* %3, align 8
  %3960 = add i64 %3959, 6
  store i64 %3960, i64* %3, align 8
  %3961 = inttoptr i64 %3957 to i32*
  store i32 %3958, i32* %3961, align 4
  %3962 = load i64, i64* %RBP.i, align 8
  %3963 = add i64 %3962, -888
  %3964 = load i32, i32* %ESI.i1546, align 4
  %3965 = load i64, i64* %3, align 8
  %3966 = add i64 %3965, 6
  store i64 %3966, i64* %3, align 8
  %3967 = inttoptr i64 %3963 to i32*
  store i32 %3964, i32* %3967, align 4
  %3968 = load i64, i64* %RBP.i, align 8
  %3969 = add i64 %3968, -892
  %3970 = load i32, i32* %EAX.i1884, align 4
  %3971 = load i64, i64* %3, align 8
  %3972 = add i64 %3971, 6
  store i64 %3972, i64* %3, align 8
  %3973 = inttoptr i64 %3969 to i32*
  store i32 %3970, i32* %3973, align 4
  %3974 = load i64, i64* %RBP.i, align 8
  %3975 = add i64 %3974, -896
  %3976 = load i32, i32* %R8D.i1675, align 4
  %3977 = load i64, i64* %3, align 8
  %3978 = add i64 %3977, 7
  store i64 %3978, i64* %3, align 8
  %3979 = inttoptr i64 %3975 to i32*
  store i32 %3976, i32* %3979, align 4
  %3980 = load i64, i64* %RBP.i, align 8
  %3981 = add i64 %3980, -897
  %3982 = load i8, i8* %CL.i1585, align 1
  %3983 = load i64, i64* %3, align 8
  %3984 = add i64 %3983, 6
  store i64 %3984, i64* %3, align 8
  %3985 = inttoptr i64 %3981 to i8*
  store i8 %3982, i8* %3985, align 1
  %3986 = load i64, i64* %3, align 8
  %3987 = add i64 %3986, 22
  %3988 = add i64 %3986, 6
  %3989 = load i8, i8* %55, align 1
  %3990 = icmp eq i8 %3989, 0
  %3991 = load i8, i8* %58, align 1
  %3992 = icmp ne i8 %3991, 0
  %3993 = load i8, i8* %64, align 1
  %3994 = icmp ne i8 %3993, 0
  %3995 = xor i1 %3992, %3994
  %3996 = xor i1 %3995, true
  %3997 = and i1 %3990, %3996
  %3998 = select i1 %3997, i64 %3987, i64 %3988
  store i64 %3998, i64* %3, align 8
  br i1 %3997, label %block_.L_465212, label %block_465202

block_465202:                                     ; preds = %block_4651a0
  %3999 = load i64, i64* %RBP.i, align 8
  %4000 = add i64 %3999, -548
  %4001 = add i64 %3998, 7
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i32*
  %4003 = load i32, i32* %4002, align 4
  store i8 0, i8* %40, align 1
  %4004 = and i32 %4003, 255
  %4005 = tail call i32 @llvm.ctpop.i32(i32 %4004)
  %4006 = trunc i32 %4005 to i8
  %4007 = and i8 %4006, 1
  %4008 = xor i8 %4007, 1
  store i8 %4008, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4009 = icmp eq i32 %4003, 0
  %4010 = zext i1 %4009 to i8
  store i8 %4010, i8* %55, align 1
  %4011 = lshr i32 %4003, 31
  %4012 = trunc i32 %4011 to i8
  store i8 %4012, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 %4010, i8* %AL.i1584, align 1
  %4013 = add i64 %3999, -897
  %4014 = add i64 %3998, 16
  store i64 %4014, i64* %3, align 8
  %4015 = inttoptr i64 %4013 to i8*
  store i8 %4010, i8* %4015, align 1
  %.pre159 = load i64, i64* %3, align 8
  br label %block_.L_465212

block_.L_465212:                                  ; preds = %block_465202, %block_4651a0
  %4016 = phi i64 [ %.pre159, %block_465202 ], [ %3987, %block_4651a0 ]
  %4017 = load i64, i64* %RBP.i, align 8
  %4018 = add i64 %4017, -897
  %4019 = add i64 %4016, 6
  store i64 %4019, i64* %3, align 8
  %4020 = inttoptr i64 %4018 to i8*
  %4021 = load i8, i8* %4020, align 1
  store i64 ptrtoint (%G__0x57fd73_type* @G__0x57fd73 to i64), i64* %RDX.i1822.pre-phi, align 8
  %4022 = add i64 %4017, -736
  store i64 %4022, i64* %RCX.i1908, align 8
  %4023 = add i64 %4017, -740
  store i64 %4023, i64* %RSI.i1924, align 8
  %4024 = add i64 %4017, -744
  store i64 %4024, i64* %RDI.i1847.pre-phi, align 8
  %4025 = and i8 %4021, 1
  store i8 %4025, i8* %AL.i1584, align 1
  store i8 0, i8* %40, align 1
  %4026 = zext i8 %4025 to i32
  %4027 = tail call i32 @llvm.ctpop.i32(i32 %4026)
  %4028 = trunc i32 %4027 to i8
  %4029 = xor i8 %4028, 1
  store i8 %4029, i8* %47, align 1
  %4030 = xor i8 %4025, 1
  store i8 %4030, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  %4031 = zext i8 %4025 to i64
  store i64 %4031, i64* %R8.i1930, align 8
  %4032 = add i64 %4017, -884
  %4033 = add i64 %4016, 50
  store i64 %4033, i64* %3, align 8
  %4034 = inttoptr i64 %4032 to i32*
  %4035 = load i32, i32* %4034, align 4
  %4036 = zext i32 %4035 to i64
  store i64 %4036, i64* %870, align 8
  %4037 = add i64 %4017, -912
  %4038 = add i64 %4016, 57
  store i64 %4038, i64* %3, align 8
  %4039 = inttoptr i64 %4037 to i64*
  store i64 %4024, i64* %4039, align 8
  %4040 = load i32, i32* %R9D.i1559, align 4
  %4041 = zext i32 %4040 to i64
  %4042 = load i64, i64* %3, align 8
  store i64 %4041, i64* %RDI.i1847.pre-phi, align 8
  %4043 = load i64, i64* %RBP.i, align 8
  %4044 = add i64 %4043, -888
  %4045 = add i64 %4042, 10
  store i64 %4045, i64* %3, align 8
  %4046 = inttoptr i64 %4044 to i32*
  %4047 = load i32, i32* %4046, align 4
  %4048 = zext i32 %4047 to i64
  store i64 %4048, i64* %872, align 8
  %4049 = add i64 %4043, -920
  %4050 = load i64, i64* %RSI.i1924, align 8
  %4051 = add i64 %4042, 17
  store i64 %4051, i64* %3, align 8
  %4052 = inttoptr i64 %4049 to i64*
  store i64 %4050, i64* %4052, align 8
  %4053 = load i32, i32* %R10D.i1557, align 4
  %4054 = zext i32 %4053 to i64
  %4055 = load i64, i64* %3, align 8
  store i64 %4054, i64* %RSI.i1924, align 8
  %4056 = load i64, i64* %RBP.i, align 8
  %4057 = add i64 %4056, -892
  %4058 = add i64 %4055, 10
  store i64 %4058, i64* %3, align 8
  %4059 = inttoptr i64 %4057 to i32*
  %4060 = load i32, i32* %4059, align 4
  %4061 = zext i32 %4060 to i64
  store i64 %4061, i64* %874, align 8
  %4062 = add i64 %4056, -928
  %4063 = load i64, i64* %RCX.i1908, align 8
  %4064 = add i64 %4055, 17
  store i64 %4064, i64* %3, align 8
  %4065 = inttoptr i64 %4062 to i64*
  store i64 %4063, i64* %4065, align 8
  %4066 = load i32, i32* %R11D.i1489, align 4
  %4067 = zext i32 %4066 to i64
  %4068 = load i64, i64* %3, align 8
  store i64 %4067, i64* %RCX.i1908, align 8
  %4069 = load i64, i64* %RBP.i, align 8
  %4070 = add i64 %4069, -896
  %4071 = add i64 %4068, 9
  store i64 %4071, i64* %3, align 8
  %4072 = inttoptr i64 %4070 to i32*
  %4073 = load i32, i32* %4072, align 4
  %4074 = zext i32 %4073 to i64
  store i64 %4074, i64* %RBX.i1936, align 8
  %4075 = add i64 %4069, -932
  %4076 = load i32, i32* %R8D.i1675, align 4
  %4077 = add i64 %4068, 16
  store i64 %4077, i64* %3, align 8
  %4078 = inttoptr i64 %4075 to i32*
  store i32 %4076, i32* %4078, align 4
  %4079 = load i32, i32* %EBX.i1474, align 4
  %4080 = zext i32 %4079 to i64
  %4081 = load i64, i64* %3, align 8
  store i64 %4080, i64* %R8.i1930, align 8
  %4082 = load i64, i64* %RBP.i, align 8
  %4083 = add i64 %4082, -880
  %4084 = add i64 %4081, 10
  store i64 %4084, i64* %3, align 8
  %4085 = inttoptr i64 %4083 to i32*
  %4086 = load i32, i32* %4085, align 4
  %4087 = zext i32 %4086 to i64
  store i64 %4087, i64* %870, align 8
  %4088 = add i64 %4082, -928
  %4089 = add i64 %4081, 17
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4088 to i64*
  %4091 = load i64, i64* %4090, align 8
  store i64 %4091, i64* %R14.i1942, align 8
  %4092 = load i64*, i64** %875, align 8
  %4093 = add i64 %4081, 21
  store i64 %4093, i64* %3, align 8
  store i64 %4091, i64* %4092, align 8
  %4094 = load i64, i64* %RBP.i, align 8
  %4095 = add i64 %4094, -920
  %4096 = load i64, i64* %3, align 8
  %4097 = add i64 %4096, 7
  store i64 %4097, i64* %3, align 8
  %4098 = inttoptr i64 %4095 to i64*
  %4099 = load i64, i64* %4098, align 8
  store i64 %4099, i64* %R15.i1785, align 8
  %4100 = load i64, i64* %6, align 8
  %4101 = add i64 %4100, 8
  %4102 = add i64 %4096, 12
  store i64 %4102, i64* %3, align 8
  %4103 = inttoptr i64 %4101 to i64*
  store i64 %4099, i64* %4103, align 8
  %4104 = load i64, i64* %RBP.i, align 8
  %4105 = add i64 %4104, -912
  %4106 = load i64, i64* %3, align 8
  %4107 = add i64 %4106, 7
  store i64 %4107, i64* %3, align 8
  %4108 = inttoptr i64 %4105 to i64*
  %4109 = load i64, i64* %4108, align 8
  store i64 %4109, i64* %R12.i1938, align 8
  %4110 = load i64, i64* %6, align 8
  %4111 = add i64 %4110, 16
  %4112 = add i64 %4106, 12
  store i64 %4112, i64* %3, align 8
  %4113 = inttoptr i64 %4111 to i64*
  store i64 %4109, i64* %4113, align 8
  %4114 = load i64, i64* %RBP.i, align 8
  %4115 = add i64 %4114, -932
  %4116 = load i64, i64* %3, align 8
  %4117 = add i64 %4116, 7
  store i64 %4117, i64* %3, align 8
  %4118 = inttoptr i64 %4115 to i32*
  %4119 = load i32, i32* %4118, align 4
  %4120 = zext i32 %4119 to i64
  store i64 %4120, i64* %R13.i1940, align 8
  %4121 = load i64, i64* %6, align 8
  %4122 = add i64 %4121, 24
  %4123 = add i64 %4116, 12
  store i64 %4123, i64* %3, align 8
  %4124 = inttoptr i64 %4122 to i32*
  store i32 %4119, i32* %4124, align 4
  %4125 = load i64, i64* %3, align 8
  %4126 = add i64 %4125, -353478
  %4127 = add i64 %4125, 5
  %4128 = load i64, i64* %6, align 8
  %4129 = add i64 %4128, -8
  %4130 = inttoptr i64 %4129 to i64*
  store i64 %4127, i64* %4130, align 8
  store i64 %4129, i64* %6, align 8
  store i64 %4126, i64* %3, align 8
  %call2_4652b6 = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %4126, %struct.Memory* %call2_46517d)
  %4131 = load i32, i32* %EAX.i1884, align 4
  %4132 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %4133 = and i32 %4131, 255
  %4134 = tail call i32 @llvm.ctpop.i32(i32 %4133)
  %4135 = trunc i32 %4134 to i8
  %4136 = and i8 %4135, 1
  %4137 = xor i8 %4136, 1
  store i8 %4137, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4138 = icmp eq i32 %4131, 0
  %4139 = zext i1 %4138 to i8
  store i8 %4139, i8* %55, align 1
  %4140 = lshr i32 %4131, 31
  %4141 = trunc i32 %4140 to i8
  store i8 %4141, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v224 = select i1 %4138, i64 279, i64 9
  %4142 = add i64 %4132, %.v224
  store i64 %4142, i64* %3, align 8
  br i1 %4138, label %block_.L_4653d2, label %block_4652c4

block_4652c4:                                     ; preds = %block_.L_465212
  %4143 = load i64, i64* %RBP.i, align 8
  %4144 = add i64 %4143, -744
  %4145 = add i64 %4142, 7
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i32*
  %4147 = load i32, i32* %4146, align 4
  %4148 = icmp eq i32 %4147, 0
  %.v225 = select i1 %4148, i64 13, i64 208
  %4149 = add i64 %4142, %.v225
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %RSI.i1924, align 8
  %4150 = add i64 %4143, -48
  %4151 = add i64 %4149, 7
  store i64 %4151, i64* %3, align 8
  %4152 = inttoptr i64 %4150 to i32*
  %4153 = load i32, i32* %4152, align 4
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RDI.i1847.pre-phi, align 8
  %4155 = add i64 %4143, -736
  %4156 = add i64 %4149, 13
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = zext i32 %4158 to i64
  store i64 %4159, i64* %RDX.i1822.pre-phi, align 8
  %4160 = add i64 %4143, -740
  %4161 = add i64 %4149, 19
  store i64 %4161, i64* %3, align 8
  %4162 = inttoptr i64 %4160 to i32*
  %4163 = load i32, i32* %4162, align 4
  %4164 = zext i32 %4163 to i64
  store i64 %4164, i64* %RCX.i1908, align 8
  br i1 %4148, label %block_4652d1, label %block_.L_465394

block_4652d1:                                     ; preds = %block_4652c4
  %4165 = add i64 %4149, -30193
  %4166 = add i64 %4149, 24
  %4167 = load i64, i64* %6, align 8
  %4168 = add i64 %4167, -8
  %4169 = inttoptr i64 %4168 to i64*
  store i64 %4166, i64* %4169, align 8
  store i64 %4168, i64* %6, align 8
  store i64 %4165, i64* %3, align 8
  %call2_4652e4 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %4165, %struct.Memory* %call2_46517d)
  %4170 = load i64, i64* %RBP.i, align 8
  %4171 = add i64 %4170, -748
  %4172 = load i32, i32* %EAX.i1884, align 4
  %4173 = load i64, i64* %3, align 8
  %4174 = add i64 %4173, 6
  store i64 %4174, i64* %3, align 8
  %4175 = inttoptr i64 %4171 to i32*
  store i32 %4172, i32* %4175, align 4
  %4176 = load i64, i64* %3, align 8
  %4177 = add i64 %4176, -357775
  %4178 = add i64 %4176, 5
  %4179 = load i64, i64* %6, align 8
  %4180 = add i64 %4179, -8
  %4181 = inttoptr i64 %4180 to i64*
  store i64 %4178, i64* %4181, align 8
  store i64 %4180, i64* %6, align 8
  store i64 %4177, i64* %3, align 8
  %call2_4652ef = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %4177, %struct.Memory* %call2_46517d)
  %4182 = load i64, i64* %RBP.i, align 8
  %4183 = add i64 %4182, -748
  %4184 = load i64, i64* %3, align 8
  %4185 = add i64 %4184, 7
  store i64 %4185, i64* %3, align 8
  %4186 = inttoptr i64 %4183 to i32*
  %4187 = load i32, i32* %4186, align 4
  store i8 0, i8* %40, align 1
  %4188 = and i32 %4187, 255
  %4189 = tail call i32 @llvm.ctpop.i32(i32 %4188)
  %4190 = trunc i32 %4189 to i8
  %4191 = and i8 %4190, 1
  %4192 = xor i8 %4191, 1
  store i8 %4192, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4193 = icmp eq i32 %4187, 0
  %4194 = zext i1 %4193 to i8
  store i8 %4194, i8* %55, align 1
  %4195 = lshr i32 %4187, 31
  %4196 = trunc i32 %4195 to i8
  store i8 %4196, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v227 = select i1 %4193, i64 13, i64 96
  %4197 = add i64 %4184, %.v227
  store i64 %4197, i64* %3, align 8
  br i1 %4193, label %block_465301, label %block_.L_465354

block_465301:                                     ; preds = %block_4652d1
  %4198 = add i64 %4182, -56
  %4199 = add i64 %4197, 5
  store i64 %4199, i64* %3, align 8
  %4200 = inttoptr i64 %4198 to i64*
  %4201 = load i64, i64* %4200, align 8
  store i8 0, i8* %40, align 1
  %4202 = trunc i64 %4201 to i32
  %4203 = and i32 %4202, 255
  %4204 = tail call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  store i8 %4207, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4208 = icmp eq i64 %4201, 0
  %4209 = zext i1 %4208 to i8
  store i8 %4209, i8* %55, align 1
  %4210 = lshr i64 %4201, 63
  %4211 = trunc i64 %4210 to i8
  store i8 %4211, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v229 = select i1 %4208, i64 20, i64 11
  %4212 = add i64 %4197, %.v229
  store i64 %4212, i64* %3, align 8
  br i1 %4208, label %block_.L_465315, label %block_46530c

block_46530c:                                     ; preds = %block_465301
  %4213 = add i64 %4182, -76
  %4214 = add i64 %4212, 3
  store i64 %4214, i64* %3, align 8
  %4215 = inttoptr i64 %4213 to i32*
  %4216 = load i32, i32* %4215, align 4
  %4217 = zext i32 %4216 to i64
  store i64 %4217, i64* %RAX.i1932, align 8
  %4218 = add i64 %4212, 7
  store i64 %4218, i64* %3, align 8
  %4219 = load i64, i64* %4200, align 8
  store i64 %4219, i64* %RCX.i1908, align 8
  %4220 = add i64 %4212, 9
  store i64 %4220, i64* %3, align 8
  %4221 = inttoptr i64 %4219 to i32*
  store i32 %4216, i32* %4221, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_465315

block_.L_465315:                                  ; preds = %block_46530c, %block_465301
  %4222 = phi i64 [ %.pre160, %block_46530c ], [ %4212, %block_465301 ]
  %4223 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4224 = trunc i64 %4223 to i32
  %4225 = and i32 %4224, 255
  %4226 = tail call i32 @llvm.ctpop.i32(i32 %4225)
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  %4229 = xor i8 %4228, 1
  store i8 %4229, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4230 = icmp eq i64 %4223, 0
  %4231 = zext i1 %4230 to i8
  store i8 %4231, i8* %55, align 1
  %4232 = lshr i64 %4223, 63
  %4233 = trunc i64 %4232 to i8
  store i8 %4233, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v230 = select i1 %4230, i64 51, i64 15
  %4234 = add i64 %4222, %.v230
  store i64 %4234, i64* %3, align 8
  br i1 %4230, label %block_.L_465348, label %block_465324

block_465324:                                     ; preds = %block_.L_465315
  store i64 5, i64* %RCX.i1908, align 8
  store i64 ptrtoint (%G__0x57fc87_type* @G__0x57fc87 to i64), i64* %R8.i1930, align 8
  %4235 = load i64, i64* %RBP.i, align 8
  %4236 = add i64 %4235, -568
  %4237 = add i64 %4234, 22
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i64*
  %4239 = load i64, i64* %4238, align 8
  store i64 %4239, i64* %RDI.i1847.pre-phi, align 8
  %4240 = add i64 %4235, -572
  %4241 = add i64 %4234, 28
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4240 to i32*
  %4243 = load i32, i32* %4242, align 4
  %4244 = zext i32 %4243 to i64
  store i64 %4244, i64* %RSI.i1924, align 8
  %4245 = add i64 %4235, -76
  %4246 = add i64 %4234, 31
  store i64 %4246, i64* %3, align 8
  %4247 = inttoptr i64 %4245 to i32*
  %4248 = load i32, i32* %4247, align 4
  %4249 = zext i32 %4248 to i64
  store i64 %4249, i64* %RDX.i1822.pre-phi, align 8
  %4250 = add i64 %4234, -316260
  %4251 = add i64 %4234, 36
  %4252 = load i64, i64* %6, align 8
  %4253 = add i64 %4252, -8
  %4254 = inttoptr i64 %4253 to i64*
  store i64 %4251, i64* %4254, align 8
  store i64 %4253, i64* %6, align 8
  store i64 %4250, i64* %3, align 8
  %call2_465343 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4250, %struct.Memory* %call2_46517d)
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_465348

block_.L_465348:                                  ; preds = %block_465324, %block_.L_465315
  %4255 = phi i64 [ %4234, %block_.L_465315 ], [ %.pre161, %block_465324 ]
  %MEMORY.53 = phi %struct.Memory* [ %call2_46517d, %block_.L_465315 ], [ %call2_465343, %block_465324 ]
  %4256 = load i64, i64* %RBP.i, align 8
  %4257 = add i64 %4256, -44
  %4258 = add i64 %4255, 7
  store i64 %4258, i64* %3, align 8
  %4259 = inttoptr i64 %4257 to i32*
  store i32 5, i32* %4259, align 4
  %4260 = load i64, i64* %3, align 8
  %4261 = add i64 %4260, 487
  store i64 %4261, i64* %3, align 8
  br label %block_.L_465536

block_.L_465354:                                  ; preds = %block_4652d1
  store i64 5, i64* %RAX.i1932, align 8
  %4262 = add i64 %4197, 11
  store i64 %4262, i64* %3, align 8
  %4263 = load i32, i32* %4186, align 4
  %4264 = sub i32 5, %4263
  %4265 = zext i32 %4264 to i64
  store i64 %4265, i64* %RAX.i1932, align 8
  %4266 = icmp ugt i32 %4263, 5
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %40, align 1
  %4268 = and i32 %4264, 255
  %4269 = tail call i32 @llvm.ctpop.i32(i32 %4268)
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  %4272 = xor i8 %4271, 1
  store i8 %4272, i8* %47, align 1
  %4273 = xor i32 %4264, %4263
  %4274 = lshr i32 %4273, 4
  %4275 = trunc i32 %4274 to i8
  %4276 = and i8 %4275, 1
  store i8 %4276, i8* %52, align 1
  %4277 = icmp eq i32 %4264, 0
  %4278 = zext i1 %4277 to i8
  store i8 %4278, i8* %55, align 1
  %4279 = lshr i32 %4264, 31
  %4280 = trunc i32 %4279 to i8
  store i8 %4280, i8* %58, align 1
  %4281 = lshr i32 %4263, 31
  %4282 = add nuw nsw i32 %4279, %4281
  %4283 = icmp eq i32 %4282, 2
  %4284 = zext i1 %4283 to i8
  store i8 %4284, i8* %64, align 1
  %4285 = add i64 %4182, -548
  %4286 = add i64 %4197, 17
  store i64 %4286, i64* %3, align 8
  %4287 = inttoptr i64 %4285 to i32*
  %4288 = load i32, i32* %4287, align 4
  %4289 = sub i32 %4264, %4288
  %4290 = icmp ult i32 %4264, %4288
  %4291 = zext i1 %4290 to i8
  store i8 %4291, i8* %40, align 1
  %4292 = and i32 %4289, 255
  %4293 = tail call i32 @llvm.ctpop.i32(i32 %4292)
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  %4296 = xor i8 %4295, 1
  store i8 %4296, i8* %47, align 1
  %4297 = xor i32 %4288, %4264
  %4298 = xor i32 %4297, %4289
  %4299 = lshr i32 %4298, 4
  %4300 = trunc i32 %4299 to i8
  %4301 = and i8 %4300, 1
  store i8 %4301, i8* %52, align 1
  %4302 = icmp eq i32 %4289, 0
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %55, align 1
  %4304 = lshr i32 %4289, 31
  %4305 = trunc i32 %4304 to i8
  store i8 %4305, i8* %58, align 1
  %4306 = lshr i32 %4288, 31
  %4307 = xor i32 %4306, %4279
  %4308 = xor i32 %4304, %4279
  %4309 = add nuw nsw i32 %4308, %4307
  %4310 = icmp eq i32 %4309, 2
  %4311 = zext i1 %4310 to i8
  store i8 %4311, i8* %64, align 1
  %4312 = icmp ne i8 %4305, 0
  %4313 = xor i1 %4312, %4310
  %4314 = or i1 %4302, %4313
  %.v228 = select i1 %4314, i64 49, i64 23
  %4315 = add i64 %4197, %.v228
  store i64 %4315, i64* %3, align 8
  br i1 %4314, label %block_.L_465385, label %block_46536b

block_46536b:                                     ; preds = %block_.L_465354
  store i64 5, i64* %RAX.i1932, align 8
  %4316 = add i64 %4182, -76
  %4317 = add i64 %4315, 8
  store i64 %4317, i64* %3, align 8
  %4318 = inttoptr i64 %4316 to i32*
  %4319 = load i32, i32* %4318, align 4
  %4320 = zext i32 %4319 to i64
  store i64 %4320, i64* %RCX.i1908, align 8
  %4321 = add i64 %4182, -544
  %4322 = add i64 %4315, 14
  store i64 %4322, i64* %3, align 8
  %4323 = inttoptr i64 %4321 to i32*
  store i32 %4319, i32* %4323, align 4
  %4324 = load i64, i64* %RAX.i1932, align 8
  %4325 = load i64, i64* %RBP.i, align 8
  %4326 = add i64 %4325, -748
  %4327 = load i64, i64* %3, align 8
  %4328 = add i64 %4327, 6
  store i64 %4328, i64* %3, align 8
  %4329 = trunc i64 %4324 to i32
  %4330 = inttoptr i64 %4326 to i32*
  %4331 = load i32, i32* %4330, align 4
  %4332 = sub i32 %4329, %4331
  %4333 = zext i32 %4332 to i64
  store i64 %4333, i64* %RAX.i1932, align 8
  %4334 = icmp ult i32 %4329, %4331
  %4335 = zext i1 %4334 to i8
  store i8 %4335, i8* %40, align 1
  %4336 = and i32 %4332, 255
  %4337 = tail call i32 @llvm.ctpop.i32(i32 %4336)
  %4338 = trunc i32 %4337 to i8
  %4339 = and i8 %4338, 1
  %4340 = xor i8 %4339, 1
  store i8 %4340, i8* %47, align 1
  %4341 = xor i32 %4331, %4329
  %4342 = xor i32 %4341, %4332
  %4343 = lshr i32 %4342, 4
  %4344 = trunc i32 %4343 to i8
  %4345 = and i8 %4344, 1
  store i8 %4345, i8* %52, align 1
  %4346 = icmp eq i32 %4332, 0
  %4347 = zext i1 %4346 to i8
  store i8 %4347, i8* %55, align 1
  %4348 = lshr i32 %4332, 31
  %4349 = trunc i32 %4348 to i8
  store i8 %4349, i8* %58, align 1
  %4350 = lshr i32 %4329, 31
  %4351 = lshr i32 %4331, 31
  %4352 = xor i32 %4351, %4350
  %4353 = xor i32 %4348, %4350
  %4354 = add nuw nsw i32 %4353, %4352
  %4355 = icmp eq i32 %4354, 2
  %4356 = zext i1 %4355 to i8
  store i8 %4356, i8* %64, align 1
  %4357 = add i64 %4325, -548
  %4358 = add i64 %4327, 12
  store i64 %4358, i64* %3, align 8
  %4359 = inttoptr i64 %4357 to i32*
  store i32 %4332, i32* %4359, align 4
  %.pre162 = load i64, i64* %3, align 8
  br label %block_.L_465385

block_.L_465385:                                  ; preds = %block_46536b, %block_.L_465354
  %4360 = phi i64 [ %.pre162, %block_46536b ], [ %4315, %block_.L_465354 ]
  %4361 = add i64 %4360, 72
  store i64 %4361, i64* %3, align 8
  br label %block_.L_4653cd

block_.L_465394:                                  ; preds = %block_4652c4
  %4362 = add i64 %4149, -30388
  %4363 = add i64 %4149, 24
  %4364 = load i64, i64* %6, align 8
  %4365 = add i64 %4364, -8
  %4366 = inttoptr i64 %4365 to i64*
  store i64 %4363, i64* %4366, align 8
  store i64 %4365, i64* %6, align 8
  store i64 %4362, i64* %3, align 8
  %call2_4653a7 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %4362, %struct.Memory* %call2_46517d)
  %4367 = load i32, i32* %EAX.i1884, align 4
  %4368 = load i64, i64* %3, align 8
  %4369 = add i32 %4367, -5
  %4370 = icmp ult i32 %4367, 5
  %4371 = zext i1 %4370 to i8
  store i8 %4371, i8* %40, align 1
  %4372 = and i32 %4369, 255
  %4373 = tail call i32 @llvm.ctpop.i32(i32 %4372)
  %4374 = trunc i32 %4373 to i8
  %4375 = and i8 %4374, 1
  %4376 = xor i8 %4375, 1
  store i8 %4376, i8* %47, align 1
  %4377 = xor i32 %4369, %4367
  %4378 = lshr i32 %4377, 4
  %4379 = trunc i32 %4378 to i8
  %4380 = and i8 %4379, 1
  store i8 %4380, i8* %52, align 1
  %4381 = icmp eq i32 %4369, 0
  %4382 = zext i1 %4381 to i8
  store i8 %4382, i8* %55, align 1
  %4383 = lshr i32 %4369, 31
  %4384 = trunc i32 %4383 to i8
  store i8 %4384, i8* %58, align 1
  %4385 = lshr i32 %4367, 31
  %4386 = xor i32 %4383, %4385
  %4387 = add nuw nsw i32 %4386, %4385
  %4388 = icmp eq i32 %4387, 2
  %4389 = zext i1 %4388 to i8
  store i8 %4389, i8* %64, align 1
  %.v226 = select i1 %4381, i64 28, i64 9
  %4390 = add i64 %4368, %.v226
  store i64 %4390, i64* %3, align 8
  br i1 %4381, label %block_.L_4653c8, label %block_4653b5

block_4653b5:                                     ; preds = %block_.L_465394
  %4391 = load i64, i64* %RBP.i, align 8
  %4392 = add i64 %4391, -76
  %4393 = add i64 %4390, 3
  store i64 %4393, i64* %3, align 8
  %4394 = inttoptr i64 %4392 to i32*
  %4395 = load i32, i32* %4394, align 4
  %4396 = zext i32 %4395 to i64
  store i64 %4396, i64* %RAX.i1932, align 8
  %4397 = add i64 %4391, -544
  %4398 = add i64 %4390, 9
  store i64 %4398, i64* %3, align 8
  %4399 = inttoptr i64 %4397 to i32*
  store i32 %4395, i32* %4399, align 4
  %4400 = load i64, i64* %RBP.i, align 8
  %4401 = add i64 %4400, -548
  %4402 = load i64, i64* %3, align 8
  %4403 = add i64 %4402, 10
  store i64 %4403, i64* %3, align 8
  %4404 = inttoptr i64 %4401 to i32*
  store i32 1, i32* %4404, align 4
  %.pre163 = load i64, i64* %3, align 8
  br label %block_.L_4653c8

block_.L_4653c8:                                  ; preds = %block_4653b5, %block_.L_465394
  %4405 = phi i64 [ %.pre163, %block_4653b5 ], [ %4390, %block_.L_465394 ]
  %4406 = add i64 %4405, -357992
  %4407 = add i64 %4405, 5
  %4408 = load i64, i64* %6, align 8
  %4409 = add i64 %4408, -8
  %4410 = inttoptr i64 %4409 to i64*
  store i64 %4407, i64* %4410, align 8
  store i64 %4409, i64* %6, align 8
  store i64 %4406, i64* %3, align 8
  %call2_4653c8 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %4406, %struct.Memory* %call2_46517d)
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_4653cd

block_.L_4653cd:                                  ; preds = %block_.L_4653c8, %block_.L_465385
  %4411 = phi i64 [ %.pre164, %block_.L_4653c8 ], [ %4361, %block_.L_465385 ]
  %4412 = add i64 %4411, 5
  store i64 %4412, i64* %3, align 8
  br label %block_.L_4653d2

block_.L_4653d2:                                  ; preds = %block_.L_4653cd, %block_.L_465212
  %4413 = phi i64 [ %4412, %block_.L_4653cd ], [ %4142, %block_.L_465212 ]
  %4414 = load i64, i64* %RBP.i, align 8
  %4415 = add i64 %4414, -552
  %4416 = add i64 %4413, 11
  store i64 %4416, i64* %3, align 8
  %4417 = inttoptr i64 %4415 to i32*
  %4418 = load i32, i32* %4417, align 4
  %4419 = add i32 %4418, 1
  %4420 = zext i32 %4419 to i64
  store i64 %4420, i64* %RAX.i1932, align 8
  %4421 = icmp eq i32 %4418, -1
  %4422 = icmp eq i32 %4419, 0
  %4423 = or i1 %4421, %4422
  %4424 = zext i1 %4423 to i8
  store i8 %4424, i8* %40, align 1
  %4425 = and i32 %4419, 255
  %4426 = tail call i32 @llvm.ctpop.i32(i32 %4425)
  %4427 = trunc i32 %4426 to i8
  %4428 = and i8 %4427, 1
  %4429 = xor i8 %4428, 1
  store i8 %4429, i8* %47, align 1
  %4430 = xor i32 %4419, %4418
  %4431 = lshr i32 %4430, 4
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  store i8 %4433, i8* %52, align 1
  %4434 = zext i1 %4422 to i8
  store i8 %4434, i8* %55, align 1
  %4435 = lshr i32 %4419, 31
  %4436 = trunc i32 %4435 to i8
  store i8 %4436, i8* %58, align 1
  %4437 = lshr i32 %4418, 31
  %4438 = xor i32 %4435, %4437
  %4439 = add nuw nsw i32 %4438, %4435
  %4440 = icmp eq i32 %4439, 2
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %64, align 1
  %4442 = add i64 %4413, 20
  store i64 %4442, i64* %3, align 8
  store i32 %4419, i32* %4417, align 4
  %4443 = load i64, i64* %3, align 8
  %4444 = add i64 %4443, -600
  store i64 %4444, i64* %3, align 8
  br label %block_.L_46518e

block_.L_4653eb:                                  ; preds = %block_.L_46518e
  %4445 = add i64 %3849, -548
  %4446 = add i64 %3885, 7
  store i64 %4446, i64* %3, align 8
  %4447 = inttoptr i64 %4445 to i32*
  %4448 = load i32, i32* %4447, align 4
  store i8 0, i8* %40, align 1
  %4449 = and i32 %4448, 255
  %4450 = tail call i32 @llvm.ctpop.i32(i32 %4449)
  %4451 = trunc i32 %4450 to i8
  %4452 = and i8 %4451, 1
  %4453 = xor i8 %4452, 1
  store i8 %4453, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4454 = icmp eq i32 %4448, 0
  %4455 = zext i1 %4454 to i8
  store i8 %4455, i8* %55, align 1
  %4456 = lshr i32 %4448, 31
  %4457 = trunc i32 %4456 to i8
  store i8 %4457, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v = select i1 %4454, i64 177, i64 13
  %4458 = add i64 %3885, %.v
  %4459 = add i64 %4458, 12
  store i64 %4459, i64* %3, align 8
  %4460 = load i32, i32* %4447, align 4
  store i8 0, i8* %40, align 1
  %4461 = and i32 %4460, 255
  %4462 = tail call i32 @llvm.ctpop.i32(i32 %4461)
  %4463 = trunc i32 %4462 to i8
  %4464 = and i8 %4463, 1
  %4465 = xor i8 %4464, 1
  store i8 %4465, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4466 = icmp eq i32 %4460, 0
  %4467 = zext i1 %4466 to i8
  store i8 %4467, i8* %55, align 1
  %4468 = lshr i32 %4460, 31
  %4469 = trunc i32 %4468 to i8
  store i8 %4469, i8* %58, align 1
  store i8 0, i8* %64, align 1
  br i1 %4454, label %block_.L_4654a1, label %block_.L_4653fd

block_.L_4653fd:                                  ; preds = %block_.L_4653eb
  %.v216 = select i1 %4466, i64 101, i64 18
  %4470 = add i64 %4458, %.v216
  store i64 %4470, i64* %3, align 8
  br i1 %4466, label %block_.L_46545d, label %block_46540a

block_46540a:                                     ; preds = %block_.L_4653fd
  %4471 = add i64 %3849, -56
  %4472 = add i64 %4470, 5
  store i64 %4472, i64* %3, align 8
  %4473 = inttoptr i64 %4471 to i64*
  %4474 = load i64, i64* %4473, align 8
  store i8 0, i8* %40, align 1
  %4475 = trunc i64 %4474 to i32
  %4476 = and i32 %4475, 255
  %4477 = tail call i32 @llvm.ctpop.i32(i32 %4476)
  %4478 = trunc i32 %4477 to i8
  %4479 = and i8 %4478, 1
  %4480 = xor i8 %4479, 1
  store i8 %4480, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4481 = icmp eq i64 %4474, 0
  %4482 = zext i1 %4481 to i8
  store i8 %4482, i8* %55, align 1
  %4483 = lshr i64 %4474, 63
  %4484 = trunc i64 %4483 to i8
  store i8 %4484, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v217 = select i1 %4481, i64 23, i64 11
  %4485 = add i64 %4470, %.v217
  store i64 %4485, i64* %3, align 8
  br i1 %4481, label %block_.L_465421, label %block_465415

block_465415:                                     ; preds = %block_46540a
  %4486 = add i64 %3849, -544
  %4487 = add i64 %4485, 6
  store i64 %4487, i64* %3, align 8
  %4488 = inttoptr i64 %4486 to i32*
  %4489 = load i32, i32* %4488, align 4
  %4490 = zext i32 %4489 to i64
  store i64 %4490, i64* %RAX.i1932, align 8
  %4491 = add i64 %4485, 10
  store i64 %4491, i64* %3, align 8
  %4492 = load i64, i64* %4473, align 8
  store i64 %4492, i64* %RCX.i1908, align 8
  %4493 = add i64 %4485, 12
  store i64 %4493, i64* %3, align 8
  %4494 = inttoptr i64 %4492 to i32*
  store i32 %4489, i32* %4494, align 4
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_465421

block_.L_465421:                                  ; preds = %block_465415, %block_46540a
  %4495 = phi i64 [ %.pre153, %block_465415 ], [ %4485, %block_46540a ]
  %4496 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4497 = trunc i64 %4496 to i32
  %4498 = and i32 %4497, 255
  %4499 = tail call i32 @llvm.ctpop.i32(i32 %4498)
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  %4502 = xor i8 %4501, 1
  store i8 %4502, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4503 = icmp eq i64 %4496, 0
  %4504 = zext i1 %4503 to i8
  store i8 %4504, i8* %55, align 1
  %4505 = lshr i64 %4496, 63
  %4506 = trunc i64 %4505 to i8
  store i8 %4506, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v218 = select i1 %4503, i64 55, i64 15
  %4507 = add i64 %4495, %.v218
  store i64 %4507, i64* %3, align 8
  br i1 %4503, label %block_.L_465458, label %block_465430

block_465430:                                     ; preds = %block_.L_465421
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %R8.i1930, align 8
  %4508 = load i64, i64* %RBP.i, align 8
  %4509 = add i64 %4508, -568
  %4510 = add i64 %4507, 17
  store i64 %4510, i64* %3, align 8
  %4511 = inttoptr i64 %4509 to i64*
  %4512 = load i64, i64* %4511, align 8
  store i64 %4512, i64* %RDI.i1847.pre-phi, align 8
  %4513 = add i64 %4508, -572
  %4514 = add i64 %4507, 23
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4513 to i32*
  %4516 = load i32, i32* %4515, align 4
  %4517 = zext i32 %4516 to i64
  store i64 %4517, i64* %RSI.i1924, align 8
  %4518 = add i64 %4508, -544
  %4519 = add i64 %4507, 29
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i32*
  %4521 = load i32, i32* %4520, align 4
  %4522 = zext i32 %4521 to i64
  store i64 %4522, i64* %RDX.i1822.pre-phi, align 8
  %4523 = add i64 %4508, -548
  %4524 = add i64 %4507, 35
  store i64 %4524, i64* %3, align 8
  %4525 = inttoptr i64 %4523 to i32*
  %4526 = load i32, i32* %4525, align 4
  %4527 = zext i32 %4526 to i64
  store i64 %4527, i64* %RCX.i1908, align 8
  %4528 = add i64 %4507, -316528
  %4529 = add i64 %4507, 40
  %4530 = load i64, i64* %6, align 8
  %4531 = add i64 %4530, -8
  %4532 = inttoptr i64 %4531 to i64*
  store i64 %4529, i64* %4532, align 8
  store i64 %4531, i64* %6, align 8
  store i64 %4528, i64* %3, align 8
  %call2_465453 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4528, %struct.Memory* %call2_46517d)
  %.pre154 = load i64, i64* %3, align 8
  br label %block_.L_465458

block_.L_465458:                                  ; preds = %block_465430, %block_.L_465421
  %4533 = phi i64 [ %4507, %block_.L_465421 ], [ %.pre154, %block_465430 ]
  %MEMORY.59 = phi %struct.Memory* [ %call2_46517d, %block_.L_465421 ], [ %call2_465453, %block_465430 ]
  %4534 = add i64 %4533, 54
  br label %block_.L_46548e

block_.L_46545d:                                  ; preds = %block_.L_4653fd
  %4535 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4536 = trunc i64 %4535 to i32
  %4537 = and i32 %4536, 255
  %4538 = tail call i32 @llvm.ctpop.i32(i32 %4537)
  %4539 = trunc i32 %4538 to i8
  %4540 = and i8 %4539, 1
  %4541 = xor i8 %4540, 1
  store i8 %4541, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4542 = icmp eq i64 %4535, 0
  %4543 = zext i1 %4542 to i8
  store i8 %4543, i8* %55, align 1
  %4544 = lshr i64 %4535, 63
  %4545 = trunc i64 %4544 to i8
  store i8 %4545, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v219 = select i1 %4542, i64 44, i64 15
  %4546 = add i64 %4470, %.v219
  store i64 %4546, i64* %3, align 8
  br i1 %4542, label %block_.L_465489, label %block_46546c

block_46546c:                                     ; preds = %block_.L_46545d
  store i64 0, i64* %RAX.i1932, align 8
  store i64 0, i64* %RCX.i1908, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %R8.i1930, align 8
  %4547 = add i64 %3849, -568
  %4548 = add i64 %4546, 14
  store i64 %4548, i64* %3, align 8
  %4549 = inttoptr i64 %4547 to i64*
  %4550 = load i64, i64* %4549, align 8
  store i64 %4550, i64* %RDI.i1847.pre-phi, align 8
  %4551 = add i64 %3849, -572
  %4552 = add i64 %4546, 20
  store i64 %4552, i64* %3, align 8
  %4553 = inttoptr i64 %4551 to i32*
  %4554 = load i32, i32* %4553, align 4
  %4555 = zext i32 %4554 to i64
  store i64 %4555, i64* %RSI.i1924, align 8
  store i64 0, i64* %RDX.i1822.pre-phi, align 8
  store i64 0, i64* %RCX.i1908, align 8
  %4556 = add i64 %4546, -316588
  %4557 = add i64 %4546, 29
  %4558 = load i64, i64* %6, align 8
  %4559 = add i64 %4558, -8
  %4560 = inttoptr i64 %4559 to i64*
  store i64 %4557, i64* %4560, align 8
  store i64 %4559, i64* %6, align 8
  store i64 %4556, i64* %3, align 8
  %call2_465484 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4556, %struct.Memory* %call2_46517d)
  %.pre155 = load i64, i64* %3, align 8
  br label %block_.L_465489

block_.L_465489:                                  ; preds = %block_46546c, %block_.L_46545d
  %4561 = phi i64 [ %4546, %block_.L_46545d ], [ %.pre155, %block_46546c ]
  %MEMORY.60 = phi %struct.Memory* [ %call2_46517d, %block_.L_46545d ], [ %call2_465484, %block_46546c ]
  %4562 = add i64 %4561, 5
  store i64 %4562, i64* %3, align 8
  br label %block_.L_46548e

block_.L_46548e:                                  ; preds = %block_.L_465489, %block_.L_465458
  %storemerge73 = phi i64 [ %4534, %block_.L_465458 ], [ %4562, %block_.L_465489 ]
  %MEMORY.61 = phi %struct.Memory* [ %MEMORY.59, %block_.L_465458 ], [ %MEMORY.60, %block_.L_465489 ]
  %4563 = load i64, i64* %RBP.i, align 8
  %4564 = add i64 %4563, -548
  %4565 = add i64 %storemerge73, 6
  store i64 %4565, i64* %3, align 8
  %4566 = inttoptr i64 %4564 to i32*
  %4567 = load i32, i32* %4566, align 4
  %4568 = zext i32 %4567 to i64
  store i64 %4568, i64* %RAX.i1932, align 8
  %4569 = add i64 %4563, -44
  %4570 = add i64 %storemerge73, 9
  store i64 %4570, i64* %3, align 8
  %4571 = inttoptr i64 %4569 to i32*
  store i32 %4567, i32* %4571, align 4
  %4572 = load i64, i64* %3, align 8
  %4573 = add i64 %4572, 159
  store i64 %4573, i64* %3, align 8
  br label %block_.L_465536

block_.L_4654a1:                                  ; preds = %block_.L_4653eb
  %.v220 = select i1 %4466, i64 96, i64 18
  %4574 = add i64 %4458, %.v220
  store i64 %4574, i64* %3, align 8
  br i1 %4466, label %block_.L_4654fc, label %block_4654ae

block_4654ae:                                     ; preds = %block_.L_4654a1
  %4575 = add i64 %3849, -56
  %4576 = add i64 %4574, 5
  store i64 %4576, i64* %3, align 8
  %4577 = inttoptr i64 %4575 to i64*
  %4578 = load i64, i64* %4577, align 8
  store i8 0, i8* %40, align 1
  %4579 = trunc i64 %4578 to i32
  %4580 = and i32 %4579, 255
  %4581 = tail call i32 @llvm.ctpop.i32(i32 %4580)
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  %4584 = xor i8 %4583, 1
  store i8 %4584, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4585 = icmp eq i64 %4578, 0
  %4586 = zext i1 %4585 to i8
  store i8 %4586, i8* %55, align 1
  %4587 = lshr i64 %4578, 63
  %4588 = trunc i64 %4587 to i8
  store i8 %4588, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v221 = select i1 %4585, i64 23, i64 11
  %4589 = add i64 %4574, %.v221
  store i64 %4589, i64* %3, align 8
  br i1 %4585, label %block_.L_4654c5, label %block_4654b9

block_4654b9:                                     ; preds = %block_4654ae
  %4590 = add i64 %3849, -544
  %4591 = add i64 %4589, 6
  store i64 %4591, i64* %3, align 8
  %4592 = inttoptr i64 %4590 to i32*
  %4593 = load i32, i32* %4592, align 4
  %4594 = zext i32 %4593 to i64
  store i64 %4594, i64* %RAX.i1932, align 8
  %4595 = add i64 %4589, 10
  store i64 %4595, i64* %3, align 8
  %4596 = load i64, i64* %4577, align 8
  store i64 %4596, i64* %RCX.i1908, align 8
  %4597 = add i64 %4589, 12
  store i64 %4597, i64* %3, align 8
  %4598 = inttoptr i64 %4596 to i32*
  store i32 %4593, i32* %4598, align 4
  %.pre156 = load i64, i64* %3, align 8
  br label %block_.L_4654c5

block_.L_4654c5:                                  ; preds = %block_4654b9, %block_4654ae
  %4599 = phi i64 [ %.pre156, %block_4654b9 ], [ %4589, %block_4654ae ]
  %4600 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4601 = trunc i64 %4600 to i32
  %4602 = and i32 %4601, 255
  %4603 = tail call i32 @llvm.ctpop.i32(i32 %4602)
  %4604 = trunc i32 %4603 to i8
  %4605 = and i8 %4604, 1
  %4606 = xor i8 %4605, 1
  store i8 %4606, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4607 = icmp eq i64 %4600, 0
  %4608 = zext i1 %4607 to i8
  store i8 %4608, i8* %55, align 1
  %4609 = lshr i64 %4600, 63
  %4610 = trunc i64 %4609 to i8
  store i8 %4610, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v222 = select i1 %4607, i64 50, i64 15
  %4611 = add i64 %4599, %.v222
  store i64 %4611, i64* %3, align 8
  br i1 %4607, label %block_.L_4654f7, label %block_4654d4

block_4654d4:                                     ; preds = %block_.L_4654c5
  store i64 0, i64* %RAX.i1932, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %R8.i1930, align 8
  %4612 = load i64, i64* %RBP.i, align 8
  %4613 = add i64 %4612, -568
  %4614 = add i64 %4611, 12
  store i64 %4614, i64* %3, align 8
  %4615 = inttoptr i64 %4613 to i64*
  %4616 = load i64, i64* %4615, align 8
  store i64 %4616, i64* %RDI.i1847.pre-phi, align 8
  %4617 = add i64 %4612, -572
  %4618 = add i64 %4611, 18
  store i64 %4618, i64* %3, align 8
  %4619 = inttoptr i64 %4617 to i32*
  %4620 = load i32, i32* %4619, align 4
  %4621 = zext i32 %4620 to i64
  store i64 %4621, i64* %RSI.i1924, align 8
  %4622 = add i64 %4612, -544
  %4623 = add i64 %4611, 24
  store i64 %4623, i64* %3, align 8
  %4624 = inttoptr i64 %4622 to i32*
  %4625 = load i32, i32* %4624, align 4
  %4626 = zext i32 %4625 to i64
  store i64 %4626, i64* %RDX.i1822.pre-phi, align 8
  %4627 = add i64 %4612, -548
  %4628 = add i64 %4611, 30
  store i64 %4628, i64* %3, align 8
  %4629 = inttoptr i64 %4627 to i32*
  %4630 = load i32, i32* %4629, align 4
  %4631 = zext i32 %4630 to i64
  store i64 %4631, i64* %RCX.i1908, align 8
  %4632 = add i64 %4611, -316692
  %4633 = add i64 %4611, 35
  %4634 = load i64, i64* %6, align 8
  %4635 = add i64 %4634, -8
  %4636 = inttoptr i64 %4635 to i64*
  store i64 %4633, i64* %4636, align 8
  store i64 %4635, i64* %6, align 8
  store i64 %4632, i64* %3, align 8
  %call2_4654f2 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4632, %struct.Memory* %call2_46517d)
  %.pre157 = load i64, i64* %3, align 8
  br label %block_.L_4654f7

block_.L_4654f7:                                  ; preds = %block_4654d4, %block_.L_4654c5
  %4637 = phi i64 [ %4611, %block_.L_4654c5 ], [ %.pre157, %block_4654d4 ]
  %MEMORY.63 = phi %struct.Memory* [ %call2_46517d, %block_.L_4654c5 ], [ %call2_4654f2, %block_4654d4 ]
  %4638 = add i64 %4637, 54
  br label %block_.L_46552d

block_.L_4654fc:                                  ; preds = %block_.L_4654a1
  %4639 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4640 = trunc i64 %4639 to i32
  %4641 = and i32 %4640, 255
  %4642 = tail call i32 @llvm.ctpop.i32(i32 %4641)
  %4643 = trunc i32 %4642 to i8
  %4644 = and i8 %4643, 1
  %4645 = xor i8 %4644, 1
  store i8 %4645, i8* %47, align 1
  store i8 0, i8* %52, align 1
  %4646 = icmp eq i64 %4639, 0
  %4647 = zext i1 %4646 to i8
  store i8 %4647, i8* %55, align 1
  %4648 = lshr i64 %4639, 63
  %4649 = trunc i64 %4648 to i8
  store i8 %4649, i8* %58, align 1
  store i8 0, i8* %64, align 1
  %.v223 = select i1 %4646, i64 44, i64 15
  %4650 = add i64 %4574, %.v223
  store i64 %4650, i64* %3, align 8
  br i1 %4646, label %block_.L_465528, label %block_46550b

block_46550b:                                     ; preds = %block_.L_4654fc
  store i64 0, i64* %RAX.i1932, align 8
  store i64 0, i64* %RCX.i1908, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %55, align 1
  store i8 0, i8* %58, align 1
  store i8 0, i8* %64, align 1
  store i8 0, i8* %52, align 1
  store i64 0, i64* %R8.i1930, align 8
  %4651 = add i64 %3849, -568
  %4652 = add i64 %4650, 14
  store i64 %4652, i64* %3, align 8
  %4653 = inttoptr i64 %4651 to i64*
  %4654 = load i64, i64* %4653, align 8
  store i64 %4654, i64* %RDI.i1847.pre-phi, align 8
  %4655 = add i64 %3849, -572
  %4656 = add i64 %4650, 20
  store i64 %4656, i64* %3, align 8
  %4657 = inttoptr i64 %4655 to i32*
  %4658 = load i32, i32* %4657, align 4
  %4659 = zext i32 %4658 to i64
  store i64 %4659, i64* %RSI.i1924, align 8
  store i64 0, i64* %RDX.i1822.pre-phi, align 8
  store i64 0, i64* %RCX.i1908, align 8
  %4660 = add i64 %4650, -316747
  %4661 = add i64 %4650, 29
  %4662 = load i64, i64* %6, align 8
  %4663 = add i64 %4662, -8
  %4664 = inttoptr i64 %4663 to i64*
  store i64 %4661, i64* %4664, align 8
  store i64 %4663, i64* %6, align 8
  store i64 %4660, i64* %3, align 8
  %call2_465523 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4660, %struct.Memory* %call2_46517d)
  %.pre158 = load i64, i64* %3, align 8
  br label %block_.L_465528

block_.L_465528:                                  ; preds = %block_46550b, %block_.L_4654fc
  %4665 = phi i64 [ %4650, %block_.L_4654fc ], [ %.pre158, %block_46550b ]
  %MEMORY.64 = phi %struct.Memory* [ %call2_46517d, %block_.L_4654fc ], [ %call2_465523, %block_46550b ]
  %4666 = add i64 %4665, 5
  store i64 %4666, i64* %3, align 8
  br label %block_.L_46552d

block_.L_46552d:                                  ; preds = %block_.L_465528, %block_.L_4654f7
  %storemerge74 = phi i64 [ %4638, %block_.L_4654f7 ], [ %4666, %block_.L_465528 ]
  %MEMORY.65 = phi %struct.Memory* [ %MEMORY.63, %block_.L_4654f7 ], [ %MEMORY.64, %block_.L_465528 ]
  %4667 = load i64, i64* %RBP.i, align 8
  %4668 = add i64 %4667, -548
  %4669 = add i64 %storemerge74, 6
  store i64 %4669, i64* %3, align 8
  %4670 = inttoptr i64 %4668 to i32*
  %4671 = load i32, i32* %4670, align 4
  %4672 = zext i32 %4671 to i64
  store i64 %4672, i64* %RAX.i1932, align 8
  %4673 = add i64 %4667, -44
  %4674 = add i64 %storemerge74, 9
  store i64 %4674, i64* %3, align 8
  %4675 = inttoptr i64 %4673 to i32*
  store i32 %4671, i32* %4675, align 4
  %.pre183 = load i64, i64* %3, align 8
  br label %block_.L_465536

block_.L_465536:                                  ; preds = %block_.L_46552d, %block_.L_46548e, %block_.L_465348, %block_.L_464e35, %block_.L_4648b2
  %4676 = phi i64 [ %.pre183, %block_.L_46552d ], [ %4573, %block_.L_46548e ], [ %4261, %block_.L_465348 ], [ %2890, %block_.L_464e35 ], [ %1289, %block_.L_4648b2 ]
  %MEMORY.66 = phi %struct.Memory* [ %MEMORY.65, %block_.L_46552d ], [ %MEMORY.61, %block_.L_46548e ], [ %MEMORY.53, %block_.L_465348 ], [ %MEMORY.33, %block_.L_464e35 ], [ %MEMORY.11, %block_.L_4648b2 ]
  %4677 = load i64, i64* %RBP.i, align 8
  %4678 = add i64 %4677, -44
  %4679 = add i64 %4676, 3
  store i64 %4679, i64* %3, align 8
  %4680 = inttoptr i64 %4678 to i32*
  %4681 = load i32, i32* %4680, align 4
  %4682 = zext i32 %4681 to i64
  store i64 %4682, i64* %RAX.i1932, align 8
  %4683 = load i64, i64* %6, align 8
  %4684 = add i64 %4683, 936
  store i64 %4684, i64* %6, align 8
  %4685 = icmp ugt i64 %4683, -937
  %4686 = zext i1 %4685 to i8
  store i8 %4686, i8* %40, align 1
  %4687 = trunc i64 %4684 to i32
  %4688 = and i32 %4687, 255
  %4689 = tail call i32 @llvm.ctpop.i32(i32 %4688)
  %4690 = trunc i32 %4689 to i8
  %4691 = and i8 %4690, 1
  %4692 = xor i8 %4691, 1
  store i8 %4692, i8* %47, align 1
  %4693 = xor i64 %4684, %4683
  %4694 = lshr i64 %4693, 4
  %4695 = trunc i64 %4694 to i8
  %4696 = and i8 %4695, 1
  store i8 %4696, i8* %52, align 1
  %4697 = icmp eq i64 %4684, 0
  %4698 = zext i1 %4697 to i8
  store i8 %4698, i8* %55, align 1
  %4699 = lshr i64 %4684, 63
  %4700 = trunc i64 %4699 to i8
  store i8 %4700, i8* %58, align 1
  %4701 = lshr i64 %4683, 63
  %4702 = xor i64 %4699, %4701
  %4703 = add nuw nsw i64 %4702, %4699
  %4704 = icmp eq i64 %4703, 2
  %4705 = zext i1 %4704 to i8
  store i8 %4705, i8* %64, align 1
  %4706 = add i64 %4676, 11
  store i64 %4706, i64* %3, align 8
  %4707 = add i64 %4683, 944
  %4708 = inttoptr i64 %4684 to i64*
  %4709 = load i64, i64* %4708, align 8
  store i64 %4709, i64* %RBX.i1936, align 8
  store i64 %4707, i64* %6, align 8
  %4710 = add i64 %4676, 13
  store i64 %4710, i64* %3, align 8
  %4711 = add i64 %4683, 952
  %4712 = inttoptr i64 %4707 to i64*
  %4713 = load i64, i64* %4712, align 8
  store i64 %4713, i64* %R12.i1938, align 8
  store i64 %4711, i64* %6, align 8
  %4714 = add i64 %4676, 15
  store i64 %4714, i64* %3, align 8
  %4715 = add i64 %4683, 960
  %4716 = inttoptr i64 %4711 to i64*
  %4717 = load i64, i64* %4716, align 8
  store i64 %4717, i64* %R13.i1940, align 8
  store i64 %4715, i64* %6, align 8
  %4718 = add i64 %4676, 17
  store i64 %4718, i64* %3, align 8
  %4719 = add i64 %4683, 968
  %4720 = inttoptr i64 %4715 to i64*
  %4721 = load i64, i64* %4720, align 8
  store i64 %4721, i64* %R14.i1942, align 8
  store i64 %4719, i64* %6, align 8
  %4722 = add i64 %4676, 19
  store i64 %4722, i64* %3, align 8
  %4723 = add i64 %4683, 976
  %4724 = inttoptr i64 %4719 to i64*
  %4725 = load i64, i64* %4724, align 8
  store i64 %4725, i64* %R15.i1785, align 8
  store i64 %4723, i64* %6, align 8
  %4726 = add i64 %4676, 20
  store i64 %4726, i64* %3, align 8
  %4727 = add i64 %4683, 984
  %4728 = inttoptr i64 %4723 to i64*
  %4729 = load i64, i64* %4728, align 8
  store i64 %4729, i64* %RBP.i, align 8
  store i64 %4727, i64* %6, align 8
  %4730 = add i64 %4676, 21
  store i64 %4730, i64* %3, align 8
  %4731 = inttoptr i64 %4727 to i64*
  %4732 = load i64, i64* %4731, align 8
  store i64 %4732, i64* %3, align 8
  %4733 = add i64 %4683, 992
  store i64 %4733, i64* %6, align 8
  ret %struct.Memory* %MEMORY.66
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
define %struct.Memory* @routine_subq__0x3a8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -936
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 936
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
define %struct.Memory* @routine_movq__0x57a739___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a739_type* @G__0x57a739 to i64), i64* %R8, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x220__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x224__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -548
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_movl__ecx__MINUS0x23c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -572
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
define %struct.Memory* @routine_je_.L_4644a4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_4644a9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4644d1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4a1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1185, i64* %RSI, align 8
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
define %struct.Memory* @routine_cmpl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_jne_.L_4644e7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46450f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4a2___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1186, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fd27___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fd27_type* @G__0x57fd27 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_cmpl__0x2__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_jne_.L_464532(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4645a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x4a5___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 1189, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fd3a___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fd3a_type* @G__0x57fd3a to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movq__rdx__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
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
define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
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
define %struct.Memory* @routine_movl__eax__MINUS0x2fc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -764
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
define %struct.Memory* @routine_movq_MINUS0x2f8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x300__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -768
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
define %struct.Memory* @routine_movl_MINUS0x2fc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -764
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
define %struct.Memory* @routine_movl_MINUS0x300__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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
define %struct.Memory* @routine_movl__0x0__MINUS0x228__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x228__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
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
define %struct.Memory* @routine_jge_.L_4645fb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x228__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -88
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
define %struct.Memory* @routine_movl__ecx__MINUS0x218__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -536
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
define %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -336
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
define %struct.Memory* @routine_movl__eax__MINUS0x228__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -552
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4645ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
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
define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
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
define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jg_.L_4646ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4646a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x218__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -88
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
define %struct.Memory* @routine_jmpq_.L_464669(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4646ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_4646d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.special_rescue2_moves(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x238__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
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
define %struct.Memory* @routine_cmpl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -136
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
define %struct.Memory* @routine_jge_.L_464955(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x228__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
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
define %struct.Memory* @routine_movl_MINUS0x218__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -536
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
define %struct.Memory* @routine_movl__r9d__MINUS0x304__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -772
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x308__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -776
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x30c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -780
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x310__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -784
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x314__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -788
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x315__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -789
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_46477c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x224__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -548
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
define %struct.Memory* @routine_movb__al__MINUS0x315__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -789
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x315__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -789
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fd49___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fd49_type* @G__0x57fd49 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x240__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x244__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x248__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
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
define %struct.Memory* @routine_movl_MINUS0x308__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -776
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
define %struct.Memory* @routine_movq__rdi__MINUS0x320__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -800
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
define %struct.Memory* @routine_movl_MINUS0x30c__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -780
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
define %struct.Memory* @routine_movq__rsi__MINUS0x328__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -808
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
define %struct.Memory* @routine_movl_MINUS0x310__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -784
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
define %struct.Memory* @routine_movq__rcx__MINUS0x330__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -816
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
define %struct.Memory* @routine_movl_MINUS0x314__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -788
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
define %struct.Memory* @routine_movl__r8d__MINUS0x334__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -820
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
define %struct.Memory* @routine_movl_MINUS0x304__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movq_MINUS0x330__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -816
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
define %struct.Memory* @routine_movq_MINUS0x328__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -808
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
define %struct.Memory* @routine_movq_MINUS0x320__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -800
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
define %struct.Memory* @routine_movl_MINUS0x334__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
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
define %struct.Memory* @routine_je_.L_46493c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
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
define %struct.Memory* @routine_jne_.L_4648fe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x240__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
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
define %struct.Memory* @routine_movl_MINUS0x244__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -580
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
define %struct.Memory* @routine_movl__eax__MINUS0x24c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -588
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x24c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -588
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
define %struct.Memory* @routine_jne_.L_4648be(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_46487f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4648b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x238__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x23c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -572
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
define %struct.Memory* @routine_jmpq_.L_465536(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl_MINUS0x24c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -588
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
define %struct.Memory* @routine_cmpl_MINUS0x224__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -548
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
define %struct.Memory* @routine_jle_.L_4648ef(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x220__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -544
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x224__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -548
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4648f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4648f9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464937(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_464932(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x220__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -544
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x224__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -548
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46493c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464941(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4646f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x88__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_jge_.L_464c4f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x58__rbp__rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -88
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_464aeb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x6___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -92
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x22c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -556
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x22c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -556
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
define %struct.Memory* @routine_cmpl_MINUS0x5c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -92
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
define %struct.Memory* @routine_jge_.L_464ae6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x22c__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -556
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
define %struct.Memory* @routine_movl_MINUS0x80__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -128
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_464a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.has_neighbor(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_464acd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_464a09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x250__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
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
define %struct.Memory* @routine_jge_.L_464a72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x250__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
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
define %struct.Memory* @routine_movl_MINUS0x218__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -536
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
define %struct.Memory* @routine_cmpl_MINUS0x4c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_464a59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x150__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -336
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
define %struct.Memory* @routine_movl__ecx__MINUS0x150__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -336
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
define %struct.Memory* @routine_jmpq_.L_464a72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464a5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -592
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464a13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_464ac3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x32__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_jge_.L_464ac3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x88__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -136
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
define %struct.Memory* @routine_movl__eax__MINUS0x218__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -536
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
define %struct.Memory* @routine_movl__0x0__MINUS0x150__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -336
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464ac8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464acd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464ad2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4649bf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464aeb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x5c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jg_.L_464c36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_464c31(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_464c18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_464b54(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x254__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -596
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x254__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -596
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
define %struct.Memory* @routine_jge_.L_464bbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x254__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -596
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
define %struct.Memory* @routine_jne_.L_464ba4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_464bbd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464ba9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x254__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -596
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464b5e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_464c0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_464c0e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_464c13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464c18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464c1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464b1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464c36(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464c3b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46496b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_movl_MINUS0x21c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -540
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
define %struct.Memory* @routine_movl_MINUS0x21c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -540
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
define %struct.Memory* @routine_movl__edx__MINUS0x228__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -552
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_464ed8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__r9d__MINUS0x338__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -824
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x33c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -828
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x340__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -832
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x344__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -836
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x348__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -840
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x349__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -841
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_464cff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x349__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -841
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x349__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -841
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fd53___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fd53_type* @G__0x57fd53 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x258__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x25c__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -604
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x260__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -608
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x33c__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movq__rdi__MINUS0x358__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -856
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x340__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -832
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
define %struct.Memory* @routine_movq__rsi__MINUS0x360__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x344__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -836
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
define %struct.Memory* @routine_movq__rcx__MINUS0x368__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -872
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x348__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -840
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
define %struct.Memory* @routine_movl__r8d__MINUS0x36c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -876
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x338__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movq_MINUS0x368__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -872
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x360__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -864
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x358__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -856
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x36c__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -876
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
define %struct.Memory* @routine_je_.L_464ebf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x260__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -608
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
define %struct.Memory* @routine_jne_.L_464e81(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x258__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
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
define %struct.Memory* @routine_movl_MINUS0x25c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -604
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
define %struct.Memory* @routine_movl__eax__MINUS0x264__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -612
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x264__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -612
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
define %struct.Memory* @routine_jne_.L_464e41(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_464e02(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_464e35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fd5d___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fd5d_type* @G__0x57fd5d to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x264__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -612
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
define %struct.Memory* @routine_jle_.L_464e72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_464e77(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464e7c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464eba(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_464eb5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_464ebf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464ec4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464c7b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xafd960___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
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
define %struct.Memory* @routine_jg_.L_464f0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_465109(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x268__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -616
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
define %struct.Memory* @routine_leaq_MINUS0x2d0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -720
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
define %struct.Memory* @routine_cmpl_MINUS0x268__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -616
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
define %struct.Memory* @routine_jge_.L_46508f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2d0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
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
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x2d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -724
  %6 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_je_.L_464f87(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46507b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_465076(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_464fac(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x2d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -728
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -728
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
define %struct.Memory* @routine_jge_.L_465018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x2d8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -728
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
define %struct.Memory* @routine_jne_.L_464fff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_465018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465004(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464fb6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_46506c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_46506c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_465071(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465076(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_464f45(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_465104(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -732
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2dc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -732
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
define %struct.Memory* @routine_je_.L_4650db(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4650f0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2dc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -732
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
define %struct.Memory* @routine_jmpq_.L_465099(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_465109(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0xb54ce4___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xb060b8___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDI, align 4
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
define %struct.Memory* @routine_jg_.L_46513f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_465162(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_4653eb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__r9d__MINUS0x370__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -880
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x374__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -884
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x378__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -888
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x37c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -892
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x380__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -896
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x381__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -897
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_465212(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al__MINUS0x381__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -897
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x381__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -897
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fd73___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fd73_type* @G__0x57fd73 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x2e0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -736
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
define %struct.Memory* @routine_leaq_MINUS0x2e8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x374__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -884
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
define %struct.Memory* @routine_movq__rdi__MINUS0x390__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -912
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x378__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -888
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
define %struct.Memory* @routine_movq__rsi__MINUS0x398__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -920
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x37c__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -892
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
define %struct.Memory* @routine_movq__rcx__MINUS0x3a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -928
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x380__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -896
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
define %struct.Memory* @routine_movl__r8d__MINUS0x3a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -932
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x370__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -880
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
define %struct.Memory* @routine_movq_MINUS0x3a0__rbp____r14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -928
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R14, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x398__rbp____r15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -920
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R15, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x390__rbp____r12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -912
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R12, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3a4__rbp____r13d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -932
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
define %struct.Memory* @routine_je_.L_4653d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -744
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
define %struct.Memory* @routine_jne_.L_465394(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2e0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -736
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
define %struct.Memory* @routine_movl_MINUS0x2e4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -740
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
define %struct.Memory* @routine_jne_.L_465354(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_465315(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_465348(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_465385(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46538a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46538f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4653cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4653c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4653d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4653d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_46518e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46549c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4653fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_46545d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_465421(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x220__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
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
define %struct.Memory* @routine_je_.L_465458(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46548e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_465489(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x224__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -548
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
define %struct.Memory* @routine_jmpq_.L_4654a1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_4654fc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4654c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_4654f7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_46552d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_465528(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addq__0x3a8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 936
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -937
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
