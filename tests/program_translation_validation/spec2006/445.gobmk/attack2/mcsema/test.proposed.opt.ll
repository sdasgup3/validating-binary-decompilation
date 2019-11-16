; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae448_type = type <{ [1 x i8] }>
%G_0xab0ef8_type = type <{ [1 x i8] }>
%G_0xae23a4_type = type <{ [4 x i8] }>
%G_0xafd960_type = type <{ [4 x i8] }>
%G_0xb060b8_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb8af28_type = type <{ [4 x i8] }>
%G_0xb8b850_type = type <{ [4 x i8] }>
%G_0xb8b854_type = type <{ [4 x i8] }>
%G__0x57a4d2_type = type <{ [8 x i8] }>
%G__0x57e5fb_type = type <{ [8 x i8] }>
%G__0x57f60a_type = type <{ [8 x i8] }>
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fd27_type = type <{ [8 x i8] }>
%G__0x57fd3a_type = type <{ [8 x i8] }>
%G__0x57fe22_type = type <{ [8 x i8] }>
%G__0x57fe2c_type = type <{ [8 x i8] }>
%G__0x57fe36_type = type <{ [8 x i8] }>
%G__0x57fe3e_type = type <{ [8 x i8] }>
%G__0x57fe46_type = type <{ [8 x i8] }>
%G__0x57fe56_type = type <{ [8 x i8] }>
%G__0x57fe66_type = type <{ [8 x i8] }>
%G__0x57fe70_type = type <{ [8 x i8] }>
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
@G_0xafd960 = local_unnamed_addr global %G_0xafd960_type zeroinitializer
@G_0xb060b8 = local_unnamed_addr global %G_0xb060b8_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G_0xb8af28 = local_unnamed_addr global %G_0xb8af28_type zeroinitializer
@G_0xb8b850 = local_unnamed_addr global %G_0xb8b850_type zeroinitializer
@G_0xb8b854 = local_unnamed_addr global %G_0xb8b854_type zeroinitializer
@G__0x57a4d2 = global %G__0x57a4d2_type zeroinitializer
@G__0x57e5fb = global %G__0x57e5fb_type zeroinitializer
@G__0x57f60a = global %G__0x57f60a_type zeroinitializer
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fd27 = global %G__0x57fd27_type zeroinitializer
@G__0x57fd3a = global %G__0x57fd3a_type zeroinitializer
@G__0x57fe22 = global %G__0x57fe22_type zeroinitializer
@G__0x57fe2c = global %G__0x57fe2c_type zeroinitializer
@G__0x57fe36 = global %G__0x57fe36_type zeroinitializer
@G__0x57fe3e = global %G__0x57fe3e_type zeroinitializer
@G__0x57fe46 = global %G__0x57fe46_type zeroinitializer
@G__0x57fe56 = global %G__0x57fe56_type zeroinitializer
@G__0x57fe66 = global %G__0x57fe66_type zeroinitializer
@G__0x57fe70 = global %G__0x57fe70_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_4141e0.find_origin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4137f0.countstones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_462c90.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_463620.do_find_defense(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_45dce0.do_attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40dd60.popgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_463a80.find_cap2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_469970.special_attack2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_469b40.special_attack3(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_469ef0.special_attack4(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @attack2(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %R15.i1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0, i32 0
  %11 = load i64, i64* %R15.i1848, align 8
  %12 = add i64 %10, 5
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %R14.i2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %15 = load i64, i64* %R14.i2097, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 2
  store i64 %17, i64* %3, align 8
  %18 = add i64 %7, -24
  %19 = inttoptr i64 %18 to i64*
  store i64 %15, i64* %19, align 8
  %R13.i2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %20 = load i64, i64* %R13.i2114, align 8
  %21 = load i64, i64* %3, align 8
  %22 = add i64 %21, 2
  store i64 %22, i64* %3, align 8
  %23 = add i64 %7, -32
  %24 = inttoptr i64 %23 to i64*
  store i64 %20, i64* %24, align 8
  %R12.i2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %25 = load i64, i64* %R12.i2169, align 8
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 2
  store i64 %27, i64* %3, align 8
  %28 = add i64 %7, -40
  %29 = inttoptr i64 %28 to i64*
  store i64 %25, i64* %29, align 8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0
  %RBX.i2186 = getelementptr inbounds %union.anon, %union.anon* %30, i64 0, i32 0
  %31 = load i64, i64* %RBX.i2186, align 8
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
  %RAX.i2292 = getelementptr inbounds %union.anon, %union.anon* %66, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fe3e_type* @G__0x57fe3e to i64), i64* %RAX.i2292, align 8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i2290 = bitcast %union.anon* %67 to i32*
  %68 = getelementptr inbounds %union.anon, %union.anon* %67, i64 0, i32 0
  store i64 3, i64* %68, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i2287 = bitcast %union.anon* %69 to i32*
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -48
  %72 = load i32, i32* %EDI.i2287, align 4
  %73 = add i64 %36, 26
  store i64 %73, i64* %3, align 8
  %74 = inttoptr i64 %71 to i32*
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i2284 = getelementptr inbounds %union.anon, %union.anon* %75, i64 0, i32 0
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -56
  %78 = load i64, i64* %RSI.i2284, align 8
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 4
  store i64 %80, i64* %3, align 8
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81, align 8
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2281 = bitcast %union.anon* %82 to i32*
  %83 = load i64, i64* %RBP.i, align 8
  %84 = add i64 %83, -60
  %85 = load i32, i32* %EDX.i2281, align 4
  %86 = load i64, i64* %3, align 8
  %87 = add i64 %86, 3
  store i64 %87, i64* %3, align 8
  %88 = inttoptr i64 %84 to i32*
  store i32 %85, i32* %88, align 4
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2278 = bitcast %union.anon* %89 to i32*
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -64
  %92 = load i32, i32* %ECX.i2278, align 4
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
  store i64 %102, i64* %RSI.i2284, align 8
  %RCX.i2272 = getelementptr inbounds %union.anon, %union.anon* %89, i64 0, i32 0
  %103 = add nsw i64 %102, 12099168
  %104 = add i64 %98, 12
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %103 to i8*
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i64
  store i64 %107, i64* %RCX.i2272, align 8
  %108 = add i64 %96, -68
  %109 = zext i8 %106 to i32
  %110 = add i64 %98, 15
  store i64 %110, i64* %3, align 8
  %111 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %R8D.i2290, align 4
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
  %148 = add i64 %147, -756
  %149 = load i64, i64* %3, align 8
  %150 = add i64 %149, 10
  store i64 %150, i64* %3, align 8
  %151 = inttoptr i64 %148 to i32*
  store i32 0, i32* %151, align 4
  %152 = load i64, i64* %RBP.i, align 8
  %153 = add i64 %152, -760
  %154 = load i64, i64* %3, align 8
  %155 = add i64 %154, 10
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %153 to i32*
  store i32 0, i32* %156, align 4
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -776
  %159 = load i64, i64* %3, align 8
  %160 = add i64 %159, 10
  store i64 %160, i64* %3, align 8
  %161 = inttoptr i64 %158 to i32*
  store i32 0, i32* %161, align 4
  %162 = load i64, i64* %RBP.i, align 8
  %163 = add i64 %162, -1188
  %164 = load i64, i64* %3, align 8
  %165 = add i64 %164, 10
  store i64 %165, i64* %3, align 8
  %166 = inttoptr i64 %163 to i32*
  store i32 0, i32* %166, align 4
  %167 = load i64, i64* %RBP.i, align 8
  %168 = add i64 %167, -1200
  %169 = load i64, i64* %RAX.i2292, align 8
  %170 = load i64, i64* %3, align 8
  %171 = add i64 %170, 7
  store i64 %171, i64* %3, align 8
  %172 = inttoptr i64 %168 to i64*
  store i64 %169, i64* %172, align 8
  %173 = load i64, i64* %RBP.i, align 8
  %174 = add i64 %173, -48
  %175 = load i64, i64* %3, align 8
  %176 = add i64 %175, 3
  store i64 %176, i64* %3, align 8
  %177 = inttoptr i64 %174 to i32*
  %178 = load i32, i32* %177, align 4
  %179 = add i64 %173, -1204
  %180 = add i64 %175, 9
  store i64 %180, i64* %3, align 8
  %181 = inttoptr i64 %179 to i32*
  store i32 %178, i32* %181, align 4
  %182 = load i64, i64* %3, align 8
  %183 = load i32, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  %184 = add i32 %183, 1
  %185 = zext i32 %184 to i64
  store i64 %185, i64* %RCX.i2272, align 8
  %186 = icmp eq i32 %183, -1
  %187 = icmp eq i32 %184, 0
  %188 = or i1 %186, %187
  %189 = zext i1 %188 to i8
  store i8 %189, i8* %40, align 1
  %190 = and i32 %184, 255
  %191 = tail call i32 @llvm.ctpop.i32(i32 %190)
  %192 = trunc i32 %191 to i8
  %193 = and i8 %192, 1
  %194 = xor i8 %193, 1
  store i8 %194, i8* %47, align 1
  %195 = xor i32 %184, %183
  %196 = lshr i32 %195, 4
  %197 = trunc i32 %196 to i8
  %198 = and i8 %197, 1
  store i8 %198, i8* %53, align 1
  %199 = zext i1 %187 to i8
  store i8 %199, i8* %56, align 1
  %200 = lshr i32 %184, 31
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %59, align 1
  %202 = lshr i32 %183, 31
  %203 = xor i32 %200, %202
  %204 = add nuw nsw i32 %203, %200
  %205 = icmp eq i32 %204, 2
  %206 = zext i1 %205 to i8
  store i8 %206, i8* %65, align 1
  store i32 %184, i32* bitcast (%G_0xae23a4_type* @G_0xae23a4 to i32*), align 8
  %207 = load i64, i64* %RBP.i, align 8
  %208 = add i64 %207, -784
  %209 = add i64 %182, 27
  store i64 %209, i64* %3, align 8
  %210 = inttoptr i64 %208 to i32*
  store i32 0, i32* %210, align 4
  %RDI.i2235 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %211 = load i64, i64* %RBP.i, align 8
  %212 = add i64 %211, -48
  %213 = load i64, i64* %3, align 8
  %214 = add i64 %213, 3
  store i64 %214, i64* %3, align 8
  %215 = inttoptr i64 %212 to i32*
  %216 = load i32, i32* %215, align 4
  %217 = zext i32 %216 to i64
  store i64 %217, i64* %RDI.i2235, align 8
  %218 = add i64 %213, -305499
  %219 = add i64 %213, 8
  %220 = load i64, i64* %6, align 8
  %221 = add i64 %220, -8
  %222 = inttoptr i64 %221 to i64*
  store i64 %219, i64* %222, align 8
  store i64 %221, i64* %6, align 8
  store i64 %218, i64* %3, align 8
  %call2_45eb3e = tail call %struct.Memory* @sub_4141e0.find_origin(%struct.State* %0, i64 %218, %struct.Memory* %2)
  %EAX.i2231 = bitcast %union.anon* %66 to i32*
  %223 = load i64, i64* %RBP.i, align 8
  %224 = add i64 %223, -48
  %225 = load i32, i32* %EAX.i2231, align 4
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 3
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %224 to i32*
  store i32 %225, i32* %228, align 4
  %229 = load i64, i64* %RBP.i, align 8
  %230 = add i64 %229, -48
  %231 = load i64, i64* %3, align 8
  %232 = add i64 %231, 4
  store i64 %232, i64* %3, align 8
  %233 = inttoptr i64 %230 to i32*
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  store i64 %235, i64* %RSI.i2284, align 8
  %236 = add nsw i64 %235, 12099168
  %237 = add i64 %231, 12
  store i64 %237, i64* %3, align 8
  %238 = inttoptr i64 %236 to i8*
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i64
  store i64 %240, i64* %RAX.i2292, align 8
  %241 = zext i8 %239 to i32
  %242 = add nsw i32 %241, -1
  %243 = icmp eq i8 %239, 0
  %244 = zext i1 %243 to i8
  store i8 %244, i8* %40, align 1
  %245 = and i32 %242, 255
  %246 = tail call i32 @llvm.ctpop.i32(i32 %245)
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = xor i8 %248, 1
  store i8 %249, i8* %47, align 1
  %250 = xor i32 %242, %241
  %251 = lshr i32 %250, 4
  %252 = trunc i32 %251 to i8
  %253 = and i8 %252, 1
  store i8 %253, i8* %53, align 1
  %254 = icmp eq i32 %242, 0
  %255 = zext i1 %254 to i8
  store i8 %255, i8* %56, align 1
  %256 = lshr i32 %242, 31
  %257 = trunc i32 %256 to i8
  store i8 %257, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v264 = select i1 %254, i64 42, i64 21
  %258 = add i64 %231, %.v264
  store i64 %258, i64* %3, align 8
  br i1 %254, label %block_.L_45eb70, label %block_45eb5b

block_45eb5b:                                     ; preds = %entry
  %259 = add i64 %258, 4
  store i64 %259, i64* %3, align 8
  %260 = load i32, i32* %233, align 4
  %261 = sext i32 %260 to i64
  store i64 %261, i64* %RAX.i2292, align 8
  %262 = add nsw i64 %261, 12099168
  %263 = add i64 %258, 12
  store i64 %263, i64* %3, align 8
  %264 = inttoptr i64 %262 to i8*
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i64
  store i64 %266, i64* %RCX.i2272, align 8
  %267 = zext i8 %265 to i32
  %268 = add nsw i32 %267, -2
  %269 = icmp ult i8 %265, 2
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %40, align 1
  %271 = and i32 %268, 255
  %272 = tail call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  store i8 %275, i8* %47, align 1
  %276 = xor i32 %268, %267
  %277 = lshr i32 %276, 4
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  store i8 %279, i8* %53, align 1
  %280 = icmp eq i32 %268, 0
  %281 = zext i1 %280 to i8
  store i8 %281, i8* %56, align 1
  %282 = lshr i32 %268, 31
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v265 = select i1 %280, i64 21, i64 26
  %284 = add i64 %258, %.v265
  store i64 %284, i64* %3, align 8
  br i1 %280, label %block_.L_45eb70, label %block_.L_45eb75

block_.L_45eb70:                                  ; preds = %block_45eb5b, %entry
  %285 = phi i64 [ %284, %block_45eb5b ], [ %258, %entry ]
  %286 = add i64 %285, 118
  store i64 %286, i64* %3, align 8
  br label %block_.L_45ebe6

block_.L_45eb75:                                  ; preds = %block_45eb5b
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i2235, align 8
  store i64 2552, i64* %RSI.i2284, align 8
  %RDX.i2206 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX.i2206, align 8
  store i64 20, i64* %RAX.i2292, align 8
  %287 = add i64 %284, 33
  store i64 %287, i64* %3, align 8
  %288 = load i32, i32* %233, align 4
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RCX.i2272, align 8
  %290 = add i64 %229, -1372
  %291 = add i64 %284, 39
  store i64 %291, i64* %3, align 8
  %292 = inttoptr i64 %290 to i32*
  store i32 20, i32* %292, align 4
  %293 = load i32, i32* %ECX.i2278, align 4
  %294 = zext i32 %293 to i64
  %295 = load i64, i64* %3, align 8
  store i64 %294, i64* %RAX.i2292, align 8
  %296 = load i64, i64* %RBP.i, align 8
  %297 = add i64 %296, -1384
  %298 = load i64, i64* %RDX.i2206, align 8
  %299 = add i64 %295, 9
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %297 to i64*
  store i64 %298, i64* %300, align 8
  %301 = load i64, i64* %3, align 8
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %303 = load i32, i32* %EAX.i2231, align 8
  %304 = sext i32 %303 to i64
  %305 = lshr i64 %304, 32
  store i64 %305, i64* %302, align 8
  %306 = load i64, i64* %RBP.i, align 8
  %307 = add i64 %306, -1372
  %308 = add i64 %301, 7
  store i64 %308, i64* %3, align 8
  %309 = inttoptr i64 %307 to i32*
  %310 = load i32, i32* %309, align 4
  %311 = zext i32 %310 to i64
  store i64 %311, i64* %RCX.i2272, align 8
  %312 = add i64 %301, 9
  store i64 %312, i64* %3, align 8
  %313 = zext i32 %303 to i64
  %314 = sext i32 %310 to i64
  %315 = shl nuw i64 %305, 32
  %316 = or i64 %315, %313
  %317 = sdiv i64 %316, %314
  %318 = shl i64 %317, 32
  %319 = ashr exact i64 %318, 32
  %320 = icmp eq i64 %317, %319
  br i1 %320, label %323, label %321

; <label>:321:                                    ; preds = %block_.L_45eb75
  %322 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %312, %struct.Memory* %call2_45eb3e)
  %.pre = load i64, i64* %RAX.i2292, align 8
  %.pre160 = load i64, i64* %3, align 8
  %.pre161 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2184

; <label>:323:                                    ; preds = %block_.L_45eb75
  %324 = srem i64 %316, %314
  %325 = and i64 %317, 4294967295
  store i64 %325, i64* %RAX.i2292, align 8
  %326 = and i64 %324, 4294967295
  store i64 %326, i64* %RDX.i2206, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit2184

routine_idivl__ecx.exit2184:                      ; preds = %323, %321
  %327 = phi i64 [ %.pre161, %321 ], [ %306, %323 ]
  %328 = phi i64 [ %.pre160, %321 ], [ %312, %323 ]
  %329 = phi i64 [ %.pre, %321 ], [ %325, %323 ]
  %330 = phi %struct.Memory* [ %322, %321 ], [ %call2_45eb3e, %323 ]
  %331 = trunc i64 %329 to i32
  %332 = add i32 %331, -1
  %333 = zext i32 %332 to i64
  store i64 %333, i64* %RAX.i2292, align 8
  %334 = icmp eq i32 %331, 0
  %335 = zext i1 %334 to i8
  store i8 %335, i8* %40, align 1
  %336 = and i32 %332, 255
  %337 = tail call i32 @llvm.ctpop.i32(i32 %336)
  %338 = trunc i32 %337 to i8
  %339 = and i8 %338, 1
  %340 = xor i8 %339, 1
  store i8 %340, i8* %47, align 1
  %341 = xor i32 %332, %331
  %342 = lshr i32 %341, 4
  %343 = trunc i32 %342 to i8
  %344 = and i8 %343, 1
  store i8 %344, i8* %53, align 1
  %345 = icmp eq i32 %332, 0
  %346 = zext i1 %345 to i8
  store i8 %346, i8* %56, align 1
  %347 = lshr i32 %332, 31
  %348 = trunc i32 %347 to i8
  store i8 %348, i8* %59, align 1
  %349 = lshr i32 %331, 31
  %350 = xor i32 %347, %349
  %351 = add nuw nsw i32 %350, %349
  %352 = icmp eq i32 %351, 2
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %65, align 1
  %354 = add i64 %327, -48
  %355 = add i64 %328, 7
  store i64 %355, i64* %3, align 8
  %356 = inttoptr i64 %354 to i32*
  %357 = load i32, i32* %356, align 4
  %358 = zext i32 %357 to i64
  store i64 %358, i64* %68, align 8
  %359 = add i64 %327, -1388
  %360 = add i64 %328, 13
  store i64 %360, i64* %3, align 8
  %361 = inttoptr i64 %359 to i32*
  store i32 %332, i32* %361, align 4
  %362 = load i32, i32* %R8D.i2290, align 4
  %363 = zext i32 %362 to i64
  %364 = load i64, i64* %3, align 8
  store i64 %363, i64* %RAX.i2292, align 8
  %365 = sext i32 %362 to i64
  %366 = lshr i64 %365, 32
  store i64 %366, i64* %302, align 8
  %367 = load i32, i32* %ECX.i2278, align 4
  %368 = add i64 %364, 6
  store i64 %368, i64* %3, align 8
  %369 = sext i32 %367 to i64
  %370 = shl nuw i64 %366, 32
  %371 = or i64 %370, %363
  %372 = sdiv i64 %371, %369
  %373 = shl i64 %372, 32
  %374 = ashr exact i64 %373, 32
  %375 = icmp eq i64 %372, %374
  br i1 %375, label %378, label %376

; <label>:376:                                    ; preds = %routine_idivl__ecx.exit2184
  %377 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %368, %struct.Memory* %330)
  %.pre162 = load i64, i64* %RDX.i2206, align 8
  %.pre163 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit2167

; <label>:378:                                    ; preds = %routine_idivl__ecx.exit2184
  %379 = srem i64 %371, %369
  %380 = and i64 %372, 4294967295
  store i64 %380, i64* %RAX.i2292, align 8
  %381 = and i64 %379, 4294967295
  store i64 %381, i64* %RDX.i2206, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit2167

routine_idivl__ecx.exit2167:                      ; preds = %378, %376
  %382 = phi i64 [ %.pre163, %376 ], [ %368, %378 ]
  %383 = phi i64 [ %.pre162, %376 ], [ %381, %378 ]
  %384 = phi %struct.Memory* [ %377, %376 ], [ %330, %378 ]
  %385 = trunc i64 %383 to i32
  %386 = add i32 %385, -1
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RDX.i2206, align 8
  %388 = icmp eq i32 %385, 0
  %389 = zext i1 %388 to i8
  store i8 %389, i8* %40, align 1
  %390 = and i32 %386, 255
  %391 = tail call i32 @llvm.ctpop.i32(i32 %390)
  %392 = trunc i32 %391 to i8
  %393 = and i8 %392, 1
  %394 = xor i8 %393, 1
  store i8 %394, i8* %47, align 1
  %395 = xor i32 %386, %385
  %396 = lshr i32 %395, 4
  %397 = trunc i32 %396 to i8
  %398 = and i8 %397, 1
  store i8 %398, i8* %53, align 1
  %399 = icmp eq i32 %386, 0
  %400 = zext i1 %399 to i8
  store i8 %400, i8* %56, align 1
  %401 = lshr i32 %386, 31
  %402 = trunc i32 %401 to i8
  store i8 %402, i8* %59, align 1
  %403 = lshr i32 %385, 31
  %404 = xor i32 %401, %403
  %405 = add nuw nsw i32 %404, %403
  %406 = icmp eq i32 %405, 2
  %407 = zext i1 %406 to i8
  store i8 %407, i8* %65, align 1
  %R9.i2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %408 = load i64, i64* %RBP.i, align 8
  %409 = add i64 %408, -1384
  %410 = add i64 %382, 10
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %409 to i64*
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %R9.i2162, align 8
  %413 = add i64 %408, -1392
  %414 = add i64 %382, 16
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  store i32 %386, i32* %415, align 4
  %416 = load i64, i64* %R9.i2162, align 8
  %417 = load i64, i64* %3, align 8
  store i64 %416, i64* %RDX.i2206, align 8
  %418 = load i64, i64* %RBP.i, align 8
  %419 = add i64 %418, -1388
  %420 = add i64 %417, 9
  store i64 %420, i64* %3, align 8
  %421 = inttoptr i64 %419 to i32*
  %422 = load i32, i32* %421, align 4
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RCX.i2272, align 8
  %424 = add i64 %418, -1392
  %425 = add i64 %417, 16
  store i64 %425, i64* %3, align 8
  %426 = inttoptr i64 %424 to i32*
  %427 = load i32, i32* %426, align 4
  %428 = zext i32 %427 to i64
  store i64 %428, i64* %68, align 8
  %429 = add i64 %417, -52033
  %430 = add i64 %417, 21
  %431 = load i64, i64* %6, align 8
  %432 = add i64 %431, -8
  %433 = inttoptr i64 %432 to i64*
  store i64 %430, i64* %433, align 8
  store i64 %432, i64* %6, align 8
  store i64 %429, i64* %3, align 8
  %call2_45ebe1 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %429, %struct.Memory* %384)
  %.pre164 = load i64, i64* %RBP.i, align 8
  %.pre165 = load i64, i64* %3, align 8
  br label %block_.L_45ebe6

block_.L_45ebe6:                                  ; preds = %routine_idivl__ecx.exit2167, %block_.L_45eb70
  %434 = phi i64 [ %286, %block_.L_45eb70 ], [ %.pre165, %routine_idivl__ecx.exit2167 ]
  %435 = phi i64 [ %229, %block_.L_45eb70 ], [ %.pre164, %routine_idivl__ecx.exit2167 ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_45eb3e, %block_.L_45eb70 ], [ %call2_45ebe1, %routine_idivl__ecx.exit2167 ]
  %436 = add i64 %435, -48
  %437 = add i64 %434, 3
  store i64 %437, i64* %3, align 8
  %438 = inttoptr i64 %436 to i32*
  %439 = load i32, i32* %438, align 4
  %440 = zext i32 %439 to i64
  store i64 %440, i64* %RDI.i2235, align 8
  %441 = add i64 %434, -324710
  %442 = add i64 %434, 8
  %443 = load i64, i64* %6, align 8
  %444 = add i64 %443, -8
  %445 = inttoptr i64 %444 to i64*
  store i64 %442, i64* %445, align 8
  store i64 %444, i64* %6, align 8
  store i64 %441, i64* %3, align 8
  %call2_45ebe9 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %441, %struct.Memory* %MEMORY.1)
  %446 = load i32, i32* %EAX.i2231, align 4
  %447 = load i64, i64* %3, align 8
  %448 = add i32 %446, -2
  %449 = icmp ult i32 %446, 2
  %450 = zext i1 %449 to i8
  store i8 %450, i8* %40, align 1
  %451 = and i32 %448, 255
  %452 = tail call i32 @llvm.ctpop.i32(i32 %451)
  %453 = trunc i32 %452 to i8
  %454 = and i8 %453, 1
  %455 = xor i8 %454, 1
  store i8 %455, i8* %47, align 1
  %456 = xor i32 %448, %446
  %457 = lshr i32 %456, 4
  %458 = trunc i32 %457 to i8
  %459 = and i8 %458, 1
  store i8 %459, i8* %53, align 1
  %460 = icmp eq i32 %448, 0
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %56, align 1
  %462 = lshr i32 %448, 31
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %59, align 1
  %464 = lshr i32 %446, 31
  %465 = xor i32 %462, %464
  %466 = add nuw nsw i32 %465, %464
  %467 = icmp eq i32 %466, 2
  %468 = zext i1 %467 to i8
  store i8 %468, i8* %65, align 1
  %.v266 = select i1 %460, i64 9, i64 14
  %469 = add i64 %447, %.v266
  store i64 %469, i64* %3, align 8
  br i1 %460, label %block_45ebf7, label %block_.L_45ebfc

block_45ebf7:                                     ; preds = %block_.L_45ebe6
  %470 = add i64 %469, 118
  store i64 %470, i64* %3, align 8
  %.pre249 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  br label %block_.L_45ec6d

block_.L_45ebfc:                                  ; preds = %block_.L_45ebe6
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i2235, align 8
  store i64 2553, i64* %RSI.i2284, align 8
  %RDX.i2134 = getelementptr inbounds %union.anon, %union.anon* %82, i64 0, i32 0
  store i64 ptrtoint (%G__0x57fd27_type* @G__0x57fd27 to i64), i64* %RDX.i2134, align 8
  store i64 20, i64* %RAX.i2292, align 8
  %471 = load i64, i64* %RBP.i, align 8
  %472 = add i64 %471, -48
  %473 = add i64 %469, 33
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i32*
  %475 = load i32, i32* %474, align 4
  %476 = zext i32 %475 to i64
  store i64 %476, i64* %RCX.i2272, align 8
  %477 = add i64 %471, -1396
  %478 = add i64 %469, 39
  store i64 %478, i64* %3, align 8
  %479 = inttoptr i64 %477 to i32*
  store i32 20, i32* %479, align 4
  %480 = load i32, i32* %ECX.i2278, align 4
  %481 = zext i32 %480 to i64
  %482 = load i64, i64* %3, align 8
  store i64 %481, i64* %RAX.i2292, align 8
  %483 = load i64, i64* %RBP.i, align 8
  %484 = add i64 %483, -1408
  %485 = load i64, i64* %RDX.i2134, align 8
  %486 = add i64 %482, 9
  store i64 %486, i64* %3, align 8
  %487 = inttoptr i64 %484 to i64*
  store i64 %485, i64* %487, align 8
  %488 = load i64, i64* %3, align 8
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %490 = load i32, i32* %EAX.i2231, align 8
  %491 = sext i32 %490 to i64
  %492 = lshr i64 %491, 32
  store i64 %492, i64* %489, align 8
  %493 = load i64, i64* %RBP.i, align 8
  %494 = add i64 %493, -1396
  %495 = add i64 %488, 7
  store i64 %495, i64* %3, align 8
  %496 = inttoptr i64 %494 to i32*
  %497 = load i32, i32* %496, align 4
  %498 = zext i32 %497 to i64
  store i64 %498, i64* %RCX.i2272, align 8
  %499 = add i64 %488, 9
  store i64 %499, i64* %3, align 8
  %500 = zext i32 %490 to i64
  %501 = sext i32 %497 to i64
  %502 = shl nuw i64 %492, 32
  %503 = or i64 %502, %500
  %504 = sdiv i64 %503, %501
  %505 = shl i64 %504, 32
  %506 = ashr exact i64 %505, 32
  %507 = icmp eq i64 %504, %506
  br i1 %507, label %510, label %508

; <label>:508:                                    ; preds = %block_.L_45ebfc
  %509 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %499, %struct.Memory* %call2_45ebe9)
  %.pre166 = load i64, i64* %RAX.i2292, align 8
  %.pre167 = load i64, i64* %3, align 8
  %.pre168 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit2112

; <label>:510:                                    ; preds = %block_.L_45ebfc
  %511 = srem i64 %503, %501
  %512 = and i64 %504, 4294967295
  store i64 %512, i64* %RAX.i2292, align 8
  %513 = and i64 %511, 4294967295
  store i64 %513, i64* %RDX.i2134, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit2112

routine_idivl__ecx.exit2112:                      ; preds = %510, %508
  %514 = phi i64 [ %.pre168, %508 ], [ %493, %510 ]
  %515 = phi i64 [ %.pre167, %508 ], [ %499, %510 ]
  %516 = phi i64 [ %.pre166, %508 ], [ %512, %510 ]
  %517 = phi %struct.Memory* [ %509, %508 ], [ %call2_45ebe9, %510 ]
  %518 = trunc i64 %516 to i32
  %519 = add i32 %518, -1
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RAX.i2292, align 8
  %521 = icmp eq i32 %518, 0
  %522 = zext i1 %521 to i8
  store i8 %522, i8* %40, align 1
  %523 = and i32 %519, 255
  %524 = tail call i32 @llvm.ctpop.i32(i32 %523)
  %525 = trunc i32 %524 to i8
  %526 = and i8 %525, 1
  %527 = xor i8 %526, 1
  store i8 %527, i8* %47, align 1
  %528 = xor i32 %519, %518
  %529 = lshr i32 %528, 4
  %530 = trunc i32 %529 to i8
  %531 = and i8 %530, 1
  store i8 %531, i8* %53, align 1
  %532 = icmp eq i32 %519, 0
  %533 = zext i1 %532 to i8
  store i8 %533, i8* %56, align 1
  %534 = lshr i32 %519, 31
  %535 = trunc i32 %534 to i8
  store i8 %535, i8* %59, align 1
  %536 = lshr i32 %518, 31
  %537 = xor i32 %534, %536
  %538 = add nuw nsw i32 %537, %536
  %539 = icmp eq i32 %538, 2
  %540 = zext i1 %539 to i8
  store i8 %540, i8* %65, align 1
  %541 = add i64 %514, -48
  %542 = add i64 %515, 7
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %68, align 8
  %546 = add i64 %514, -1412
  %547 = add i64 %515, 13
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i32*
  store i32 %519, i32* %548, align 4
  %549 = load i32, i32* %R8D.i2290, align 4
  %550 = zext i32 %549 to i64
  %551 = load i64, i64* %3, align 8
  store i64 %550, i64* %RAX.i2292, align 8
  %552 = sext i32 %549 to i64
  %553 = lshr i64 %552, 32
  store i64 %553, i64* %489, align 8
  %554 = load i32, i32* %ECX.i2278, align 4
  %555 = add i64 %551, 6
  store i64 %555, i64* %3, align 8
  %556 = sext i32 %554 to i64
  %557 = shl nuw i64 %553, 32
  %558 = or i64 %557, %550
  %559 = sdiv i64 %558, %556
  %560 = shl i64 %559, 32
  %561 = ashr exact i64 %560, 32
  %562 = icmp eq i64 %559, %561
  br i1 %562, label %565, label %563

; <label>:563:                                    ; preds = %routine_idivl__ecx.exit2112
  %564 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %555, %struct.Memory* %517)
  %.pre169 = load i64, i64* %RDX.i2134, align 8
  %.pre170 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit2095

; <label>:565:                                    ; preds = %routine_idivl__ecx.exit2112
  %566 = srem i64 %558, %556
  %567 = and i64 %559, 4294967295
  store i64 %567, i64* %RAX.i2292, align 8
  %568 = and i64 %566, 4294967295
  store i64 %568, i64* %RDX.i2134, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit2095

routine_idivl__ecx.exit2095:                      ; preds = %565, %563
  %569 = phi i64 [ %.pre170, %563 ], [ %555, %565 ]
  %570 = phi i64 [ %.pre169, %563 ], [ %568, %565 ]
  %571 = phi %struct.Memory* [ %564, %563 ], [ %517, %565 ]
  %572 = trunc i64 %570 to i32
  %573 = add i32 %572, -1
  %574 = zext i32 %573 to i64
  store i64 %574, i64* %RDX.i2134, align 8
  %575 = icmp eq i32 %572, 0
  %576 = zext i1 %575 to i8
  store i8 %576, i8* %40, align 1
  %577 = and i32 %573, 255
  %578 = tail call i32 @llvm.ctpop.i32(i32 %577)
  %579 = trunc i32 %578 to i8
  %580 = and i8 %579, 1
  %581 = xor i8 %580, 1
  store i8 %581, i8* %47, align 1
  %582 = xor i32 %573, %572
  %583 = lshr i32 %582, 4
  %584 = trunc i32 %583 to i8
  %585 = and i8 %584, 1
  store i8 %585, i8* %53, align 1
  %586 = icmp eq i32 %573, 0
  %587 = zext i1 %586 to i8
  store i8 %587, i8* %56, align 1
  %588 = lshr i32 %573, 31
  %589 = trunc i32 %588 to i8
  store i8 %589, i8* %59, align 1
  %590 = lshr i32 %572, 31
  %591 = xor i32 %588, %590
  %592 = add nuw nsw i32 %591, %590
  %593 = icmp eq i32 %592, 2
  %594 = zext i1 %593 to i8
  store i8 %594, i8* %65, align 1
  %R9.i2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %595 = load i64, i64* %RBP.i, align 8
  %596 = add i64 %595, -1408
  %597 = add i64 %569, 10
  store i64 %597, i64* %3, align 8
  %598 = inttoptr i64 %596 to i64*
  %599 = load i64, i64* %598, align 8
  store i64 %599, i64* %R9.i2090, align 8
  %600 = add i64 %595, -1416
  %601 = add i64 %569, 16
  store i64 %601, i64* %3, align 8
  %602 = inttoptr i64 %600 to i32*
  store i32 %573, i32* %602, align 4
  %603 = load i64, i64* %R9.i2090, align 8
  %604 = load i64, i64* %3, align 8
  store i64 %603, i64* %RDX.i2134, align 8
  %605 = load i64, i64* %RBP.i, align 8
  %606 = add i64 %605, -1412
  %607 = add i64 %604, 9
  store i64 %607, i64* %3, align 8
  %608 = inttoptr i64 %606 to i32*
  %609 = load i32, i32* %608, align 4
  %610 = zext i32 %609 to i64
  store i64 %610, i64* %RCX.i2272, align 8
  %611 = add i64 %605, -1416
  %612 = add i64 %604, 16
  store i64 %612, i64* %3, align 8
  %613 = inttoptr i64 %611 to i32*
  %614 = load i32, i32* %613, align 4
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %68, align 8
  %616 = add i64 %604, -52168
  %617 = add i64 %604, 21
  %618 = load i64, i64* %6, align 8
  %619 = add i64 %618, -8
  %620 = inttoptr i64 %619 to i64*
  store i64 %617, i64* %620, align 8
  store i64 %619, i64* %6, align 8
  store i64 %616, i64* %3, align 8
  %call2_45ec68 = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %616, %struct.Memory* %571)
  %.pre171 = load i64, i64* %3, align 8
  br label %block_.L_45ec6d

block_.L_45ec6d:                                  ; preds = %routine_idivl__ecx.exit2095, %block_45ebf7
  %RDX.i2074.pre-phi = phi i64* [ %RDX.i2134, %routine_idivl__ecx.exit2095 ], [ %.pre249, %block_45ebf7 ]
  %621 = phi i64 [ %.pre171, %routine_idivl__ecx.exit2095 ], [ %470, %block_45ebf7 ]
  %MEMORY.2 = phi %struct.Memory* [ %call2_45ec68, %routine_idivl__ecx.exit2095 ], [ %call2_45ebe9, %block_45ebf7 ]
  store i64 1, i64* %RDX.i2074.pre-phi, align 8
  %622 = load i64, i64* %RBP.i, align 8
  %623 = add i64 %622, -752
  store i64 %623, i64* %RSI.i2284, align 8
  %624 = add i64 %622, -48
  %625 = add i64 %621, 15
  store i64 %625, i64* %3, align 8
  %626 = inttoptr i64 %624 to i32*
  %627 = load i32, i32* %626, align 4
  %628 = zext i32 %627 to i64
  store i64 %628, i64* %RDI.i2235, align 8
  %629 = add i64 %621, -307277
  %630 = add i64 %621, 20
  %631 = load i64, i64* %6, align 8
  %632 = add i64 %631, -8
  %633 = inttoptr i64 %632 to i64*
  store i64 %630, i64* %633, align 8
  store i64 %632, i64* %6, align 8
  store i64 %629, i64* %3, align 8
  %call2_45ec7c = tail call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* nonnull %0, i64 %629, %struct.Memory* %MEMORY.2)
  %634 = load i64, i64* %RBP.i, align 8
  %635 = add i64 %634, -108
  %636 = load i32, i32* %EAX.i2231, align 4
  %637 = load i64, i64* %3, align 8
  %638 = add i64 %637, 3
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %635 to i32*
  store i32 %636, i32* %639, align 4
  %640 = load i64, i64* %RBP.i, align 8
  %641 = add i64 %640, -88
  %642 = load i64, i64* %3, align 8
  %643 = add i64 %642, 7
  store i64 %643, i64* %3, align 8
  %644 = inttoptr i64 %641 to i32*
  store i32 0, i32* %644, align 4
  %.pre172 = load i64, i64* %3, align 8
  br label %block_.L_45ec8b

block_.L_45ec8b:                                  ; preds = %block_.L_45ee05, %block_.L_45ec6d
  %645 = phi i64 [ %.pre172, %block_.L_45ec6d ], [ %1147, %block_.L_45ee05 ]
  %MEMORY.3 = phi %struct.Memory* [ %call2_45ec7c, %block_.L_45ec6d ], [ %call2_45ed40, %block_.L_45ee05 ]
  %646 = load i64, i64* %RBP.i, align 8
  %647 = add i64 %646, -88
  %648 = add i64 %645, 3
  store i64 %648, i64* %3, align 8
  %649 = inttoptr i64 %647 to i32*
  %650 = load i32, i32* %649, align 4
  %651 = zext i32 %650 to i64
  store i64 %651, i64* %RAX.i2292, align 8
  %652 = add i64 %646, -108
  %653 = add i64 %645, 6
  store i64 %653, i64* %3, align 8
  %654 = inttoptr i64 %652 to i32*
  %655 = load i32, i32* %654, align 4
  %656 = sub i32 %650, %655
  %657 = icmp ult i32 %650, %655
  %658 = zext i1 %657 to i8
  store i8 %658, i8* %40, align 1
  %659 = and i32 %656, 255
  %660 = tail call i32 @llvm.ctpop.i32(i32 %659)
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  %663 = xor i8 %662, 1
  store i8 %663, i8* %47, align 1
  %664 = xor i32 %655, %650
  %665 = xor i32 %664, %656
  %666 = lshr i32 %665, 4
  %667 = trunc i32 %666 to i8
  %668 = and i8 %667, 1
  store i8 %668, i8* %53, align 1
  %669 = icmp eq i32 %656, 0
  %670 = zext i1 %669 to i8
  store i8 %670, i8* %56, align 1
  %671 = lshr i32 %656, 31
  %672 = trunc i32 %671 to i8
  store i8 %672, i8* %59, align 1
  %673 = lshr i32 %650, 31
  %674 = lshr i32 %655, 31
  %675 = xor i32 %674, %673
  %676 = xor i32 %671, %673
  %677 = add nuw nsw i32 %676, %675
  %678 = icmp eq i32 %677, 2
  %679 = zext i1 %678 to i8
  store i8 %679, i8* %65, align 1
  %680 = icmp ne i8 %672, 0
  %681 = xor i1 %680, %678
  %.v267 = select i1 %681, i64 12, i64 402
  %682 = add i64 %645, %.v267
  store i64 %682, i64* %3, align 8
  br i1 %681, label %block_45ec97, label %block_.L_45ee1d

block_45ec97:                                     ; preds = %block_.L_45ec8b
  %683 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %684 = zext i32 %683 to i64
  store i64 %684, i64* %RAX.i2292, align 8
  %685 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %686 = sub i32 %683, %685
  %687 = icmp ult i32 %683, %685
  %688 = zext i1 %687 to i8
  store i8 %688, i8* %40, align 1
  %689 = and i32 %686, 255
  %690 = tail call i32 @llvm.ctpop.i32(i32 %689)
  %691 = trunc i32 %690 to i8
  %692 = and i8 %691, 1
  %693 = xor i8 %692, 1
  store i8 %693, i8* %47, align 1
  %694 = xor i32 %685, %683
  %695 = xor i32 %694, %686
  %696 = lshr i32 %695, 4
  %697 = trunc i32 %696 to i8
  %698 = and i8 %697, 1
  store i8 %698, i8* %53, align 1
  %699 = icmp eq i32 %686, 0
  %700 = zext i1 %699 to i8
  store i8 %700, i8* %56, align 1
  %701 = lshr i32 %686, 31
  %702 = trunc i32 %701 to i8
  store i8 %702, i8* %59, align 1
  %703 = lshr i32 %683, 31
  %704 = lshr i32 %685, 31
  %705 = xor i32 %704, %703
  %706 = xor i32 %701, %703
  %707 = add nuw nsw i32 %706, %705
  %708 = icmp eq i32 %707, 2
  %709 = zext i1 %708 to i8
  store i8 %709, i8* %65, align 1
  %710 = icmp ne i8 %702, 0
  %711 = xor i1 %710, %708
  %712 = or i1 %699, %711
  %.v359 = select i1 %712, i64 106, i64 20
  %713 = add i64 %682, %.v359
  store i64 %713, i64* %3, align 8
  br i1 %712, label %block_.L_45ed01, label %block_45ecab

block_45ecab:                                     ; preds = %block_45ec97
  %714 = add i64 %713, 4
  store i64 %714, i64* %3, align 8
  %715 = load i32, i32* %649, align 4
  %716 = sext i32 %715 to i64
  store i64 %716, i64* %RAX.i2292, align 8
  %717 = shl nsw i64 %716, 2
  %718 = add i64 %646, -752
  %719 = add i64 %718, %717
  %720 = add i64 %713, 11
  store i64 %720, i64* %3, align 8
  %721 = inttoptr i64 %719 to i32*
  %722 = load i32, i32* %721, align 4
  %723 = zext i32 %722 to i64
  store i64 %723, i64* %RDI.i2235, align 8
  %724 = add i64 %713, -308411
  %725 = add i64 %713, 16
  %726 = load i64, i64* %6, align 8
  %727 = add i64 %726, -8
  %728 = inttoptr i64 %727 to i64*
  store i64 %725, i64* %728, align 8
  store i64 %727, i64* %6, align 8
  store i64 %724, i64* %3, align 8
  %call2_45ecb6 = tail call %struct.Memory* @sub_4137f0.countstones(%struct.State* nonnull %0, i64 %724, %struct.Memory* %MEMORY.3)
  %729 = load i32, i32* %EAX.i2231, align 4
  %730 = load i64, i64* %3, align 8
  %731 = add i32 %729, -1
  %732 = icmp eq i32 %729, 0
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %40, align 1
  %734 = and i32 %731, 255
  %735 = tail call i32 @llvm.ctpop.i32(i32 %734)
  %736 = trunc i32 %735 to i8
  %737 = and i8 %736, 1
  %738 = xor i8 %737, 1
  store i8 %738, i8* %47, align 1
  %739 = xor i32 %731, %729
  %740 = lshr i32 %739, 4
  %741 = trunc i32 %740 to i8
  %742 = and i8 %741, 1
  store i8 %742, i8* %53, align 1
  %743 = icmp eq i32 %731, 0
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %56, align 1
  %745 = lshr i32 %731, 31
  %746 = trunc i32 %745 to i8
  store i8 %746, i8* %59, align 1
  %747 = lshr i32 %729, 31
  %748 = xor i32 %745, %747
  %749 = add nuw nsw i32 %748, %747
  %750 = icmp eq i32 %749, 2
  %751 = zext i1 %750 to i8
  store i8 %751, i8* %65, align 1
  %752 = icmp ne i8 %746, 0
  %753 = xor i1 %752, %750
  %754 = or i1 %743, %753
  %.v360 = select i1 %754, i64 70, i64 9
  %755 = add i64 %730, %.v360
  store i64 %755, i64* %3, align 8
  br i1 %754, label %block_45ecab.block_.L_45ed01_crit_edge, label %block_45ecc4

block_45ecab.block_.L_45ed01_crit_edge:           ; preds = %block_45ecab
  %.pre242 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %.pre243 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  br label %block_.L_45ed01

block_45ecc4:                                     ; preds = %block_45ecab
  %756 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %757 = trunc i64 %756 to i32
  %758 = and i32 %757, 255
  %759 = tail call i32 @llvm.ctpop.i32(i32 %758)
  %760 = trunc i32 %759 to i8
  %761 = and i8 %760, 1
  %762 = xor i8 %761, 1
  store i8 %762, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %763 = icmp eq i64 %756, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %56, align 1
  %765 = lshr i64 %756, 63
  %766 = trunc i64 %765 to i8
  store i8 %766, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v361 = select i1 %763, i64 49, i64 20
  %767 = add i64 %755, %.v361
  store i64 %767, i64* %3, align 8
  br i1 %763, label %block_.L_45ecf5, label %block_45ecd8

block_45ecd8:                                     ; preds = %block_45ecc4
  store i64 0, i64* %RAX.i2292, align 8
  store i64 0, i64* %RCX.i2272, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %68, align 8
  %768 = load i64, i64* %RBP.i, align 8
  %769 = add i64 %768, -1200
  %770 = add i64 %767, 14
  store i64 %770, i64* %3, align 8
  %771 = inttoptr i64 %769 to i64*
  %772 = load i64, i64* %771, align 8
  store i64 %772, i64* %RDI.i2235, align 8
  %773 = add i64 %768, -1204
  %774 = add i64 %767, 20
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i32*
  %776 = load i32, i32* %775, align 4
  %777 = zext i32 %776 to i64
  store i64 %777, i64* %RSI.i2284, align 8
  store i64 0, i64* %RDX.i2074.pre-phi, align 8
  store i64 0, i64* %RCX.i2272, align 8
  %778 = add i64 %767, -290072
  %779 = add i64 %767, 29
  %780 = load i64, i64* %6, align 8
  %781 = add i64 %780, -8
  %782 = inttoptr i64 %781 to i64*
  store i64 %779, i64* %782, align 8
  store i64 %781, i64* %6, align 8
  store i64 %778, i64* %3, align 8
  %call2_45ecf0 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %778, %struct.Memory* %MEMORY.3)
  %.pre240 = load i64, i64* %3, align 8
  br label %block_.L_45ecf5

block_.L_45ecf5:                                  ; preds = %block_45ecd8, %block_45ecc4
  %783 = phi i64 [ %767, %block_45ecc4 ], [ %.pre240, %block_45ecd8 ]
  %MEMORY.4 = phi %struct.Memory* [ %MEMORY.3, %block_45ecc4 ], [ %call2_45ecf0, %block_45ecd8 ]
  %784 = load i64, i64* %RBP.i, align 8
  %785 = add i64 %784, -44
  %786 = add i64 %783, 7
  store i64 %786, i64* %3, align 8
  %787 = inttoptr i64 %785 to i32*
  store i32 0, i32* %787, align 4
  %788 = load i64, i64* %3, align 8
  %789 = add i64 %788, 4642
  store i64 %789, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45ed01:                                  ; preds = %block_45ecab.block_.L_45ed01_crit_edge, %block_45ec97
  %790 = phi i32 [ %.pre243, %block_45ecab.block_.L_45ed01_crit_edge ], [ %685, %block_45ec97 ]
  %791 = phi i32 [ %.pre242, %block_45ecab.block_.L_45ed01_crit_edge ], [ %683, %block_45ec97 ]
  %792 = phi i64 [ %755, %block_45ecab.block_.L_45ed01_crit_edge ], [ %713, %block_45ec97 ]
  %793 = zext i32 %791 to i64
  store i64 %793, i64* %RAX.i2292, align 8
  %794 = sub i32 %791, %790
  %795 = icmp ult i32 %791, %790
  %796 = zext i1 %795 to i8
  store i8 %796, i8* %40, align 1
  %797 = and i32 %794, 255
  %798 = tail call i32 @llvm.ctpop.i32(i32 %797)
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = xor i8 %800, 1
  store i8 %801, i8* %47, align 1
  %802 = xor i32 %790, %791
  %803 = xor i32 %802, %794
  %804 = lshr i32 %803, 4
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  store i8 %806, i8* %53, align 1
  %807 = icmp eq i32 %794, 0
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %56, align 1
  %809 = lshr i32 %794, 31
  %810 = trunc i32 %809 to i8
  store i8 %810, i8* %59, align 1
  %811 = lshr i32 %791, 31
  %812 = lshr i32 %790, 31
  %813 = xor i32 %812, %811
  %814 = xor i32 %809, %811
  %815 = add nuw nsw i32 %814, %813
  %816 = icmp eq i32 %815, 2
  %817 = zext i1 %816 to i8
  store i8 %817, i8* %65, align 1
  %818 = icmp ne i8 %810, 0
  %819 = xor i1 %818, %816
  %.demorgan261 = or i1 %807, %819
  %.v362 = select i1 %.demorgan261, i64 20, i64 43
  %820 = add i64 %792, %.v362
  store i64 %820, i64* %3, align 8
  br i1 %.demorgan261, label %block_45ed15, label %block_.L_45ed2c

block_45ed15:                                     ; preds = %block_.L_45ed01
  %821 = load i64, i64* %RBP.i, align 8
  %822 = add i64 %821, -1184
  store i64 %822, i64* %RSI.i2284, align 8
  %823 = add i64 %821, -88
  %824 = add i64 %820, 11
  store i64 %824, i64* %3, align 8
  %825 = inttoptr i64 %823 to i32*
  %826 = load i32, i32* %825, align 4
  %827 = sext i32 %826 to i64
  store i64 %827, i64* %RAX.i2292, align 8
  %828 = shl nsw i64 %827, 2
  %829 = add i64 %821, -752
  %830 = add i64 %829, %828
  %831 = add i64 %820, 18
  store i64 %831, i64* %3, align 8
  %832 = inttoptr i64 %830 to i32*
  %833 = load i32, i32* %832, align 4
  %834 = zext i32 %833 to i64
  store i64 %834, i64* %RDI.i2235, align 8
  %835 = add i64 %820, 12411
  %836 = add i64 %820, 23
  %837 = load i64, i64* %6, align 8
  %838 = add i64 %837, -8
  %839 = inttoptr i64 %838 to i64*
  store i64 %836, i64* %839, align 8
  store i64 %838, i64* %6, align 8
  store i64 %835, i64* %3, align 8
  %call2_45ed27 = tail call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* nonnull %0, i64 %835, %struct.Memory* %MEMORY.3)
  %.pre244 = load i64, i64* %3, align 8
  br label %block_.L_45ed2c

block_.L_45ed2c:                                  ; preds = %block_.L_45ed01, %block_45ed15
  %840 = phi i64 [ %820, %block_.L_45ed01 ], [ %.pre244, %block_45ed15 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.3, %block_.L_45ed01 ], [ %call2_45ed27, %block_45ed15 ]
  store i64 1, i64* %RSI.i2284, align 8
  %841 = load i64, i64* %RBP.i, align 8
  %842 = add i64 %841, -76
  store i64 %842, i64* %RDX.i2074.pre-phi, align 8
  %843 = add i64 %841, -88
  %844 = add i64 %840, 13
  store i64 %844, i64* %3, align 8
  %845 = inttoptr i64 %843 to i32*
  %846 = load i32, i32* %845, align 4
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %RAX.i2292, align 8
  %848 = shl nsw i64 %847, 2
  %849 = add i64 %841, -752
  %850 = add i64 %849, %848
  %851 = add i64 %840, 20
  store i64 %851, i64* %3, align 8
  %852 = inttoptr i64 %850 to i32*
  %853 = load i32, i32* %852, align 4
  %854 = zext i32 %853 to i64
  store i64 %854, i64* %RDI.i2235, align 8
  %855 = add i64 %840, -324844
  %856 = add i64 %840, 25
  %857 = load i64, i64* %6, align 8
  %858 = add i64 %857, -8
  %859 = inttoptr i64 %858 to i64*
  store i64 %856, i64* %859, align 8
  store i64 %858, i64* %6, align 8
  store i64 %855, i64* %3, align 8
  %call2_45ed40 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %855, %struct.Memory* %MEMORY.6)
  %860 = load i64, i64* %RBP.i, align 8
  %861 = add i64 %860, -1420
  %862 = load i32, i32* %EAX.i2231, align 4
  %863 = load i64, i64* %3, align 8
  %864 = add i64 %863, 6
  store i64 %864, i64* %3, align 8
  %865 = inttoptr i64 %861 to i32*
  store i32 %862, i32* %865, align 4
  %866 = load i64, i64* %RBP.i, align 8
  %867 = add i64 %866, -1208
  %868 = load i64, i64* %3, align 8
  %869 = add i64 %868, 10
  store i64 %869, i64* %3, align 8
  %870 = inttoptr i64 %867 to i32*
  store i32 0, i32* %870, align 4
  %.pre245 = load i64, i64* %3, align 8
  br label %block_.L_45ed55

block_.L_45ed55:                                  ; preds = %block_.L_45ed9b, %block_.L_45ed2c
  %871 = phi i64 [ %997, %block_.L_45ed9b ], [ %.pre245, %block_.L_45ed2c ]
  %872 = load i64, i64* %RBP.i, align 8
  %873 = add i64 %872, -1208
  %874 = add i64 %871, 6
  store i64 %874, i64* %3, align 8
  %875 = inttoptr i64 %873 to i32*
  %876 = load i32, i32* %875, align 4
  %877 = zext i32 %876 to i64
  store i64 %877, i64* %RAX.i2292, align 8
  %878 = add i64 %872, -784
  %879 = add i64 %871, 12
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = sub i32 %876, %881
  %883 = icmp ult i32 %876, %881
  %884 = zext i1 %883 to i8
  store i8 %884, i8* %40, align 1
  %885 = and i32 %882, 255
  %886 = tail call i32 @llvm.ctpop.i32(i32 %885)
  %887 = trunc i32 %886 to i8
  %888 = and i8 %887, 1
  %889 = xor i8 %888, 1
  store i8 %889, i8* %47, align 1
  %890 = xor i32 %881, %876
  %891 = xor i32 %890, %882
  %892 = lshr i32 %891, 4
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  store i8 %894, i8* %53, align 1
  %895 = icmp eq i32 %882, 0
  %896 = zext i1 %895 to i8
  store i8 %896, i8* %56, align 1
  %897 = lshr i32 %882, 31
  %898 = trunc i32 %897 to i8
  store i8 %898, i8* %59, align 1
  %899 = lshr i32 %876, 31
  %900 = lshr i32 %881, 31
  %901 = xor i32 %900, %899
  %902 = xor i32 %897, %899
  %903 = add nuw nsw i32 %902, %901
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %65, align 1
  %906 = icmp ne i8 %898, 0
  %907 = xor i1 %906, %904
  %.v263 = select i1 %907, i64 18, i64 95
  %908 = add i64 %871, %.v263
  store i64 %908, i64* %3, align 8
  br i1 %907, label %block_45ed67, label %block_.L_45edb4.loopexit

block_45ed67:                                     ; preds = %block_.L_45ed55
  %909 = add i64 %908, 7
  store i64 %909, i64* %3, align 8
  %910 = load i32, i32* %875, align 4
  %911 = sext i32 %910 to i64
  store i64 %911, i64* %RAX.i2292, align 8
  %912 = shl nsw i64 %911, 2
  %913 = add i64 %872, -1184
  %914 = add i64 %913, %912
  %915 = add i64 %908, 14
  store i64 %915, i64* %3, align 8
  %916 = inttoptr i64 %914 to i32*
  %917 = load i32, i32* %916, align 4
  %918 = zext i32 %917 to i64
  store i64 %918, i64* %RCX.i2272, align 8
  %919 = add i64 %872, -76
  %920 = add i64 %908, 17
  store i64 %920, i64* %3, align 8
  %921 = inttoptr i64 %919 to i32*
  %922 = load i32, i32* %921, align 4
  %923 = sub i32 %917, %922
  %924 = icmp ult i32 %917, %922
  %925 = zext i1 %924 to i8
  store i8 %925, i8* %40, align 1
  %926 = and i32 %923, 255
  %927 = tail call i32 @llvm.ctpop.i32(i32 %926)
  %928 = trunc i32 %927 to i8
  %929 = and i8 %928, 1
  %930 = xor i8 %929, 1
  store i8 %930, i8* %47, align 1
  %931 = xor i32 %922, %917
  %932 = xor i32 %931, %923
  %933 = lshr i32 %932, 4
  %934 = trunc i32 %933 to i8
  %935 = and i8 %934, 1
  store i8 %935, i8* %53, align 1
  %936 = icmp eq i32 %923, 0
  %937 = zext i1 %936 to i8
  store i8 %937, i8* %56, align 1
  %938 = lshr i32 %923, 31
  %939 = trunc i32 %938 to i8
  store i8 %939, i8* %59, align 1
  %940 = lshr i32 %917, 31
  %941 = lshr i32 %922, 31
  %942 = xor i32 %941, %940
  %943 = xor i32 %938, %940
  %944 = add nuw nsw i32 %943, %942
  %945 = icmp eq i32 %944, 2
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %65, align 1
  %.v262 = select i1 %936, i64 23, i64 52
  %947 = add i64 %908, %.v262
  store i64 %947, i64* %3, align 8
  br i1 %936, label %block_45ed7e, label %block_.L_45ed9b

block_45ed7e:                                     ; preds = %block_45ed67
  %948 = add i64 %947, 7
  store i64 %948, i64* %3, align 8
  %949 = load i32, i32* %875, align 4
  %950 = sext i32 %949 to i64
  store i64 %950, i64* %RAX.i2292, align 8
  %951 = shl nsw i64 %950, 2
  %952 = add i64 %872, -984
  %953 = add i64 %952, %951
  %954 = add i64 %947, 14
  store i64 %954, i64* %3, align 8
  %955 = inttoptr i64 %953 to i32*
  %956 = load i32, i32* %955, align 4
  %957 = zext i32 %956 to i64
  store i64 %957, i64* %RCX.i2272, align 8
  store i8 0, i8* %40, align 1
  %958 = and i32 %956, 255
  %959 = tail call i32 @llvm.ctpop.i32(i32 %958)
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = xor i8 %961, 1
  store i8 %962, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %963 = icmp eq i32 %956, 0
  %964 = zext i1 %963 to i8
  store i8 %964, i8* %56, align 1
  %965 = lshr i32 %956, 31
  %966 = trunc i32 %965 to i8
  store i8 %966, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %967 = add i64 %947, 24
  store i64 %967, i64* %3, align 8
  store i32 %956, i32* %955, align 4
  %968 = load i64, i64* %3, align 8
  %969 = add i64 %968, 30
  store i64 %969, i64* %3, align 8
  %.pre246 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45edb4

block_.L_45ed9b:                                  ; preds = %block_45ed67
  %970 = add i64 %947, 11
  store i64 %970, i64* %3, align 8
  %971 = load i32, i32* %875, align 4
  %972 = add i32 %971, 1
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RAX.i2292, align 8
  %974 = icmp eq i32 %971, -1
  %975 = icmp eq i32 %972, 0
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  store i8 %977, i8* %40, align 1
  %978 = and i32 %972, 255
  %979 = tail call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  store i8 %982, i8* %47, align 1
  %983 = xor i32 %972, %971
  %984 = lshr i32 %983, 4
  %985 = trunc i32 %984 to i8
  %986 = and i8 %985, 1
  store i8 %986, i8* %53, align 1
  %987 = zext i1 %975 to i8
  store i8 %987, i8* %56, align 1
  %988 = lshr i32 %972, 31
  %989 = trunc i32 %988 to i8
  store i8 %989, i8* %59, align 1
  %990 = lshr i32 %971, 31
  %991 = xor i32 %988, %990
  %992 = add nuw nsw i32 %991, %988
  %993 = icmp eq i32 %992, 2
  %994 = zext i1 %993 to i8
  store i8 %994, i8* %65, align 1
  %995 = add i64 %947, 20
  store i64 %995, i64* %3, align 8
  store i32 %972, i32* %875, align 4
  %996 = load i64, i64* %3, align 8
  %997 = add i64 %996, -90
  store i64 %997, i64* %3, align 8
  br label %block_.L_45ed55

block_.L_45edb4.loopexit:                         ; preds = %block_.L_45ed55
  br label %block_.L_45edb4

block_.L_45edb4:                                  ; preds = %block_.L_45edb4.loopexit, %block_45ed7e
  %998 = phi i64 [ %969, %block_45ed7e ], [ %908, %block_.L_45edb4.loopexit ]
  %999 = phi i64 [ %.pre246, %block_45ed7e ], [ %872, %block_.L_45edb4.loopexit ]
  %1000 = add i64 %999, -1208
  %1001 = add i64 %998, 6
  store i64 %1001, i64* %3, align 8
  %1002 = inttoptr i64 %1000 to i32*
  %1003 = load i32, i32* %1002, align 4
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RAX.i2292, align 8
  %1005 = add i64 %999, -784
  %1006 = add i64 %998, 12
  store i64 %1006, i64* %3, align 8
  %1007 = inttoptr i64 %1005 to i32*
  %1008 = load i32, i32* %1007, align 4
  %1009 = sub i32 %1003, %1008
  %1010 = icmp ult i32 %1003, %1008
  %1011 = zext i1 %1010 to i8
  store i8 %1011, i8* %40, align 1
  %1012 = and i32 %1009, 255
  %1013 = tail call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  store i8 %1016, i8* %47, align 1
  %1017 = xor i32 %1008, %1003
  %1018 = xor i32 %1017, %1009
  %1019 = lshr i32 %1018, 4
  %1020 = trunc i32 %1019 to i8
  %1021 = and i8 %1020, 1
  store i8 %1021, i8* %53, align 1
  %1022 = icmp eq i32 %1009, 0
  %1023 = zext i1 %1022 to i8
  store i8 %1023, i8* %56, align 1
  %1024 = lshr i32 %1009, 31
  %1025 = trunc i32 %1024 to i8
  store i8 %1025, i8* %59, align 1
  %1026 = lshr i32 %1003, 31
  %1027 = lshr i32 %1008, 31
  %1028 = xor i32 %1027, %1026
  %1029 = xor i32 %1024, %1026
  %1030 = add nuw nsw i32 %1029, %1028
  %1031 = icmp eq i32 %1030, 2
  %1032 = zext i1 %1031 to i8
  store i8 %1032, i8* %65, align 1
  %.v363 = select i1 %1022, i64 18, i64 81
  %1033 = add i64 %998, %.v363
  store i64 %1033, i64* %3, align 8
  br i1 %1022, label %block_45edc6, label %block_.L_45ee05

block_45edc6:                                     ; preds = %block_.L_45edb4
  %1034 = add i64 %1033, 7
  store i64 %1034, i64* %3, align 8
  %1035 = load i32, i32* %1007, align 4
  %1036 = add i32 %1035, -50
  %1037 = icmp ult i32 %1035, 50
  %1038 = zext i1 %1037 to i8
  store i8 %1038, i8* %40, align 1
  %1039 = and i32 %1036, 255
  %1040 = tail call i32 @llvm.ctpop.i32(i32 %1039)
  %1041 = trunc i32 %1040 to i8
  %1042 = and i8 %1041, 1
  %1043 = xor i8 %1042, 1
  store i8 %1043, i8* %47, align 1
  %1044 = xor i32 %1035, 16
  %1045 = xor i32 %1044, %1036
  %1046 = lshr i32 %1045, 4
  %1047 = trunc i32 %1046 to i8
  %1048 = and i8 %1047, 1
  store i8 %1048, i8* %53, align 1
  %1049 = icmp eq i32 %1036, 0
  %1050 = zext i1 %1049 to i8
  store i8 %1050, i8* %56, align 1
  %1051 = lshr i32 %1036, 31
  %1052 = trunc i32 %1051 to i8
  store i8 %1052, i8* %59, align 1
  %1053 = lshr i32 %1035, 31
  %1054 = xor i32 %1051, %1053
  %1055 = add nuw nsw i32 %1054, %1053
  %1056 = icmp eq i32 %1055, 2
  %1057 = zext i1 %1056 to i8
  store i8 %1057, i8* %65, align 1
  %1058 = icmp ne i8 %1052, 0
  %1059 = xor i1 %1058, %1056
  %.v364 = select i1 %1059, i64 13, i64 63
  %1060 = add i64 %1033, %.v364
  store i64 %1060, i64* %3, align 8
  br i1 %1059, label %block_45edd3, label %block_.L_45ee05

block_45edd3:                                     ; preds = %block_45edc6
  %1061 = add i64 %999, -76
  %1062 = add i64 %1060, 3
  store i64 %1062, i64* %3, align 8
  %1063 = inttoptr i64 %1061 to i32*
  %1064 = load i32, i32* %1063, align 4
  %1065 = zext i32 %1064 to i64
  store i64 %1065, i64* %RAX.i2292, align 8
  %1066 = add i64 %1060, 10
  store i64 %1066, i64* %3, align 8
  %1067 = load i32, i32* %1007, align 4
  %1068 = sext i32 %1067 to i64
  store i64 %1068, i64* %RCX.i2272, align 8
  %1069 = shl nsw i64 %1068, 2
  %1070 = add i64 %999, -1184
  %1071 = add i64 %1070, %1069
  %1072 = add i64 %1060, 17
  store i64 %1072, i64* %3, align 8
  %1073 = inttoptr i64 %1071 to i32*
  store i32 %1064, i32* %1073, align 4
  %1074 = load i64, i64* %RBP.i, align 8
  %1075 = add i64 %1074, -784
  %1076 = load i64, i64* %3, align 8
  %1077 = add i64 %1076, 7
  store i64 %1077, i64* %3, align 8
  %1078 = inttoptr i64 %1075 to i32*
  %1079 = load i32, i32* %1078, align 4
  %1080 = sext i32 %1079 to i64
  store i64 %1080, i64* %RCX.i2272, align 8
  %1081 = shl nsw i64 %1080, 2
  %1082 = add i64 %1074, -984
  %1083 = add i64 %1082, %1081
  %1084 = add i64 %1076, 18
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1083 to i32*
  store i32 0, i32* %1085, align 4
  %1086 = load i64, i64* %RBP.i, align 8
  %1087 = add i64 %1086, -784
  %1088 = load i64, i64* %3, align 8
  %1089 = add i64 %1088, 6
  store i64 %1089, i64* %3, align 8
  %1090 = inttoptr i64 %1087 to i32*
  %1091 = load i32, i32* %1090, align 4
  %1092 = add i32 %1091, 1
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i2292, align 8
  %1094 = icmp eq i32 %1091, -1
  %1095 = icmp eq i32 %1092, 0
  %1096 = or i1 %1094, %1095
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %40, align 1
  %1098 = and i32 %1092, 255
  %1099 = tail call i32 @llvm.ctpop.i32(i32 %1098)
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = xor i8 %1101, 1
  store i8 %1102, i8* %47, align 1
  %1103 = xor i32 %1092, %1091
  %1104 = lshr i32 %1103, 4
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  store i8 %1106, i8* %53, align 1
  %1107 = zext i1 %1095 to i8
  store i8 %1107, i8* %56, align 1
  %1108 = lshr i32 %1092, 31
  %1109 = trunc i32 %1108 to i8
  store i8 %1109, i8* %59, align 1
  %1110 = lshr i32 %1091, 31
  %1111 = xor i32 %1108, %1110
  %1112 = add nuw nsw i32 %1111, %1108
  %1113 = icmp eq i32 %1112, 2
  %1114 = zext i1 %1113 to i8
  store i8 %1114, i8* %65, align 1
  %1115 = add i64 %1088, 15
  store i64 %1115, i64* %3, align 8
  store i32 %1092, i32* %1090, align 4
  %.pre247 = load i64, i64* %3, align 8
  %.pre248 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45ee05

block_.L_45ee05:                                  ; preds = %block_.L_45edb4, %block_45edc6, %block_45edd3
  %1116 = phi i64 [ %999, %block_45edc6 ], [ %.pre248, %block_45edd3 ], [ %999, %block_.L_45edb4 ]
  %1117 = phi i64 [ %1060, %block_45edc6 ], [ %.pre247, %block_45edd3 ], [ %1033, %block_.L_45edb4 ]
  %1118 = add i64 %1116, -88
  %1119 = add i64 %1117, 13
  store i64 %1119, i64* %3, align 8
  %1120 = inttoptr i64 %1118 to i32*
  %1121 = load i32, i32* %1120, align 4
  %1122 = add i32 %1121, 1
  %1123 = zext i32 %1122 to i64
  store i64 %1123, i64* %RAX.i2292, align 8
  %1124 = icmp eq i32 %1121, -1
  %1125 = icmp eq i32 %1122, 0
  %1126 = or i1 %1124, %1125
  %1127 = zext i1 %1126 to i8
  store i8 %1127, i8* %40, align 1
  %1128 = and i32 %1122, 255
  %1129 = tail call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  store i8 %1132, i8* %47, align 1
  %1133 = xor i32 %1122, %1121
  %1134 = lshr i32 %1133, 4
  %1135 = trunc i32 %1134 to i8
  %1136 = and i8 %1135, 1
  store i8 %1136, i8* %53, align 1
  %1137 = zext i1 %1125 to i8
  store i8 %1137, i8* %56, align 1
  %1138 = lshr i32 %1122, 31
  %1139 = trunc i32 %1138 to i8
  store i8 %1139, i8* %59, align 1
  %1140 = lshr i32 %1121, 31
  %1141 = xor i32 %1138, %1140
  %1142 = add nuw nsw i32 %1141, %1138
  %1143 = icmp eq i32 %1142, 2
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %65, align 1
  %1145 = add i64 %1117, 19
  store i64 %1145, i64* %3, align 8
  store i32 %1122, i32* %1120, align 4
  %1146 = load i64, i64* %3, align 8
  %1147 = add i64 %1146, -397
  store i64 %1147, i64* %3, align 8
  br label %block_.L_45ec8b

block_.L_45ee1d:                                  ; preds = %block_.L_45ec8b
  store i64 2, i64* %RSI.i2284, align 8
  %1148 = add i64 %646, -96
  store i64 %1148, i64* %RDX.i2074.pre-phi, align 8
  %1149 = add i64 %646, -48
  %1150 = add i64 %682, 12
  store i64 %1150, i64* %3, align 8
  %1151 = inttoptr i64 %1149 to i32*
  %1152 = load i32, i32* %1151, align 4
  %1153 = zext i32 %1152 to i64
  store i64 %1153, i64* %RDI.i2235, align 8
  %1154 = add i64 %682, -325085
  %1155 = add i64 %682, 17
  %1156 = load i64, i64* %6, align 8
  %1157 = add i64 %1156, -8
  %1158 = inttoptr i64 %1157 to i64*
  store i64 %1155, i64* %1158, align 8
  store i64 %1157, i64* %6, align 8
  store i64 %1154, i64* %3, align 8
  %call2_45ee29 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %1154, %struct.Memory* %MEMORY.3)
  %1159 = load i64, i64* %RBP.i, align 8
  %1160 = add i64 %1159, -84
  %1161 = load i32, i32* %EAX.i2231, align 4
  %1162 = load i64, i64* %3, align 8
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1160 to i32*
  store i32 %1161, i32* %1164, align 4
  %1165 = load i64, i64* %RBP.i, align 8
  %1166 = add i64 %1165, -84
  %1167 = load i64, i64* %3, align 8
  %1168 = add i64 %1167, 4
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1166 to i32*
  %1170 = load i32, i32* %1169, align 4
  %1171 = add i32 %1170, -2
  %1172 = icmp ult i32 %1170, 2
  %1173 = zext i1 %1172 to i8
  store i8 %1173, i8* %40, align 1
  %1174 = and i32 %1171, 255
  %1175 = tail call i32 @llvm.ctpop.i32(i32 %1174)
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  %1178 = xor i8 %1177, 1
  store i8 %1178, i8* %47, align 1
  %1179 = xor i32 %1171, %1170
  %1180 = lshr i32 %1179, 4
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  store i8 %1182, i8* %53, align 1
  %1183 = icmp eq i32 %1171, 0
  %1184 = zext i1 %1183 to i8
  store i8 %1184, i8* %56, align 1
  %1185 = lshr i32 %1171, 31
  %1186 = trunc i32 %1185 to i8
  store i8 %1186, i8* %59, align 1
  %1187 = lshr i32 %1170, 31
  %1188 = xor i32 %1185, %1187
  %1189 = add nuw nsw i32 %1188, %1187
  %1190 = icmp eq i32 %1189, 2
  %1191 = zext i1 %1190 to i8
  store i8 %1191, i8* %65, align 1
  %.v268 = select i1 %1183, i64 10, i64 15
  %1192 = add i64 %1167, %.v268
  store i64 %1192, i64* %3, align 8
  br i1 %1183, label %block_45ee3b, label %block_.L_45ee40

block_45ee3b:                                     ; preds = %block_.L_45ee1d
  %1193 = add i64 %1192, 118
  store i64 %1193, i64* %3, align 8
  br label %block_.L_45eeb1

block_.L_45ee40:                                  ; preds = %block_.L_45ee1d
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i2235, align 8
  store i64 2581, i64* %RSI.i2284, align 8
  store i64 ptrtoint (%G__0x57fd3a_type* @G__0x57fd3a to i64), i64* %RDX.i2074.pre-phi, align 8
  store i64 20, i64* %RAX.i2292, align 8
  %1194 = add i64 %1165, -48
  %1195 = add i64 %1192, 33
  store i64 %1195, i64* %3, align 8
  %1196 = inttoptr i64 %1194 to i32*
  %1197 = load i32, i32* %1196, align 4
  %1198 = zext i32 %1197 to i64
  store i64 %1198, i64* %RCX.i2272, align 8
  %1199 = add i64 %1165, -1424
  %1200 = add i64 %1192, 39
  store i64 %1200, i64* %3, align 8
  %1201 = inttoptr i64 %1199 to i32*
  store i32 20, i32* %1201, align 4
  %1202 = load i32, i32* %ECX.i2278, align 4
  %1203 = zext i32 %1202 to i64
  %1204 = load i64, i64* %3, align 8
  store i64 %1203, i64* %RAX.i2292, align 8
  %1205 = load i64, i64* %RBP.i, align 8
  %1206 = add i64 %1205, -1432
  %1207 = load i64, i64* %RDX.i2074.pre-phi, align 8
  %1208 = add i64 %1204, 9
  store i64 %1208, i64* %3, align 8
  %1209 = inttoptr i64 %1206 to i64*
  store i64 %1207, i64* %1209, align 8
  %1210 = load i64, i64* %3, align 8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1212 = load i32, i32* %EAX.i2231, align 8
  %1213 = sext i32 %1212 to i64
  %1214 = lshr i64 %1213, 32
  store i64 %1214, i64* %1211, align 8
  %1215 = load i64, i64* %RBP.i, align 8
  %1216 = add i64 %1215, -1424
  %1217 = add i64 %1210, 7
  store i64 %1217, i64* %3, align 8
  %1218 = inttoptr i64 %1216 to i32*
  %1219 = load i32, i32* %1218, align 4
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RCX.i2272, align 8
  %1221 = add i64 %1210, 9
  store i64 %1221, i64* %3, align 8
  %1222 = zext i32 %1212 to i64
  %1223 = sext i32 %1219 to i64
  %1224 = shl nuw i64 %1214, 32
  %1225 = or i64 %1224, %1222
  %1226 = sdiv i64 %1225, %1223
  %1227 = shl i64 %1226, 32
  %1228 = ashr exact i64 %1227, 32
  %1229 = icmp eq i64 %1226, %1228
  br i1 %1229, label %1232, label %1230

; <label>:1230:                                   ; preds = %block_.L_45ee40
  %1231 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1221, %struct.Memory* %call2_45ee29)
  %.pre173 = load i64, i64* %RAX.i2292, align 8
  %.pre174 = load i64, i64* %3, align 8
  %.pre175 = load i64, i64* %RBP.i, align 8
  br label %routine_idivl__ecx.exit1846

; <label>:1232:                                   ; preds = %block_.L_45ee40
  %1233 = srem i64 %1225, %1223
  %1234 = and i64 %1226, 4294967295
  store i64 %1234, i64* %RAX.i2292, align 8
  %1235 = and i64 %1233, 4294967295
  store i64 %1235, i64* %RDX.i2074.pre-phi, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit1846

routine_idivl__ecx.exit1846:                      ; preds = %1232, %1230
  %1236 = phi i64 [ %.pre175, %1230 ], [ %1215, %1232 ]
  %1237 = phi i64 [ %.pre174, %1230 ], [ %1221, %1232 ]
  %1238 = phi i64 [ %.pre173, %1230 ], [ %1234, %1232 ]
  %1239 = phi %struct.Memory* [ %1231, %1230 ], [ %call2_45ee29, %1232 ]
  %1240 = trunc i64 %1238 to i32
  %1241 = add i32 %1240, -1
  %1242 = zext i32 %1241 to i64
  store i64 %1242, i64* %RAX.i2292, align 8
  %1243 = icmp eq i32 %1240, 0
  %1244 = zext i1 %1243 to i8
  store i8 %1244, i8* %40, align 1
  %1245 = and i32 %1241, 255
  %1246 = tail call i32 @llvm.ctpop.i32(i32 %1245)
  %1247 = trunc i32 %1246 to i8
  %1248 = and i8 %1247, 1
  %1249 = xor i8 %1248, 1
  store i8 %1249, i8* %47, align 1
  %1250 = xor i32 %1241, %1240
  %1251 = lshr i32 %1250, 4
  %1252 = trunc i32 %1251 to i8
  %1253 = and i8 %1252, 1
  store i8 %1253, i8* %53, align 1
  %1254 = icmp eq i32 %1241, 0
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %56, align 1
  %1256 = lshr i32 %1241, 31
  %1257 = trunc i32 %1256 to i8
  store i8 %1257, i8* %59, align 1
  %1258 = lshr i32 %1240, 31
  %1259 = xor i32 %1256, %1258
  %1260 = add nuw nsw i32 %1259, %1258
  %1261 = icmp eq i32 %1260, 2
  %1262 = zext i1 %1261 to i8
  store i8 %1262, i8* %65, align 1
  %1263 = add i64 %1236, -48
  %1264 = add i64 %1237, 7
  store i64 %1264, i64* %3, align 8
  %1265 = inttoptr i64 %1263 to i32*
  %1266 = load i32, i32* %1265, align 4
  %1267 = zext i32 %1266 to i64
  store i64 %1267, i64* %68, align 8
  %1268 = add i64 %1236, -1436
  %1269 = add i64 %1237, 13
  store i64 %1269, i64* %3, align 8
  %1270 = inttoptr i64 %1268 to i32*
  store i32 %1241, i32* %1270, align 4
  %1271 = load i32, i32* %R8D.i2290, align 4
  %1272 = zext i32 %1271 to i64
  %1273 = load i64, i64* %3, align 8
  store i64 %1272, i64* %RAX.i2292, align 8
  %1274 = sext i32 %1271 to i64
  %1275 = lshr i64 %1274, 32
  store i64 %1275, i64* %1211, align 8
  %1276 = load i32, i32* %ECX.i2278, align 4
  %1277 = add i64 %1273, 6
  store i64 %1277, i64* %3, align 8
  %1278 = sext i32 %1276 to i64
  %1279 = shl nuw i64 %1275, 32
  %1280 = or i64 %1279, %1272
  %1281 = sdiv i64 %1280, %1278
  %1282 = shl i64 %1281, 32
  %1283 = ashr exact i64 %1282, 32
  %1284 = icmp eq i64 %1281, %1283
  br i1 %1284, label %1287, label %1285

; <label>:1285:                                   ; preds = %routine_idivl__ecx.exit1846
  %1286 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1277, %struct.Memory* %1239)
  %.pre176 = load i64, i64* %RDX.i2074.pre-phi, align 8
  %.pre177 = load i64, i64* %3, align 8
  br label %routine_idivl__ecx.exit

; <label>:1287:                                   ; preds = %routine_idivl__ecx.exit1846
  %1288 = srem i64 %1280, %1278
  %1289 = and i64 %1281, 4294967295
  store i64 %1289, i64* %RAX.i2292, align 8
  %1290 = and i64 %1288, 4294967295
  store i64 %1290, i64* %RDX.i2074.pre-phi, align 8
  store i8 0, i8* %40, align 1
  store i8 0, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1287, %1285
  %1291 = phi i64 [ %.pre177, %1285 ], [ %1277, %1287 ]
  %1292 = phi i64 [ %.pre176, %1285 ], [ %1290, %1287 ]
  %1293 = phi %struct.Memory* [ %1286, %1285 ], [ %1239, %1287 ]
  %1294 = trunc i64 %1292 to i32
  %1295 = add i32 %1294, -1
  %1296 = zext i32 %1295 to i64
  store i64 %1296, i64* %RDX.i2074.pre-phi, align 8
  %1297 = icmp eq i32 %1294, 0
  %1298 = zext i1 %1297 to i8
  store i8 %1298, i8* %40, align 1
  %1299 = and i32 %1295, 255
  %1300 = tail call i32 @llvm.ctpop.i32(i32 %1299)
  %1301 = trunc i32 %1300 to i8
  %1302 = and i8 %1301, 1
  %1303 = xor i8 %1302, 1
  store i8 %1303, i8* %47, align 1
  %1304 = xor i32 %1295, %1294
  %1305 = lshr i32 %1304, 4
  %1306 = trunc i32 %1305 to i8
  %1307 = and i8 %1306, 1
  store i8 %1307, i8* %53, align 1
  %1308 = icmp eq i32 %1295, 0
  %1309 = zext i1 %1308 to i8
  store i8 %1309, i8* %56, align 1
  %1310 = lshr i32 %1295, 31
  %1311 = trunc i32 %1310 to i8
  store i8 %1311, i8* %59, align 1
  %1312 = lshr i32 %1294, 31
  %1313 = xor i32 %1310, %1312
  %1314 = add nuw nsw i32 %1313, %1312
  %1315 = icmp eq i32 %1314, 2
  %1316 = zext i1 %1315 to i8
  store i8 %1316, i8* %65, align 1
  %R9.i1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %1317 = load i64, i64* %RBP.i, align 8
  %1318 = add i64 %1317, -1432
  %1319 = add i64 %1291, 10
  store i64 %1319, i64* %3, align 8
  %1320 = inttoptr i64 %1318 to i64*
  %1321 = load i64, i64* %1320, align 8
  store i64 %1321, i64* %R9.i1824, align 8
  %1322 = add i64 %1317, -1440
  %1323 = add i64 %1291, 16
  store i64 %1323, i64* %3, align 8
  %1324 = inttoptr i64 %1322 to i32*
  store i32 %1295, i32* %1324, align 4
  %1325 = load i64, i64* %R9.i1824, align 8
  %1326 = load i64, i64* %3, align 8
  store i64 %1325, i64* %RDX.i2074.pre-phi, align 8
  %1327 = load i64, i64* %RBP.i, align 8
  %1328 = add i64 %1327, -1436
  %1329 = add i64 %1326, 9
  store i64 %1329, i64* %3, align 8
  %1330 = inttoptr i64 %1328 to i32*
  %1331 = load i32, i32* %1330, align 4
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RCX.i2272, align 8
  %1333 = add i64 %1327, -1440
  %1334 = add i64 %1326, 16
  store i64 %1334, i64* %3, align 8
  %1335 = inttoptr i64 %1333 to i32*
  %1336 = load i32, i32* %1335, align 4
  %1337 = zext i32 %1336 to i64
  store i64 %1337, i64* %68, align 8
  %1338 = add i64 %1326, -52748
  %1339 = add i64 %1326, 21
  %1340 = load i64, i64* %6, align 8
  %1341 = add i64 %1340, -8
  %1342 = inttoptr i64 %1341 to i64*
  store i64 %1339, i64* %1342, align 8
  store i64 %1341, i64* %6, align 8
  store i64 %1338, i64* %3, align 8
  %call2_45eeac = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %1338, %struct.Memory* %1293)
  %.pre178 = load i64, i64* %RBP.i, align 8
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_45eeb1

block_.L_45eeb1:                                  ; preds = %routine_idivl__ecx.exit, %block_45ee3b
  %1343 = phi i64 [ %.pre179, %routine_idivl__ecx.exit ], [ %1193, %block_45ee3b ]
  %1344 = phi i64 [ %.pre178, %routine_idivl__ecx.exit ], [ %1165, %block_45ee3b ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_45eeac, %routine_idivl__ecx.exit ], [ %call2_45ee29, %block_45ee3b ]
  %1345 = add i64 %1344, -96
  %1346 = add i64 %1343, 3
  store i64 %1346, i64* %3, align 8
  %1347 = inttoptr i64 %1345 to i32*
  %1348 = load i32, i32* %1347, align 4
  %1349 = zext i32 %1348 to i64
  store i64 %1349, i64* %RAX.i2292, align 8
  %1350 = add i64 %1344, -92
  %1351 = add i64 %1343, 6
  store i64 %1351, i64* %3, align 8
  %1352 = inttoptr i64 %1350 to i32*
  %1353 = load i32, i32* %1352, align 4
  %1354 = add i32 %1353, 20
  %1355 = zext i32 %1354 to i64
  store i64 %1355, i64* %RCX.i2272, align 8
  %1356 = lshr i32 %1354, 31
  %1357 = sub i32 %1348, %1354
  %1358 = icmp ult i32 %1348, %1354
  %1359 = zext i1 %1358 to i8
  store i8 %1359, i8* %40, align 1
  %1360 = and i32 %1357, 255
  %1361 = tail call i32 @llvm.ctpop.i32(i32 %1360)
  %1362 = trunc i32 %1361 to i8
  %1363 = and i8 %1362, 1
  %1364 = xor i8 %1363, 1
  store i8 %1364, i8* %47, align 1
  %1365 = xor i32 %1354, %1348
  %1366 = xor i32 %1365, %1357
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %53, align 1
  %1370 = icmp eq i32 %1357, 0
  %1371 = zext i1 %1370 to i8
  store i8 %1371, i8* %56, align 1
  %1372 = lshr i32 %1357, 31
  %1373 = trunc i32 %1372 to i8
  store i8 %1373, i8* %59, align 1
  %1374 = lshr i32 %1348, 31
  %1375 = xor i32 %1356, %1374
  %1376 = xor i32 %1372, %1374
  %1377 = add nuw nsw i32 %1376, %1375
  %1378 = icmp eq i32 %1377, 2
  %1379 = zext i1 %1378 to i8
  store i8 %1379, i8* %65, align 1
  %.v269 = select i1 %1370, i64 68, i64 17
  %1380 = add i64 %1343, %.v269
  store i64 %1380, i64* %3, align 8
  br i1 %1370, label %block_.L_45eef5, label %block_45eec2

block_45eec2:                                     ; preds = %block_.L_45eeb1
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %3, align 8
  %1382 = load i32, i32* %1347, align 4
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RAX.i2292, align 8
  %1384 = add i64 %1380, 6
  store i64 %1384, i64* %3, align 8
  %1385 = load i32, i32* %1352, align 4
  %1386 = add i32 %1385, -1
  %1387 = zext i32 %1386 to i64
  store i64 %1387, i64* %RCX.i2272, align 8
  %1388 = lshr i32 %1386, 31
  %1389 = sub i32 %1382, %1386
  %1390 = icmp ult i32 %1382, %1386
  %1391 = zext i1 %1390 to i8
  store i8 %1391, i8* %40, align 1
  %1392 = and i32 %1389, 255
  %1393 = tail call i32 @llvm.ctpop.i32(i32 %1392)
  %1394 = trunc i32 %1393 to i8
  %1395 = and i8 %1394, 1
  %1396 = xor i8 %1395, 1
  store i8 %1396, i8* %47, align 1
  %1397 = xor i32 %1386, %1382
  %1398 = xor i32 %1397, %1389
  %1399 = lshr i32 %1398, 4
  %1400 = trunc i32 %1399 to i8
  %1401 = and i8 %1400, 1
  store i8 %1401, i8* %53, align 1
  %1402 = icmp eq i32 %1389, 0
  %1403 = zext i1 %1402 to i8
  store i8 %1403, i8* %56, align 1
  %1404 = lshr i32 %1389, 31
  %1405 = trunc i32 %1404 to i8
  store i8 %1405, i8* %59, align 1
  %1406 = lshr i32 %1382, 31
  %1407 = xor i32 %1388, %1406
  %1408 = xor i32 %1404, %1406
  %1409 = add nuw nsw i32 %1408, %1407
  %1410 = icmp eq i32 %1409, 2
  %1411 = zext i1 %1410 to i8
  store i8 %1411, i8* %65, align 1
  %.v270 = select i1 %1402, i64 51, i64 17
  %1412 = add i64 %1380, %.v270
  store i64 %1412, i64* %3, align 8
  br i1 %1402, label %block_.L_45eef5, label %block_45eed3

block_45eed3:                                     ; preds = %block_45eec2
  %1413 = add i64 %1412, 3
  store i64 %1413, i64* %3, align 8
  %1414 = load i32, i32* %1347, align 4
  %1415 = zext i32 %1414 to i64
  store i64 %1415, i64* %RAX.i2292, align 8
  %1416 = add i64 %1412, 6
  store i64 %1416, i64* %3, align 8
  %1417 = load i32, i32* %1352, align 4
  %1418 = add i32 %1417, -20
  %1419 = zext i32 %1418 to i64
  store i64 %1419, i64* %RCX.i2272, align 8
  %1420 = lshr i32 %1418, 31
  %1421 = sub i32 %1414, %1418
  %1422 = icmp ult i32 %1414, %1418
  %1423 = zext i1 %1422 to i8
  store i8 %1423, i8* %40, align 1
  %1424 = and i32 %1421, 255
  %1425 = tail call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  store i8 %1428, i8* %47, align 1
  %1429 = xor i32 %1418, %1414
  %1430 = xor i32 %1429, %1421
  %1431 = lshr i32 %1430, 4
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  store i8 %1433, i8* %53, align 1
  %1434 = icmp eq i32 %1421, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %56, align 1
  %1436 = lshr i32 %1421, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %59, align 1
  %1438 = lshr i32 %1414, 31
  %1439 = xor i32 %1420, %1438
  %1440 = xor i32 %1436, %1438
  %1441 = add nuw nsw i32 %1440, %1439
  %1442 = icmp eq i32 %1441, 2
  %1443 = zext i1 %1442 to i8
  store i8 %1443, i8* %65, align 1
  %.v271 = select i1 %1434, i64 34, i64 17
  %1444 = add i64 %1412, %.v271
  store i64 %1444, i64* %3, align 8
  br i1 %1434, label %block_.L_45eef5, label %block_45eee4

block_45eee4:                                     ; preds = %block_45eed3
  %1445 = add i64 %1444, 3
  store i64 %1445, i64* %3, align 8
  %1446 = load i32, i32* %1347, align 4
  %1447 = zext i32 %1446 to i64
  store i64 %1447, i64* %RAX.i2292, align 8
  %1448 = add i64 %1444, 6
  store i64 %1448, i64* %3, align 8
  %1449 = load i32, i32* %1352, align 4
  %1450 = add i32 %1449, 1
  %1451 = zext i32 %1450 to i64
  store i64 %1451, i64* %RCX.i2272, align 8
  %1452 = lshr i32 %1450, 31
  %1453 = sub i32 %1446, %1450
  %1454 = icmp ult i32 %1446, %1450
  %1455 = zext i1 %1454 to i8
  store i8 %1455, i8* %40, align 1
  %1456 = and i32 %1453, 255
  %1457 = tail call i32 @llvm.ctpop.i32(i32 %1456)
  %1458 = trunc i32 %1457 to i8
  %1459 = and i8 %1458, 1
  %1460 = xor i8 %1459, 1
  store i8 %1460, i8* %47, align 1
  %1461 = xor i32 %1450, %1446
  %1462 = xor i32 %1461, %1453
  %1463 = lshr i32 %1462, 4
  %1464 = trunc i32 %1463 to i8
  %1465 = and i8 %1464, 1
  store i8 %1465, i8* %53, align 1
  %1466 = icmp eq i32 %1453, 0
  %1467 = zext i1 %1466 to i8
  store i8 %1467, i8* %56, align 1
  %1468 = lshr i32 %1453, 31
  %1469 = trunc i32 %1468 to i8
  store i8 %1469, i8* %59, align 1
  %1470 = lshr i32 %1446, 31
  %1471 = xor i32 %1452, %1470
  %1472 = xor i32 %1468, %1470
  %1473 = add nuw nsw i32 %1472, %1471
  %1474 = icmp eq i32 %1473, 2
  %1475 = zext i1 %1474 to i8
  store i8 %1475, i8* %65, align 1
  %.v272 = select i1 %1466, i64 17, i64 27
  %1476 = add i64 %1444, %.v272
  store i64 %1476, i64* %3, align 8
  br i1 %1466, label %block_.L_45eef5, label %block_.L_45eeff

block_.L_45eef5:                                  ; preds = %block_45eee4, %block_45eed3, %block_45eec2, %block_.L_45eeb1
  %1477 = phi i64 [ %1476, %block_45eee4 ], [ %1444, %block_45eed3 ], [ %1412, %block_45eec2 ], [ %1380, %block_.L_45eeb1 ]
  %1478 = add i64 %1344, -1188
  %1479 = add i64 %1477, 10
  store i64 %1479, i64* %3, align 8
  %1480 = inttoptr i64 %1478 to i32*
  store i32 1, i32* %1480, align 4
  %.pre180 = load i64, i64* %RBP.i, align 8
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_45eeff

block_.L_45eeff:                                  ; preds = %block_45eee4, %block_.L_45eef5
  %1481 = phi i64 [ %.pre181, %block_.L_45eef5 ], [ %1476, %block_45eee4 ]
  %1482 = phi i64 [ %.pre180, %block_.L_45eef5 ], [ %1344, %block_45eee4 ]
  %1483 = add i64 %1482, -772
  %1484 = add i64 %1481, 10
  store i64 %1484, i64* %3, align 8
  %1485 = inttoptr i64 %1483 to i32*
  store i32 0, i32* %1485, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_45ef09

block_.L_45ef09:                                  ; preds = %block_.L_45f322, %block_.L_45eeff
  %1486 = phi i64 [ %.pre182, %block_.L_45eeff ], [ %2939, %block_.L_45f322 ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.10, %block_.L_45eeff ], [ %MEMORY.30, %block_.L_45f322 ]
  %1487 = load i64, i64* %RBP.i, align 8
  %1488 = add i64 %1487, -772
  %1489 = add i64 %1486, 7
  store i64 %1489, i64* %3, align 8
  %1490 = inttoptr i64 %1488 to i32*
  %1491 = load i32, i32* %1490, align 4
  %1492 = add i32 %1491, -2
  %1493 = icmp ult i32 %1491, 2
  %1494 = zext i1 %1493 to i8
  store i8 %1494, i8* %40, align 1
  %1495 = and i32 %1492, 255
  %1496 = tail call i32 @llvm.ctpop.i32(i32 %1495)
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = xor i8 %1498, 1
  store i8 %1499, i8* %47, align 1
  %1500 = xor i32 %1492, %1491
  %1501 = lshr i32 %1500, 4
  %1502 = trunc i32 %1501 to i8
  %1503 = and i8 %1502, 1
  store i8 %1503, i8* %53, align 1
  %1504 = icmp eq i32 %1492, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %56, align 1
  %1506 = lshr i32 %1492, 31
  %1507 = trunc i32 %1506 to i8
  store i8 %1507, i8* %59, align 1
  %1508 = lshr i32 %1491, 31
  %1509 = xor i32 %1506, %1508
  %1510 = add nuw nsw i32 %1509, %1508
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  store i8 %1512, i8* %65, align 1
  %1513 = icmp ne i8 %1507, 0
  %1514 = xor i1 %1513, %1511
  %.v273 = select i1 %1514, i64 13, i64 1074
  %1515 = add i64 %1486, %.v273
  store i64 %1515, i64* %3, align 8
  br i1 %1514, label %block_45ef16, label %block_.L_45f33b

block_45ef16:                                     ; preds = %block_.L_45ef09
  %1516 = add i64 %1515, 7
  store i64 %1516, i64* %3, align 8
  %1517 = load i32, i32* %1490, align 4
  %1518 = sext i32 %1517 to i64
  store i64 %1518, i64* %RAX.i2292, align 8
  %1519 = shl nsw i64 %1518, 2
  %1520 = add i64 %1487, -96
  %1521 = add i64 %1520, %1519
  %1522 = add i64 %1515, 11
  store i64 %1522, i64* %3, align 8
  %1523 = inttoptr i64 %1521 to i32*
  %1524 = load i32, i32* %1523, align 4
  %1525 = zext i32 %1524 to i64
  store i64 %1525, i64* %RCX.i2272, align 8
  %1526 = add i64 %1487, -1212
  %1527 = add i64 %1515, 17
  store i64 %1527, i64* %3, align 8
  %1528 = inttoptr i64 %1526 to i32*
  store i32 %1524, i32* %1528, align 4
  %1529 = load i64, i64* %RBP.i, align 8
  %1530 = add i64 %1529, -1212
  %1531 = load i64, i64* %3, align 8
  %1532 = add i64 %1531, 6
  store i64 %1532, i64* %3, align 8
  %1533 = inttoptr i64 %1530 to i32*
  %1534 = load i32, i32* %1533, align 4
  %1535 = zext i32 %1534 to i64
  store i64 %1535, i64* %RDI.i2235, align 8
  %1536 = add i64 %1529, -72
  %1537 = add i64 %1531, 9
  store i64 %1537, i64* %3, align 8
  %1538 = inttoptr i64 %1536 to i32*
  %1539 = load i32, i32* %1538, align 4
  %1540 = zext i32 %1539 to i64
  store i64 %1540, i64* %RSI.i2284, align 8
  %1541 = add i64 %1531, -306311
  %1542 = add i64 %1531, 14
  %1543 = load i64, i64* %6, align 8
  %1544 = add i64 %1543, -8
  %1545 = inttoptr i64 %1544 to i64*
  store i64 %1542, i64* %1545, align 8
  store i64 %1544, i64* %6, align 8
  store i64 %1541, i64* %3, align 8
  %call2_45ef30 = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %1541, %struct.Memory* %MEMORY.13)
  %1546 = load i32, i32* %EAX.i2231, align 4
  %1547 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1548 = and i32 %1546, 255
  %1549 = tail call i32 @llvm.ctpop.i32(i32 %1548)
  %1550 = trunc i32 %1549 to i8
  %1551 = and i8 %1550, 1
  %1552 = xor i8 %1551, 1
  store i8 %1552, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1553 = icmp eq i32 %1546, 0
  %1554 = zext i1 %1553 to i8
  store i8 %1554, i8* %56, align 1
  %1555 = lshr i32 %1546, 31
  %1556 = trunc i32 %1555 to i8
  store i8 %1556, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v339 = select i1 %1553, i64 9, i64 19
  %1557 = add i64 %1547, %.v339
  store i64 %1557, i64* %3, align 8
  br i1 %1553, label %block_45ef3e, label %block_.L_45ef48

block_45ef3e:                                     ; preds = %block_45ef16
  %1558 = load i64, i64* %RBP.i, align 8
  %1559 = add i64 %1558, -776
  %1560 = add i64 %1557, 10
  store i64 %1560, i64* %3, align 8
  %1561 = inttoptr i64 %1559 to i32*
  store i32 1, i32* %1561, align 4
  %.pre227 = load i64, i64* %3, align 8
  br label %block_.L_45ef48

block_.L_45ef48:                                  ; preds = %block_45ef16, %block_45ef3e
  %1562 = phi i64 [ %.pre227, %block_45ef3e ], [ %1557, %block_45ef16 ]
  %1563 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %1564 = zext i32 %1563 to i64
  store i64 %1564, i64* %RAX.i2292, align 8
  %1565 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %1566 = sub i32 %1563, %1565
  %1567 = icmp ult i32 %1563, %1565
  %1568 = zext i1 %1567 to i8
  store i8 %1568, i8* %40, align 1
  %1569 = and i32 %1566, 255
  %1570 = tail call i32 @llvm.ctpop.i32(i32 %1569)
  %1571 = trunc i32 %1570 to i8
  %1572 = and i8 %1571, 1
  %1573 = xor i8 %1572, 1
  store i8 %1573, i8* %47, align 1
  %1574 = xor i32 %1565, %1563
  %1575 = xor i32 %1574, %1566
  %1576 = lshr i32 %1575, 4
  %1577 = trunc i32 %1576 to i8
  %1578 = and i8 %1577, 1
  store i8 %1578, i8* %53, align 1
  %1579 = icmp eq i32 %1566, 0
  %1580 = zext i1 %1579 to i8
  store i8 %1580, i8* %56, align 1
  %1581 = lshr i32 %1566, 31
  %1582 = trunc i32 %1581 to i8
  store i8 %1582, i8* %59, align 1
  %1583 = lshr i32 %1563, 31
  %1584 = lshr i32 %1565, 31
  %1585 = xor i32 %1584, %1583
  %1586 = xor i32 %1581, %1583
  %1587 = add nuw nsw i32 %1586, %1585
  %1588 = icmp eq i32 %1587, 2
  %1589 = zext i1 %1588 to i8
  store i8 %1589, i8* %65, align 1
  %1590 = icmp ne i8 %1582, 0
  %1591 = xor i1 %1590, %1588
  %1592 = or i1 %1579, %1591
  %.v340 = select i1 %1592, i64 192, i64 20
  %1593 = add i64 %1562, %.v340
  store i64 %1593, i64* %3, align 8
  br i1 %1592, label %block_.L_45f008, label %block_45ef5c

block_45ef5c:                                     ; preds = %block_.L_45ef48
  store i64 %1564, i64* %RAX.i2292, align 8
  %1594 = load i32, i32* bitcast (%G_0xb8b854_type* @G_0xb8b854 to i32*), align 8
  %1595 = sub i32 %1563, %1594
  %1596 = icmp ult i32 %1563, %1594
  %1597 = zext i1 %1596 to i8
  store i8 %1597, i8* %40, align 1
  %1598 = and i32 %1595, 255
  %1599 = tail call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  store i8 %1602, i8* %47, align 1
  %1603 = xor i32 %1594, %1563
  %1604 = xor i32 %1603, %1595
  %1605 = lshr i32 %1604, 4
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  store i8 %1607, i8* %53, align 1
  %1608 = icmp eq i32 %1595, 0
  %1609 = zext i1 %1608 to i8
  store i8 %1609, i8* %56, align 1
  %1610 = lshr i32 %1595, 31
  %1611 = trunc i32 %1610 to i8
  store i8 %1611, i8* %59, align 1
  %1612 = lshr i32 %1594, 31
  %1613 = xor i32 %1612, %1583
  %1614 = xor i32 %1610, %1583
  %1615 = add nuw nsw i32 %1614, %1613
  %1616 = icmp eq i32 %1615, 2
  %1617 = zext i1 %1616 to i8
  store i8 %1617, i8* %65, align 1
  %1618 = icmp ne i8 %1611, 0
  %1619 = xor i1 %1618, %1616
  %1620 = or i1 %1608, %1619
  %.v341 = select i1 %1620, i64 33, i64 20
  %1621 = add i64 %1593, %.v341
  store i64 %1621, i64* %3, align 8
  %.pre228 = load i64, i64* %RBP.i, align 8
  br i1 %1620, label %block_.L_45ef7d, label %block_45ef70

block_45ef70:                                     ; preds = %block_45ef5c
  %1622 = add i64 %.pre228, -1188
  %1623 = add i64 %1621, 7
  store i64 %1623, i64* %3, align 8
  %1624 = inttoptr i64 %1622 to i32*
  %1625 = load i32, i32* %1624, align 4
  store i8 0, i8* %40, align 1
  %1626 = and i32 %1625, 255
  %1627 = tail call i32 @llvm.ctpop.i32(i32 %1626)
  %1628 = trunc i32 %1627 to i8
  %1629 = and i8 %1628, 1
  %1630 = xor i8 %1629, 1
  store i8 %1630, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1631 = icmp eq i32 %1625, 0
  %1632 = zext i1 %1631 to i8
  store i8 %1632, i8* %56, align 1
  %1633 = lshr i32 %1625, 31
  %1634 = trunc i32 %1633 to i8
  store i8 %1634, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v342 = select i1 %1631, i64 129, i64 13
  %1635 = add i64 %1621, %.v342
  store i64 %1635, i64* %3, align 8
  br i1 %1631, label %block_.L_45eff1, label %block_.L_45ef7d

block_.L_45ef7d:                                  ; preds = %block_45ef5c, %block_45ef70
  %1636 = phi i64 [ %1635, %block_45ef70 ], [ %1621, %block_45ef5c ]
  %1637 = add i64 %.pre228, -1212
  %1638 = add i64 %1636, 6
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i32*
  %1640 = load i32, i32* %1639, align 4
  %1641 = add i32 %1640, 20
  %1642 = zext i32 %1641 to i64
  store i64 %1642, i64* %RAX.i2292, align 8
  %1643 = icmp ugt i32 %1640, -21
  %1644 = zext i1 %1643 to i8
  store i8 %1644, i8* %40, align 1
  %1645 = and i32 %1641, 255
  %1646 = tail call i32 @llvm.ctpop.i32(i32 %1645)
  %1647 = trunc i32 %1646 to i8
  %1648 = and i8 %1647, 1
  %1649 = xor i8 %1648, 1
  store i8 %1649, i8* %47, align 1
  %1650 = xor i32 %1640, 16
  %1651 = xor i32 %1650, %1641
  %1652 = lshr i32 %1651, 4
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  store i8 %1654, i8* %53, align 1
  %1655 = icmp eq i32 %1641, 0
  %1656 = zext i1 %1655 to i8
  store i8 %1656, i8* %56, align 1
  %1657 = lshr i32 %1641, 31
  %1658 = trunc i32 %1657 to i8
  store i8 %1658, i8* %59, align 1
  %1659 = lshr i32 %1640, 31
  %1660 = xor i32 %1657, %1659
  %1661 = add nuw nsw i32 %1660, %1657
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  store i8 %1663, i8* %65, align 1
  %1664 = sext i32 %1641 to i64
  store i64 %1664, i64* %RCX.i2272, align 8
  %1665 = add nsw i64 %1664, 12099168
  %1666 = add i64 %1636, 20
  store i64 %1666, i64* %3, align 8
  %1667 = inttoptr i64 %1665 to i8*
  %1668 = load i8, i8* %1667, align 1
  %1669 = zext i8 %1668 to i64
  store i64 %1669, i64* %RAX.i2292, align 8
  %1670 = zext i8 %1668 to i32
  %1671 = add i64 %.pre228, -72
  %1672 = add i64 %1636, 23
  store i64 %1672, i64* %3, align 8
  %1673 = inttoptr i64 %1671 to i32*
  %1674 = load i32, i32* %1673, align 4
  %1675 = sub i32 %1670, %1674
  %1676 = icmp ult i32 %1670, %1674
  %1677 = zext i1 %1676 to i8
  store i8 %1677, i8* %40, align 1
  %1678 = and i32 %1675, 255
  %1679 = tail call i32 @llvm.ctpop.i32(i32 %1678)
  %1680 = trunc i32 %1679 to i8
  %1681 = and i8 %1680, 1
  %1682 = xor i8 %1681, 1
  store i8 %1682, i8* %47, align 1
  %1683 = xor i32 %1674, %1670
  %1684 = xor i32 %1683, %1675
  %1685 = lshr i32 %1684, 4
  %1686 = trunc i32 %1685 to i8
  %1687 = and i8 %1686, 1
  store i8 %1687, i8* %53, align 1
  %1688 = icmp eq i32 %1675, 0
  %1689 = zext i1 %1688 to i8
  store i8 %1689, i8* %56, align 1
  %1690 = lshr i32 %1675, 31
  %1691 = trunc i32 %1690 to i8
  store i8 %1691, i8* %59, align 1
  %1692 = lshr i32 %1674, 31
  %1693 = add nuw nsw i32 %1690, %1692
  %1694 = icmp eq i32 %1693, 2
  %1695 = zext i1 %1694 to i8
  store i8 %1695, i8* %65, align 1
  %.v343 = select i1 %1688, i64 116, i64 29
  %1696 = add i64 %1636, %.v343
  store i64 %1696, i64* %3, align 8
  br i1 %1688, label %block_.L_45eff1, label %block_45ef9a

block_45ef9a:                                     ; preds = %block_.L_45ef7d
  %1697 = add i64 %1696, 6
  store i64 %1697, i64* %3, align 8
  %1698 = load i32, i32* %1639, align 4
  %1699 = add i32 %1698, -1
  %1700 = zext i32 %1699 to i64
  store i64 %1700, i64* %RAX.i2292, align 8
  %1701 = icmp eq i32 %1698, 0
  %1702 = zext i1 %1701 to i8
  store i8 %1702, i8* %40, align 1
  %1703 = and i32 %1699, 255
  %1704 = tail call i32 @llvm.ctpop.i32(i32 %1703)
  %1705 = trunc i32 %1704 to i8
  %1706 = and i8 %1705, 1
  %1707 = xor i8 %1706, 1
  store i8 %1707, i8* %47, align 1
  %1708 = xor i32 %1699, %1698
  %1709 = lshr i32 %1708, 4
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  store i8 %1711, i8* %53, align 1
  %1712 = icmp eq i32 %1699, 0
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %56, align 1
  %1714 = lshr i32 %1699, 31
  %1715 = trunc i32 %1714 to i8
  store i8 %1715, i8* %59, align 1
  %1716 = lshr i32 %1698, 31
  %1717 = xor i32 %1714, %1716
  %1718 = add nuw nsw i32 %1717, %1716
  %1719 = icmp eq i32 %1718, 2
  %1720 = zext i1 %1719 to i8
  store i8 %1720, i8* %65, align 1
  %1721 = sext i32 %1699 to i64
  store i64 %1721, i64* %RCX.i2272, align 8
  %1722 = add nsw i64 %1721, 12099168
  %1723 = add i64 %1696, 20
  store i64 %1723, i64* %3, align 8
  %1724 = inttoptr i64 %1722 to i8*
  %1725 = load i8, i8* %1724, align 1
  %1726 = zext i8 %1725 to i64
  store i64 %1726, i64* %RAX.i2292, align 8
  %1727 = zext i8 %1725 to i32
  %1728 = add i64 %1696, 23
  store i64 %1728, i64* %3, align 8
  %1729 = load i32, i32* %1673, align 4
  %1730 = sub i32 %1727, %1729
  %1731 = icmp ult i32 %1727, %1729
  %1732 = zext i1 %1731 to i8
  store i8 %1732, i8* %40, align 1
  %1733 = and i32 %1730, 255
  %1734 = tail call i32 @llvm.ctpop.i32(i32 %1733)
  %1735 = trunc i32 %1734 to i8
  %1736 = and i8 %1735, 1
  %1737 = xor i8 %1736, 1
  store i8 %1737, i8* %47, align 1
  %1738 = xor i32 %1729, %1727
  %1739 = xor i32 %1738, %1730
  %1740 = lshr i32 %1739, 4
  %1741 = trunc i32 %1740 to i8
  %1742 = and i8 %1741, 1
  store i8 %1742, i8* %53, align 1
  %1743 = icmp eq i32 %1730, 0
  %1744 = zext i1 %1743 to i8
  store i8 %1744, i8* %56, align 1
  %1745 = lshr i32 %1730, 31
  %1746 = trunc i32 %1745 to i8
  store i8 %1746, i8* %59, align 1
  %1747 = lshr i32 %1729, 31
  %1748 = add nuw nsw i32 %1745, %1747
  %1749 = icmp eq i32 %1748, 2
  %1750 = zext i1 %1749 to i8
  store i8 %1750, i8* %65, align 1
  %.v344 = select i1 %1743, i64 87, i64 29
  %1751 = add i64 %1696, %.v344
  store i64 %1751, i64* %3, align 8
  br i1 %1743, label %block_.L_45eff1, label %block_45efb7

block_45efb7:                                     ; preds = %block_45ef9a
  %1752 = add i64 %1751, 6
  store i64 %1752, i64* %3, align 8
  %1753 = load i32, i32* %1639, align 4
  %1754 = add i32 %1753, -20
  %1755 = zext i32 %1754 to i64
  store i64 %1755, i64* %RAX.i2292, align 8
  %1756 = icmp ult i32 %1753, 20
  %1757 = zext i1 %1756 to i8
  store i8 %1757, i8* %40, align 1
  %1758 = and i32 %1754, 255
  %1759 = tail call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  store i8 %1762, i8* %47, align 1
  %1763 = xor i32 %1753, 16
  %1764 = xor i32 %1763, %1754
  %1765 = lshr i32 %1764, 4
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  store i8 %1767, i8* %53, align 1
  %1768 = icmp eq i32 %1754, 0
  %1769 = zext i1 %1768 to i8
  store i8 %1769, i8* %56, align 1
  %1770 = lshr i32 %1754, 31
  %1771 = trunc i32 %1770 to i8
  store i8 %1771, i8* %59, align 1
  %1772 = lshr i32 %1753, 31
  %1773 = xor i32 %1770, %1772
  %1774 = add nuw nsw i32 %1773, %1772
  %1775 = icmp eq i32 %1774, 2
  %1776 = zext i1 %1775 to i8
  store i8 %1776, i8* %65, align 1
  %1777 = sext i32 %1754 to i64
  store i64 %1777, i64* %RCX.i2272, align 8
  %1778 = add nsw i64 %1777, 12099168
  %1779 = add i64 %1751, 20
  store i64 %1779, i64* %3, align 8
  %1780 = inttoptr i64 %1778 to i8*
  %1781 = load i8, i8* %1780, align 1
  %1782 = zext i8 %1781 to i64
  store i64 %1782, i64* %RAX.i2292, align 8
  %1783 = zext i8 %1781 to i32
  %1784 = add i64 %1751, 23
  store i64 %1784, i64* %3, align 8
  %1785 = load i32, i32* %1673, align 4
  %1786 = sub i32 %1783, %1785
  %1787 = icmp ult i32 %1783, %1785
  %1788 = zext i1 %1787 to i8
  store i8 %1788, i8* %40, align 1
  %1789 = and i32 %1786, 255
  %1790 = tail call i32 @llvm.ctpop.i32(i32 %1789)
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = xor i8 %1792, 1
  store i8 %1793, i8* %47, align 1
  %1794 = xor i32 %1785, %1783
  %1795 = xor i32 %1794, %1786
  %1796 = lshr i32 %1795, 4
  %1797 = trunc i32 %1796 to i8
  %1798 = and i8 %1797, 1
  store i8 %1798, i8* %53, align 1
  %1799 = icmp eq i32 %1786, 0
  %1800 = zext i1 %1799 to i8
  store i8 %1800, i8* %56, align 1
  %1801 = lshr i32 %1786, 31
  %1802 = trunc i32 %1801 to i8
  store i8 %1802, i8* %59, align 1
  %1803 = lshr i32 %1785, 31
  %1804 = add nuw nsw i32 %1801, %1803
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  store i8 %1806, i8* %65, align 1
  %.v345 = select i1 %1799, i64 58, i64 29
  %1807 = add i64 %1751, %.v345
  store i64 %1807, i64* %3, align 8
  br i1 %1799, label %block_.L_45eff1, label %block_45efd4

block_45efd4:                                     ; preds = %block_45efb7
  %1808 = add i64 %1807, 6
  store i64 %1808, i64* %3, align 8
  %1809 = load i32, i32* %1639, align 4
  %1810 = add i32 %1809, 1
  %1811 = zext i32 %1810 to i64
  store i64 %1811, i64* %RAX.i2292, align 8
  %1812 = icmp eq i32 %1809, -1
  %1813 = icmp eq i32 %1810, 0
  %1814 = or i1 %1812, %1813
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %40, align 1
  %1816 = and i32 %1810, 255
  %1817 = tail call i32 @llvm.ctpop.i32(i32 %1816)
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = xor i8 %1819, 1
  store i8 %1820, i8* %47, align 1
  %1821 = xor i32 %1810, %1809
  %1822 = lshr i32 %1821, 4
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  store i8 %1824, i8* %53, align 1
  %1825 = zext i1 %1813 to i8
  store i8 %1825, i8* %56, align 1
  %1826 = lshr i32 %1810, 31
  %1827 = trunc i32 %1826 to i8
  store i8 %1827, i8* %59, align 1
  %1828 = lshr i32 %1809, 31
  %1829 = xor i32 %1826, %1828
  %1830 = add nuw nsw i32 %1829, %1826
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  store i8 %1832, i8* %65, align 1
  %1833 = sext i32 %1810 to i64
  store i64 %1833, i64* %RCX.i2272, align 8
  %1834 = add nsw i64 %1833, 12099168
  %1835 = add i64 %1807, 20
  store i64 %1835, i64* %3, align 8
  %1836 = inttoptr i64 %1834 to i8*
  %1837 = load i8, i8* %1836, align 1
  %1838 = zext i8 %1837 to i64
  store i64 %1838, i64* %RAX.i2292, align 8
  %1839 = zext i8 %1837 to i32
  %1840 = add i64 %1807, 23
  store i64 %1840, i64* %3, align 8
  %1841 = load i32, i32* %1673, align 4
  %1842 = sub i32 %1839, %1841
  %1843 = icmp ult i32 %1839, %1841
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %40, align 1
  %1845 = and i32 %1842, 255
  %1846 = tail call i32 @llvm.ctpop.i32(i32 %1845)
  %1847 = trunc i32 %1846 to i8
  %1848 = and i8 %1847, 1
  %1849 = xor i8 %1848, 1
  store i8 %1849, i8* %47, align 1
  %1850 = xor i32 %1841, %1839
  %1851 = xor i32 %1850, %1842
  %1852 = lshr i32 %1851, 4
  %1853 = trunc i32 %1852 to i8
  %1854 = and i8 %1853, 1
  store i8 %1854, i8* %53, align 1
  %1855 = icmp eq i32 %1842, 0
  %1856 = zext i1 %1855 to i8
  store i8 %1856, i8* %56, align 1
  %1857 = lshr i32 %1842, 31
  %1858 = trunc i32 %1857 to i8
  store i8 %1858, i8* %59, align 1
  %1859 = lshr i32 %1841, 31
  %1860 = add nuw nsw i32 %1857, %1859
  %1861 = icmp eq i32 %1860, 2
  %1862 = zext i1 %1861 to i8
  store i8 %1862, i8* %65, align 1
  %.v346 = select i1 %1855, i64 29, i64 52
  %1863 = add i64 %1807, %.v346
  store i64 %1863, i64* %3, align 8
  br i1 %1855, label %block_.L_45eff1, label %block_.L_45f008

block_.L_45eff1:                                  ; preds = %block_45efd4, %block_45efb7, %block_45ef9a, %block_.L_45ef7d, %block_45ef70
  %1864 = phi i64 [ %1863, %block_45efd4 ], [ %1807, %block_45efb7 ], [ %1751, %block_45ef9a ], [ %1696, %block_.L_45ef7d ], [ %1635, %block_45ef70 ]
  %1865 = add i64 %.pre228, -1212
  %1866 = add i64 %1864, 6
  store i64 %1866, i64* %3, align 8
  %1867 = inttoptr i64 %1865 to i32*
  %1868 = load i32, i32* %1867, align 4
  %1869 = zext i32 %1868 to i64
  store i64 %1869, i64* %RDI.i2235, align 8
  %1870 = add i64 %.pre228, -72
  %1871 = add i64 %1864, 9
  store i64 %1871, i64* %3, align 8
  %1872 = inttoptr i64 %1870 to i32*
  %1873 = load i32, i32* %1872, align 4
  %1874 = zext i32 %1873 to i64
  store i64 %1874, i64* %RSI.i2284, align 8
  %1875 = add i64 %1864, -306513
  %1876 = add i64 %1864, 14
  %1877 = load i64, i64* %6, align 8
  %1878 = add i64 %1877, -8
  %1879 = inttoptr i64 %1878 to i64*
  store i64 %1876, i64* %1879, align 8
  store i64 %1878, i64* %6, align 8
  store i64 %1875, i64* %3, align 8
  %call2_45effa = tail call %struct.Memory* @sub_4142a0.is_self_atari(%struct.State* nonnull %0, i64 %1875, %struct.Memory* %MEMORY.13)
  %1880 = load i32, i32* %EAX.i2231, align 4
  %1881 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %1882 = and i32 %1880, 255
  %1883 = tail call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  store i8 %1886, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1887 = icmp eq i32 %1880, 0
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %56, align 1
  %1889 = lshr i32 %1880, 31
  %1890 = trunc i32 %1889 to i8
  store i8 %1890, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v358 = select i1 %1887, i64 9, i64 216
  %1891 = add i64 %1881, %.v358
  store i64 %1891, i64* %3, align 8
  br i1 %1887, label %block_.L_45f008, label %block_.L_45f0d7

block_.L_45f008:                                  ; preds = %block_.L_45eff1, %block_45efd4, %block_.L_45ef48
  %1892 = phi i64 [ %1891, %block_.L_45eff1 ], [ %1863, %block_45efd4 ], [ %1593, %block_.L_45ef48 ]
  %1893 = load i64, i64* %RBP.i, align 8
  %1894 = add i64 %1893, -1216
  %1895 = add i64 %1892, 15
  store i64 %1895, i64* %3, align 8
  %1896 = inttoptr i64 %1894 to i32*
  store i32 0, i32* %1896, align 4
  %.pre229 = load i64, i64* %3, align 8
  br label %block_.L_45f017

block_.L_45f017:                                  ; preds = %block_.L_45f060, %block_.L_45f008
  %1897 = phi i64 [ %2023, %block_.L_45f060 ], [ %.pre229, %block_.L_45f008 ]
  %1898 = load i64, i64* %RBP.i, align 8
  %1899 = add i64 %1898, -1216
  %1900 = add i64 %1897, 6
  store i64 %1900, i64* %3, align 8
  %1901 = inttoptr i64 %1899 to i32*
  %1902 = load i32, i32* %1901, align 4
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RAX.i2292, align 8
  %1904 = add i64 %1898, -784
  %1905 = add i64 %1897, 12
  store i64 %1905, i64* %3, align 8
  %1906 = inttoptr i64 %1904 to i32*
  %1907 = load i32, i32* %1906, align 4
  %1908 = sub i32 %1902, %1907
  %1909 = icmp ult i32 %1902, %1907
  %1910 = zext i1 %1909 to i8
  store i8 %1910, i8* %40, align 1
  %1911 = and i32 %1908, 255
  %1912 = tail call i32 @llvm.ctpop.i32(i32 %1911)
  %1913 = trunc i32 %1912 to i8
  %1914 = and i8 %1913, 1
  %1915 = xor i8 %1914, 1
  store i8 %1915, i8* %47, align 1
  %1916 = xor i32 %1907, %1902
  %1917 = xor i32 %1916, %1908
  %1918 = lshr i32 %1917, 4
  %1919 = trunc i32 %1918 to i8
  %1920 = and i8 %1919, 1
  store i8 %1920, i8* %53, align 1
  %1921 = icmp eq i32 %1908, 0
  %1922 = zext i1 %1921 to i8
  store i8 %1922, i8* %56, align 1
  %1923 = lshr i32 %1908, 31
  %1924 = trunc i32 %1923 to i8
  store i8 %1924, i8* %59, align 1
  %1925 = lshr i32 %1902, 31
  %1926 = lshr i32 %1907, 31
  %1927 = xor i32 %1926, %1925
  %1928 = xor i32 %1923, %1925
  %1929 = add nuw nsw i32 %1928, %1927
  %1930 = icmp eq i32 %1929, 2
  %1931 = zext i1 %1930 to i8
  store i8 %1931, i8* %65, align 1
  %1932 = icmp ne i8 %1924, 0
  %1933 = xor i1 %1932, %1930
  %.v260 = select i1 %1933, i64 18, i64 98
  %1934 = add i64 %1897, %.v260
  store i64 %1934, i64* %3, align 8
  br i1 %1933, label %block_45f029, label %block_.L_45f079.loopexit

block_45f029:                                     ; preds = %block_.L_45f017
  %1935 = add i64 %1934, 7
  store i64 %1935, i64* %3, align 8
  %1936 = load i32, i32* %1901, align 4
  %1937 = sext i32 %1936 to i64
  store i64 %1937, i64* %RAX.i2292, align 8
  %1938 = shl nsw i64 %1937, 2
  %1939 = add i64 %1898, -1184
  %1940 = add i64 %1939, %1938
  %1941 = add i64 %1934, 14
  store i64 %1941, i64* %3, align 8
  %1942 = inttoptr i64 %1940 to i32*
  %1943 = load i32, i32* %1942, align 4
  %1944 = zext i32 %1943 to i64
  store i64 %1944, i64* %RCX.i2272, align 8
  %1945 = add i64 %1898, -1212
  %1946 = add i64 %1934, 20
  store i64 %1946, i64* %3, align 8
  %1947 = inttoptr i64 %1945 to i32*
  %1948 = load i32, i32* %1947, align 4
  %1949 = sub i32 %1943, %1948
  %1950 = icmp ult i32 %1943, %1948
  %1951 = zext i1 %1950 to i8
  store i8 %1951, i8* %40, align 1
  %1952 = and i32 %1949, 255
  %1953 = tail call i32 @llvm.ctpop.i32(i32 %1952)
  %1954 = trunc i32 %1953 to i8
  %1955 = and i8 %1954, 1
  %1956 = xor i8 %1955, 1
  store i8 %1956, i8* %47, align 1
  %1957 = xor i32 %1948, %1943
  %1958 = xor i32 %1957, %1949
  %1959 = lshr i32 %1958, 4
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  store i8 %1961, i8* %53, align 1
  %1962 = icmp eq i32 %1949, 0
  %1963 = zext i1 %1962 to i8
  store i8 %1963, i8* %56, align 1
  %1964 = lshr i32 %1949, 31
  %1965 = trunc i32 %1964 to i8
  store i8 %1965, i8* %59, align 1
  %1966 = lshr i32 %1943, 31
  %1967 = lshr i32 %1948, 31
  %1968 = xor i32 %1967, %1966
  %1969 = xor i32 %1964, %1966
  %1970 = add nuw nsw i32 %1969, %1968
  %1971 = icmp eq i32 %1970, 2
  %1972 = zext i1 %1971 to i8
  store i8 %1972, i8* %65, align 1
  %.v259 = select i1 %1962, i64 26, i64 55
  %1973 = add i64 %1934, %.v259
  store i64 %1973, i64* %3, align 8
  br i1 %1962, label %block_45f043, label %block_.L_45f060

block_45f043:                                     ; preds = %block_45f029
  %1974 = add i64 %1973, 7
  store i64 %1974, i64* %3, align 8
  %1975 = load i32, i32* %1901, align 4
  %1976 = sext i32 %1975 to i64
  store i64 %1976, i64* %RAX.i2292, align 8
  %1977 = shl nsw i64 %1976, 2
  %1978 = add i64 %1898, -984
  %1979 = add i64 %1978, %1977
  %1980 = add i64 %1973, 14
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = zext i32 %1982 to i64
  store i64 %1983, i64* %RCX.i2272, align 8
  store i8 0, i8* %40, align 1
  %1984 = and i32 %1982, 255
  %1985 = tail call i32 @llvm.ctpop.i32(i32 %1984)
  %1986 = trunc i32 %1985 to i8
  %1987 = and i8 %1986, 1
  %1988 = xor i8 %1987, 1
  store i8 %1988, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %1989 = icmp eq i32 %1982, 0
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %56, align 1
  %1991 = lshr i32 %1982, 31
  %1992 = trunc i32 %1991 to i8
  store i8 %1992, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %1993 = add i64 %1973, 24
  store i64 %1993, i64* %3, align 8
  store i32 %1982, i32* %1981, align 4
  %1994 = load i64, i64* %3, align 8
  %1995 = add i64 %1994, 30
  store i64 %1995, i64* %3, align 8
  %.pre230 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45f079

block_.L_45f060:                                  ; preds = %block_45f029
  %1996 = add i64 %1973, 11
  store i64 %1996, i64* %3, align 8
  %1997 = load i32, i32* %1901, align 4
  %1998 = add i32 %1997, 1
  %1999 = zext i32 %1998 to i64
  store i64 %1999, i64* %RAX.i2292, align 8
  %2000 = icmp eq i32 %1997, -1
  %2001 = icmp eq i32 %1998, 0
  %2002 = or i1 %2000, %2001
  %2003 = zext i1 %2002 to i8
  store i8 %2003, i8* %40, align 1
  %2004 = and i32 %1998, 255
  %2005 = tail call i32 @llvm.ctpop.i32(i32 %2004)
  %2006 = trunc i32 %2005 to i8
  %2007 = and i8 %2006, 1
  %2008 = xor i8 %2007, 1
  store i8 %2008, i8* %47, align 1
  %2009 = xor i32 %1998, %1997
  %2010 = lshr i32 %2009, 4
  %2011 = trunc i32 %2010 to i8
  %2012 = and i8 %2011, 1
  store i8 %2012, i8* %53, align 1
  %2013 = zext i1 %2001 to i8
  store i8 %2013, i8* %56, align 1
  %2014 = lshr i32 %1998, 31
  %2015 = trunc i32 %2014 to i8
  store i8 %2015, i8* %59, align 1
  %2016 = lshr i32 %1997, 31
  %2017 = xor i32 %2014, %2016
  %2018 = add nuw nsw i32 %2017, %2014
  %2019 = icmp eq i32 %2018, 2
  %2020 = zext i1 %2019 to i8
  store i8 %2020, i8* %65, align 1
  %2021 = add i64 %1973, 20
  store i64 %2021, i64* %3, align 8
  store i32 %1998, i32* %1901, align 4
  %2022 = load i64, i64* %3, align 8
  %2023 = add i64 %2022, -93
  store i64 %2023, i64* %3, align 8
  br label %block_.L_45f017

block_.L_45f079.loopexit:                         ; preds = %block_.L_45f017
  br label %block_.L_45f079

block_.L_45f079:                                  ; preds = %block_.L_45f079.loopexit, %block_45f043
  %2024 = phi i64 [ %1995, %block_45f043 ], [ %1934, %block_.L_45f079.loopexit ]
  %2025 = phi i64 [ %.pre230, %block_45f043 ], [ %1898, %block_.L_45f079.loopexit ]
  %2026 = add i64 %2025, -1216
  %2027 = add i64 %2024, 6
  store i64 %2027, i64* %3, align 8
  %2028 = inttoptr i64 %2026 to i32*
  %2029 = load i32, i32* %2028, align 4
  %2030 = zext i32 %2029 to i64
  store i64 %2030, i64* %RAX.i2292, align 8
  %2031 = add i64 %2025, -784
  %2032 = add i64 %2024, 12
  store i64 %2032, i64* %3, align 8
  %2033 = inttoptr i64 %2031 to i32*
  %2034 = load i32, i32* %2033, align 4
  %2035 = sub i32 %2029, %2034
  %2036 = icmp ult i32 %2029, %2034
  %2037 = zext i1 %2036 to i8
  store i8 %2037, i8* %40, align 1
  %2038 = and i32 %2035, 255
  %2039 = tail call i32 @llvm.ctpop.i32(i32 %2038)
  %2040 = trunc i32 %2039 to i8
  %2041 = and i8 %2040, 1
  %2042 = xor i8 %2041, 1
  store i8 %2042, i8* %47, align 1
  %2043 = xor i32 %2034, %2029
  %2044 = xor i32 %2043, %2035
  %2045 = lshr i32 %2044, 4
  %2046 = trunc i32 %2045 to i8
  %2047 = and i8 %2046, 1
  store i8 %2047, i8* %53, align 1
  %2048 = icmp eq i32 %2035, 0
  %2049 = zext i1 %2048 to i8
  store i8 %2049, i8* %56, align 1
  %2050 = lshr i32 %2035, 31
  %2051 = trunc i32 %2050 to i8
  store i8 %2051, i8* %59, align 1
  %2052 = lshr i32 %2029, 31
  %2053 = lshr i32 %2034, 31
  %2054 = xor i32 %2053, %2052
  %2055 = xor i32 %2050, %2052
  %2056 = add nuw nsw i32 %2055, %2054
  %2057 = icmp eq i32 %2056, 2
  %2058 = zext i1 %2057 to i8
  store i8 %2058, i8* %65, align 1
  %.v347 = select i1 %2048, i64 18, i64 84
  %2059 = add i64 %2024, %.v347
  store i64 %2059, i64* %3, align 8
  br i1 %2048, label %block_45f08b, label %block_.L_45f0cd

block_45f08b:                                     ; preds = %block_.L_45f079
  %2060 = add i64 %2059, 7
  store i64 %2060, i64* %3, align 8
  %2061 = load i32, i32* %2033, align 4
  %2062 = add i32 %2061, -50
  %2063 = icmp ult i32 %2061, 50
  %2064 = zext i1 %2063 to i8
  store i8 %2064, i8* %40, align 1
  %2065 = and i32 %2062, 255
  %2066 = tail call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  store i8 %2069, i8* %47, align 1
  %2070 = xor i32 %2061, 16
  %2071 = xor i32 %2070, %2062
  %2072 = lshr i32 %2071, 4
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  store i8 %2074, i8* %53, align 1
  %2075 = icmp eq i32 %2062, 0
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %56, align 1
  %2077 = lshr i32 %2062, 31
  %2078 = trunc i32 %2077 to i8
  store i8 %2078, i8* %59, align 1
  %2079 = lshr i32 %2061, 31
  %2080 = xor i32 %2077, %2079
  %2081 = add nuw nsw i32 %2080, %2079
  %2082 = icmp eq i32 %2081, 2
  %2083 = zext i1 %2082 to i8
  store i8 %2083, i8* %65, align 1
  %2084 = icmp ne i8 %2078, 0
  %2085 = xor i1 %2084, %2082
  %.v357 = select i1 %2085, i64 13, i64 66
  %2086 = add i64 %2059, %.v357
  store i64 %2086, i64* %3, align 8
  br i1 %2085, label %block_45f098, label %block_.L_45f0cd

block_45f098:                                     ; preds = %block_45f08b
  %2087 = add i64 %2025, -1212
  %2088 = add i64 %2086, 6
  store i64 %2088, i64* %3, align 8
  %2089 = inttoptr i64 %2087 to i32*
  %2090 = load i32, i32* %2089, align 4
  %2091 = zext i32 %2090 to i64
  store i64 %2091, i64* %RAX.i2292, align 8
  %2092 = add i64 %2086, 13
  store i64 %2092, i64* %3, align 8
  %2093 = load i32, i32* %2033, align 4
  %2094 = sext i32 %2093 to i64
  store i64 %2094, i64* %RCX.i2272, align 8
  %2095 = shl nsw i64 %2094, 2
  %2096 = add i64 %2025, -1184
  %2097 = add i64 %2096, %2095
  %2098 = add i64 %2086, 20
  store i64 %2098, i64* %3, align 8
  %2099 = inttoptr i64 %2097 to i32*
  store i32 %2090, i32* %2099, align 4
  %2100 = load i64, i64* %RBP.i, align 8
  %2101 = add i64 %2100, -784
  %2102 = load i64, i64* %3, align 8
  %2103 = add i64 %2102, 7
  store i64 %2103, i64* %3, align 8
  %2104 = inttoptr i64 %2101 to i32*
  %2105 = load i32, i32* %2104, align 4
  %2106 = sext i32 %2105 to i64
  store i64 %2106, i64* %RCX.i2272, align 8
  %2107 = shl nsw i64 %2106, 2
  %2108 = add i64 %2100, -984
  %2109 = add i64 %2108, %2107
  %2110 = add i64 %2102, 18
  store i64 %2110, i64* %3, align 8
  %2111 = inttoptr i64 %2109 to i32*
  store i32 0, i32* %2111, align 4
  %2112 = load i64, i64* %RBP.i, align 8
  %2113 = add i64 %2112, -784
  %2114 = load i64, i64* %3, align 8
  %2115 = add i64 %2114, 6
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2113 to i32*
  %2117 = load i32, i32* %2116, align 4
  %2118 = add i32 %2117, 1
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RAX.i2292, align 8
  %2120 = icmp eq i32 %2117, -1
  %2121 = icmp eq i32 %2118, 0
  %2122 = or i1 %2120, %2121
  %2123 = zext i1 %2122 to i8
  store i8 %2123, i8* %40, align 1
  %2124 = and i32 %2118, 255
  %2125 = tail call i32 @llvm.ctpop.i32(i32 %2124)
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = xor i8 %2127, 1
  store i8 %2128, i8* %47, align 1
  %2129 = xor i32 %2118, %2117
  %2130 = lshr i32 %2129, 4
  %2131 = trunc i32 %2130 to i8
  %2132 = and i8 %2131, 1
  store i8 %2132, i8* %53, align 1
  %2133 = zext i1 %2121 to i8
  store i8 %2133, i8* %56, align 1
  %2134 = lshr i32 %2118, 31
  %2135 = trunc i32 %2134 to i8
  store i8 %2135, i8* %59, align 1
  %2136 = lshr i32 %2117, 31
  %2137 = xor i32 %2134, %2136
  %2138 = add nuw nsw i32 %2137, %2134
  %2139 = icmp eq i32 %2138, 2
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %65, align 1
  %2141 = add i64 %2114, 15
  store i64 %2141, i64* %3, align 8
  store i32 %2118, i32* %2116, align 4
  %.pre231 = load i64, i64* %3, align 8
  br label %block_.L_45f0cd

block_.L_45f0cd:                                  ; preds = %block_.L_45f079, %block_45f08b, %block_45f098
  %2142 = phi i64 [ %2086, %block_45f08b ], [ %.pre231, %block_45f098 ], [ %2059, %block_.L_45f079 ]
  %2143 = add i64 %2142, 10
  store i64 %2143, i64* %3, align 8
  br label %block_.L_45f0d7

block_.L_45f0d7:                                  ; preds = %block_.L_45eff1, %block_.L_45f0cd
  %2144 = phi i64 [ %2143, %block_.L_45f0cd ], [ %1891, %block_.L_45eff1 ]
  %2145 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %2146 = zext i32 %2145 to i64
  store i64 %2146, i64* %RAX.i2292, align 8
  %2147 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %2148 = sub i32 %2145, %2147
  %2149 = icmp ult i32 %2145, %2147
  %2150 = zext i1 %2149 to i8
  store i8 %2150, i8* %40, align 1
  %2151 = and i32 %2148, 255
  %2152 = tail call i32 @llvm.ctpop.i32(i32 %2151)
  %2153 = trunc i32 %2152 to i8
  %2154 = and i8 %2153, 1
  %2155 = xor i8 %2154, 1
  store i8 %2155, i8* %47, align 1
  %2156 = xor i32 %2147, %2145
  %2157 = xor i32 %2156, %2148
  %2158 = lshr i32 %2157, 4
  %2159 = trunc i32 %2158 to i8
  %2160 = and i8 %2159, 1
  store i8 %2160, i8* %53, align 1
  %2161 = icmp eq i32 %2148, 0
  %2162 = zext i1 %2161 to i8
  store i8 %2162, i8* %56, align 1
  %2163 = lshr i32 %2148, 31
  %2164 = trunc i32 %2163 to i8
  store i8 %2164, i8* %59, align 1
  %2165 = lshr i32 %2145, 31
  %2166 = lshr i32 %2147, 31
  %2167 = xor i32 %2166, %2165
  %2168 = xor i32 %2163, %2165
  %2169 = add nuw nsw i32 %2168, %2167
  %2170 = icmp eq i32 %2169, 2
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %65, align 1
  %2172 = icmp ne i8 %2164, 0
  %2173 = xor i1 %2172, %2170
  %.demorgan255 = or i1 %2161, %2173
  %.v348 = select i1 %.demorgan255, i64 20, i64 587
  %2174 = add i64 %2144, %.v348
  store i64 %2174, i64* %3, align 8
  br i1 %.demorgan255, label %block_45f0eb, label %block_.L_45f322

block_45f0eb:                                     ; preds = %block_.L_45f0d7
  store i64 2, i64* %RDX.i2074.pre-phi, align 8
  %2175 = load i64, i64* %RBP.i, align 8
  %2176 = add i64 %2175, -104
  store i64 %2176, i64* %RCX.i2272, align 8
  %2177 = add i64 %2175, -1212
  %2178 = add i64 %2174, 15
  store i64 %2178, i64* %3, align 8
  %2179 = inttoptr i64 %2177 to i32*
  %2180 = load i32, i32* %2179, align 4
  %2181 = zext i32 %2180 to i64
  store i64 %2181, i64* %RDI.i2235, align 8
  %2182 = add i64 %2175, -72
  %2183 = add i64 %2174, 18
  store i64 %2183, i64* %3, align 8
  %2184 = inttoptr i64 %2182 to i32*
  %2185 = load i32, i32* %2184, align 4
  %2186 = zext i32 %2185 to i64
  store i64 %2186, i64* %RSI.i2284, align 8
  %2187 = add i64 %2174, -318267
  %2188 = add i64 %2174, 23
  %2189 = load i64, i64* %6, align 8
  %2190 = add i64 %2189, -8
  %2191 = inttoptr i64 %2190 to i64*
  store i64 %2188, i64* %2191, align 8
  store i64 %2190, i64* %6, align 8
  store i64 %2187, i64* %3, align 8
  %call2_45f0fd = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %2187, %struct.Memory* %MEMORY.13)
  %2192 = load i32, i32* %EAX.i2231, align 4
  %2193 = load i64, i64* %3, align 8
  %2194 = add i32 %2192, -1
  %2195 = icmp eq i32 %2192, 0
  %2196 = zext i1 %2195 to i8
  store i8 %2196, i8* %40, align 1
  %2197 = and i32 %2194, 255
  %2198 = tail call i32 @llvm.ctpop.i32(i32 %2197)
  %2199 = trunc i32 %2198 to i8
  %2200 = and i8 %2199, 1
  %2201 = xor i8 %2200, 1
  store i8 %2201, i8* %47, align 1
  %2202 = xor i32 %2194, %2192
  %2203 = lshr i32 %2202, 4
  %2204 = trunc i32 %2203 to i8
  %2205 = and i8 %2204, 1
  store i8 %2205, i8* %53, align 1
  %2206 = icmp eq i32 %2194, 0
  %2207 = zext i1 %2206 to i8
  store i8 %2207, i8* %56, align 1
  %2208 = lshr i32 %2194, 31
  %2209 = trunc i32 %2208 to i8
  store i8 %2209, i8* %59, align 1
  %2210 = lshr i32 %2192, 31
  %2211 = xor i32 %2208, %2210
  %2212 = add nuw nsw i32 %2211, %2210
  %2213 = icmp eq i32 %2212, 2
  %2214 = zext i1 %2213 to i8
  store i8 %2214, i8* %65, align 1
  %.v349 = select i1 %2206, i64 9, i64 544
  %2215 = add i64 %2193, %.v349
  store i64 %2215, i64* %3, align 8
  br i1 %2206, label %block_45f10b, label %block_.L_45f322

block_45f10b:                                     ; preds = %block_45f0eb
  %2216 = load i64, i64* %RBP.i, align 8
  %2217 = add i64 %2216, -1220
  %2218 = add i64 %2215, 15
  store i64 %2218, i64* %3, align 8
  %2219 = inttoptr i64 %2217 to i32*
  store i32 0, i32* %2219, align 4
  %.pre232 = load i64, i64* %3, align 8
  br label %block_.L_45f11a

block_.L_45f11a:                                  ; preds = %block_.L_45f160, %block_45f10b
  %2220 = phi i64 [ %2346, %block_.L_45f160 ], [ %.pre232, %block_45f10b ]
  %2221 = load i64, i64* %RBP.i, align 8
  %2222 = add i64 %2221, -1220
  %2223 = add i64 %2220, 6
  store i64 %2223, i64* %3, align 8
  %2224 = inttoptr i64 %2222 to i32*
  %2225 = load i32, i32* %2224, align 4
  %2226 = zext i32 %2225 to i64
  store i64 %2226, i64* %RAX.i2292, align 8
  %2227 = add i64 %2221, -784
  %2228 = add i64 %2220, 12
  store i64 %2228, i64* %3, align 8
  %2229 = inttoptr i64 %2227 to i32*
  %2230 = load i32, i32* %2229, align 4
  %2231 = sub i32 %2225, %2230
  %2232 = icmp ult i32 %2225, %2230
  %2233 = zext i1 %2232 to i8
  store i8 %2233, i8* %40, align 1
  %2234 = and i32 %2231, 255
  %2235 = tail call i32 @llvm.ctpop.i32(i32 %2234)
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = xor i8 %2237, 1
  store i8 %2238, i8* %47, align 1
  %2239 = xor i32 %2230, %2225
  %2240 = xor i32 %2239, %2231
  %2241 = lshr i32 %2240, 4
  %2242 = trunc i32 %2241 to i8
  %2243 = and i8 %2242, 1
  store i8 %2243, i8* %53, align 1
  %2244 = icmp eq i32 %2231, 0
  %2245 = zext i1 %2244 to i8
  store i8 %2245, i8* %56, align 1
  %2246 = lshr i32 %2231, 31
  %2247 = trunc i32 %2246 to i8
  store i8 %2247, i8* %59, align 1
  %2248 = lshr i32 %2225, 31
  %2249 = lshr i32 %2230, 31
  %2250 = xor i32 %2249, %2248
  %2251 = xor i32 %2246, %2248
  %2252 = add nuw nsw i32 %2251, %2250
  %2253 = icmp eq i32 %2252, 2
  %2254 = zext i1 %2253 to i8
  store i8 %2254, i8* %65, align 1
  %2255 = icmp ne i8 %2247, 0
  %2256 = xor i1 %2255, %2253
  %.v258 = select i1 %2256, i64 18, i64 95
  %2257 = add i64 %2220, %.v258
  store i64 %2257, i64* %3, align 8
  br i1 %2256, label %block_45f12c, label %block_.L_45f179.loopexit

block_45f12c:                                     ; preds = %block_.L_45f11a
  %2258 = add i64 %2257, 7
  store i64 %2258, i64* %3, align 8
  %2259 = load i32, i32* %2224, align 4
  %2260 = sext i32 %2259 to i64
  store i64 %2260, i64* %RAX.i2292, align 8
  %2261 = shl nsw i64 %2260, 2
  %2262 = add i64 %2221, -1184
  %2263 = add i64 %2262, %2261
  %2264 = add i64 %2257, 14
  store i64 %2264, i64* %3, align 8
  %2265 = inttoptr i64 %2263 to i32*
  %2266 = load i32, i32* %2265, align 4
  %2267 = zext i32 %2266 to i64
  store i64 %2267, i64* %RCX.i2272, align 8
  %2268 = add i64 %2221, -104
  %2269 = add i64 %2257, 17
  store i64 %2269, i64* %3, align 8
  %2270 = inttoptr i64 %2268 to i32*
  %2271 = load i32, i32* %2270, align 4
  %2272 = sub i32 %2266, %2271
  %2273 = icmp ult i32 %2266, %2271
  %2274 = zext i1 %2273 to i8
  store i8 %2274, i8* %40, align 1
  %2275 = and i32 %2272, 255
  %2276 = tail call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  store i8 %2279, i8* %47, align 1
  %2280 = xor i32 %2271, %2266
  %2281 = xor i32 %2280, %2272
  %2282 = lshr i32 %2281, 4
  %2283 = trunc i32 %2282 to i8
  %2284 = and i8 %2283, 1
  store i8 %2284, i8* %53, align 1
  %2285 = icmp eq i32 %2272, 0
  %2286 = zext i1 %2285 to i8
  store i8 %2286, i8* %56, align 1
  %2287 = lshr i32 %2272, 31
  %2288 = trunc i32 %2287 to i8
  store i8 %2288, i8* %59, align 1
  %2289 = lshr i32 %2266, 31
  %2290 = lshr i32 %2271, 31
  %2291 = xor i32 %2290, %2289
  %2292 = xor i32 %2287, %2289
  %2293 = add nuw nsw i32 %2292, %2291
  %2294 = icmp eq i32 %2293, 2
  %2295 = zext i1 %2294 to i8
  store i8 %2295, i8* %65, align 1
  %.v257 = select i1 %2285, i64 23, i64 52
  %2296 = add i64 %2257, %.v257
  store i64 %2296, i64* %3, align 8
  br i1 %2285, label %block_45f143, label %block_.L_45f160

block_45f143:                                     ; preds = %block_45f12c
  %2297 = add i64 %2296, 7
  store i64 %2297, i64* %3, align 8
  %2298 = load i32, i32* %2224, align 4
  %2299 = sext i32 %2298 to i64
  store i64 %2299, i64* %RAX.i2292, align 8
  %2300 = shl nsw i64 %2299, 2
  %2301 = add i64 %2221, -984
  %2302 = add i64 %2301, %2300
  %2303 = add i64 %2296, 14
  store i64 %2303, i64* %3, align 8
  %2304 = inttoptr i64 %2302 to i32*
  %2305 = load i32, i32* %2304, align 4
  %2306 = zext i32 %2305 to i64
  store i64 %2306, i64* %RCX.i2272, align 8
  store i8 0, i8* %40, align 1
  %2307 = and i32 %2305, 255
  %2308 = tail call i32 @llvm.ctpop.i32(i32 %2307)
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = xor i8 %2310, 1
  store i8 %2311, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2312 = icmp eq i32 %2305, 0
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %56, align 1
  %2314 = lshr i32 %2305, 31
  %2315 = trunc i32 %2314 to i8
  store i8 %2315, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %2316 = add i64 %2296, 24
  store i64 %2316, i64* %3, align 8
  store i32 %2305, i32* %2304, align 4
  %2317 = load i64, i64* %3, align 8
  %2318 = add i64 %2317, 30
  store i64 %2318, i64* %3, align 8
  %.pre233 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45f179

block_.L_45f160:                                  ; preds = %block_45f12c
  %2319 = add i64 %2296, 11
  store i64 %2319, i64* %3, align 8
  %2320 = load i32, i32* %2224, align 4
  %2321 = add i32 %2320, 1
  %2322 = zext i32 %2321 to i64
  store i64 %2322, i64* %RAX.i2292, align 8
  %2323 = icmp eq i32 %2320, -1
  %2324 = icmp eq i32 %2321, 0
  %2325 = or i1 %2323, %2324
  %2326 = zext i1 %2325 to i8
  store i8 %2326, i8* %40, align 1
  %2327 = and i32 %2321, 255
  %2328 = tail call i32 @llvm.ctpop.i32(i32 %2327)
  %2329 = trunc i32 %2328 to i8
  %2330 = and i8 %2329, 1
  %2331 = xor i8 %2330, 1
  store i8 %2331, i8* %47, align 1
  %2332 = xor i32 %2321, %2320
  %2333 = lshr i32 %2332, 4
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  store i8 %2335, i8* %53, align 1
  %2336 = zext i1 %2324 to i8
  store i8 %2336, i8* %56, align 1
  %2337 = lshr i32 %2321, 31
  %2338 = trunc i32 %2337 to i8
  store i8 %2338, i8* %59, align 1
  %2339 = lshr i32 %2320, 31
  %2340 = xor i32 %2337, %2339
  %2341 = add nuw nsw i32 %2340, %2337
  %2342 = icmp eq i32 %2341, 2
  %2343 = zext i1 %2342 to i8
  store i8 %2343, i8* %65, align 1
  %2344 = add i64 %2296, 20
  store i64 %2344, i64* %3, align 8
  store i32 %2321, i32* %2224, align 4
  %2345 = load i64, i64* %3, align 8
  %2346 = add i64 %2345, -90
  store i64 %2346, i64* %3, align 8
  br label %block_.L_45f11a

block_.L_45f179.loopexit:                         ; preds = %block_.L_45f11a
  br label %block_.L_45f179

block_.L_45f179:                                  ; preds = %block_.L_45f179.loopexit, %block_45f143
  %2347 = phi i64 [ %2318, %block_45f143 ], [ %2257, %block_.L_45f179.loopexit ]
  %2348 = phi i64 [ %.pre233, %block_45f143 ], [ %2221, %block_.L_45f179.loopexit ]
  %2349 = add i64 %2348, -1220
  %2350 = add i64 %2347, 6
  store i64 %2350, i64* %3, align 8
  %2351 = inttoptr i64 %2349 to i32*
  %2352 = load i32, i32* %2351, align 4
  %2353 = zext i32 %2352 to i64
  store i64 %2353, i64* %RAX.i2292, align 8
  %2354 = add i64 %2348, -784
  %2355 = add i64 %2347, 12
  store i64 %2355, i64* %3, align 8
  %2356 = inttoptr i64 %2354 to i32*
  %2357 = load i32, i32* %2356, align 4
  %2358 = sub i32 %2352, %2357
  %2359 = icmp ult i32 %2352, %2357
  %2360 = zext i1 %2359 to i8
  store i8 %2360, i8* %40, align 1
  %2361 = and i32 %2358, 255
  %2362 = tail call i32 @llvm.ctpop.i32(i32 %2361)
  %2363 = trunc i32 %2362 to i8
  %2364 = and i8 %2363, 1
  %2365 = xor i8 %2364, 1
  store i8 %2365, i8* %47, align 1
  %2366 = xor i32 %2357, %2352
  %2367 = xor i32 %2366, %2358
  %2368 = lshr i32 %2367, 4
  %2369 = trunc i32 %2368 to i8
  %2370 = and i8 %2369, 1
  store i8 %2370, i8* %53, align 1
  %2371 = icmp eq i32 %2358, 0
  %2372 = zext i1 %2371 to i8
  store i8 %2372, i8* %56, align 1
  %2373 = lshr i32 %2358, 31
  %2374 = trunc i32 %2373 to i8
  store i8 %2374, i8* %59, align 1
  %2375 = lshr i32 %2352, 31
  %2376 = lshr i32 %2357, 31
  %2377 = xor i32 %2376, %2375
  %2378 = xor i32 %2373, %2375
  %2379 = add nuw nsw i32 %2378, %2377
  %2380 = icmp eq i32 %2379, 2
  %2381 = zext i1 %2380 to i8
  store i8 %2381, i8* %65, align 1
  %.v350 = select i1 %2371, i64 18, i64 81
  %2382 = add i64 %2347, %.v350
  store i64 %2382, i64* %3, align 8
  br i1 %2371, label %block_45f18b, label %block_.L_45f1ca

block_45f18b:                                     ; preds = %block_.L_45f179
  %2383 = add i64 %2382, 7
  store i64 %2383, i64* %3, align 8
  %2384 = load i32, i32* %2356, align 4
  %2385 = add i32 %2384, -50
  %2386 = icmp ult i32 %2384, 50
  %2387 = zext i1 %2386 to i8
  store i8 %2387, i8* %40, align 1
  %2388 = and i32 %2385, 255
  %2389 = tail call i32 @llvm.ctpop.i32(i32 %2388)
  %2390 = trunc i32 %2389 to i8
  %2391 = and i8 %2390, 1
  %2392 = xor i8 %2391, 1
  store i8 %2392, i8* %47, align 1
  %2393 = xor i32 %2384, 16
  %2394 = xor i32 %2393, %2385
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  store i8 %2397, i8* %53, align 1
  %2398 = icmp eq i32 %2385, 0
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %56, align 1
  %2400 = lshr i32 %2385, 31
  %2401 = trunc i32 %2400 to i8
  store i8 %2401, i8* %59, align 1
  %2402 = lshr i32 %2384, 31
  %2403 = xor i32 %2400, %2402
  %2404 = add nuw nsw i32 %2403, %2402
  %2405 = icmp eq i32 %2404, 2
  %2406 = zext i1 %2405 to i8
  store i8 %2406, i8* %65, align 1
  %2407 = icmp ne i8 %2401, 0
  %2408 = xor i1 %2407, %2405
  %.v356 = select i1 %2408, i64 13, i64 63
  %2409 = add i64 %2382, %.v356
  store i64 %2409, i64* %3, align 8
  br i1 %2408, label %block_45f198, label %block_.L_45f1ca

block_45f198:                                     ; preds = %block_45f18b
  %2410 = add i64 %2348, -104
  %2411 = add i64 %2409, 3
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i32*
  %2413 = load i32, i32* %2412, align 4
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RAX.i2292, align 8
  %2415 = add i64 %2409, 10
  store i64 %2415, i64* %3, align 8
  %2416 = load i32, i32* %2356, align 4
  %2417 = sext i32 %2416 to i64
  store i64 %2417, i64* %RCX.i2272, align 8
  %2418 = shl nsw i64 %2417, 2
  %2419 = add i64 %2348, -1184
  %2420 = add i64 %2419, %2418
  %2421 = add i64 %2409, 17
  store i64 %2421, i64* %3, align 8
  %2422 = inttoptr i64 %2420 to i32*
  store i32 %2413, i32* %2422, align 4
  %2423 = load i64, i64* %RBP.i, align 8
  %2424 = add i64 %2423, -784
  %2425 = load i64, i64* %3, align 8
  %2426 = add i64 %2425, 7
  store i64 %2426, i64* %3, align 8
  %2427 = inttoptr i64 %2424 to i32*
  %2428 = load i32, i32* %2427, align 4
  %2429 = sext i32 %2428 to i64
  store i64 %2429, i64* %RCX.i2272, align 8
  %2430 = shl nsw i64 %2429, 2
  %2431 = add i64 %2423, -984
  %2432 = add i64 %2431, %2430
  %2433 = add i64 %2425, 18
  store i64 %2433, i64* %3, align 8
  %2434 = inttoptr i64 %2432 to i32*
  store i32 0, i32* %2434, align 4
  %2435 = load i64, i64* %RBP.i, align 8
  %2436 = add i64 %2435, -784
  %2437 = load i64, i64* %3, align 8
  %2438 = add i64 %2437, 6
  store i64 %2438, i64* %3, align 8
  %2439 = inttoptr i64 %2436 to i32*
  %2440 = load i32, i32* %2439, align 4
  %2441 = add i32 %2440, 1
  %2442 = zext i32 %2441 to i64
  store i64 %2442, i64* %RAX.i2292, align 8
  %2443 = icmp eq i32 %2440, -1
  %2444 = icmp eq i32 %2441, 0
  %2445 = or i1 %2443, %2444
  %2446 = zext i1 %2445 to i8
  store i8 %2446, i8* %40, align 1
  %2447 = and i32 %2441, 255
  %2448 = tail call i32 @llvm.ctpop.i32(i32 %2447)
  %2449 = trunc i32 %2448 to i8
  %2450 = and i8 %2449, 1
  %2451 = xor i8 %2450, 1
  store i8 %2451, i8* %47, align 1
  %2452 = xor i32 %2441, %2440
  %2453 = lshr i32 %2452, 4
  %2454 = trunc i32 %2453 to i8
  %2455 = and i8 %2454, 1
  store i8 %2455, i8* %53, align 1
  %2456 = zext i1 %2444 to i8
  store i8 %2456, i8* %56, align 1
  %2457 = lshr i32 %2441, 31
  %2458 = trunc i32 %2457 to i8
  store i8 %2458, i8* %59, align 1
  %2459 = lshr i32 %2440, 31
  %2460 = xor i32 %2457, %2459
  %2461 = add nuw nsw i32 %2460, %2457
  %2462 = icmp eq i32 %2461, 2
  %2463 = zext i1 %2462 to i8
  store i8 %2463, i8* %65, align 1
  %2464 = add i64 %2437, 15
  store i64 %2464, i64* %3, align 8
  store i32 %2441, i32* %2439, align 4
  %.pre234 = load i64, i64* %3, align 8
  %.pre235 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45f1ca

block_.L_45f1ca:                                  ; preds = %block_.L_45f179, %block_45f18b, %block_45f198
  %2465 = phi i64 [ %2348, %block_45f18b ], [ %.pre235, %block_45f198 ], [ %2348, %block_.L_45f179 ]
  %2466 = phi i64 [ %2409, %block_45f18b ], [ %.pre234, %block_45f198 ], [ %2382, %block_.L_45f179 ]
  %2467 = add i64 %2465, -88
  %2468 = add i64 %2466, 12
  store i64 %2468, i64* %3, align 8
  %2469 = inttoptr i64 %2467 to i32*
  store i32 0, i32* %2469, align 4
  %.pre236 = load i64, i64* %3, align 8
  br label %block_.L_45f1d6

block_.L_45f1d6:                                  ; preds = %block_.L_45f30a, %block_.L_45f1ca
  %2470 = phi i64 [ %.pre236, %block_.L_45f1ca ], [ %2906, %block_.L_45f30a ]
  %2471 = load i64, i64* %RBP.i, align 8
  %2472 = add i64 %2471, -88
  %2473 = add i64 %2470, 4
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i32*
  %2475 = load i32, i32* %2474, align 4
  %2476 = add i32 %2475, -4
  %2477 = icmp ult i32 %2475, 4
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %40, align 1
  %2479 = and i32 %2476, 255
  %2480 = tail call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  store i8 %2483, i8* %47, align 1
  %2484 = xor i32 %2476, %2475
  %2485 = lshr i32 %2484, 4
  %2486 = trunc i32 %2485 to i8
  %2487 = and i8 %2486, 1
  store i8 %2487, i8* %53, align 1
  %2488 = icmp eq i32 %2476, 0
  %2489 = zext i1 %2488 to i8
  store i8 %2489, i8* %56, align 1
  %2490 = lshr i32 %2476, 31
  %2491 = trunc i32 %2490 to i8
  store i8 %2491, i8* %59, align 1
  %2492 = lshr i32 %2475, 31
  %2493 = xor i32 %2490, %2492
  %2494 = add nuw nsw i32 %2493, %2492
  %2495 = icmp eq i32 %2494, 2
  %2496 = zext i1 %2495 to i8
  store i8 %2496, i8* %65, align 1
  %2497 = icmp ne i8 %2491, 0
  %2498 = xor i1 %2497, %2495
  %.v351 = select i1 %2498, i64 10, i64 327
  %2499 = add i64 %2470, %.v351
  store i64 %2499, i64* %3, align 8
  br i1 %2498, label %block_45f1e0, label %block_.L_45f31d

block_45f1e0:                                     ; preds = %block_.L_45f1d6
  %2500 = add i64 %2471, -104
  %2501 = add i64 %2499, 3
  store i64 %2501, i64* %3, align 8
  %2502 = inttoptr i64 %2500 to i32*
  %2503 = load i32, i32* %2502, align 4
  %2504 = zext i32 %2503 to i64
  store i64 %2504, i64* %RAX.i2292, align 8
  %2505 = add i64 %2499, 7
  store i64 %2505, i64* %3, align 8
  %2506 = load i32, i32* %2474, align 4
  %2507 = sext i32 %2506 to i64
  store i64 %2507, i64* %RCX.i2272, align 8
  %2508 = shl nsw i64 %2507, 2
  %2509 = add nsw i64 %2508, 8053168
  %2510 = add i64 %2499, 14
  store i64 %2510, i64* %3, align 8
  %2511 = inttoptr i64 %2509 to i32*
  %2512 = load i32, i32* %2511, align 4
  %2513 = add i32 %2512, %2503
  %2514 = zext i32 %2513 to i64
  store i64 %2514, i64* %RAX.i2292, align 8
  %2515 = icmp ult i32 %2513, %2503
  %2516 = icmp ult i32 %2513, %2512
  %2517 = or i1 %2515, %2516
  %2518 = zext i1 %2517 to i8
  store i8 %2518, i8* %40, align 1
  %2519 = and i32 %2513, 255
  %2520 = tail call i32 @llvm.ctpop.i32(i32 %2519)
  %2521 = trunc i32 %2520 to i8
  %2522 = and i8 %2521, 1
  %2523 = xor i8 %2522, 1
  store i8 %2523, i8* %47, align 1
  %2524 = xor i32 %2512, %2503
  %2525 = xor i32 %2524, %2513
  %2526 = lshr i32 %2525, 4
  %2527 = trunc i32 %2526 to i8
  %2528 = and i8 %2527, 1
  store i8 %2528, i8* %53, align 1
  %2529 = icmp eq i32 %2513, 0
  %2530 = zext i1 %2529 to i8
  store i8 %2530, i8* %56, align 1
  %2531 = lshr i32 %2513, 31
  %2532 = trunc i32 %2531 to i8
  store i8 %2532, i8* %59, align 1
  %2533 = lshr i32 %2503, 31
  %2534 = lshr i32 %2512, 31
  %2535 = xor i32 %2531, %2533
  %2536 = xor i32 %2531, %2534
  %2537 = add nuw nsw i32 %2535, %2536
  %2538 = icmp eq i32 %2537, 2
  %2539 = zext i1 %2538 to i8
  store i8 %2539, i8* %65, align 1
  %2540 = add i64 %2471, -1224
  %2541 = add i64 %2499, 20
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i32*
  store i32 %2513, i32* %2542, align 4
  %2543 = load i64, i64* %RBP.i, align 8
  %2544 = add i64 %2543, -1224
  %2545 = load i64, i64* %3, align 8
  %2546 = add i64 %2545, 7
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2544 to i32*
  %2548 = load i32, i32* %2547, align 4
  %2549 = sext i32 %2548 to i64
  store i64 %2549, i64* %RCX.i2272, align 8
  %2550 = add nsw i64 %2549, 12099168
  %2551 = add i64 %2545, 15
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2550 to i8*
  %2553 = load i8, i8* %2552, align 1
  %2554 = zext i8 %2553 to i64
  store i64 %2554, i64* %RAX.i2292, align 8
  %2555 = zext i8 %2553 to i32
  %2556 = add i64 %2543, -72
  %2557 = add i64 %2545, 18
  store i64 %2557, i64* %3, align 8
  %2558 = inttoptr i64 %2556 to i32*
  %2559 = load i32, i32* %2558, align 4
  %2560 = sub i32 %2555, %2559
  %2561 = icmp ult i32 %2555, %2559
  %2562 = zext i1 %2561 to i8
  store i8 %2562, i8* %40, align 1
  %2563 = and i32 %2560, 255
  %2564 = tail call i32 @llvm.ctpop.i32(i32 %2563)
  %2565 = trunc i32 %2564 to i8
  %2566 = and i8 %2565, 1
  %2567 = xor i8 %2566, 1
  store i8 %2567, i8* %47, align 1
  %2568 = xor i32 %2559, %2555
  %2569 = xor i32 %2568, %2560
  %2570 = lshr i32 %2569, 4
  %2571 = trunc i32 %2570 to i8
  %2572 = and i8 %2571, 1
  store i8 %2572, i8* %53, align 1
  %2573 = icmp eq i32 %2560, 0
  %2574 = zext i1 %2573 to i8
  store i8 %2574, i8* %56, align 1
  %2575 = lshr i32 %2560, 31
  %2576 = trunc i32 %2575 to i8
  store i8 %2576, i8* %59, align 1
  %2577 = lshr i32 %2559, 31
  %2578 = add nuw nsw i32 %2575, %2577
  %2579 = icmp eq i32 %2578, 2
  %2580 = zext i1 %2579 to i8
  store i8 %2580, i8* %65, align 1
  %.v352 = select i1 %2573, i64 24, i64 278
  %2581 = add i64 %2545, %.v352
  store i64 %2581, i64* %3, align 8
  br i1 %2573, label %block_45f20c, label %block_.L_45f30a

block_45f20c:                                     ; preds = %block_45f1e0
  store i64 1, i64* %RDX.i2074.pre-phi, align 8
  %2582 = add i64 %2543, -752
  store i64 %2582, i64* %RSI.i2284, align 8
  %2583 = add i64 %2581, 18
  store i64 %2583, i64* %3, align 8
  %2584 = load i32, i32* %2547, align 4
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RDI.i2235, align 8
  %2586 = add i64 %2581, -308716
  %2587 = add i64 %2581, 23
  %2588 = load i64, i64* %6, align 8
  %2589 = add i64 %2588, -8
  %2590 = inttoptr i64 %2589 to i64*
  store i64 %2587, i64* %2590, align 8
  store i64 %2589, i64* %6, align 8
  store i64 %2586, i64* %3, align 8
  %call2_45f21e = tail call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* nonnull %0, i64 %2586, %struct.Memory* %call2_45f0fd)
  %2591 = load i32, i32* %EAX.i2231, align 4
  %2592 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %2593 = and i32 %2591, 255
  %2594 = tail call i32 @llvm.ctpop.i32(i32 %2593)
  %2595 = trunc i32 %2594 to i8
  %2596 = and i8 %2595, 1
  %2597 = xor i8 %2596, 1
  store i8 %2597, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2598 = icmp eq i32 %2591, 0
  %2599 = zext i1 %2598 to i8
  store i8 %2599, i8* %56, align 1
  %2600 = lshr i32 %2591, 31
  %2601 = trunc i32 %2600 to i8
  store i8 %2601, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %2602 = icmp ne i8 %2601, 0
  %2603 = or i1 %2598, %2602
  %.v353 = select i1 %2603, i64 231, i64 9
  %2604 = add i64 %2592, %.v353
  store i64 %2604, i64* %3, align 8
  br i1 %2603, label %block_.L_45f30a, label %block_45f22c

block_45f22c:                                     ; preds = %block_45f20c
  store i64 1, i64* %RSI.i2284, align 8
  %2605 = load i64, i64* %RBP.i, align 8
  %2606 = add i64 %2605, -80
  store i64 %2606, i64* %RDX.i2074.pre-phi, align 8
  %2607 = add i64 %2605, -752
  %2608 = add i64 %2604, 15
  store i64 %2608, i64* %3, align 8
  %2609 = inttoptr i64 %2607 to i32*
  %2610 = load i32, i32* %2609, align 4
  %2611 = zext i32 %2610 to i64
  store i64 %2611, i64* %RDI.i2235, align 8
  %2612 = add i64 %2604, -326124
  %2613 = add i64 %2604, 20
  %2614 = load i64, i64* %6, align 8
  %2615 = add i64 %2614, -8
  %2616 = inttoptr i64 %2615 to i64*
  store i64 %2613, i64* %2616, align 8
  store i64 %2615, i64* %6, align 8
  store i64 %2612, i64* %3, align 8
  %call2_45f23b = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %2612, %struct.Memory* %call2_45f0fd)
  %2617 = load i64, i64* %RBP.i, align 8
  %2618 = add i64 %2617, -1444
  %2619 = load i32, i32* %EAX.i2231, align 4
  %2620 = load i64, i64* %3, align 8
  %2621 = add i64 %2620, 6
  store i64 %2621, i64* %3, align 8
  %2622 = inttoptr i64 %2618 to i32*
  store i32 %2619, i32* %2622, align 4
  %2623 = load i64, i64* %RBP.i, align 8
  %2624 = add i64 %2623, -1228
  %2625 = load i64, i64* %3, align 8
  %2626 = add i64 %2625, 10
  store i64 %2626, i64* %3, align 8
  %2627 = inttoptr i64 %2624 to i32*
  store i32 0, i32* %2627, align 4
  %.pre237 = load i64, i64* %3, align 8
  br label %block_.L_45f250

block_.L_45f250:                                  ; preds = %block_.L_45f296, %block_45f22c
  %2628 = phi i64 [ %2754, %block_.L_45f296 ], [ %.pre237, %block_45f22c ]
  %2629 = load i64, i64* %RBP.i, align 8
  %2630 = add i64 %2629, -1228
  %2631 = add i64 %2628, 6
  store i64 %2631, i64* %3, align 8
  %2632 = inttoptr i64 %2630 to i32*
  %2633 = load i32, i32* %2632, align 4
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RAX.i2292, align 8
  %2635 = add i64 %2629, -784
  %2636 = add i64 %2628, 12
  store i64 %2636, i64* %3, align 8
  %2637 = inttoptr i64 %2635 to i32*
  %2638 = load i32, i32* %2637, align 4
  %2639 = sub i32 %2633, %2638
  %2640 = icmp ult i32 %2633, %2638
  %2641 = zext i1 %2640 to i8
  store i8 %2641, i8* %40, align 1
  %2642 = and i32 %2639, 255
  %2643 = tail call i32 @llvm.ctpop.i32(i32 %2642)
  %2644 = trunc i32 %2643 to i8
  %2645 = and i8 %2644, 1
  %2646 = xor i8 %2645, 1
  store i8 %2646, i8* %47, align 1
  %2647 = xor i32 %2638, %2633
  %2648 = xor i32 %2647, %2639
  %2649 = lshr i32 %2648, 4
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  store i8 %2651, i8* %53, align 1
  %2652 = icmp eq i32 %2639, 0
  %2653 = zext i1 %2652 to i8
  store i8 %2653, i8* %56, align 1
  %2654 = lshr i32 %2639, 31
  %2655 = trunc i32 %2654 to i8
  store i8 %2655, i8* %59, align 1
  %2656 = lshr i32 %2633, 31
  %2657 = lshr i32 %2638, 31
  %2658 = xor i32 %2657, %2656
  %2659 = xor i32 %2654, %2656
  %2660 = add nuw nsw i32 %2659, %2658
  %2661 = icmp eq i32 %2660, 2
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %65, align 1
  %2663 = icmp ne i8 %2655, 0
  %2664 = xor i1 %2663, %2661
  %.v256 = select i1 %2664, i64 18, i64 95
  %2665 = add i64 %2628, %.v256
  store i64 %2665, i64* %3, align 8
  br i1 %2664, label %block_45f262, label %block_.L_45f2af.loopexit

block_45f262:                                     ; preds = %block_.L_45f250
  %2666 = add i64 %2665, 7
  store i64 %2666, i64* %3, align 8
  %2667 = load i32, i32* %2632, align 4
  %2668 = sext i32 %2667 to i64
  store i64 %2668, i64* %RAX.i2292, align 8
  %2669 = shl nsw i64 %2668, 2
  %2670 = add i64 %2629, -1184
  %2671 = add i64 %2670, %2669
  %2672 = add i64 %2665, 14
  store i64 %2672, i64* %3, align 8
  %2673 = inttoptr i64 %2671 to i32*
  %2674 = load i32, i32* %2673, align 4
  %2675 = zext i32 %2674 to i64
  store i64 %2675, i64* %RCX.i2272, align 8
  %2676 = add i64 %2629, -80
  %2677 = add i64 %2665, 17
  store i64 %2677, i64* %3, align 8
  %2678 = inttoptr i64 %2676 to i32*
  %2679 = load i32, i32* %2678, align 4
  %2680 = sub i32 %2674, %2679
  %2681 = icmp ult i32 %2674, %2679
  %2682 = zext i1 %2681 to i8
  store i8 %2682, i8* %40, align 1
  %2683 = and i32 %2680, 255
  %2684 = tail call i32 @llvm.ctpop.i32(i32 %2683)
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  %2687 = xor i8 %2686, 1
  store i8 %2687, i8* %47, align 1
  %2688 = xor i32 %2679, %2674
  %2689 = xor i32 %2688, %2680
  %2690 = lshr i32 %2689, 4
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  store i8 %2692, i8* %53, align 1
  %2693 = icmp eq i32 %2680, 0
  %2694 = zext i1 %2693 to i8
  store i8 %2694, i8* %56, align 1
  %2695 = lshr i32 %2680, 31
  %2696 = trunc i32 %2695 to i8
  store i8 %2696, i8* %59, align 1
  %2697 = lshr i32 %2674, 31
  %2698 = lshr i32 %2679, 31
  %2699 = xor i32 %2698, %2697
  %2700 = xor i32 %2695, %2697
  %2701 = add nuw nsw i32 %2700, %2699
  %2702 = icmp eq i32 %2701, 2
  %2703 = zext i1 %2702 to i8
  store i8 %2703, i8* %65, align 1
  %.v = select i1 %2693, i64 23, i64 52
  %2704 = add i64 %2665, %.v
  store i64 %2704, i64* %3, align 8
  br i1 %2693, label %block_45f279, label %block_.L_45f296

block_45f279:                                     ; preds = %block_45f262
  %2705 = add i64 %2704, 7
  store i64 %2705, i64* %3, align 8
  %2706 = load i32, i32* %2632, align 4
  %2707 = sext i32 %2706 to i64
  store i64 %2707, i64* %RAX.i2292, align 8
  %2708 = shl nsw i64 %2707, 2
  %2709 = add i64 %2629, -984
  %2710 = add i64 %2709, %2708
  %2711 = add i64 %2704, 14
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i32*
  %2713 = load i32, i32* %2712, align 4
  %2714 = zext i32 %2713 to i64
  store i64 %2714, i64* %RCX.i2272, align 8
  store i8 0, i8* %40, align 1
  %2715 = and i32 %2713, 255
  %2716 = tail call i32 @llvm.ctpop.i32(i32 %2715)
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = xor i8 %2718, 1
  store i8 %2719, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2720 = icmp eq i32 %2713, 0
  %2721 = zext i1 %2720 to i8
  store i8 %2721, i8* %56, align 1
  %2722 = lshr i32 %2713, 31
  %2723 = trunc i32 %2722 to i8
  store i8 %2723, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %2724 = add i64 %2704, 24
  store i64 %2724, i64* %3, align 8
  store i32 %2713, i32* %2712, align 4
  %2725 = load i64, i64* %3, align 8
  %2726 = add i64 %2725, 30
  store i64 %2726, i64* %3, align 8
  %.pre238 = load i64, i64* %RBP.i, align 8
  br label %block_.L_45f2af

block_.L_45f296:                                  ; preds = %block_45f262
  %2727 = add i64 %2704, 11
  store i64 %2727, i64* %3, align 8
  %2728 = load i32, i32* %2632, align 4
  %2729 = add i32 %2728, 1
  %2730 = zext i32 %2729 to i64
  store i64 %2730, i64* %RAX.i2292, align 8
  %2731 = icmp eq i32 %2728, -1
  %2732 = icmp eq i32 %2729, 0
  %2733 = or i1 %2731, %2732
  %2734 = zext i1 %2733 to i8
  store i8 %2734, i8* %40, align 1
  %2735 = and i32 %2729, 255
  %2736 = tail call i32 @llvm.ctpop.i32(i32 %2735)
  %2737 = trunc i32 %2736 to i8
  %2738 = and i8 %2737, 1
  %2739 = xor i8 %2738, 1
  store i8 %2739, i8* %47, align 1
  %2740 = xor i32 %2729, %2728
  %2741 = lshr i32 %2740, 4
  %2742 = trunc i32 %2741 to i8
  %2743 = and i8 %2742, 1
  store i8 %2743, i8* %53, align 1
  %2744 = zext i1 %2732 to i8
  store i8 %2744, i8* %56, align 1
  %2745 = lshr i32 %2729, 31
  %2746 = trunc i32 %2745 to i8
  store i8 %2746, i8* %59, align 1
  %2747 = lshr i32 %2728, 31
  %2748 = xor i32 %2745, %2747
  %2749 = add nuw nsw i32 %2748, %2745
  %2750 = icmp eq i32 %2749, 2
  %2751 = zext i1 %2750 to i8
  store i8 %2751, i8* %65, align 1
  %2752 = add i64 %2704, 20
  store i64 %2752, i64* %3, align 8
  store i32 %2729, i32* %2632, align 4
  %2753 = load i64, i64* %3, align 8
  %2754 = add i64 %2753, -90
  store i64 %2754, i64* %3, align 8
  br label %block_.L_45f250

block_.L_45f2af.loopexit:                         ; preds = %block_.L_45f250
  br label %block_.L_45f2af

block_.L_45f2af:                                  ; preds = %block_.L_45f2af.loopexit, %block_45f279
  %2755 = phi i64 [ %2726, %block_45f279 ], [ %2665, %block_.L_45f2af.loopexit ]
  %2756 = phi i64 [ %.pre238, %block_45f279 ], [ %2629, %block_.L_45f2af.loopexit ]
  %2757 = add i64 %2756, -1228
  %2758 = add i64 %2755, 6
  store i64 %2758, i64* %3, align 8
  %2759 = inttoptr i64 %2757 to i32*
  %2760 = load i32, i32* %2759, align 4
  %2761 = zext i32 %2760 to i64
  store i64 %2761, i64* %RAX.i2292, align 8
  %2762 = add i64 %2756, -784
  %2763 = add i64 %2755, 12
  store i64 %2763, i64* %3, align 8
  %2764 = inttoptr i64 %2762 to i32*
  %2765 = load i32, i32* %2764, align 4
  %2766 = sub i32 %2760, %2765
  %2767 = icmp ult i32 %2760, %2765
  %2768 = zext i1 %2767 to i8
  store i8 %2768, i8* %40, align 1
  %2769 = and i32 %2766, 255
  %2770 = tail call i32 @llvm.ctpop.i32(i32 %2769)
  %2771 = trunc i32 %2770 to i8
  %2772 = and i8 %2771, 1
  %2773 = xor i8 %2772, 1
  store i8 %2773, i8* %47, align 1
  %2774 = xor i32 %2765, %2760
  %2775 = xor i32 %2774, %2766
  %2776 = lshr i32 %2775, 4
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  store i8 %2778, i8* %53, align 1
  %2779 = icmp eq i32 %2766, 0
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %56, align 1
  %2781 = lshr i32 %2766, 31
  %2782 = trunc i32 %2781 to i8
  store i8 %2782, i8* %59, align 1
  %2783 = lshr i32 %2760, 31
  %2784 = lshr i32 %2765, 31
  %2785 = xor i32 %2784, %2783
  %2786 = xor i32 %2781, %2783
  %2787 = add nuw nsw i32 %2786, %2785
  %2788 = icmp eq i32 %2787, 2
  %2789 = zext i1 %2788 to i8
  store i8 %2789, i8* %65, align 1
  %.v354 = select i1 %2779, i64 18, i64 81
  %2790 = add i64 %2755, %.v354
  store i64 %2790, i64* %3, align 8
  br i1 %2779, label %block_45f2c1, label %block_.L_45f300

block_45f2c1:                                     ; preds = %block_.L_45f2af
  %2791 = add i64 %2790, 7
  store i64 %2791, i64* %3, align 8
  %2792 = load i32, i32* %2764, align 4
  %2793 = add i32 %2792, -50
  %2794 = icmp ult i32 %2792, 50
  %2795 = zext i1 %2794 to i8
  store i8 %2795, i8* %40, align 1
  %2796 = and i32 %2793, 255
  %2797 = tail call i32 @llvm.ctpop.i32(i32 %2796)
  %2798 = trunc i32 %2797 to i8
  %2799 = and i8 %2798, 1
  %2800 = xor i8 %2799, 1
  store i8 %2800, i8* %47, align 1
  %2801 = xor i32 %2792, 16
  %2802 = xor i32 %2801, %2793
  %2803 = lshr i32 %2802, 4
  %2804 = trunc i32 %2803 to i8
  %2805 = and i8 %2804, 1
  store i8 %2805, i8* %53, align 1
  %2806 = icmp eq i32 %2793, 0
  %2807 = zext i1 %2806 to i8
  store i8 %2807, i8* %56, align 1
  %2808 = lshr i32 %2793, 31
  %2809 = trunc i32 %2808 to i8
  store i8 %2809, i8* %59, align 1
  %2810 = lshr i32 %2792, 31
  %2811 = xor i32 %2808, %2810
  %2812 = add nuw nsw i32 %2811, %2810
  %2813 = icmp eq i32 %2812, 2
  %2814 = zext i1 %2813 to i8
  store i8 %2814, i8* %65, align 1
  %2815 = icmp ne i8 %2809, 0
  %2816 = xor i1 %2815, %2813
  %.v355 = select i1 %2816, i64 13, i64 63
  %2817 = add i64 %2790, %.v355
  store i64 %2817, i64* %3, align 8
  br i1 %2816, label %block_45f2ce, label %block_.L_45f300

block_45f2ce:                                     ; preds = %block_45f2c1
  %2818 = add i64 %2756, -80
  %2819 = add i64 %2817, 3
  store i64 %2819, i64* %3, align 8
  %2820 = inttoptr i64 %2818 to i32*
  %2821 = load i32, i32* %2820, align 4
  %2822 = zext i32 %2821 to i64
  store i64 %2822, i64* %RAX.i2292, align 8
  %2823 = add i64 %2817, 10
  store i64 %2823, i64* %3, align 8
  %2824 = load i32, i32* %2764, align 4
  %2825 = sext i32 %2824 to i64
  store i64 %2825, i64* %RCX.i2272, align 8
  %2826 = shl nsw i64 %2825, 2
  %2827 = add i64 %2756, -1184
  %2828 = add i64 %2827, %2826
  %2829 = add i64 %2817, 17
  store i64 %2829, i64* %3, align 8
  %2830 = inttoptr i64 %2828 to i32*
  store i32 %2821, i32* %2830, align 4
  %2831 = load i64, i64* %RBP.i, align 8
  %2832 = add i64 %2831, -784
  %2833 = load i64, i64* %3, align 8
  %2834 = add i64 %2833, 7
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2832 to i32*
  %2836 = load i32, i32* %2835, align 4
  %2837 = sext i32 %2836 to i64
  store i64 %2837, i64* %RCX.i2272, align 8
  %2838 = shl nsw i64 %2837, 2
  %2839 = add i64 %2831, -984
  %2840 = add i64 %2839, %2838
  %2841 = add i64 %2833, 18
  store i64 %2841, i64* %3, align 8
  %2842 = inttoptr i64 %2840 to i32*
  store i32 0, i32* %2842, align 4
  %2843 = load i64, i64* %RBP.i, align 8
  %2844 = add i64 %2843, -784
  %2845 = load i64, i64* %3, align 8
  %2846 = add i64 %2845, 6
  store i64 %2846, i64* %3, align 8
  %2847 = inttoptr i64 %2844 to i32*
  %2848 = load i32, i32* %2847, align 4
  %2849 = add i32 %2848, 1
  %2850 = zext i32 %2849 to i64
  store i64 %2850, i64* %RAX.i2292, align 8
  %2851 = icmp eq i32 %2848, -1
  %2852 = icmp eq i32 %2849, 0
  %2853 = or i1 %2851, %2852
  %2854 = zext i1 %2853 to i8
  store i8 %2854, i8* %40, align 1
  %2855 = and i32 %2849, 255
  %2856 = tail call i32 @llvm.ctpop.i32(i32 %2855)
  %2857 = trunc i32 %2856 to i8
  %2858 = and i8 %2857, 1
  %2859 = xor i8 %2858, 1
  store i8 %2859, i8* %47, align 1
  %2860 = xor i32 %2849, %2848
  %2861 = lshr i32 %2860, 4
  %2862 = trunc i32 %2861 to i8
  %2863 = and i8 %2862, 1
  store i8 %2863, i8* %53, align 1
  %2864 = zext i1 %2852 to i8
  store i8 %2864, i8* %56, align 1
  %2865 = lshr i32 %2849, 31
  %2866 = trunc i32 %2865 to i8
  store i8 %2866, i8* %59, align 1
  %2867 = lshr i32 %2848, 31
  %2868 = xor i32 %2865, %2867
  %2869 = add nuw nsw i32 %2868, %2865
  %2870 = icmp eq i32 %2869, 2
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %65, align 1
  %2872 = add i64 %2845, 15
  store i64 %2872, i64* %3, align 8
  store i32 %2849, i32* %2847, align 4
  %.pre239 = load i64, i64* %3, align 8
  br label %block_.L_45f300

block_.L_45f300:                                  ; preds = %block_.L_45f2af, %block_45f2c1, %block_45f2ce
  %2873 = phi i64 [ %2817, %block_45f2c1 ], [ %.pre239, %block_45f2ce ], [ %2790, %block_.L_45f2af ]
  %2874 = add i64 %2873, 10
  store i64 %2874, i64* %3, align 8
  br label %block_.L_45f30a

block_.L_45f30a:                                  ; preds = %block_45f1e0, %block_.L_45f300, %block_45f20c
  %2875 = phi i64 [ %2874, %block_.L_45f300 ], [ %2604, %block_45f20c ], [ %2581, %block_45f1e0 ]
  %2876 = load i64, i64* %RBP.i, align 8
  %2877 = add i64 %2876, -88
  %2878 = add i64 %2875, 8
  store i64 %2878, i64* %3, align 8
  %2879 = inttoptr i64 %2877 to i32*
  %2880 = load i32, i32* %2879, align 4
  %2881 = add i32 %2880, 1
  %2882 = zext i32 %2881 to i64
  store i64 %2882, i64* %RAX.i2292, align 8
  %2883 = icmp eq i32 %2880, -1
  %2884 = icmp eq i32 %2881, 0
  %2885 = or i1 %2883, %2884
  %2886 = zext i1 %2885 to i8
  store i8 %2886, i8* %40, align 1
  %2887 = and i32 %2881, 255
  %2888 = tail call i32 @llvm.ctpop.i32(i32 %2887)
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = xor i8 %2890, 1
  store i8 %2891, i8* %47, align 1
  %2892 = xor i32 %2881, %2880
  %2893 = lshr i32 %2892, 4
  %2894 = trunc i32 %2893 to i8
  %2895 = and i8 %2894, 1
  store i8 %2895, i8* %53, align 1
  %2896 = zext i1 %2884 to i8
  store i8 %2896, i8* %56, align 1
  %2897 = lshr i32 %2881, 31
  %2898 = trunc i32 %2897 to i8
  store i8 %2898, i8* %59, align 1
  %2899 = lshr i32 %2880, 31
  %2900 = xor i32 %2897, %2899
  %2901 = add nuw nsw i32 %2900, %2897
  %2902 = icmp eq i32 %2901, 2
  %2903 = zext i1 %2902 to i8
  store i8 %2903, i8* %65, align 1
  %2904 = add i64 %2875, 14
  store i64 %2904, i64* %3, align 8
  store i32 %2881, i32* %2879, align 4
  %2905 = load i64, i64* %3, align 8
  %2906 = add i64 %2905, -322
  store i64 %2906, i64* %3, align 8
  br label %block_.L_45f1d6

block_.L_45f31d:                                  ; preds = %block_.L_45f1d6
  %2907 = add i64 %2499, 5
  store i64 %2907, i64* %3, align 8
  br label %block_.L_45f322

block_.L_45f322:                                  ; preds = %block_45f0eb, %block_.L_45f0d7, %block_.L_45f31d
  %2908 = phi i64 [ %2174, %block_.L_45f0d7 ], [ %2215, %block_45f0eb ], [ %2907, %block_.L_45f31d ]
  %MEMORY.30 = phi %struct.Memory* [ %MEMORY.13, %block_.L_45f0d7 ], [ %call2_45f0fd, %block_45f0eb ], [ %call2_45f0fd, %block_.L_45f31d ]
  %2909 = load i64, i64* %RBP.i, align 8
  %2910 = add i64 %2909, -772
  %2911 = add i64 %2908, 11
  store i64 %2911, i64* %3, align 8
  %2912 = inttoptr i64 %2910 to i32*
  %2913 = load i32, i32* %2912, align 4
  %2914 = add i32 %2913, 1
  %2915 = zext i32 %2914 to i64
  store i64 %2915, i64* %RAX.i2292, align 8
  %2916 = icmp eq i32 %2913, -1
  %2917 = icmp eq i32 %2914, 0
  %2918 = or i1 %2916, %2917
  %2919 = zext i1 %2918 to i8
  store i8 %2919, i8* %40, align 1
  %2920 = and i32 %2914, 255
  %2921 = tail call i32 @llvm.ctpop.i32(i32 %2920)
  %2922 = trunc i32 %2921 to i8
  %2923 = and i8 %2922, 1
  %2924 = xor i8 %2923, 1
  store i8 %2924, i8* %47, align 1
  %2925 = xor i32 %2914, %2913
  %2926 = lshr i32 %2925, 4
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  store i8 %2928, i8* %53, align 1
  %2929 = zext i1 %2917 to i8
  store i8 %2929, i8* %56, align 1
  %2930 = lshr i32 %2914, 31
  %2931 = trunc i32 %2930 to i8
  store i8 %2931, i8* %59, align 1
  %2932 = lshr i32 %2913, 31
  %2933 = xor i32 %2930, %2932
  %2934 = add nuw nsw i32 %2933, %2930
  %2935 = icmp eq i32 %2934, 2
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %65, align 1
  %2937 = add i64 %2908, 20
  store i64 %2937, i64* %3, align 8
  store i32 %2914, i32* %2912, align 4
  %2938 = load i64, i64* %3, align 8
  %2939 = add i64 %2938, -1069
  store i64 %2939, i64* %3, align 8
  br label %block_.L_45ef09

block_.L_45f33b:                                  ; preds = %block_.L_45ef09
  %2940 = add i64 %1487, -776
  %2941 = add i64 %1515, 7
  store i64 %2941, i64* %3, align 8
  %2942 = inttoptr i64 %2940 to i32*
  %2943 = load i32, i32* %2942, align 4
  store i8 0, i8* %40, align 1
  %2944 = and i32 %2943, 255
  %2945 = tail call i32 @llvm.ctpop.i32(i32 %2944)
  %2946 = trunc i32 %2945 to i8
  %2947 = and i8 %2946, 1
  %2948 = xor i8 %2947, 1
  store i8 %2948, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %2949 = icmp eq i32 %2943, 0
  %2950 = zext i1 %2949 to i8
  store i8 %2950, i8* %56, align 1
  %2951 = lshr i32 %2943, 31
  %2952 = trunc i32 %2951 to i8
  store i8 %2952, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v274 = select i1 %2949, i64 13, i64 87
  %2953 = add i64 %1515, %.v274
  store i64 %2953, i64* %3, align 8
  br i1 %2949, label %block_45f348, label %block_.L_45f392

block_45f348:                                     ; preds = %block_.L_45f33b
  %2954 = add i64 %2953, 10
  store i64 %2954, i64* %3, align 8
  store i32 0, i32* %1490, align 4
  %.pre183 = load i64, i64* %3, align 8
  br label %block_.L_45f352

block_.L_45f352:                                  ; preds = %block_45f35f, %block_45f348
  %2955 = phi i64 [ %3037, %block_45f35f ], [ %.pre183, %block_45f348 ]
  %2956 = load i64, i64* %RBP.i, align 8
  %2957 = add i64 %2956, -772
  %2958 = add i64 %2955, 7
  store i64 %2958, i64* %3, align 8
  %2959 = inttoptr i64 %2957 to i32*
  %2960 = load i32, i32* %2959, align 4
  %2961 = add i32 %2960, -2
  %2962 = icmp ult i32 %2960, 2
  %2963 = zext i1 %2962 to i8
  store i8 %2963, i8* %40, align 1
  %2964 = and i32 %2961, 255
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964)
  %2966 = trunc i32 %2965 to i8
  %2967 = and i8 %2966, 1
  %2968 = xor i8 %2967, 1
  store i8 %2968, i8* %47, align 1
  %2969 = xor i32 %2961, %2960
  %2970 = lshr i32 %2969, 4
  %2971 = trunc i32 %2970 to i8
  %2972 = and i8 %2971, 1
  store i8 %2972, i8* %53, align 1
  %2973 = icmp eq i32 %2961, 0
  %2974 = zext i1 %2973 to i8
  store i8 %2974, i8* %56, align 1
  %2975 = lshr i32 %2961, 31
  %2976 = trunc i32 %2975 to i8
  store i8 %2976, i8* %59, align 1
  %2977 = lshr i32 %2960, 31
  %2978 = xor i32 %2975, %2977
  %2979 = add nuw nsw i32 %2978, %2977
  %2980 = icmp eq i32 %2979, 2
  %2981 = zext i1 %2980 to i8
  store i8 %2981, i8* %65, align 1
  %2982 = icmp ne i8 %2976, 0
  %2983 = xor i1 %2982, %2980
  %.v338 = select i1 %2983, i64 13, i64 59
  %2984 = add i64 %2955, %.v338
  store i64 %2984, i64* %3, align 8
  br i1 %2983, label %block_45f35f, label %block_.L_45f38d

block_45f35f:                                     ; preds = %block_.L_45f352
  %2985 = add i64 %2956, -1184
  store i64 %2985, i64* %RDX.i2074.pre-phi, align 8
  %2986 = add i64 %2956, -48
  %2987 = add i64 %2984, 10
  store i64 %2987, i64* %3, align 8
  %2988 = inttoptr i64 %2986 to i32*
  %2989 = load i32, i32* %2988, align 4
  %2990 = zext i32 %2989 to i64
  store i64 %2990, i64* %RDI.i2235, align 8
  %2991 = add i64 %2984, 17
  store i64 %2991, i64* %3, align 8
  %2992 = load i32, i32* %2959, align 4
  %2993 = sext i32 %2992 to i64
  store i64 %2993, i64* %RAX.i2292, align 8
  %2994 = shl nsw i64 %2993, 2
  %2995 = add i64 %2956, -96
  %2996 = add i64 %2995, %2994
  %2997 = add i64 %2984, 21
  store i64 %2997, i64* %3, align 8
  %2998 = inttoptr i64 %2996 to i32*
  %2999 = load i32, i32* %2998, align 4
  %3000 = zext i32 %2999 to i64
  store i64 %3000, i64* %RSI.i2284, align 8
  %3001 = add i64 %2984, 12433
  %3002 = add i64 %2984, 26
  %3003 = load i64, i64* %6, align 8
  %3004 = add i64 %3003, -8
  %3005 = inttoptr i64 %3004 to i64*
  store i64 %3002, i64* %3005, align 8
  store i64 %3004, i64* %6, align 8
  store i64 %3001, i64* %3, align 8
  %call2_45f374 = tail call %struct.Memory* @sub_4623f0.edge_block_moves(%struct.State* nonnull %0, i64 %3001, %struct.Memory* %MEMORY.13)
  %3006 = load i64, i64* %RBP.i, align 8
  %3007 = add i64 %3006, -772
  %3008 = load i64, i64* %3, align 8
  %3009 = add i64 %3008, 6
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3007 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = add i32 %3011, 1
  %3013 = zext i32 %3012 to i64
  store i64 %3013, i64* %RAX.i2292, align 8
  %3014 = icmp eq i32 %3011, -1
  %3015 = icmp eq i32 %3012, 0
  %3016 = or i1 %3014, %3015
  %3017 = zext i1 %3016 to i8
  store i8 %3017, i8* %40, align 1
  %3018 = and i32 %3012, 255
  %3019 = tail call i32 @llvm.ctpop.i32(i32 %3018)
  %3020 = trunc i32 %3019 to i8
  %3021 = and i8 %3020, 1
  %3022 = xor i8 %3021, 1
  store i8 %3022, i8* %47, align 1
  %3023 = xor i32 %3012, %3011
  %3024 = lshr i32 %3023, 4
  %3025 = trunc i32 %3024 to i8
  %3026 = and i8 %3025, 1
  store i8 %3026, i8* %53, align 1
  %3027 = zext i1 %3015 to i8
  store i8 %3027, i8* %56, align 1
  %3028 = lshr i32 %3012, 31
  %3029 = trunc i32 %3028 to i8
  store i8 %3029, i8* %59, align 1
  %3030 = lshr i32 %3011, 31
  %3031 = xor i32 %3028, %3030
  %3032 = add nuw nsw i32 %3031, %3028
  %3033 = icmp eq i32 %3032, 2
  %3034 = zext i1 %3033 to i8
  store i8 %3034, i8* %65, align 1
  %3035 = add i64 %3008, 15
  store i64 %3035, i64* %3, align 8
  store i32 %3012, i32* %3010, align 4
  %3036 = load i64, i64* %3, align 8
  %3037 = add i64 %3036, -54
  store i64 %3037, i64* %3, align 8
  br label %block_.L_45f352

block_.L_45f38d:                                  ; preds = %block_.L_45f352
  %3038 = add i64 %2984, 5
  store i64 %3038, i64* %3, align 8
  br label %block_.L_45f392

block_.L_45f392:                                  ; preds = %block_.L_45f33b, %block_.L_45f38d
  %3039 = phi i64 [ %2956, %block_.L_45f38d ], [ %1487, %block_.L_45f33b ]
  %3040 = phi i64 [ %3038, %block_.L_45f38d ], [ %2953, %block_.L_45f33b ]
  store i64 2, i64* %RDX.i2074.pre-phi, align 8
  %3041 = add i64 %3039, -752
  store i64 %3041, i64* %RSI.i2284, align 8
  %3042 = add i64 %3039, -48
  %3043 = add i64 %3040, 15
  store i64 %3043, i64* %3, align 8
  %3044 = inttoptr i64 %3042 to i32*
  %3045 = load i32, i32* %3044, align 4
  %3046 = zext i32 %3045 to i64
  store i64 %3046, i64* %RDI.i2235, align 8
  %3047 = add i64 %3040, -309106
  %3048 = add i64 %3040, 20
  %3049 = load i64, i64* %6, align 8
  %3050 = add i64 %3049, -8
  %3051 = inttoptr i64 %3050 to i64*
  store i64 %3048, i64* %3051, align 8
  store i64 %3050, i64* %6, align 8
  store i64 %3047, i64* %3, align 8
  %call2_45f3a1 = tail call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* nonnull %0, i64 %3047, %struct.Memory* %MEMORY.13)
  %3052 = load i64, i64* %RBP.i, align 8
  %3053 = add i64 %3052, -108
  %3054 = load i32, i32* %EAX.i2231, align 4
  %3055 = load i64, i64* %3, align 8
  %3056 = add i64 %3055, 3
  store i64 %3056, i64* %3, align 8
  %3057 = inttoptr i64 %3053 to i32*
  store i32 %3054, i32* %3057, align 4
  %3058 = load i64, i64* %RBP.i, align 8
  %3059 = add i64 %3058, -88
  %3060 = load i64, i64* %3, align 8
  %3061 = add i64 %3060, 7
  store i64 %3061, i64* %3, align 8
  %3062 = inttoptr i64 %3059 to i32*
  store i32 0, i32* %3062, align 4
  %.pre184 = load i64, i64* %3, align 8
  br label %block_.L_45f3b0

block_.L_45f3b0:                                  ; preds = %block_.L_45f40d, %block_.L_45f392
  %3063 = phi i64 [ %3214, %block_.L_45f40d ], [ %.pre184, %block_.L_45f392 ]
  %3064 = load i64, i64* %RBP.i, align 8
  %3065 = add i64 %3064, -88
  %3066 = add i64 %3063, 3
  store i64 %3066, i64* %3, align 8
  %3067 = inttoptr i64 %3065 to i32*
  %3068 = load i32, i32* %3067, align 4
  %3069 = zext i32 %3068 to i64
  store i64 %3069, i64* %RAX.i2292, align 8
  %3070 = add i64 %3064, -108
  %3071 = add i64 %3063, 6
  store i64 %3071, i64* %3, align 8
  %3072 = inttoptr i64 %3070 to i32*
  %3073 = load i32, i32* %3072, align 4
  %3074 = sub i32 %3068, %3073
  %3075 = icmp ult i32 %3068, %3073
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %40, align 1
  %3077 = and i32 %3074, 255
  %3078 = tail call i32 @llvm.ctpop.i32(i32 %3077)
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = xor i8 %3080, 1
  store i8 %3081, i8* %47, align 1
  %3082 = xor i32 %3073, %3068
  %3083 = xor i32 %3082, %3074
  %3084 = lshr i32 %3083, 4
  %3085 = trunc i32 %3084 to i8
  %3086 = and i8 %3085, 1
  store i8 %3086, i8* %53, align 1
  %3087 = icmp eq i32 %3074, 0
  %3088 = zext i1 %3087 to i8
  store i8 %3088, i8* %56, align 1
  %3089 = lshr i32 %3074, 31
  %3090 = trunc i32 %3089 to i8
  store i8 %3090, i8* %59, align 1
  %3091 = lshr i32 %3068, 31
  %3092 = lshr i32 %3073, 31
  %3093 = xor i32 %3092, %3091
  %3094 = xor i32 %3089, %3091
  %3095 = add nuw nsw i32 %3094, %3093
  %3096 = icmp eq i32 %3095, 2
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %65, align 1
  %3098 = icmp ne i8 %3090, 0
  %3099 = xor i1 %3098, %3096
  %.v275 = select i1 %3099, i64 12, i64 112
  %3100 = add i64 %3063, %.v275
  store i64 %3100, i64* %3, align 8
  br i1 %3099, label %block_45f3bc, label %block_.L_45f420

block_45f3bc:                                     ; preds = %block_.L_45f3b0
  %3101 = add i64 %3100, 4
  store i64 %3101, i64* %3, align 8
  %3102 = load i32, i32* %3067, align 4
  %3103 = sext i32 %3102 to i64
  store i64 %3103, i64* %RAX.i2292, align 8
  %3104 = shl nsw i64 %3103, 2
  %3105 = add i64 %3064, -752
  %3106 = add i64 %3105, %3104
  %3107 = add i64 %3100, 11
  store i64 %3107, i64* %3, align 8
  %3108 = inttoptr i64 %3106 to i32*
  %3109 = load i32, i32* %3108, align 4
  %3110 = zext i32 %3109 to i64
  store i64 %3110, i64* %RCX.i2272, align 8
  %3111 = add i64 %3064, -1232
  %3112 = add i64 %3100, 17
  store i64 %3112, i64* %3, align 8
  %3113 = inttoptr i64 %3111 to i32*
  store i32 %3109, i32* %3113, align 4
  %3114 = load i64, i64* %RBP.i, align 8
  %3115 = add i64 %3114, -96
  %3116 = load i64, i64* %3, align 8
  %3117 = add i64 %3116, 3
  store i64 %3117, i64* %3, align 8
  %3118 = inttoptr i64 %3115 to i32*
  %3119 = load i32, i32* %3118, align 4
  %3120 = zext i32 %3119 to i64
  store i64 %3120, i64* %RDI.i2235, align 8
  %3121 = add i64 %3114, -1232
  %3122 = add i64 %3116, 9
  store i64 %3122, i64* %3, align 8
  %3123 = inttoptr i64 %3121 to i32*
  %3124 = load i32, i32* %3123, align 4
  %3125 = zext i32 %3124 to i64
  store i64 %3125, i64* %RSI.i2284, align 8
  %3126 = add i64 %3116, -305437
  %3127 = add i64 %3116, 14
  %3128 = load i64, i64* %6, align 8
  %3129 = add i64 %3128, -8
  %3130 = inttoptr i64 %3129 to i64*
  store i64 %3127, i64* %3130, align 8
  store i64 %3129, i64* %6, align 8
  store i64 %3126, i64* %3, align 8
  %call2_45f3d6 = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %3126, %struct.Memory* %call2_45f3a1)
  %3131 = load i32, i32* %EAX.i2231, align 4
  %3132 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3133 = and i32 %3131, 255
  %3134 = tail call i32 @llvm.ctpop.i32(i32 %3133)
  %3135 = trunc i32 %3134 to i8
  %3136 = and i8 %3135, 1
  %3137 = xor i8 %3136, 1
  store i8 %3137, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3138 = icmp eq i32 %3131, 0
  %3139 = zext i1 %3138 to i8
  store i8 %3139, i8* %56, align 1
  %3140 = lshr i32 %3131, 31
  %3141 = trunc i32 %3140 to i8
  store i8 %3141, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v336 = select i1 %3138, i64 50, i64 9
  %3142 = add i64 %3132, %.v336
  store i64 %3142, i64* %3, align 8
  br i1 %3138, label %block_.L_45f40d, label %block_45f3e4

block_45f3e4:                                     ; preds = %block_45f3bc
  %3143 = load i64, i64* %RBP.i, align 8
  %3144 = add i64 %3143, -92
  %3145 = add i64 %3142, 3
  store i64 %3145, i64* %3, align 8
  %3146 = inttoptr i64 %3144 to i32*
  %3147 = load i32, i32* %3146, align 4
  %3148 = zext i32 %3147 to i64
  store i64 %3148, i64* %RDI.i2235, align 8
  %3149 = add i64 %3143, -1232
  %3150 = add i64 %3142, 9
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3149 to i32*
  %3152 = load i32, i32* %3151, align 4
  %3153 = zext i32 %3152 to i64
  store i64 %3153, i64* %RSI.i2284, align 8
  %3154 = add i64 %3142, -305460
  %3155 = add i64 %3142, 14
  %3156 = load i64, i64* %6, align 8
  %3157 = add i64 %3156, -8
  %3158 = inttoptr i64 %3157 to i64*
  store i64 %3155, i64* %3158, align 8
  store i64 %3157, i64* %6, align 8
  store i64 %3154, i64* %3, align 8
  %call2_45f3ed = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %3154, %struct.Memory* %call2_45f3a1)
  %3159 = load i32, i32* %EAX.i2231, align 4
  %3160 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3161 = and i32 %3159, 255
  %3162 = tail call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  store i8 %3165, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3166 = icmp eq i32 %3159, 0
  %3167 = zext i1 %3166 to i8
  store i8 %3167, i8* %56, align 1
  %3168 = lshr i32 %3159, 31
  %3169 = trunc i32 %3168 to i8
  store i8 %3169, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v337 = select i1 %3166, i64 27, i64 9
  %3170 = add i64 %3160, %.v337
  store i64 %3170, i64* %3, align 8
  br i1 %3166, label %block_.L_45f40d, label %block_45f3fb

block_45f3fb:                                     ; preds = %block_45f3e4
  %3171 = load i64, i64* %RBP.i, align 8
  %3172 = add i64 %3171, -1184
  store i64 %3172, i64* %RSI.i2284, align 8
  %3173 = add i64 %3171, -1232
  %3174 = add i64 %3170, 13
  store i64 %3174, i64* %3, align 8
  %3175 = inttoptr i64 %3173 to i32*
  %3176 = load i32, i32* %3175, align 4
  %3177 = zext i32 %3176 to i64
  store i64 %3177, i64* %RDI.i2235, align 8
  %3178 = add i64 %3170, 10645
  %3179 = add i64 %3170, 18
  %3180 = load i64, i64* %6, align 8
  %3181 = add i64 %3180, -8
  %3182 = inttoptr i64 %3181 to i64*
  store i64 %3179, i64* %3182, align 8
  store i64 %3181, i64* %6, align 8
  store i64 %3178, i64* %3, align 8
  %call2_45f408 = tail call %struct.Memory* @sub_461d90.break_chain_moves(%struct.State* nonnull %0, i64 %3178, %struct.Memory* %call2_45f3a1)
  %.pre226 = load i64, i64* %3, align 8
  br label %block_.L_45f40d

block_.L_45f40d:                                  ; preds = %block_45f3fb, %block_45f3e4, %block_45f3bc
  %3183 = phi i64 [ %.pre226, %block_45f3fb ], [ %3170, %block_45f3e4 ], [ %3142, %block_45f3bc ]
  %3184 = load i64, i64* %RBP.i, align 8
  %3185 = add i64 %3184, -88
  %3186 = add i64 %3183, 8
  store i64 %3186, i64* %3, align 8
  %3187 = inttoptr i64 %3185 to i32*
  %3188 = load i32, i32* %3187, align 4
  %3189 = add i32 %3188, 1
  %3190 = zext i32 %3189 to i64
  store i64 %3190, i64* %RAX.i2292, align 8
  %3191 = icmp eq i32 %3188, -1
  %3192 = icmp eq i32 %3189, 0
  %3193 = or i1 %3191, %3192
  %3194 = zext i1 %3193 to i8
  store i8 %3194, i8* %40, align 1
  %3195 = and i32 %3189, 255
  %3196 = tail call i32 @llvm.ctpop.i32(i32 %3195)
  %3197 = trunc i32 %3196 to i8
  %3198 = and i8 %3197, 1
  %3199 = xor i8 %3198, 1
  store i8 %3199, i8* %47, align 1
  %3200 = xor i32 %3189, %3188
  %3201 = lshr i32 %3200, 4
  %3202 = trunc i32 %3201 to i8
  %3203 = and i8 %3202, 1
  store i8 %3203, i8* %53, align 1
  %3204 = zext i1 %3192 to i8
  store i8 %3204, i8* %56, align 1
  %3205 = lshr i32 %3189, 31
  %3206 = trunc i32 %3205 to i8
  store i8 %3206, i8* %59, align 1
  %3207 = lshr i32 %3188, 31
  %3208 = xor i32 %3205, %3207
  %3209 = add nuw nsw i32 %3208, %3205
  %3210 = icmp eq i32 %3209, 2
  %3211 = zext i1 %3210 to i8
  store i8 %3211, i8* %65, align 1
  %3212 = add i64 %3183, 14
  store i64 %3212, i64* %3, align 8
  store i32 %3189, i32* %3187, align 4
  %3213 = load i64, i64* %3, align 8
  %3214 = add i64 %3213, -107
  store i64 %3214, i64* %3, align 8
  br label %block_.L_45f3b0

block_.L_45f420:                                  ; preds = %block_.L_45f3b0
  %3215 = add i64 %3064, -1184
  store i64 %3215, i64* %RCX.i2272, align 8
  %3216 = add i64 %3064, -96
  store i64 %3216, i64* %RSI.i2284, align 8
  %3217 = add i64 %3064, -48
  %3218 = add i64 %3100, 14
  store i64 %3218, i64* %3, align 8
  %3219 = inttoptr i64 %3217 to i32*
  %3220 = load i32, i32* %3219, align 4
  %3221 = zext i32 %3220 to i64
  store i64 %3221, i64* %RDI.i2235, align 8
  %3222 = add i64 %3064, -84
  %3223 = add i64 %3100, 17
  store i64 %3223, i64* %3, align 8
  %3224 = inttoptr i64 %3222 to i32*
  %3225 = load i32, i32* %3224, align 4
  %3226 = zext i32 %3225 to i64
  store i64 %3226, i64* %RDX.i2074.pre-phi, align 8
  %3227 = add i64 %3064, -72
  %3228 = add i64 %3100, 21
  store i64 %3228, i64* %3, align 8
  %3229 = inttoptr i64 %3227 to i32*
  %3230 = load i32, i32* %3229, align 4
  %3231 = zext i32 %3230 to i64
  store i64 %3231, i64* %68, align 8
  %3232 = add i64 %3100, 12944
  %3233 = add i64 %3100, 26
  %3234 = load i64, i64* %6, align 8
  %3235 = add i64 %3234, -8
  %3236 = inttoptr i64 %3235 to i64*
  store i64 %3233, i64* %3236, align 8
  store i64 %3235, i64* %6, align 8
  store i64 %3232, i64* %3, align 8
  %call2_45f435 = tail call %struct.Memory* @sub_4626b0.propose_edge_moves(%struct.State* nonnull %0, i64 %3232, %struct.Memory* %call2_45f3a1)
  %3237 = load i64, i64* %RBP.i, align 8
  %3238 = add i64 %3237, -1184
  %3239 = load i64, i64* %3, align 8
  store i64 %3238, i64* %RSI.i2284, align 8
  store i64 0, i64* %68, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  %3240 = add i64 %3237, -48
  %3241 = add i64 %3239, 13
  store i64 %3241, i64* %3, align 8
  %3242 = inttoptr i64 %3240 to i32*
  %3243 = load i32, i32* %3242, align 4
  %3244 = zext i32 %3243 to i64
  store i64 %3244, i64* %RDI.i2235, align 8
  %3245 = add i64 %3237, -72
  %3246 = add i64 %3239, 16
  store i64 %3246, i64* %3, align 8
  %3247 = inttoptr i64 %3245 to i32*
  %3248 = load i32, i32* %3247, align 4
  %3249 = zext i32 %3248 to i64
  store i64 %3249, i64* %RDX.i2074.pre-phi, align 8
  %3250 = add i64 %3237, -1200
  %3251 = add i64 %3239, 23
  store i64 %3251, i64* %3, align 8
  %3252 = inttoptr i64 %3250 to i64*
  %3253 = load i64, i64* %3252, align 8
  store i64 %3253, i64* %RCX.i2272, align 8
  %3254 = add i64 %3239, 14422
  %3255 = add i64 %3239, 28
  %3256 = load i64, i64* %6, align 8
  %3257 = add i64 %3256, -8
  %3258 = inttoptr i64 %3257 to i64*
  store i64 %3255, i64* %3258, align 8
  store i64 %3257, i64* %6, align 8
  store i64 %3254, i64* %3, align 8
  %call2_45f451 = tail call %struct.Memory* @sub_462c90.order_moves(%struct.State* nonnull %0, i64 %3254, %struct.Memory* %call2_45f435)
  %3259 = load i64, i64* %RBP.i, align 8
  %3260 = add i64 %3259, -772
  %3261 = load i64, i64* %3, align 8
  %3262 = add i64 %3261, 10
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3260 to i32*
  store i32 0, i32* %3263, align 4
  %AL.i1173 = bitcast %union.anon* %66 to i8*
  %CL.i1174 = bitcast %union.anon* %89 to i8*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1148 = bitcast %union.anon* %3264 to i32*
  %3265 = getelementptr inbounds %union.anon, %union.anon* %3264, i64 0, i32 0
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i1146 = bitcast %union.anon* %3266 to i32*
  %3267 = getelementptr inbounds %union.anon, %union.anon* %3266, i64 0, i32 0
  %ESI.i1136 = bitcast %union.anon* %75 to i32*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i1082 = bitcast %union.anon* %3268 to i32*
  %3269 = getelementptr inbounds %union.anon, %union.anon* %3268, i64 0, i32 0
  %EBX.i = bitcast %union.anon* %30 to i32*
  %3270 = bitcast i64* %6 to i64**
  %.pre185 = load i64, i64* %3, align 8
  br label %block_.L_45f460

block_.L_45f460:                                  ; preds = %block_.L_45f70f, %block_.L_45f420
  %3271 = phi i64 [ %.pre185, %block_.L_45f420 ], [ %3967, %block_.L_45f70f ]
  %MEMORY.35 = phi %struct.Memory* [ %call2_45f451, %block_.L_45f420 ], [ %MEMORY.44, %block_.L_45f70f ]
  %3272 = load i64, i64* %RBP.i, align 8
  %3273 = add i64 %3272, -772
  %3274 = add i64 %3271, 6
  store i64 %3274, i64* %3, align 8
  %3275 = inttoptr i64 %3273 to i32*
  %3276 = load i32, i32* %3275, align 4
  %3277 = zext i32 %3276 to i64
  store i64 %3277, i64* %RAX.i2292, align 8
  %3278 = add i64 %3272, -784
  %3279 = add i64 %3271, 12
  store i64 %3279, i64* %3, align 8
  %3280 = inttoptr i64 %3278 to i32*
  %3281 = load i32, i32* %3280, align 4
  %3282 = sub i32 %3276, %3281
  %3283 = icmp ult i32 %3276, %3281
  %3284 = zext i1 %3283 to i8
  store i8 %3284, i8* %40, align 1
  %3285 = and i32 %3282, 255
  %3286 = tail call i32 @llvm.ctpop.i32(i32 %3285)
  %3287 = trunc i32 %3286 to i8
  %3288 = and i8 %3287, 1
  %3289 = xor i8 %3288, 1
  store i8 %3289, i8* %47, align 1
  %3290 = xor i32 %3281, %3276
  %3291 = xor i32 %3290, %3282
  %3292 = lshr i32 %3291, 4
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  store i8 %3294, i8* %53, align 1
  %3295 = icmp eq i32 %3282, 0
  %3296 = zext i1 %3295 to i8
  store i8 %3296, i8* %56, align 1
  %3297 = lshr i32 %3282, 31
  %3298 = trunc i32 %3297 to i8
  store i8 %3298, i8* %59, align 1
  %3299 = lshr i32 %3276, 31
  %3300 = lshr i32 %3281, 31
  %3301 = xor i32 %3300, %3299
  %3302 = xor i32 %3297, %3299
  %3303 = add nuw nsw i32 %3302, %3301
  %3304 = icmp eq i32 %3303, 2
  %3305 = zext i1 %3304 to i8
  store i8 %3305, i8* %65, align 1
  %3306 = icmp ne i8 %3298, 0
  %3307 = xor i1 %3306, %3304
  %.v276 = select i1 %3307, i64 18, i64 712
  %3308 = add i64 %3271, %.v276
  store i64 %3308, i64* %3, align 8
  br i1 %3307, label %block_45f472, label %block_.L_45f728

block_45f472:                                     ; preds = %block_.L_45f460
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i8 0, i8* %CL.i1174, align 1
  %3309 = add i64 %3308, 11
  store i64 %3309, i64* %3, align 8
  %3310 = load i32, i32* %3275, align 4
  %3311 = sext i32 %3310 to i64
  store i64 %3311, i64* %RDX.i2074.pre-phi, align 8
  %3312 = shl nsw i64 %3311, 2
  %3313 = add i64 %3272, -1184
  %3314 = add i64 %3313, %3312
  %3315 = add i64 %3308, 18
  store i64 %3315, i64* %3, align 8
  %3316 = inttoptr i64 %3314 to i32*
  %3317 = load i32, i32* %3316, align 4
  %3318 = zext i32 %3317 to i64
  store i64 %3318, i64* %RAX.i2292, align 8
  %3319 = add i64 %3272, -1248
  %3320 = add i64 %3308, 24
  store i64 %3320, i64* %3, align 8
  %3321 = inttoptr i64 %3319 to i32*
  store i32 %3317, i32* %3321, align 4
  %3322 = load i64, i64* %RBP.i, align 8
  %3323 = add i64 %3322, -1248
  %3324 = load i64, i64* %3, align 8
  %3325 = add i64 %3324, 6
  store i64 %3325, i64* %3, align 8
  %3326 = inttoptr i64 %3323 to i32*
  %3327 = load i32, i32* %3326, align 4
  %3328 = zext i32 %3327 to i64
  store i64 %3328, i64* %RDI.i2235, align 8
  %3329 = add i64 %3322, -72
  %3330 = add i64 %3324, 9
  store i64 %3330, i64* %3, align 8
  %3331 = inttoptr i64 %3329 to i32*
  %3332 = load i32, i32* %3331, align 4
  %3333 = zext i32 %3332 to i64
  store i64 %3333, i64* %RSI.i2284, align 8
  %3334 = add i64 %3322, -48
  %3335 = add i64 %3324, 12
  store i64 %3335, i64* %3, align 8
  %3336 = inttoptr i64 %3334 to i32*
  %3337 = load i32, i32* %3336, align 4
  %3338 = zext i32 %3337 to i64
  store i64 %3338, i64* %RAX.i2292, align 8
  %3339 = add i64 %3322, -60
  %3340 = add i64 %3324, 16
  store i64 %3340, i64* %3, align 8
  %3341 = inttoptr i64 %3339 to i32*
  %3342 = load i32, i32* %3341, align 4
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %68, align 8
  %3344 = add i64 %3322, -64
  %3345 = add i64 %3324, 20
  store i64 %3345, i64* %3, align 8
  %3346 = inttoptr i64 %3344 to i32*
  %3347 = load i32, i32* %3346, align 4
  %3348 = zext i32 %3347 to i64
  store i64 %3348, i64* %3265, align 8
  %3349 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %3350 = zext i32 %3349 to i64
  store i64 %3350, i64* %3267, align 8
  %3351 = load i32, i32* bitcast (%G_0xb8b850_type* @G_0xb8b850 to i32*), align 8
  %3352 = sub i32 %3349, %3351
  %3353 = icmp ult i32 %3349, %3351
  %3354 = zext i1 %3353 to i8
  store i8 %3354, i8* %40, align 1
  %3355 = and i32 %3352, 255
  %3356 = tail call i32 @llvm.ctpop.i32(i32 %3355)
  %3357 = trunc i32 %3356 to i8
  %3358 = and i8 %3357, 1
  %3359 = xor i8 %3358, 1
  store i8 %3359, i8* %47, align 1
  %3360 = xor i32 %3351, %3349
  %3361 = xor i32 %3360, %3352
  %3362 = lshr i32 %3361, 4
  %3363 = trunc i32 %3362 to i8
  %3364 = and i8 %3363, 1
  store i8 %3364, i8* %53, align 1
  %3365 = icmp eq i32 %3352, 0
  %3366 = zext i1 %3365 to i8
  store i8 %3366, i8* %56, align 1
  %3367 = lshr i32 %3352, 31
  %3368 = trunc i32 %3367 to i8
  store i8 %3368, i8* %59, align 1
  %3369 = lshr i32 %3349, 31
  %3370 = lshr i32 %3351, 31
  %3371 = xor i32 %3370, %3369
  %3372 = xor i32 %3367, %3369
  %3373 = add nuw nsw i32 %3372, %3371
  %3374 = icmp eq i32 %3373, 2
  %3375 = zext i1 %3374 to i8
  store i8 %3375, i8* %65, align 1
  %3376 = add i64 %3322, -1448
  %3377 = add i64 %3324, 43
  store i64 %3377, i64* %3, align 8
  %3378 = inttoptr i64 %3376 to i32*
  store i32 %3347, i32* %3378, align 4
  %3379 = load i64, i64* %RBP.i, align 8
  %3380 = add i64 %3379, -1452
  %3381 = load i32, i32* %EDI.i2287, align 4
  %3382 = load i64, i64* %3, align 8
  %3383 = add i64 %3382, 6
  store i64 %3383, i64* %3, align 8
  %3384 = inttoptr i64 %3380 to i32*
  store i32 %3381, i32* %3384, align 4
  %3385 = load i64, i64* %RBP.i, align 8
  %3386 = add i64 %3385, -1456
  %3387 = load i32, i32* %ESI.i1136, align 4
  %3388 = load i64, i64* %3, align 8
  %3389 = add i64 %3388, 6
  store i64 %3389, i64* %3, align 8
  %3390 = inttoptr i64 %3386 to i32*
  store i32 %3387, i32* %3390, align 4
  %3391 = load i64, i64* %RBP.i, align 8
  %3392 = add i64 %3391, -1460
  %3393 = load i32, i32* %EAX.i2231, align 4
  %3394 = load i64, i64* %3, align 8
  %3395 = add i64 %3394, 6
  store i64 %3395, i64* %3, align 8
  %3396 = inttoptr i64 %3392 to i32*
  store i32 %3393, i32* %3396, align 4
  %3397 = load i64, i64* %RBP.i, align 8
  %3398 = add i64 %3397, -1464
  %3399 = load i32, i32* %R8D.i2290, align 4
  %3400 = load i64, i64* %3, align 8
  %3401 = add i64 %3400, 7
  store i64 %3401, i64* %3, align 8
  %3402 = inttoptr i64 %3398 to i32*
  store i32 %3399, i32* %3402, align 4
  %3403 = load i64, i64* %RBP.i, align 8
  %3404 = add i64 %3403, -1465
  %3405 = load i8, i8* %CL.i1174, align 1
  %3406 = load i64, i64* %3, align 8
  %3407 = add i64 %3406, 6
  store i64 %3407, i64* %3, align 8
  %3408 = inttoptr i64 %3404 to i8*
  store i8 %3405, i8* %3408, align 1
  %3409 = load i64, i64* %3, align 8
  %3410 = add i64 %3409, 22
  %3411 = add i64 %3409, 6
  %3412 = load i8, i8* %56, align 1
  %3413 = icmp eq i8 %3412, 0
  %3414 = load i8, i8* %59, align 1
  %3415 = icmp ne i8 %3414, 0
  %3416 = load i8, i8* %65, align 1
  %3417 = icmp ne i8 %3416, 0
  %3418 = xor i1 %3415, %3417
  %3419 = xor i1 %3418, true
  %3420 = and i1 %3413, %3419
  %3421 = select i1 %3420, i64 %3410, i64 %3411
  store i64 %3421, i64* %3, align 8
  br i1 %3420, label %block_.L_45f4ea, label %block_45f4da

block_45f4da:                                     ; preds = %block_45f472
  %3422 = load i64, i64* %RBP.i, align 8
  %3423 = add i64 %3422, -760
  %3424 = add i64 %3421, 7
  store i64 %3424, i64* %3, align 8
  %3425 = inttoptr i64 %3423 to i32*
  %3426 = load i32, i32* %3425, align 4
  store i8 0, i8* %40, align 1
  %3427 = and i32 %3426, 255
  %3428 = tail call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  store i8 %3431, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3432 = icmp eq i32 %3426, 0
  %3433 = zext i1 %3432 to i8
  store i8 %3433, i8* %56, align 1
  %3434 = lshr i32 %3426, 31
  %3435 = trunc i32 %3434 to i8
  store i8 %3435, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 %3433, i8* %AL.i1173, align 1
  %3436 = add i64 %3422, -1465
  %3437 = add i64 %3421, 16
  store i64 %3437, i64* %3, align 8
  %3438 = inttoptr i64 %3436 to i8*
  store i8 %3433, i8* %3438, align 1
  %.pre219 = load i64, i64* %3, align 8
  br label %block_.L_45f4ea

block_.L_45f4ea:                                  ; preds = %block_45f4da, %block_45f472
  %3439 = phi i64 [ %.pre219, %block_45f4da ], [ %3410, %block_45f472 ]
  %3440 = load i64, i64* %RBP.i, align 8
  %3441 = add i64 %3440, -1465
  %3442 = add i64 %3439, 6
  store i64 %3442, i64* %3, align 8
  %3443 = inttoptr i64 %3441 to i8*
  %3444 = load i8, i8* %3443, align 1
  store i64 ptrtoint (%G__0x57fe22_type* @G__0x57fe22 to i64), i64* %RDX.i2074.pre-phi, align 8
  %3445 = add i64 %3440, -1236
  store i64 %3445, i64* %RCX.i2272, align 8
  %3446 = add i64 %3440, -1240
  store i64 %3446, i64* %RSI.i2284, align 8
  %3447 = add i64 %3440, -1244
  store i64 %3447, i64* %RDI.i2235, align 8
  %3448 = and i8 %3444, 1
  store i8 %3448, i8* %AL.i1173, align 1
  store i8 0, i8* %40, align 1
  %3449 = zext i8 %3448 to i32
  %3450 = tail call i32 @llvm.ctpop.i32(i32 %3449)
  %3451 = trunc i32 %3450 to i8
  %3452 = xor i8 %3451, 1
  store i8 %3452, i8* %47, align 1
  %3453 = xor i8 %3448, 1
  store i8 %3453, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  %3454 = zext i8 %3448 to i64
  store i64 %3454, i64* %68, align 8
  %3455 = add i64 %3440, -1452
  %3456 = add i64 %3439, 50
  store i64 %3456, i64* %3, align 8
  %3457 = inttoptr i64 %3455 to i32*
  %3458 = load i32, i32* %3457, align 4
  %3459 = zext i32 %3458 to i64
  store i64 %3459, i64* %3265, align 8
  %3460 = add i64 %3440, -1480
  %3461 = add i64 %3439, 57
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3460 to i64*
  store i64 %3447, i64* %3462, align 8
  %3463 = load i32, i32* %R9D.i1148, align 4
  %3464 = zext i32 %3463 to i64
  %3465 = load i64, i64* %3, align 8
  store i64 %3464, i64* %RDI.i2235, align 8
  %3466 = load i64, i64* %RBP.i, align 8
  %3467 = add i64 %3466, -1456
  %3468 = add i64 %3465, 10
  store i64 %3468, i64* %3, align 8
  %3469 = inttoptr i64 %3467 to i32*
  %3470 = load i32, i32* %3469, align 4
  %3471 = zext i32 %3470 to i64
  store i64 %3471, i64* %3267, align 8
  %3472 = add i64 %3466, -1488
  %3473 = load i64, i64* %RSI.i2284, align 8
  %3474 = add i64 %3465, 17
  store i64 %3474, i64* %3, align 8
  %3475 = inttoptr i64 %3472 to i64*
  store i64 %3473, i64* %3475, align 8
  %3476 = load i32, i32* %R10D.i1146, align 4
  %3477 = zext i32 %3476 to i64
  %3478 = load i64, i64* %3, align 8
  store i64 %3477, i64* %RSI.i2284, align 8
  %3479 = load i64, i64* %RBP.i, align 8
  %3480 = add i64 %3479, -1460
  %3481 = add i64 %3478, 10
  store i64 %3481, i64* %3, align 8
  %3482 = inttoptr i64 %3480 to i32*
  %3483 = load i32, i32* %3482, align 4
  %3484 = zext i32 %3483 to i64
  store i64 %3484, i64* %3269, align 8
  %3485 = add i64 %3479, -1496
  %3486 = load i64, i64* %RCX.i2272, align 8
  %3487 = add i64 %3478, 17
  store i64 %3487, i64* %3, align 8
  %3488 = inttoptr i64 %3485 to i64*
  store i64 %3486, i64* %3488, align 8
  %3489 = load i32, i32* %R11D.i1082, align 4
  %3490 = zext i32 %3489 to i64
  %3491 = load i64, i64* %3, align 8
  store i64 %3490, i64* %RCX.i2272, align 8
  %3492 = load i64, i64* %RBP.i, align 8
  %3493 = add i64 %3492, -1464
  %3494 = add i64 %3491, 9
  store i64 %3494, i64* %3, align 8
  %3495 = inttoptr i64 %3493 to i32*
  %3496 = load i32, i32* %3495, align 4
  %3497 = zext i32 %3496 to i64
  store i64 %3497, i64* %RBX.i2186, align 8
  %3498 = add i64 %3492, -1500
  %3499 = load i32, i32* %R8D.i2290, align 4
  %3500 = add i64 %3491, 16
  store i64 %3500, i64* %3, align 8
  %3501 = inttoptr i64 %3498 to i32*
  store i32 %3499, i32* %3501, align 4
  %3502 = load i32, i32* %EBX.i, align 4
  %3503 = zext i32 %3502 to i64
  %3504 = load i64, i64* %3, align 8
  store i64 %3503, i64* %68, align 8
  %3505 = load i64, i64* %RBP.i, align 8
  %3506 = add i64 %3505, -1448
  %3507 = add i64 %3504, 10
  store i64 %3507, i64* %3, align 8
  %3508 = inttoptr i64 %3506 to i32*
  %3509 = load i32, i32* %3508, align 4
  %3510 = zext i32 %3509 to i64
  store i64 %3510, i64* %3265, align 8
  %3511 = add i64 %3505, -1496
  %3512 = add i64 %3504, 17
  store i64 %3512, i64* %3, align 8
  %3513 = inttoptr i64 %3511 to i64*
  %3514 = load i64, i64* %3513, align 8
  store i64 %3514, i64* %R14.i2097, align 8
  %3515 = load i64*, i64** %3270, align 8
  %3516 = add i64 %3504, 21
  store i64 %3516, i64* %3, align 8
  store i64 %3514, i64* %3515, align 8
  %3517 = load i64, i64* %RBP.i, align 8
  %3518 = add i64 %3517, -1488
  %3519 = load i64, i64* %3, align 8
  %3520 = add i64 %3519, 7
  store i64 %3520, i64* %3, align 8
  %3521 = inttoptr i64 %3518 to i64*
  %3522 = load i64, i64* %3521, align 8
  store i64 %3522, i64* %R15.i1848, align 8
  %3523 = load i64, i64* %6, align 8
  %3524 = add i64 %3523, 8
  %3525 = add i64 %3519, 12
  store i64 %3525, i64* %3, align 8
  %3526 = inttoptr i64 %3524 to i64*
  store i64 %3522, i64* %3526, align 8
  %3527 = load i64, i64* %RBP.i, align 8
  %3528 = add i64 %3527, -1480
  %3529 = load i64, i64* %3, align 8
  %3530 = add i64 %3529, 7
  store i64 %3530, i64* %3, align 8
  %3531 = inttoptr i64 %3528 to i64*
  %3532 = load i64, i64* %3531, align 8
  store i64 %3532, i64* %R12.i2169, align 8
  %3533 = load i64, i64* %6, align 8
  %3534 = add i64 %3533, 16
  %3535 = add i64 %3529, 12
  store i64 %3535, i64* %3, align 8
  %3536 = inttoptr i64 %3534 to i64*
  store i64 %3532, i64* %3536, align 8
  %3537 = load i64, i64* %RBP.i, align 8
  %3538 = add i64 %3537, -1500
  %3539 = load i64, i64* %3, align 8
  %3540 = add i64 %3539, 7
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3538 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = zext i32 %3542 to i64
  store i64 %3543, i64* %R13.i2114, align 8
  %3544 = load i64, i64* %6, align 8
  %3545 = add i64 %3544, 24
  %3546 = add i64 %3539, 12
  store i64 %3546, i64* %3, align 8
  %3547 = inttoptr i64 %3545 to i32*
  store i32 %3542, i32* %3547, align 4
  %3548 = load i64, i64* %3, align 8
  %3549 = add i64 %3548, -329630
  %3550 = add i64 %3548, 5
  %3551 = load i64, i64* %6, align 8
  %3552 = add i64 %3551, -8
  %3553 = inttoptr i64 %3552 to i64*
  store i64 %3550, i64* %3553, align 8
  store i64 %3552, i64* %6, align 8
  store i64 %3549, i64* %3, align 8
  %call2_45f58e = tail call %struct.Memory* @sub_40edf0.komaster_trymove(%struct.State* nonnull %0, i64 %3549, %struct.Memory* %MEMORY.35)
  %3554 = load i32, i32* %EAX.i2231, align 4
  %3555 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3556 = and i32 %3554, 255
  %3557 = tail call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  store i8 %3560, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3561 = icmp eq i32 %3554, 0
  %3562 = zext i1 %3561 to i8
  store i8 %3562, i8* %56, align 1
  %3563 = lshr i32 %3554, 31
  %3564 = trunc i32 %3563 to i8
  store i8 %3564, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v326 = select i1 %3561, i64 380, i64 9
  %3565 = add i64 %3555, %.v326
  store i64 %3565, i64* %3, align 8
  br i1 %3561, label %block_.L_45f70f, label %block_45f59c

block_45f59c:                                     ; preds = %block_.L_45f4ea
  %3566 = load i64, i64* %RBP.i, align 8
  %3567 = add i64 %3566, -1244
  %3568 = add i64 %3565, 7
  store i64 %3568, i64* %3, align 8
  %3569 = inttoptr i64 %3567 to i32*
  %3570 = load i32, i32* %3569, align 4
  %3571 = icmp eq i32 %3570, 0
  %.v327 = select i1 %3571, i64 13, i64 273
  %3572 = add i64 %3565, %.v327
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2284, align 8
  %3573 = add i64 %3566, -48
  %3574 = add i64 %3572, 7
  store i64 %3574, i64* %3, align 8
  %3575 = inttoptr i64 %3573 to i32*
  %3576 = load i32, i32* %3575, align 4
  %3577 = zext i32 %3576 to i64
  store i64 %3577, i64* %RDI.i2235, align 8
  %3578 = add i64 %3566, -1236
  %3579 = add i64 %3572, 13
  store i64 %3579, i64* %3, align 8
  %3580 = inttoptr i64 %3578 to i32*
  %3581 = load i32, i32* %3580, align 4
  %3582 = zext i32 %3581 to i64
  store i64 %3582, i64* %RDX.i2074.pre-phi, align 8
  %3583 = add i64 %3566, -1240
  %3584 = add i64 %3572, 19
  store i64 %3584, i64* %3, align 8
  %3585 = inttoptr i64 %3583 to i32*
  %3586 = load i32, i32* %3585, align 4
  %3587 = zext i32 %3586 to i64
  store i64 %3587, i64* %RCX.i2272, align 8
  br i1 %3571, label %block_45f5a9, label %block_.L_45f6ad

block_45f5a9:                                     ; preds = %block_45f59c
  %3588 = add i64 %3572, 16503
  %3589 = add i64 %3572, 24
  %3590 = load i64, i64* %6, align 8
  %3591 = add i64 %3590, -8
  %3592 = inttoptr i64 %3591 to i64*
  store i64 %3589, i64* %3592, align 8
  store i64 %3591, i64* %6, align 8
  store i64 %3588, i64* %3, align 8
  %call2_45f5bc = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %3588, %struct.Memory* %MEMORY.35)
  %3593 = load i64, i64* %RBP.i, align 8
  %3594 = add i64 %3593, -768
  %3595 = load i32, i32* %EAX.i2231, align 4
  %3596 = load i64, i64* %3, align 8
  %3597 = add i64 %3596, 6
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3594 to i32*
  store i32 %3595, i32* %3598, align 4
  %3599 = load i64, i64* %RBP.i, align 8
  %3600 = add i64 %3599, -768
  %3601 = load i64, i64* %3, align 8
  %3602 = add i64 %3601, 7
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3600 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = add i32 %3604, -5
  %3606 = icmp ult i32 %3604, 5
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %40, align 1
  %3608 = and i32 %3605, 255
  %3609 = tail call i32 @llvm.ctpop.i32(i32 %3608)
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  %3612 = xor i8 %3611, 1
  store i8 %3612, i8* %47, align 1
  %3613 = xor i32 %3605, %3604
  %3614 = lshr i32 %3613, 4
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  store i8 %3616, i8* %53, align 1
  %3617 = icmp eq i32 %3605, 0
  %3618 = zext i1 %3617 to i8
  store i8 %3618, i8* %56, align 1
  %3619 = lshr i32 %3605, 31
  %3620 = trunc i32 %3619 to i8
  store i8 %3620, i8* %59, align 1
  %3621 = lshr i32 %3604, 31
  %3622 = xor i32 %3619, %3621
  %3623 = add nuw nsw i32 %3622, %3621
  %3624 = icmp eq i32 %3623, 2
  %3625 = zext i1 %3624 to i8
  store i8 %3625, i8* %65, align 1
  %.v330 = select i1 %3617, i64 220, i64 13
  %3626 = add i64 %3601, %.v330
  store i64 %3626, i64* %3, align 8
  br i1 %3617, label %block_.L_45f6a3, label %block_45f5d4

block_45f5d4:                                     ; preds = %block_45f5a9
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2284, align 8
  %3627 = add i64 %3599, -48
  %3628 = add i64 %3626, 7
  store i64 %3628, i64* %3, align 8
  %3629 = inttoptr i64 %3627 to i32*
  %3630 = load i32, i32* %3629, align 4
  %3631 = zext i32 %3630 to i64
  store i64 %3631, i64* %RDI.i2235, align 8
  %3632 = add i64 %3599, -1236
  %3633 = add i64 %3626, 13
  store i64 %3633, i64* %3, align 8
  %3634 = inttoptr i64 %3632 to i32*
  %3635 = load i32, i32* %3634, align 4
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %RDX.i2074.pre-phi, align 8
  %3637 = add i64 %3599, -1240
  %3638 = add i64 %3626, 19
  store i64 %3638, i64* %3, align 8
  %3639 = inttoptr i64 %3637 to i32*
  %3640 = load i32, i32* %3639, align 4
  %3641 = zext i32 %3640 to i64
  store i64 %3641, i64* %RCX.i2272, align 8
  %3642 = add i64 %3626, -6388
  %3643 = add i64 %3626, 24
  %3644 = load i64, i64* %6, align 8
  %3645 = add i64 %3644, -8
  %3646 = inttoptr i64 %3645 to i64*
  store i64 %3643, i64* %3646, align 8
  store i64 %3645, i64* %6, align 8
  store i64 %3642, i64* %3, align 8
  %call2_45f5e7 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %3642, %struct.Memory* %MEMORY.35)
  %3647 = load i32, i32* %EAX.i2231, align 4
  %3648 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3649 = and i32 %3647, 255
  %3650 = tail call i32 @llvm.ctpop.i32(i32 %3649)
  %3651 = trunc i32 %3650 to i8
  %3652 = and i8 %3651, 1
  %3653 = xor i8 %3652, 1
  store i8 %3653, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3654 = icmp eq i32 %3647, 0
  %3655 = zext i1 %3654 to i8
  store i8 %3655, i8* %56, align 1
  %3656 = lshr i32 %3647, 31
  %3657 = trunc i32 %3656 to i8
  store i8 %3657, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v331 = select i1 %3654, i64 183, i64 9
  %3658 = add i64 %3648, %.v331
  store i64 %3658, i64* %3, align 8
  br i1 %3654, label %block_.L_45f6a3, label %block_45f5f5

block_45f5f5:                                     ; preds = %block_45f5d4
  %3659 = add i64 %3658, -333973
  %3660 = add i64 %3658, 5
  %3661 = load i64, i64* %6, align 8
  %3662 = add i64 %3661, -8
  %3663 = inttoptr i64 %3662 to i64*
  store i64 %3660, i64* %3663, align 8
  store i64 %3662, i64* %6, align 8
  store i64 %3659, i64* %3, align 8
  %call2_45f5f5 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3659, %struct.Memory* %MEMORY.35)
  %3664 = load i64, i64* %RBP.i, align 8
  %3665 = add i64 %3664, -768
  %3666 = load i64, i64* %3, align 8
  %3667 = add i64 %3666, 7
  store i64 %3667, i64* %3, align 8
  %3668 = inttoptr i64 %3665 to i32*
  %3669 = load i32, i32* %3668, align 4
  store i8 0, i8* %40, align 1
  %3670 = and i32 %3669, 255
  %3671 = tail call i32 @llvm.ctpop.i32(i32 %3670)
  %3672 = trunc i32 %3671 to i8
  %3673 = and i8 %3672, 1
  %3674 = xor i8 %3673, 1
  store i8 %3674, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3675 = icmp eq i32 %3669, 0
  %3676 = zext i1 %3675 to i8
  store i8 %3676, i8* %56, align 1
  %3677 = lshr i32 %3669, 31
  %3678 = trunc i32 %3677 to i8
  store i8 %3678, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v332 = select i1 %3675, i64 13, i64 102
  %3679 = add i64 %3666, %.v332
  store i64 %3679, i64* %3, align 8
  br i1 %3675, label %block_45f607, label %block_.L_45f660

block_45f607:                                     ; preds = %block_45f5f5
  %3680 = add i64 %3664, -56
  %3681 = add i64 %3679, 5
  store i64 %3681, i64* %3, align 8
  %3682 = inttoptr i64 %3680 to i64*
  %3683 = load i64, i64* %3682, align 8
  store i8 0, i8* %40, align 1
  %3684 = trunc i64 %3683 to i32
  %3685 = and i32 %3684, 255
  %3686 = tail call i32 @llvm.ctpop.i32(i32 %3685)
  %3687 = trunc i32 %3686 to i8
  %3688 = and i8 %3687, 1
  %3689 = xor i8 %3688, 1
  store i8 %3689, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3690 = icmp eq i64 %3683, 0
  %3691 = zext i1 %3690 to i8
  store i8 %3691, i8* %56, align 1
  %3692 = lshr i64 %3683, 63
  %3693 = trunc i64 %3692 to i8
  store i8 %3693, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v334 = select i1 %3690, i64 23, i64 11
  %3694 = add i64 %3679, %.v334
  store i64 %3694, i64* %3, align 8
  br i1 %3690, label %block_.L_45f61e, label %block_45f612

block_45f612:                                     ; preds = %block_45f607
  %3695 = add i64 %3664, -1248
  %3696 = add i64 %3694, 6
  store i64 %3696, i64* %3, align 8
  %3697 = inttoptr i64 %3695 to i32*
  %3698 = load i32, i32* %3697, align 4
  %3699 = zext i32 %3698 to i64
  store i64 %3699, i64* %RAX.i2292, align 8
  %3700 = add i64 %3694, 10
  store i64 %3700, i64* %3, align 8
  %3701 = load i64, i64* %3682, align 8
  store i64 %3701, i64* %RCX.i2272, align 8
  %3702 = add i64 %3694, 12
  store i64 %3702, i64* %3, align 8
  %3703 = inttoptr i64 %3701 to i32*
  store i32 %3698, i32* %3703, align 4
  %.pre220 = load i64, i64* %3, align 8
  br label %block_.L_45f61e

block_.L_45f61e:                                  ; preds = %block_45f612, %block_45f607
  %3704 = phi i64 [ %.pre220, %block_45f612 ], [ %3694, %block_45f607 ]
  %3705 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %3706 = trunc i64 %3705 to i32
  %3707 = and i32 %3706, 255
  %3708 = tail call i32 @llvm.ctpop.i32(i32 %3707)
  %3709 = trunc i32 %3708 to i8
  %3710 = and i8 %3709, 1
  %3711 = xor i8 %3710, 1
  store i8 %3711, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3712 = icmp eq i64 %3705, 0
  %3713 = zext i1 %3712 to i8
  store i8 %3713, i8* %56, align 1
  %3714 = lshr i64 %3705, 63
  %3715 = trunc i64 %3714 to i8
  store i8 %3715, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v335 = select i1 %3712, i64 54, i64 15
  %3716 = add i64 %3704, %.v335
  store i64 %3716, i64* %3, align 8
  br i1 %3712, label %block_.L_45f654, label %block_45f62d

block_45f62d:                                     ; preds = %block_.L_45f61e
  store i64 5, i64* %RCX.i2272, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %68, align 8
  %3717 = load i64, i64* %RBP.i, align 8
  %3718 = add i64 %3717, -1200
  %3719 = add i64 %3716, 22
  store i64 %3719, i64* %3, align 8
  %3720 = inttoptr i64 %3718 to i64*
  %3721 = load i64, i64* %3720, align 8
  store i64 %3721, i64* %RDI.i2235, align 8
  %3722 = add i64 %3717, -1204
  %3723 = add i64 %3716, 28
  store i64 %3723, i64* %3, align 8
  %3724 = inttoptr i64 %3722 to i32*
  %3725 = load i32, i32* %3724, align 4
  %3726 = zext i32 %3725 to i64
  store i64 %3726, i64* %RSI.i2284, align 8
  %3727 = add i64 %3717, -1248
  %3728 = add i64 %3716, 34
  store i64 %3728, i64* %3, align 8
  %3729 = inttoptr i64 %3727 to i32*
  %3730 = load i32, i32* %3729, align 4
  %3731 = zext i32 %3730 to i64
  store i64 %3731, i64* %RDX.i2074.pre-phi, align 8
  %3732 = add i64 %3716, -292461
  %3733 = add i64 %3716, 39
  %3734 = load i64, i64* %6, align 8
  %3735 = add i64 %3734, -8
  %3736 = inttoptr i64 %3735 to i64*
  store i64 %3733, i64* %3736, align 8
  store i64 %3735, i64* %6, align 8
  store i64 %3732, i64* %3, align 8
  %call2_45f64f = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %3732, %struct.Memory* %MEMORY.35)
  %.pre221 = load i64, i64* %3, align 8
  br label %block_.L_45f654

block_.L_45f654:                                  ; preds = %block_45f62d, %block_.L_45f61e
  %3737 = phi i64 [ %3716, %block_.L_45f61e ], [ %.pre221, %block_45f62d ]
  %MEMORY.38 = phi %struct.Memory* [ %MEMORY.35, %block_.L_45f61e ], [ %call2_45f64f, %block_45f62d ]
  %3738 = load i64, i64* %RBP.i, align 8
  %3739 = add i64 %3738, -44
  %3740 = add i64 %3737, 7
  store i64 %3740, i64* %3, align 8
  %3741 = inttoptr i64 %3739 to i32*
  store i32 5, i32* %3741, align 4
  %3742 = load i64, i64* %3, align 8
  %3743 = add i64 %3742, 2243
  store i64 %3743, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45f660:                                  ; preds = %block_45f5f5
  store i64 5, i64* %RAX.i2292, align 8
  %3744 = add i64 %3679, 11
  store i64 %3744, i64* %3, align 8
  %3745 = load i32, i32* %3668, align 4
  %3746 = sub i32 5, %3745
  %3747 = zext i32 %3746 to i64
  store i64 %3747, i64* %RAX.i2292, align 8
  %3748 = icmp ugt i32 %3745, 5
  %3749 = zext i1 %3748 to i8
  store i8 %3749, i8* %40, align 1
  %3750 = and i32 %3746, 255
  %3751 = tail call i32 @llvm.ctpop.i32(i32 %3750)
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  %3754 = xor i8 %3753, 1
  store i8 %3754, i8* %47, align 1
  %3755 = xor i32 %3746, %3745
  %3756 = lshr i32 %3755, 4
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  store i8 %3758, i8* %53, align 1
  %3759 = icmp eq i32 %3746, 0
  %3760 = zext i1 %3759 to i8
  store i8 %3760, i8* %56, align 1
  %3761 = lshr i32 %3746, 31
  %3762 = trunc i32 %3761 to i8
  store i8 %3762, i8* %59, align 1
  %3763 = lshr i32 %3745, 31
  %3764 = add nuw nsw i32 %3761, %3763
  %3765 = icmp eq i32 %3764, 2
  %3766 = zext i1 %3765 to i8
  store i8 %3766, i8* %65, align 1
  %3767 = add i64 %3664, -760
  %3768 = add i64 %3679, 17
  store i64 %3768, i64* %3, align 8
  %3769 = inttoptr i64 %3767 to i32*
  %3770 = load i32, i32* %3769, align 4
  %3771 = sub i32 %3746, %3770
  %3772 = icmp ult i32 %3746, %3770
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %40, align 1
  %3774 = and i32 %3771, 255
  %3775 = tail call i32 @llvm.ctpop.i32(i32 %3774)
  %3776 = trunc i32 %3775 to i8
  %3777 = and i8 %3776, 1
  %3778 = xor i8 %3777, 1
  store i8 %3778, i8* %47, align 1
  %3779 = xor i32 %3770, %3746
  %3780 = xor i32 %3779, %3771
  %3781 = lshr i32 %3780, 4
  %3782 = trunc i32 %3781 to i8
  %3783 = and i8 %3782, 1
  store i8 %3783, i8* %53, align 1
  %3784 = icmp eq i32 %3771, 0
  %3785 = zext i1 %3784 to i8
  store i8 %3785, i8* %56, align 1
  %3786 = lshr i32 %3771, 31
  %3787 = trunc i32 %3786 to i8
  store i8 %3787, i8* %59, align 1
  %3788 = lshr i32 %3770, 31
  %3789 = xor i32 %3788, %3761
  %3790 = xor i32 %3786, %3761
  %3791 = add nuw nsw i32 %3790, %3789
  %3792 = icmp eq i32 %3791, 2
  %3793 = zext i1 %3792 to i8
  store i8 %3793, i8* %65, align 1
  %3794 = icmp ne i8 %3787, 0
  %3795 = xor i1 %3794, %3792
  %3796 = or i1 %3784, %3795
  %.v333 = select i1 %3796, i64 52, i64 23
  %3797 = add i64 %3679, %.v333
  store i64 %3797, i64* %3, align 8
  br i1 %3796, label %block_.L_45f694, label %block_45f677

block_45f677:                                     ; preds = %block_.L_45f660
  store i64 5, i64* %RAX.i2292, align 8
  %3798 = add i64 %3664, -1248
  %3799 = add i64 %3797, 11
  store i64 %3799, i64* %3, align 8
  %3800 = inttoptr i64 %3798 to i32*
  %3801 = load i32, i32* %3800, align 4
  %3802 = zext i32 %3801 to i64
  store i64 %3802, i64* %RCX.i2272, align 8
  %3803 = add i64 %3664, -756
  %3804 = add i64 %3797, 17
  store i64 %3804, i64* %3, align 8
  %3805 = inttoptr i64 %3803 to i32*
  store i32 %3801, i32* %3805, align 4
  %3806 = load i64, i64* %RAX.i2292, align 8
  %3807 = load i64, i64* %RBP.i, align 8
  %3808 = add i64 %3807, -768
  %3809 = load i64, i64* %3, align 8
  %3810 = add i64 %3809, 6
  store i64 %3810, i64* %3, align 8
  %3811 = trunc i64 %3806 to i32
  %3812 = inttoptr i64 %3808 to i32*
  %3813 = load i32, i32* %3812, align 4
  %3814 = sub i32 %3811, %3813
  %3815 = zext i32 %3814 to i64
  store i64 %3815, i64* %RAX.i2292, align 8
  %3816 = icmp ult i32 %3811, %3813
  %3817 = zext i1 %3816 to i8
  store i8 %3817, i8* %40, align 1
  %3818 = and i32 %3814, 255
  %3819 = tail call i32 @llvm.ctpop.i32(i32 %3818)
  %3820 = trunc i32 %3819 to i8
  %3821 = and i8 %3820, 1
  %3822 = xor i8 %3821, 1
  store i8 %3822, i8* %47, align 1
  %3823 = xor i32 %3813, %3811
  %3824 = xor i32 %3823, %3814
  %3825 = lshr i32 %3824, 4
  %3826 = trunc i32 %3825 to i8
  %3827 = and i8 %3826, 1
  store i8 %3827, i8* %53, align 1
  %3828 = icmp eq i32 %3814, 0
  %3829 = zext i1 %3828 to i8
  store i8 %3829, i8* %56, align 1
  %3830 = lshr i32 %3814, 31
  %3831 = trunc i32 %3830 to i8
  store i8 %3831, i8* %59, align 1
  %3832 = lshr i32 %3811, 31
  %3833 = lshr i32 %3813, 31
  %3834 = xor i32 %3833, %3832
  %3835 = xor i32 %3830, %3832
  %3836 = add nuw nsw i32 %3835, %3834
  %3837 = icmp eq i32 %3836, 2
  %3838 = zext i1 %3837 to i8
  store i8 %3838, i8* %65, align 1
  %3839 = add i64 %3807, -760
  %3840 = add i64 %3809, 12
  store i64 %3840, i64* %3, align 8
  %3841 = inttoptr i64 %3839 to i32*
  store i32 %3814, i32* %3841, align 4
  %.pre222 = load i64, i64* %3, align 8
  br label %block_.L_45f694

block_.L_45f694:                                  ; preds = %block_45f677, %block_.L_45f660
  %3842 = phi i64 [ %.pre222, %block_45f677 ], [ %3797, %block_.L_45f660 ]
  %3843 = add i64 %3842, 20
  store i64 %3843, i64* %3, align 8
  br label %block_.L_45f6a8

block_.L_45f6a3:                                  ; preds = %block_45f5d4, %block_45f5a9
  %3844 = phi i64 [ %3658, %block_45f5d4 ], [ %3626, %block_45f5a9 ]
  %3845 = add i64 %3844, -334147
  %3846 = add i64 %3844, 5
  %3847 = load i64, i64* %6, align 8
  %3848 = add i64 %3847, -8
  %3849 = inttoptr i64 %3848 to i64*
  store i64 %3846, i64* %3849, align 8
  store i64 %3848, i64* %6, align 8
  store i64 %3845, i64* %3, align 8
  %call2_45f6a3 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3845, %struct.Memory* %MEMORY.35)
  %.pre223 = load i64, i64* %3, align 8
  br label %block_.L_45f6a8

block_.L_45f6a8:                                  ; preds = %block_.L_45f6a3, %block_.L_45f694
  %3850 = phi i64 [ %.pre223, %block_.L_45f6a3 ], [ %3843, %block_.L_45f694 ]
  %MEMORY.41 = phi %struct.Memory* [ %call2_45f6a3, %block_.L_45f6a3 ], [ %MEMORY.35, %block_.L_45f694 ]
  %3851 = add i64 %3850, 98
  store i64 %3851, i64* %3, align 8
  br label %block_.L_45f70a

block_.L_45f6ad:                                  ; preds = %block_45f59c
  %3852 = add i64 %3572, 16243
  %3853 = add i64 %3572, 24
  %3854 = load i64, i64* %6, align 8
  %3855 = add i64 %3854, -8
  %3856 = inttoptr i64 %3855 to i64*
  store i64 %3853, i64* %3856, align 8
  store i64 %3855, i64* %6, align 8
  store i64 %3852, i64* %3, align 8
  %call2_45f6c0 = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %3852, %struct.Memory* %MEMORY.35)
  %3857 = load i32, i32* %EAX.i2231, align 4
  %3858 = load i64, i64* %3, align 8
  %3859 = add i32 %3857, -5
  %3860 = icmp ult i32 %3857, 5
  %3861 = zext i1 %3860 to i8
  store i8 %3861, i8* %40, align 1
  %3862 = and i32 %3859, 255
  %3863 = tail call i32 @llvm.ctpop.i32(i32 %3862)
  %3864 = trunc i32 %3863 to i8
  %3865 = and i8 %3864, 1
  %3866 = xor i8 %3865, 1
  store i8 %3866, i8* %47, align 1
  %3867 = xor i32 %3859, %3857
  %3868 = lshr i32 %3867, 4
  %3869 = trunc i32 %3868 to i8
  %3870 = and i8 %3869, 1
  store i8 %3870, i8* %53, align 1
  %3871 = icmp eq i32 %3859, 0
  %3872 = zext i1 %3871 to i8
  store i8 %3872, i8* %56, align 1
  %3873 = lshr i32 %3859, 31
  %3874 = trunc i32 %3873 to i8
  store i8 %3874, i8* %59, align 1
  %3875 = lshr i32 %3857, 31
  %3876 = xor i32 %3873, %3875
  %3877 = add nuw nsw i32 %3876, %3875
  %3878 = icmp eq i32 %3877, 2
  %3879 = zext i1 %3878 to i8
  store i8 %3879, i8* %65, align 1
  %.v328 = select i1 %3871, i64 64, i64 9
  %3880 = add i64 %3858, %.v328
  store i64 %3880, i64* %3, align 8
  br i1 %3871, label %block_.L_45f705, label %block_45f6ce

block_45f6ce:                                     ; preds = %block_.L_45f6ad
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2284, align 8
  %3881 = load i64, i64* %RBP.i, align 8
  %3882 = add i64 %3881, -48
  %3883 = add i64 %3880, 7
  store i64 %3883, i64* %3, align 8
  %3884 = inttoptr i64 %3882 to i32*
  %3885 = load i32, i32* %3884, align 4
  %3886 = zext i32 %3885 to i64
  store i64 %3886, i64* %RDI.i2235, align 8
  %3887 = add i64 %3881, -1236
  %3888 = add i64 %3880, 13
  store i64 %3888, i64* %3, align 8
  %3889 = inttoptr i64 %3887 to i32*
  %3890 = load i32, i32* %3889, align 4
  %3891 = zext i32 %3890 to i64
  store i64 %3891, i64* %RDX.i2074.pre-phi, align 8
  %3892 = add i64 %3881, -1240
  %3893 = add i64 %3880, 19
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3892 to i32*
  %3895 = load i32, i32* %3894, align 4
  %3896 = zext i32 %3895 to i64
  store i64 %3896, i64* %RCX.i2272, align 8
  %3897 = add i64 %3880, -6638
  %3898 = add i64 %3880, 24
  %3899 = load i64, i64* %6, align 8
  %3900 = add i64 %3899, -8
  %3901 = inttoptr i64 %3900 to i64*
  store i64 %3898, i64* %3901, align 8
  store i64 %3900, i64* %6, align 8
  store i64 %3897, i64* %3, align 8
  %call2_45f6e1 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %3897, %struct.Memory* %MEMORY.35)
  %3902 = load i32, i32* %EAX.i2231, align 4
  %3903 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %3904 = and i32 %3902, 255
  %3905 = tail call i32 @llvm.ctpop.i32(i32 %3904)
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  %3908 = xor i8 %3907, 1
  store i8 %3908, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %3909 = icmp eq i32 %3902, 0
  %3910 = zext i1 %3909 to i8
  store i8 %3910, i8* %56, align 1
  %3911 = lshr i32 %3902, 31
  %3912 = trunc i32 %3911 to i8
  store i8 %3912, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v329 = select i1 %3909, i64 31, i64 9
  %3913 = add i64 %3903, %.v329
  store i64 %3913, i64* %3, align 8
  br i1 %3909, label %block_.L_45f705, label %block_45f6ef

block_45f6ef:                                     ; preds = %block_45f6ce
  %3914 = load i64, i64* %RBP.i, align 8
  %3915 = add i64 %3914, -1248
  %3916 = add i64 %3913, 6
  store i64 %3916, i64* %3, align 8
  %3917 = inttoptr i64 %3915 to i32*
  %3918 = load i32, i32* %3917, align 4
  %3919 = zext i32 %3918 to i64
  store i64 %3919, i64* %RAX.i2292, align 8
  %3920 = add i64 %3914, -756
  %3921 = add i64 %3913, 12
  store i64 %3921, i64* %3, align 8
  %3922 = inttoptr i64 %3920 to i32*
  store i32 %3918, i32* %3922, align 4
  %3923 = load i64, i64* %RBP.i, align 8
  %3924 = add i64 %3923, -760
  %3925 = load i64, i64* %3, align 8
  %3926 = add i64 %3925, 10
  store i64 %3926, i64* %3, align 8
  %3927 = inttoptr i64 %3924 to i32*
  store i32 1, i32* %3927, align 4
  %.pre224 = load i64, i64* %3, align 8
  br label %block_.L_45f705

block_.L_45f705:                                  ; preds = %block_45f6ef, %block_45f6ce, %block_.L_45f6ad
  %3928 = phi i64 [ %.pre224, %block_45f6ef ], [ %3913, %block_45f6ce ], [ %3880, %block_.L_45f6ad ]
  %3929 = add i64 %3928, -334245
  %3930 = add i64 %3928, 5
  %3931 = load i64, i64* %6, align 8
  %3932 = add i64 %3931, -8
  %3933 = inttoptr i64 %3932 to i64*
  store i64 %3930, i64* %3933, align 8
  store i64 %3932, i64* %6, align 8
  store i64 %3929, i64* %3, align 8
  %call2_45f705 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %3929, %struct.Memory* %MEMORY.35)
  %.pre225 = load i64, i64* %3, align 8
  br label %block_.L_45f70a

block_.L_45f70a:                                  ; preds = %block_.L_45f705, %block_.L_45f6a8
  %3934 = phi i64 [ %.pre225, %block_.L_45f705 ], [ %3851, %block_.L_45f6a8 ]
  %MEMORY.43 = phi %struct.Memory* [ %MEMORY.35, %block_.L_45f705 ], [ %MEMORY.41, %block_.L_45f6a8 ]
  %3935 = add i64 %3934, 5
  store i64 %3935, i64* %3, align 8
  br label %block_.L_45f70f

block_.L_45f70f:                                  ; preds = %block_.L_45f70a, %block_.L_45f4ea
  %3936 = phi i64 [ %3565, %block_.L_45f4ea ], [ %3935, %block_.L_45f70a ]
  %MEMORY.44 = phi %struct.Memory* [ %MEMORY.35, %block_.L_45f4ea ], [ %MEMORY.43, %block_.L_45f70a ]
  %3937 = load i64, i64* %RBP.i, align 8
  %3938 = add i64 %3937, -772
  %3939 = add i64 %3936, 11
  store i64 %3939, i64* %3, align 8
  %3940 = inttoptr i64 %3938 to i32*
  %3941 = load i32, i32* %3940, align 4
  %3942 = add i32 %3941, 1
  %3943 = zext i32 %3942 to i64
  store i64 %3943, i64* %RAX.i2292, align 8
  %3944 = icmp eq i32 %3941, -1
  %3945 = icmp eq i32 %3942, 0
  %3946 = or i1 %3944, %3945
  %3947 = zext i1 %3946 to i8
  store i8 %3947, i8* %40, align 1
  %3948 = and i32 %3942, 255
  %3949 = tail call i32 @llvm.ctpop.i32(i32 %3948)
  %3950 = trunc i32 %3949 to i8
  %3951 = and i8 %3950, 1
  %3952 = xor i8 %3951, 1
  store i8 %3952, i8* %47, align 1
  %3953 = xor i32 %3942, %3941
  %3954 = lshr i32 %3953, 4
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  store i8 %3956, i8* %53, align 1
  %3957 = zext i1 %3945 to i8
  store i8 %3957, i8* %56, align 1
  %3958 = lshr i32 %3942, 31
  %3959 = trunc i32 %3958 to i8
  store i8 %3959, i8* %59, align 1
  %3960 = lshr i32 %3941, 31
  %3961 = xor i32 %3958, %3960
  %3962 = add nuw nsw i32 %3961, %3958
  %3963 = icmp eq i32 %3962, 2
  %3964 = zext i1 %3963 to i8
  store i8 %3964, i8* %65, align 1
  %3965 = add i64 %3936, 20
  store i64 %3965, i64* %3, align 8
  store i32 %3942, i32* %3940, align 4
  %3966 = load i64, i64* %3, align 8
  %3967 = add i64 %3966, -707
  store i64 %3967, i64* %3, align 8
  br label %block_.L_45f460

block_.L_45f728:                                  ; preds = %block_.L_45f460
  %3968 = add i64 %3272, -80
  store i64 %3968, i64* %RCX.i2272, align 8
  %3969 = add i64 %3272, -48
  %3970 = add i64 %3308, 7
  store i64 %3970, i64* %3, align 8
  %3971 = inttoptr i64 %3969 to i32*
  %3972 = load i32, i32* %3971, align 4
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RDI.i2235, align 8
  %3974 = add i64 %3272, -96
  %3975 = add i64 %3308, 10
  store i64 %3975, i64* %3, align 8
  %3976 = inttoptr i64 %3974 to i32*
  %3977 = load i32, i32* %3976, align 4
  %3978 = zext i32 %3977 to i64
  store i64 %3978, i64* %RSI.i2284, align 8
  %3979 = add i64 %3272, -92
  %3980 = add i64 %3308, 13
  store i64 %3980, i64* %3, align 8
  %3981 = inttoptr i64 %3979 to i32*
  %3982 = load i32, i32* %3981, align 4
  %3983 = zext i32 %3982 to i64
  store i64 %3983, i64* %RDX.i2074.pre-phi, align 8
  %3984 = add i64 %3272, -60
  %3985 = add i64 %3308, 17
  store i64 %3985, i64* %3, align 8
  %3986 = inttoptr i64 %3984 to i32*
  %3987 = load i32, i32* %3986, align 4
  %3988 = zext i32 %3987 to i64
  store i64 %3988, i64* %68, align 8
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3990 = add i64 %3272, -64
  %3991 = add i64 %3308, 21
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to i32*
  %3993 = load i32, i32* %3992, align 4
  %3994 = zext i32 %3993 to i64
  store i64 %3994, i64* %3989, align 8
  %3995 = add i64 %3308, 17240
  %3996 = add i64 %3308, 26
  %3997 = load i64, i64* %6, align 8
  %3998 = add i64 %3997, -8
  %3999 = inttoptr i64 %3998 to i64*
  store i64 %3996, i64* %3999, align 8
  store i64 %3998, i64* %6, align 8
  store i64 %3995, i64* %3, align 8
  %call2_45f73d = tail call %struct.Memory* @sub_463a80.find_cap2(%struct.State* nonnull %0, i64 %3995, %struct.Memory* %MEMORY.35)
  %4000 = load i64, i64* %RBP.i, align 8
  %4001 = add i64 %4000, -764
  %4002 = load i32, i32* %EAX.i2231, align 4
  %4003 = load i64, i64* %3, align 8
  %4004 = add i64 %4003, 6
  store i64 %4004, i64* %3, align 8
  %4005 = inttoptr i64 %4001 to i32*
  store i32 %4002, i32* %4005, align 4
  %4006 = load i64, i64* %3, align 8
  store i64 5, i64* %RAX.i2292, align 8
  %4007 = load i64, i64* %RBP.i, align 8
  %4008 = add i64 %4007, -764
  %4009 = add i64 %4006, 11
  store i64 %4009, i64* %3, align 8
  %4010 = inttoptr i64 %4008 to i32*
  %4011 = load i32, i32* %4010, align 4
  %4012 = sub i32 5, %4011
  %4013 = zext i32 %4012 to i64
  store i64 %4013, i64* %RAX.i2292, align 8
  %4014 = and i32 %4012, 255
  %4015 = tail call i32 @llvm.ctpop.i32(i32 %4014)
  %4016 = trunc i32 %4015 to i8
  %4017 = and i8 %4016, 1
  %4018 = xor i8 %4017, 1
  %4019 = icmp eq i32 %4012, 0
  %4020 = zext i1 %4019 to i8
  %4021 = lshr i32 %4012, 31
  %4022 = trunc i32 %4021 to i8
  store i8 0, i8* %40, align 1
  store i8 %4018, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 %4020, i8* %56, align 1
  store i8 %4022, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v277 = select i1 %4019, i64 20, i64 103
  %4023 = add i64 %4006, %.v277
  store i64 %4023, i64* %3, align 8
  br i1 %4019, label %block_45f75c, label %block_.L_45f7af

block_45f75c:                                     ; preds = %block_.L_45f728
  %4024 = add i64 %4007, -56
  %4025 = add i64 %4023, 5
  store i64 %4025, i64* %3, align 8
  %4026 = inttoptr i64 %4024 to i64*
  %4027 = load i64, i64* %4026, align 8
  store i8 0, i8* %40, align 1
  %4028 = trunc i64 %4027 to i32
  %4029 = and i32 %4028, 255
  %4030 = tail call i32 @llvm.ctpop.i32(i32 %4029)
  %4031 = trunc i32 %4030 to i8
  %4032 = and i8 %4031, 1
  %4033 = xor i8 %4032, 1
  store i8 %4033, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4034 = icmp eq i64 %4027, 0
  %4035 = zext i1 %4034 to i8
  store i8 %4035, i8* %56, align 1
  %4036 = lshr i64 %4027, 63
  %4037 = trunc i64 %4036 to i8
  store i8 %4037, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v324 = select i1 %4034, i64 20, i64 11
  %4038 = add i64 %4023, %.v324
  store i64 %4038, i64* %3, align 8
  br i1 %4034, label %block_.L_45f770, label %block_45f767

block_45f767:                                     ; preds = %block_45f75c
  %4039 = add i64 %4007, -80
  %4040 = add i64 %4038, 3
  store i64 %4040, i64* %3, align 8
  %4041 = inttoptr i64 %4039 to i32*
  %4042 = load i32, i32* %4041, align 4
  %4043 = zext i32 %4042 to i64
  store i64 %4043, i64* %RAX.i2292, align 8
  %4044 = add i64 %4038, 7
  store i64 %4044, i64* %3, align 8
  %4045 = load i64, i64* %4026, align 8
  store i64 %4045, i64* %RCX.i2272, align 8
  %4046 = add i64 %4038, 9
  store i64 %4046, i64* %3, align 8
  %4047 = inttoptr i64 %4045 to i32*
  store i32 %4042, i32* %4047, align 4
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_45f770

block_.L_45f770:                                  ; preds = %block_45f767, %block_45f75c
  %4048 = phi i64 [ %.pre186, %block_45f767 ], [ %4038, %block_45f75c ]
  %4049 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4050 = trunc i64 %4049 to i32
  %4051 = and i32 %4050, 255
  %4052 = tail call i32 @llvm.ctpop.i32(i32 %4051)
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = xor i8 %4054, 1
  store i8 %4055, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4056 = icmp eq i64 %4049, 0
  %4057 = zext i1 %4056 to i8
  store i8 %4057, i8* %56, align 1
  %4058 = lshr i64 %4049, 63
  %4059 = trunc i64 %4058 to i8
  store i8 %4059, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v325 = select i1 %4056, i64 51, i64 15
  %4060 = add i64 %4048, %.v325
  store i64 %4060, i64* %3, align 8
  br i1 %4056, label %block_.L_45f7a3, label %block_45f77f

block_45f77f:                                     ; preds = %block_.L_45f770
  store i64 5, i64* %RCX.i2272, align 8
  store i64 ptrtoint (%G__0x57fe2c_type* @G__0x57fe2c to i64), i64* %68, align 8
  %4061 = load i64, i64* %RBP.i, align 8
  %4062 = add i64 %4061, -1200
  %4063 = add i64 %4060, 22
  store i64 %4063, i64* %3, align 8
  %4064 = inttoptr i64 %4062 to i64*
  %4065 = load i64, i64* %4064, align 8
  store i64 %4065, i64* %RDI.i2235, align 8
  %4066 = add i64 %4061, -1204
  %4067 = add i64 %4060, 28
  store i64 %4067, i64* %3, align 8
  %4068 = inttoptr i64 %4066 to i32*
  %4069 = load i32, i32* %4068, align 4
  %4070 = zext i32 %4069 to i64
  store i64 %4070, i64* %RSI.i2284, align 8
  %4071 = add i64 %4061, -80
  %4072 = add i64 %4060, 31
  store i64 %4072, i64* %3, align 8
  %4073 = inttoptr i64 %4071 to i32*
  %4074 = load i32, i32* %4073, align 4
  %4075 = zext i32 %4074 to i64
  store i64 %4075, i64* %RDX.i2074.pre-phi, align 8
  %4076 = add i64 %4060, -292799
  %4077 = add i64 %4060, 36
  %4078 = load i64, i64* %6, align 8
  %4079 = add i64 %4078, -8
  %4080 = inttoptr i64 %4079 to i64*
  store i64 %4077, i64* %4080, align 8
  store i64 %4079, i64* %6, align 8
  store i64 %4076, i64* %3, align 8
  %call2_45f79e = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4076, %struct.Memory* %call2_45f73d)
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_45f7a3

block_.L_45f7a3:                                  ; preds = %block_45f77f, %block_.L_45f770
  %4081 = phi i64 [ %4060, %block_.L_45f770 ], [ %.pre187, %block_45f77f ]
  %MEMORY.46 = phi %struct.Memory* [ %call2_45f73d, %block_.L_45f770 ], [ %call2_45f79e, %block_45f77f ]
  %4082 = load i64, i64* %RBP.i, align 8
  %4083 = add i64 %4082, -44
  %4084 = add i64 %4081, 7
  store i64 %4084, i64* %3, align 8
  %4085 = inttoptr i64 %4083 to i32*
  store i32 5, i32* %4085, align 4
  %4086 = load i64, i64* %3, align 8
  %4087 = add i64 %4086, 1908
  store i64 %4087, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45f7af:                                  ; preds = %block_.L_45f728
  store i64 5, i64* %RAX.i2292, align 8
  store i64 5, i64* %RCX.i2272, align 8
  %4088 = add i64 %4023, 13
  store i64 %4088, i64* %3, align 8
  %4089 = load i32, i32* %4010, align 4
  %4090 = sub i32 5, %4089
  %4091 = zext i32 %4090 to i64
  store i64 %4091, i64* %RCX.i2272, align 8
  %4092 = lshr i32 %4090, 31
  %4093 = lshr i32 %4089, 31
  %4094 = add nuw nsw i32 %4092, %4093
  %4095 = icmp eq i32 %4094, 2
  %4096 = zext i1 %4095 to i8
  %4097 = zext i32 %4089 to i64
  store i64 %4097, i64* %RAX.i2292, align 8
  %4098 = icmp ugt i32 %4090, 5
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %40, align 1
  %4100 = and i32 %4089, 255
  %4101 = tail call i32 @llvm.ctpop.i32(i32 %4100)
  %4102 = trunc i32 %4101 to i8
  %4103 = and i8 %4102, 1
  %4104 = xor i8 %4103, 1
  store i8 %4104, i8* %47, align 1
  %4105 = xor i32 %4090, %4089
  %4106 = lshr i32 %4105, 4
  %4107 = trunc i32 %4106 to i8
  %4108 = and i8 %4107, 1
  store i8 %4108, i8* %53, align 1
  %4109 = icmp eq i32 %4089, 0
  %4110 = zext i1 %4109 to i8
  store i8 %4110, i8* %56, align 1
  %4111 = trunc i32 %4093 to i8
  store i8 %4111, i8* %59, align 1
  store i8 %4096, i8* %65, align 1
  %4112 = add i64 %4007, -760
  %4113 = add i64 %4023, 21
  store i64 %4113, i64* %3, align 8
  %4114 = inttoptr i64 %4112 to i32*
  %4115 = load i32, i32* %4114, align 4
  %4116 = sub i32 %4089, %4115
  %4117 = icmp ult i32 %4089, %4115
  %4118 = zext i1 %4117 to i8
  store i8 %4118, i8* %40, align 1
  %4119 = and i32 %4116, 255
  %4120 = tail call i32 @llvm.ctpop.i32(i32 %4119)
  %4121 = trunc i32 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = xor i8 %4122, 1
  store i8 %4123, i8* %47, align 1
  %4124 = xor i32 %4115, %4089
  %4125 = xor i32 %4124, %4116
  %4126 = lshr i32 %4125, 4
  %4127 = trunc i32 %4126 to i8
  %4128 = and i8 %4127, 1
  store i8 %4128, i8* %53, align 1
  %4129 = icmp eq i32 %4116, 0
  %4130 = zext i1 %4129 to i8
  store i8 %4130, i8* %56, align 1
  %4131 = lshr i32 %4116, 31
  %4132 = trunc i32 %4131 to i8
  store i8 %4132, i8* %59, align 1
  %4133 = lshr i32 %4115, 31
  %4134 = xor i32 %4133, %4093
  %4135 = xor i32 %4131, %4093
  %4136 = add nuw nsw i32 %4135, %4134
  %4137 = icmp eq i32 %4136, 2
  %4138 = zext i1 %4137 to i8
  store i8 %4138, i8* %65, align 1
  %4139 = icmp ne i8 %4132, 0
  %4140 = xor i1 %4139, %4137
  %4141 = or i1 %4129, %4140
  %.v278 = select i1 %4141, i64 57, i64 27
  %4142 = add i64 %4023, %.v278
  store i64 %4142, i64* %3, align 8
  br i1 %4141, label %block_.L_45f7e8, label %block_45f7ca

block_45f7ca:                                     ; preds = %block_.L_45f7af
  store i64 5, i64* %RAX.i2292, align 8
  %4143 = load i64, i64* %RBP.i, align 8
  %4144 = add i64 %4143, -80
  %4145 = add i64 %4142, 8
  store i64 %4145, i64* %3, align 8
  %4146 = inttoptr i64 %4144 to i32*
  %4147 = load i32, i32* %4146, align 4
  %4148 = add i64 %4143, -756
  %4149 = add i64 %4142, 14
  store i64 %4149, i64* %3, align 8
  %4150 = inttoptr i64 %4148 to i32*
  store i32 %4147, i32* %4150, align 4
  %4151 = load i32, i32* %EAX.i2231, align 4
  %4152 = zext i32 %4151 to i64
  %4153 = load i64, i64* %3, align 8
  store i64 %4152, i64* %RCX.i2272, align 8
  %4154 = load i64, i64* %RBP.i, align 8
  %4155 = add i64 %4154, -764
  %4156 = add i64 %4153, 8
  store i64 %4156, i64* %3, align 8
  %4157 = inttoptr i64 %4155 to i32*
  %4158 = load i32, i32* %4157, align 4
  %4159 = sub i32 %4151, %4158
  %4160 = zext i32 %4159 to i64
  store i64 %4160, i64* %RCX.i2272, align 8
  %4161 = lshr i32 %4159, 31
  %4162 = load i64, i64* %RAX.i2292, align 8
  %4163 = trunc i64 %4162 to i32
  %4164 = sub i32 %4163, %4159
  %4165 = zext i32 %4164 to i64
  store i64 %4165, i64* %RAX.i2292, align 8
  %4166 = icmp ult i32 %4163, %4159
  %4167 = zext i1 %4166 to i8
  store i8 %4167, i8* %40, align 1
  %4168 = and i32 %4164, 255
  %4169 = tail call i32 @llvm.ctpop.i32(i32 %4168)
  %4170 = trunc i32 %4169 to i8
  %4171 = and i8 %4170, 1
  %4172 = xor i8 %4171, 1
  store i8 %4172, i8* %47, align 1
  %4173 = xor i64 %4160, %4162
  %4174 = trunc i64 %4173 to i32
  %4175 = xor i32 %4174, %4164
  %4176 = lshr i32 %4175, 4
  %4177 = trunc i32 %4176 to i8
  %4178 = and i8 %4177, 1
  store i8 %4178, i8* %53, align 1
  %4179 = icmp eq i32 %4164, 0
  %4180 = zext i1 %4179 to i8
  store i8 %4180, i8* %56, align 1
  %4181 = lshr i32 %4164, 31
  %4182 = trunc i32 %4181 to i8
  store i8 %4182, i8* %59, align 1
  %4183 = lshr i32 %4163, 31
  %4184 = xor i32 %4161, %4183
  %4185 = xor i32 %4181, %4183
  %4186 = add nuw nsw i32 %4185, %4184
  %4187 = icmp eq i32 %4186, 2
  %4188 = zext i1 %4187 to i8
  store i8 %4188, i8* %65, align 1
  %4189 = add i64 %4154, -760
  %4190 = add i64 %4153, 16
  store i64 %4190, i64* %3, align 8
  %4191 = inttoptr i64 %4189 to i32*
  store i32 %4164, i32* %4191, align 4
  %.pre188 = load i64, i64* %3, align 8
  br label %block_.L_45f7e8

block_.L_45f7e8:                                  ; preds = %block_45f7ca, %block_.L_45f7af
  %4192 = phi i64 [ %.pre188, %block_45f7ca ], [ %4142, %block_.L_45f7af ]
  %4193 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %4194 = zext i32 %4193 to i64
  store i64 %4194, i64* %RAX.i2292, align 8
  %4195 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %4196 = sub i32 %4193, %4195
  %4197 = icmp ult i32 %4193, %4195
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %40, align 1
  %4199 = and i32 %4196, 255
  %4200 = tail call i32 @llvm.ctpop.i32(i32 %4199)
  %4201 = trunc i32 %4200 to i8
  %4202 = and i8 %4201, 1
  %4203 = xor i8 %4202, 1
  store i8 %4203, i8* %47, align 1
  %4204 = xor i32 %4195, %4193
  %4205 = xor i32 %4204, %4196
  %4206 = lshr i32 %4205, 4
  %4207 = trunc i32 %4206 to i8
  %4208 = and i8 %4207, 1
  store i8 %4208, i8* %53, align 1
  %4209 = icmp eq i32 %4196, 0
  %4210 = zext i1 %4209 to i8
  store i8 %4210, i8* %56, align 1
  %4211 = lshr i32 %4196, 31
  %4212 = trunc i32 %4211 to i8
  store i8 %4212, i8* %59, align 1
  %4213 = lshr i32 %4193, 31
  %4214 = lshr i32 %4195, 31
  %4215 = xor i32 %4214, %4213
  %4216 = xor i32 %4211, %4213
  %4217 = add nuw nsw i32 %4216, %4215
  %4218 = icmp eq i32 %4217, 2
  %4219 = zext i1 %4218 to i8
  store i8 %4219, i8* %65, align 1
  %4220 = icmp ne i8 %4212, 0
  %4221 = xor i1 %4220, %4218
  %.demorgan = or i1 %4209, %4221
  %.v279 = select i1 %.demorgan, i64 30, i64 234
  %4222 = add i64 %4192, %.v279
  store i64 %4222, i64* %3, align 8
  br i1 %.demorgan, label %block_45f806, label %block_.L_45f8d2

block_45f806:                                     ; preds = %block_.L_45f7e8
  %4223 = load i64, i64* %RBP.i, align 8
  %4224 = add i64 %4223, -80
  store i64 %4224, i64* %RDX.i2074.pre-phi, align 8
  %4225 = add i64 %4223, -96
  store i64 %4225, i64* %RSI.i2284, align 8
  %4226 = add i64 %4223, -48
  %4227 = add i64 %4222, 11
  store i64 %4227, i64* %3, align 8
  %4228 = inttoptr i64 %4226 to i32*
  %4229 = load i32, i32* %4228, align 4
  %4230 = zext i32 %4229 to i64
  store i64 %4230, i64* %RDI.i2235, align 8
  %4231 = add i64 %4223, -60
  %4232 = add i64 %4222, 14
  store i64 %4232, i64* %3, align 8
  %4233 = inttoptr i64 %4231 to i32*
  %4234 = load i32, i32* %4233, align 4
  %4235 = zext i32 %4234 to i64
  store i64 %4235, i64* %RCX.i2272, align 8
  %4236 = add i64 %4223, -64
  %4237 = add i64 %4222, 18
  store i64 %4237, i64* %3, align 8
  %4238 = inttoptr i64 %4236 to i32*
  %4239 = load i32, i32* %4238, align 4
  %4240 = zext i32 %4239 to i64
  store i64 %4240, i64* %68, align 8
  %4241 = add i64 %4222, 41322
  %4242 = add i64 %4222, 23
  %4243 = load i64, i64* %6, align 8
  %4244 = add i64 %4243, -8
  %4245 = inttoptr i64 %4244 to i64*
  store i64 %4242, i64* %4245, align 8
  store i64 %4244, i64* %6, align 8
  store i64 %4241, i64* %3, align 8
  %call2_45f818 = tail call %struct.Memory* @sub_469970.special_attack2(%struct.State* nonnull %0, i64 %4241, %struct.Memory* %call2_45f73d)
  %4246 = load i64, i64* %RBP.i, align 8
  %4247 = add i64 %4246, -764
  %4248 = load i32, i32* %EAX.i2231, align 4
  %4249 = load i64, i64* %3, align 8
  %4250 = add i64 %4249, 6
  store i64 %4250, i64* %3, align 8
  %4251 = inttoptr i64 %4247 to i32*
  store i32 %4248, i32* %4251, align 4
  %4252 = load i64, i64* %3, align 8
  store i64 5, i64* %RAX.i2292, align 8
  %4253 = load i64, i64* %RBP.i, align 8
  %4254 = add i64 %4253, -764
  %4255 = add i64 %4252, 11
  store i64 %4255, i64* %3, align 8
  %4256 = inttoptr i64 %4254 to i32*
  %4257 = load i32, i32* %4256, align 4
  %4258 = sub i32 5, %4257
  %4259 = zext i32 %4258 to i64
  store i64 %4259, i64* %RAX.i2292, align 8
  %4260 = and i32 %4258, 255
  %4261 = tail call i32 @llvm.ctpop.i32(i32 %4260)
  %4262 = trunc i32 %4261 to i8
  %4263 = and i8 %4262, 1
  %4264 = xor i8 %4263, 1
  %4265 = icmp eq i32 %4258, 0
  %4266 = zext i1 %4265 to i8
  %4267 = lshr i32 %4258, 31
  %4268 = trunc i32 %4267 to i8
  store i8 0, i8* %40, align 1
  store i8 %4264, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 %4266, i8* %56, align 1
  store i8 %4268, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v320 = select i1 %4265, i64 20, i64 103
  %4269 = add i64 %4252, %.v320
  store i64 %4269, i64* %3, align 8
  br i1 %4265, label %block_45f837, label %block_.L_45f88a

block_45f837:                                     ; preds = %block_45f806
  %4270 = add i64 %4253, -56
  %4271 = add i64 %4269, 5
  store i64 %4271, i64* %3, align 8
  %4272 = inttoptr i64 %4270 to i64*
  %4273 = load i64, i64* %4272, align 8
  store i8 0, i8* %40, align 1
  %4274 = trunc i64 %4273 to i32
  %4275 = and i32 %4274, 255
  %4276 = tail call i32 @llvm.ctpop.i32(i32 %4275)
  %4277 = trunc i32 %4276 to i8
  %4278 = and i8 %4277, 1
  %4279 = xor i8 %4278, 1
  store i8 %4279, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4280 = icmp eq i64 %4273, 0
  %4281 = zext i1 %4280 to i8
  store i8 %4281, i8* %56, align 1
  %4282 = lshr i64 %4273, 63
  %4283 = trunc i64 %4282 to i8
  store i8 %4283, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v322 = select i1 %4280, i64 20, i64 11
  %4284 = add i64 %4269, %.v322
  store i64 %4284, i64* %3, align 8
  br i1 %4280, label %block_.L_45f84b, label %block_45f842

block_45f842:                                     ; preds = %block_45f837
  %4285 = add i64 %4253, -80
  %4286 = add i64 %4284, 3
  store i64 %4286, i64* %3, align 8
  %4287 = inttoptr i64 %4285 to i32*
  %4288 = load i32, i32* %4287, align 4
  %4289 = zext i32 %4288 to i64
  store i64 %4289, i64* %RAX.i2292, align 8
  %4290 = add i64 %4284, 7
  store i64 %4290, i64* %3, align 8
  %4291 = load i64, i64* %4272, align 8
  store i64 %4291, i64* %RCX.i2272, align 8
  %4292 = add i64 %4284, 9
  store i64 %4292, i64* %3, align 8
  %4293 = inttoptr i64 %4291 to i32*
  store i32 %4288, i32* %4293, align 4
  %.pre189 = load i64, i64* %3, align 8
  br label %block_.L_45f84b

block_.L_45f84b:                                  ; preds = %block_45f842, %block_45f837
  %4294 = phi i64 [ %.pre189, %block_45f842 ], [ %4284, %block_45f837 ]
  %4295 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4296 = trunc i64 %4295 to i32
  %4297 = and i32 %4296, 255
  %4298 = tail call i32 @llvm.ctpop.i32(i32 %4297)
  %4299 = trunc i32 %4298 to i8
  %4300 = and i8 %4299, 1
  %4301 = xor i8 %4300, 1
  store i8 %4301, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4302 = icmp eq i64 %4295, 0
  %4303 = zext i1 %4302 to i8
  store i8 %4303, i8* %56, align 1
  %4304 = lshr i64 %4295, 63
  %4305 = trunc i64 %4304 to i8
  store i8 %4305, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v323 = select i1 %4302, i64 51, i64 15
  %4306 = add i64 %4294, %.v323
  store i64 %4306, i64* %3, align 8
  br i1 %4302, label %block_.L_45f87e, label %block_45f85a

block_45f85a:                                     ; preds = %block_.L_45f84b
  store i64 5, i64* %RCX.i2272, align 8
  store i64 ptrtoint (%G__0x57fe36_type* @G__0x57fe36 to i64), i64* %68, align 8
  %4307 = load i64, i64* %RBP.i, align 8
  %4308 = add i64 %4307, -1200
  %4309 = add i64 %4306, 22
  store i64 %4309, i64* %3, align 8
  %4310 = inttoptr i64 %4308 to i64*
  %4311 = load i64, i64* %4310, align 8
  store i64 %4311, i64* %RDI.i2235, align 8
  %4312 = add i64 %4307, -1204
  %4313 = add i64 %4306, 28
  store i64 %4313, i64* %3, align 8
  %4314 = inttoptr i64 %4312 to i32*
  %4315 = load i32, i32* %4314, align 4
  %4316 = zext i32 %4315 to i64
  store i64 %4316, i64* %RSI.i2284, align 8
  %4317 = add i64 %4307, -80
  %4318 = add i64 %4306, 31
  store i64 %4318, i64* %3, align 8
  %4319 = inttoptr i64 %4317 to i32*
  %4320 = load i32, i32* %4319, align 4
  %4321 = zext i32 %4320 to i64
  store i64 %4321, i64* %RDX.i2074.pre-phi, align 8
  %4322 = add i64 %4306, -293018
  %4323 = add i64 %4306, 36
  %4324 = load i64, i64* %6, align 8
  %4325 = add i64 %4324, -8
  %4326 = inttoptr i64 %4325 to i64*
  store i64 %4323, i64* %4326, align 8
  store i64 %4325, i64* %6, align 8
  store i64 %4322, i64* %3, align 8
  %call2_45f879 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4322, %struct.Memory* %call2_45f818)
  %.pre190 = load i64, i64* %3, align 8
  br label %block_.L_45f87e

block_.L_45f87e:                                  ; preds = %block_45f85a, %block_.L_45f84b
  %4327 = phi i64 [ %4306, %block_.L_45f84b ], [ %.pre190, %block_45f85a ]
  %MEMORY.49 = phi %struct.Memory* [ %call2_45f818, %block_.L_45f84b ], [ %call2_45f879, %block_45f85a ]
  %4328 = load i64, i64* %RBP.i, align 8
  %4329 = add i64 %4328, -44
  %4330 = add i64 %4327, 7
  store i64 %4330, i64* %3, align 8
  %4331 = inttoptr i64 %4329 to i32*
  store i32 5, i32* %4331, align 4
  %4332 = load i64, i64* %3, align 8
  %4333 = add i64 %4332, 1689
  store i64 %4333, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45f88a:                                  ; preds = %block_45f806
  store i64 5, i64* %RAX.i2292, align 8
  store i64 5, i64* %RCX.i2272, align 8
  %4334 = add i64 %4269, 13
  store i64 %4334, i64* %3, align 8
  %4335 = load i32, i32* %4256, align 4
  %4336 = sub i32 5, %4335
  %4337 = zext i32 %4336 to i64
  store i64 %4337, i64* %RCX.i2272, align 8
  %4338 = lshr i32 %4336, 31
  %4339 = lshr i32 %4335, 31
  %4340 = add nuw nsw i32 %4338, %4339
  %4341 = icmp eq i32 %4340, 2
  %4342 = zext i1 %4341 to i8
  %4343 = zext i32 %4335 to i64
  store i64 %4343, i64* %RAX.i2292, align 8
  %4344 = icmp ugt i32 %4336, 5
  %4345 = zext i1 %4344 to i8
  store i8 %4345, i8* %40, align 1
  %4346 = and i32 %4335, 255
  %4347 = tail call i32 @llvm.ctpop.i32(i32 %4346)
  %4348 = trunc i32 %4347 to i8
  %4349 = and i8 %4348, 1
  %4350 = xor i8 %4349, 1
  store i8 %4350, i8* %47, align 1
  %4351 = xor i32 %4336, %4335
  %4352 = lshr i32 %4351, 4
  %4353 = trunc i32 %4352 to i8
  %4354 = and i8 %4353, 1
  store i8 %4354, i8* %53, align 1
  %4355 = icmp eq i32 %4335, 0
  %4356 = zext i1 %4355 to i8
  store i8 %4356, i8* %56, align 1
  %4357 = trunc i32 %4339 to i8
  store i8 %4357, i8* %59, align 1
  store i8 %4342, i8* %65, align 1
  %4358 = add i64 %4253, -760
  %4359 = add i64 %4269, 21
  store i64 %4359, i64* %3, align 8
  %4360 = inttoptr i64 %4358 to i32*
  %4361 = load i32, i32* %4360, align 4
  %4362 = sub i32 %4335, %4361
  %4363 = icmp ult i32 %4335, %4361
  %4364 = zext i1 %4363 to i8
  store i8 %4364, i8* %40, align 1
  %4365 = and i32 %4362, 255
  %4366 = tail call i32 @llvm.ctpop.i32(i32 %4365)
  %4367 = trunc i32 %4366 to i8
  %4368 = and i8 %4367, 1
  %4369 = xor i8 %4368, 1
  store i8 %4369, i8* %47, align 1
  %4370 = xor i32 %4361, %4335
  %4371 = xor i32 %4370, %4362
  %4372 = lshr i32 %4371, 4
  %4373 = trunc i32 %4372 to i8
  %4374 = and i8 %4373, 1
  store i8 %4374, i8* %53, align 1
  %4375 = icmp eq i32 %4362, 0
  %4376 = zext i1 %4375 to i8
  store i8 %4376, i8* %56, align 1
  %4377 = lshr i32 %4362, 31
  %4378 = trunc i32 %4377 to i8
  store i8 %4378, i8* %59, align 1
  %4379 = lshr i32 %4361, 31
  %4380 = xor i32 %4379, %4339
  %4381 = xor i32 %4377, %4339
  %4382 = add nuw nsw i32 %4381, %4380
  %4383 = icmp eq i32 %4382, 2
  %4384 = zext i1 %4383 to i8
  store i8 %4384, i8* %65, align 1
  %4385 = icmp ne i8 %4378, 0
  %4386 = xor i1 %4385, %4383
  %4387 = or i1 %4375, %4386
  %.v321 = select i1 %4387, i64 57, i64 27
  %4388 = add i64 %4269, %.v321
  store i64 %4388, i64* %3, align 8
  br i1 %4387, label %block_.L_45f8c3, label %block_45f8a5

block_45f8a5:                                     ; preds = %block_.L_45f88a
  store i64 5, i64* %RAX.i2292, align 8
  %4389 = load i64, i64* %RBP.i, align 8
  %4390 = add i64 %4389, -80
  %4391 = add i64 %4388, 8
  store i64 %4391, i64* %3, align 8
  %4392 = inttoptr i64 %4390 to i32*
  %4393 = load i32, i32* %4392, align 4
  %4394 = add i64 %4389, -756
  %4395 = add i64 %4388, 14
  store i64 %4395, i64* %3, align 8
  %4396 = inttoptr i64 %4394 to i32*
  store i32 %4393, i32* %4396, align 4
  %4397 = load i32, i32* %EAX.i2231, align 4
  %4398 = zext i32 %4397 to i64
  %4399 = load i64, i64* %3, align 8
  store i64 %4398, i64* %RCX.i2272, align 8
  %4400 = load i64, i64* %RBP.i, align 8
  %4401 = add i64 %4400, -764
  %4402 = add i64 %4399, 8
  store i64 %4402, i64* %3, align 8
  %4403 = inttoptr i64 %4401 to i32*
  %4404 = load i32, i32* %4403, align 4
  %4405 = sub i32 %4397, %4404
  %4406 = zext i32 %4405 to i64
  store i64 %4406, i64* %RCX.i2272, align 8
  %4407 = lshr i32 %4405, 31
  %4408 = load i64, i64* %RAX.i2292, align 8
  %4409 = trunc i64 %4408 to i32
  %4410 = sub i32 %4409, %4405
  %4411 = zext i32 %4410 to i64
  store i64 %4411, i64* %RAX.i2292, align 8
  %4412 = icmp ult i32 %4409, %4405
  %4413 = zext i1 %4412 to i8
  store i8 %4413, i8* %40, align 1
  %4414 = and i32 %4410, 255
  %4415 = tail call i32 @llvm.ctpop.i32(i32 %4414)
  %4416 = trunc i32 %4415 to i8
  %4417 = and i8 %4416, 1
  %4418 = xor i8 %4417, 1
  store i8 %4418, i8* %47, align 1
  %4419 = xor i64 %4406, %4408
  %4420 = trunc i64 %4419 to i32
  %4421 = xor i32 %4420, %4410
  %4422 = lshr i32 %4421, 4
  %4423 = trunc i32 %4422 to i8
  %4424 = and i8 %4423, 1
  store i8 %4424, i8* %53, align 1
  %4425 = icmp eq i32 %4410, 0
  %4426 = zext i1 %4425 to i8
  store i8 %4426, i8* %56, align 1
  %4427 = lshr i32 %4410, 31
  %4428 = trunc i32 %4427 to i8
  store i8 %4428, i8* %59, align 1
  %4429 = lshr i32 %4409, 31
  %4430 = xor i32 %4407, %4429
  %4431 = xor i32 %4427, %4429
  %4432 = add nuw nsw i32 %4431, %4430
  %4433 = icmp eq i32 %4432, 2
  %4434 = zext i1 %4433 to i8
  store i8 %4434, i8* %65, align 1
  %4435 = add i64 %4400, -760
  %4436 = add i64 %4399, 16
  store i64 %4436, i64* %3, align 8
  %4437 = inttoptr i64 %4435 to i32*
  store i32 %4410, i32* %4437, align 4
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_45f8c3

block_.L_45f8c3:                                  ; preds = %block_45f8a5, %block_.L_45f88a
  %4438 = phi i64 [ %.pre191, %block_45f8a5 ], [ %4388, %block_.L_45f88a ]
  %4439 = add i64 %4438, 15
  store i64 %4439, i64* %3, align 8
  %.pre192 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %.pre193 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  br label %block_.L_45f8d2

block_.L_45f8d2:                                  ; preds = %block_.L_45f7e8, %block_.L_45f8c3
  %4440 = phi i32 [ %4195, %block_.L_45f7e8 ], [ %.pre193, %block_.L_45f8c3 ]
  %4441 = phi i32 [ %4193, %block_.L_45f7e8 ], [ %.pre192, %block_.L_45f8c3 ]
  %4442 = phi i64 [ %4222, %block_.L_45f7e8 ], [ %4439, %block_.L_45f8c3 ]
  %MEMORY.51 = phi %struct.Memory* [ %call2_45f73d, %block_.L_45f7e8 ], [ %call2_45f818, %block_.L_45f8c3 ]
  %4443 = zext i32 %4441 to i64
  store i64 %4443, i64* %RAX.i2292, align 8
  %4444 = sub i32 %4441, %4440
  %4445 = icmp ult i32 %4441, %4440
  %4446 = zext i1 %4445 to i8
  store i8 %4446, i8* %40, align 1
  %4447 = and i32 %4444, 255
  %4448 = tail call i32 @llvm.ctpop.i32(i32 %4447)
  %4449 = trunc i32 %4448 to i8
  %4450 = and i8 %4449, 1
  %4451 = xor i8 %4450, 1
  store i8 %4451, i8* %47, align 1
  %4452 = xor i32 %4440, %4441
  %4453 = xor i32 %4452, %4444
  %4454 = lshr i32 %4453, 4
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  store i8 %4456, i8* %53, align 1
  %4457 = icmp eq i32 %4444, 0
  %4458 = zext i1 %4457 to i8
  store i8 %4458, i8* %56, align 1
  %4459 = lshr i32 %4444, 31
  %4460 = trunc i32 %4459 to i8
  store i8 %4460, i8* %59, align 1
  %4461 = lshr i32 %4441, 31
  %4462 = lshr i32 %4440, 31
  %4463 = xor i32 %4462, %4461
  %4464 = xor i32 %4459, %4461
  %4465 = add nuw nsw i32 %4464, %4463
  %4466 = icmp eq i32 %4465, 2
  %4467 = zext i1 %4466 to i8
  store i8 %4467, i8* %65, align 1
  %4468 = icmp ne i8 %4460, 0
  %4469 = xor i1 %4468, %4466
  %.demorgan250 = or i1 %4457, %4469
  %.v280 = select i1 %.demorgan250, i64 20, i64 224
  %4470 = add i64 %4442, %.v280
  store i64 %4470, i64* %3, align 8
  br i1 %.demorgan250, label %block_45f8e6, label %block_.L_45f9b2

block_45f8e6:                                     ; preds = %block_.L_45f8d2
  %4471 = load i64, i64* %RBP.i, align 8
  %4472 = add i64 %4471, -80
  store i64 %4472, i64* %RDX.i2074.pre-phi, align 8
  %4473 = add i64 %4471, -96
  store i64 %4473, i64* %RSI.i2284, align 8
  %4474 = add i64 %4471, -48
  %4475 = add i64 %4470, 11
  store i64 %4475, i64* %3, align 8
  %4476 = inttoptr i64 %4474 to i32*
  %4477 = load i32, i32* %4476, align 4
  %4478 = zext i32 %4477 to i64
  store i64 %4478, i64* %RDI.i2235, align 8
  %4479 = add i64 %4471, -60
  %4480 = add i64 %4470, 14
  store i64 %4480, i64* %3, align 8
  %4481 = inttoptr i64 %4479 to i32*
  %4482 = load i32, i32* %4481, align 4
  %4483 = zext i32 %4482 to i64
  store i64 %4483, i64* %RCX.i2272, align 8
  %4484 = add i64 %4471, -64
  %4485 = add i64 %4470, 18
  store i64 %4485, i64* %3, align 8
  %4486 = inttoptr i64 %4484 to i32*
  %4487 = load i32, i32* %4486, align 4
  %4488 = zext i32 %4487 to i64
  store i64 %4488, i64* %68, align 8
  %4489 = add i64 %4470, 41562
  %4490 = add i64 %4470, 23
  %4491 = load i64, i64* %6, align 8
  %4492 = add i64 %4491, -8
  %4493 = inttoptr i64 %4492 to i64*
  store i64 %4490, i64* %4493, align 8
  store i64 %4492, i64* %6, align 8
  store i64 %4489, i64* %3, align 8
  %call2_45f8f8 = tail call %struct.Memory* @sub_469b40.special_attack3(%struct.State* nonnull %0, i64 %4489, %struct.Memory* %MEMORY.51)
  %4494 = load i64, i64* %RBP.i, align 8
  %4495 = add i64 %4494, -764
  %4496 = load i32, i32* %EAX.i2231, align 4
  %4497 = load i64, i64* %3, align 8
  %4498 = add i64 %4497, 6
  store i64 %4498, i64* %3, align 8
  %4499 = inttoptr i64 %4495 to i32*
  store i32 %4496, i32* %4499, align 4
  %4500 = load i64, i64* %3, align 8
  store i64 5, i64* %RAX.i2292, align 8
  %4501 = load i64, i64* %RBP.i, align 8
  %4502 = add i64 %4501, -764
  %4503 = add i64 %4500, 11
  store i64 %4503, i64* %3, align 8
  %4504 = inttoptr i64 %4502 to i32*
  %4505 = load i32, i32* %4504, align 4
  %4506 = sub i32 5, %4505
  %4507 = zext i32 %4506 to i64
  store i64 %4507, i64* %RAX.i2292, align 8
  %4508 = and i32 %4506, 255
  %4509 = tail call i32 @llvm.ctpop.i32(i32 %4508)
  %4510 = trunc i32 %4509 to i8
  %4511 = and i8 %4510, 1
  %4512 = xor i8 %4511, 1
  %4513 = icmp eq i32 %4506, 0
  %4514 = zext i1 %4513 to i8
  %4515 = lshr i32 %4506, 31
  %4516 = trunc i32 %4515 to i8
  store i8 0, i8* %40, align 1
  store i8 %4512, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 %4514, i8* %56, align 1
  store i8 %4516, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v316 = select i1 %4513, i64 20, i64 103
  %4517 = add i64 %4500, %.v316
  store i64 %4517, i64* %3, align 8
  br i1 %4513, label %block_45f917, label %block_.L_45f96a

block_45f917:                                     ; preds = %block_45f8e6
  %4518 = add i64 %4501, -56
  %4519 = add i64 %4517, 5
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i64*
  %4521 = load i64, i64* %4520, align 8
  store i8 0, i8* %40, align 1
  %4522 = trunc i64 %4521 to i32
  %4523 = and i32 %4522, 255
  %4524 = tail call i32 @llvm.ctpop.i32(i32 %4523)
  %4525 = trunc i32 %4524 to i8
  %4526 = and i8 %4525, 1
  %4527 = xor i8 %4526, 1
  store i8 %4527, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4528 = icmp eq i64 %4521, 0
  %4529 = zext i1 %4528 to i8
  store i8 %4529, i8* %56, align 1
  %4530 = lshr i64 %4521, 63
  %4531 = trunc i64 %4530 to i8
  store i8 %4531, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v318 = select i1 %4528, i64 20, i64 11
  %4532 = add i64 %4517, %.v318
  store i64 %4532, i64* %3, align 8
  br i1 %4528, label %block_.L_45f92b, label %block_45f922

block_45f922:                                     ; preds = %block_45f917
  %4533 = add i64 %4501, -80
  %4534 = add i64 %4532, 3
  store i64 %4534, i64* %3, align 8
  %4535 = inttoptr i64 %4533 to i32*
  %4536 = load i32, i32* %4535, align 4
  %4537 = zext i32 %4536 to i64
  store i64 %4537, i64* %RAX.i2292, align 8
  %4538 = add i64 %4532, 7
  store i64 %4538, i64* %3, align 8
  %4539 = load i64, i64* %4520, align 8
  store i64 %4539, i64* %RCX.i2272, align 8
  %4540 = add i64 %4532, 9
  store i64 %4540, i64* %3, align 8
  %4541 = inttoptr i64 %4539 to i32*
  store i32 %4536, i32* %4541, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_45f92b

block_.L_45f92b:                                  ; preds = %block_45f922, %block_45f917
  %4542 = phi i64 [ %.pre194, %block_45f922 ], [ %4532, %block_45f917 ]
  %4543 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4544 = trunc i64 %4543 to i32
  %4545 = and i32 %4544, 255
  %4546 = tail call i32 @llvm.ctpop.i32(i32 %4545)
  %4547 = trunc i32 %4546 to i8
  %4548 = and i8 %4547, 1
  %4549 = xor i8 %4548, 1
  store i8 %4549, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4550 = icmp eq i64 %4543, 0
  %4551 = zext i1 %4550 to i8
  store i8 %4551, i8* %56, align 1
  %4552 = lshr i64 %4543, 63
  %4553 = trunc i64 %4552 to i8
  store i8 %4553, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v319 = select i1 %4550, i64 51, i64 15
  %4554 = add i64 %4542, %.v319
  store i64 %4554, i64* %3, align 8
  br i1 %4550, label %block_.L_45f95e, label %block_45f93a

block_45f93a:                                     ; preds = %block_.L_45f92b
  store i64 5, i64* %RCX.i2272, align 8
  store i64 ptrtoint (%G__0x57fe46_type* @G__0x57fe46 to i64), i64* %68, align 8
  %4555 = load i64, i64* %RBP.i, align 8
  %4556 = add i64 %4555, -1200
  %4557 = add i64 %4554, 22
  store i64 %4557, i64* %3, align 8
  %4558 = inttoptr i64 %4556 to i64*
  %4559 = load i64, i64* %4558, align 8
  store i64 %4559, i64* %RDI.i2235, align 8
  %4560 = add i64 %4555, -1204
  %4561 = add i64 %4554, 28
  store i64 %4561, i64* %3, align 8
  %4562 = inttoptr i64 %4560 to i32*
  %4563 = load i32, i32* %4562, align 4
  %4564 = zext i32 %4563 to i64
  store i64 %4564, i64* %RSI.i2284, align 8
  %4565 = add i64 %4555, -80
  %4566 = add i64 %4554, 31
  store i64 %4566, i64* %3, align 8
  %4567 = inttoptr i64 %4565 to i32*
  %4568 = load i32, i32* %4567, align 4
  %4569 = zext i32 %4568 to i64
  store i64 %4569, i64* %RDX.i2074.pre-phi, align 8
  %4570 = add i64 %4554, -293242
  %4571 = add i64 %4554, 36
  %4572 = load i64, i64* %6, align 8
  %4573 = add i64 %4572, -8
  %4574 = inttoptr i64 %4573 to i64*
  store i64 %4571, i64* %4574, align 8
  store i64 %4573, i64* %6, align 8
  store i64 %4570, i64* %3, align 8
  %call2_45f959 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4570, %struct.Memory* %call2_45f8f8)
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_45f95e

block_.L_45f95e:                                  ; preds = %block_45f93a, %block_.L_45f92b
  %4575 = phi i64 [ %4554, %block_.L_45f92b ], [ %.pre195, %block_45f93a ]
  %MEMORY.53 = phi %struct.Memory* [ %call2_45f8f8, %block_.L_45f92b ], [ %call2_45f959, %block_45f93a ]
  %4576 = load i64, i64* %RBP.i, align 8
  %4577 = add i64 %4576, -44
  %4578 = add i64 %4575, 7
  store i64 %4578, i64* %3, align 8
  %4579 = inttoptr i64 %4577 to i32*
  store i32 5, i32* %4579, align 4
  %4580 = load i64, i64* %3, align 8
  %4581 = add i64 %4580, 1465
  store i64 %4581, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45f96a:                                  ; preds = %block_45f8e6
  store i64 5, i64* %RAX.i2292, align 8
  store i64 5, i64* %RCX.i2272, align 8
  %4582 = add i64 %4517, 13
  store i64 %4582, i64* %3, align 8
  %4583 = load i32, i32* %4504, align 4
  %4584 = sub i32 5, %4583
  %4585 = zext i32 %4584 to i64
  store i64 %4585, i64* %RCX.i2272, align 8
  %4586 = lshr i32 %4584, 31
  %4587 = lshr i32 %4583, 31
  %4588 = add nuw nsw i32 %4586, %4587
  %4589 = icmp eq i32 %4588, 2
  %4590 = zext i1 %4589 to i8
  %4591 = zext i32 %4583 to i64
  store i64 %4591, i64* %RAX.i2292, align 8
  %4592 = icmp ugt i32 %4584, 5
  %4593 = zext i1 %4592 to i8
  store i8 %4593, i8* %40, align 1
  %4594 = and i32 %4583, 255
  %4595 = tail call i32 @llvm.ctpop.i32(i32 %4594)
  %4596 = trunc i32 %4595 to i8
  %4597 = and i8 %4596, 1
  %4598 = xor i8 %4597, 1
  store i8 %4598, i8* %47, align 1
  %4599 = xor i32 %4584, %4583
  %4600 = lshr i32 %4599, 4
  %4601 = trunc i32 %4600 to i8
  %4602 = and i8 %4601, 1
  store i8 %4602, i8* %53, align 1
  %4603 = icmp eq i32 %4583, 0
  %4604 = zext i1 %4603 to i8
  store i8 %4604, i8* %56, align 1
  %4605 = trunc i32 %4587 to i8
  store i8 %4605, i8* %59, align 1
  store i8 %4590, i8* %65, align 1
  %4606 = add i64 %4501, -760
  %4607 = add i64 %4517, 21
  store i64 %4607, i64* %3, align 8
  %4608 = inttoptr i64 %4606 to i32*
  %4609 = load i32, i32* %4608, align 4
  %4610 = sub i32 %4583, %4609
  %4611 = icmp ult i32 %4583, %4609
  %4612 = zext i1 %4611 to i8
  store i8 %4612, i8* %40, align 1
  %4613 = and i32 %4610, 255
  %4614 = tail call i32 @llvm.ctpop.i32(i32 %4613)
  %4615 = trunc i32 %4614 to i8
  %4616 = and i8 %4615, 1
  %4617 = xor i8 %4616, 1
  store i8 %4617, i8* %47, align 1
  %4618 = xor i32 %4609, %4583
  %4619 = xor i32 %4618, %4610
  %4620 = lshr i32 %4619, 4
  %4621 = trunc i32 %4620 to i8
  %4622 = and i8 %4621, 1
  store i8 %4622, i8* %53, align 1
  %4623 = icmp eq i32 %4610, 0
  %4624 = zext i1 %4623 to i8
  store i8 %4624, i8* %56, align 1
  %4625 = lshr i32 %4610, 31
  %4626 = trunc i32 %4625 to i8
  store i8 %4626, i8* %59, align 1
  %4627 = lshr i32 %4609, 31
  %4628 = xor i32 %4627, %4587
  %4629 = xor i32 %4625, %4587
  %4630 = add nuw nsw i32 %4629, %4628
  %4631 = icmp eq i32 %4630, 2
  %4632 = zext i1 %4631 to i8
  store i8 %4632, i8* %65, align 1
  %4633 = icmp ne i8 %4626, 0
  %4634 = xor i1 %4633, %4631
  %4635 = or i1 %4623, %4634
  %.v317 = select i1 %4635, i64 57, i64 27
  %4636 = add i64 %4517, %.v317
  store i64 %4636, i64* %3, align 8
  br i1 %4635, label %block_.L_45f9a3, label %block_45f985

block_45f985:                                     ; preds = %block_.L_45f96a
  store i64 5, i64* %RAX.i2292, align 8
  %4637 = load i64, i64* %RBP.i, align 8
  %4638 = add i64 %4637, -80
  %4639 = add i64 %4636, 8
  store i64 %4639, i64* %3, align 8
  %4640 = inttoptr i64 %4638 to i32*
  %4641 = load i32, i32* %4640, align 4
  %4642 = add i64 %4637, -756
  %4643 = add i64 %4636, 14
  store i64 %4643, i64* %3, align 8
  %4644 = inttoptr i64 %4642 to i32*
  store i32 %4641, i32* %4644, align 4
  %4645 = load i32, i32* %EAX.i2231, align 4
  %4646 = zext i32 %4645 to i64
  %4647 = load i64, i64* %3, align 8
  store i64 %4646, i64* %RCX.i2272, align 8
  %4648 = load i64, i64* %RBP.i, align 8
  %4649 = add i64 %4648, -764
  %4650 = add i64 %4647, 8
  store i64 %4650, i64* %3, align 8
  %4651 = inttoptr i64 %4649 to i32*
  %4652 = load i32, i32* %4651, align 4
  %4653 = sub i32 %4645, %4652
  %4654 = zext i32 %4653 to i64
  store i64 %4654, i64* %RCX.i2272, align 8
  %4655 = lshr i32 %4653, 31
  %4656 = load i64, i64* %RAX.i2292, align 8
  %4657 = trunc i64 %4656 to i32
  %4658 = sub i32 %4657, %4653
  %4659 = zext i32 %4658 to i64
  store i64 %4659, i64* %RAX.i2292, align 8
  %4660 = icmp ult i32 %4657, %4653
  %4661 = zext i1 %4660 to i8
  store i8 %4661, i8* %40, align 1
  %4662 = and i32 %4658, 255
  %4663 = tail call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  store i8 %4666, i8* %47, align 1
  %4667 = xor i64 %4654, %4656
  %4668 = trunc i64 %4667 to i32
  %4669 = xor i32 %4668, %4658
  %4670 = lshr i32 %4669, 4
  %4671 = trunc i32 %4670 to i8
  %4672 = and i8 %4671, 1
  store i8 %4672, i8* %53, align 1
  %4673 = icmp eq i32 %4658, 0
  %4674 = zext i1 %4673 to i8
  store i8 %4674, i8* %56, align 1
  %4675 = lshr i32 %4658, 31
  %4676 = trunc i32 %4675 to i8
  store i8 %4676, i8* %59, align 1
  %4677 = lshr i32 %4657, 31
  %4678 = xor i32 %4655, %4677
  %4679 = xor i32 %4675, %4677
  %4680 = add nuw nsw i32 %4679, %4678
  %4681 = icmp eq i32 %4680, 2
  %4682 = zext i1 %4681 to i8
  store i8 %4682, i8* %65, align 1
  %4683 = add i64 %4648, -760
  %4684 = add i64 %4647, 16
  store i64 %4684, i64* %3, align 8
  %4685 = inttoptr i64 %4683 to i32*
  store i32 %4658, i32* %4685, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_45f9a3

block_.L_45f9a3:                                  ; preds = %block_45f985, %block_.L_45f96a
  %4686 = phi i64 [ %.pre196, %block_45f985 ], [ %4636, %block_.L_45f96a ]
  %4687 = add i64 %4686, 15
  store i64 %4687, i64* %3, align 8
  %.pre197 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %.pre198 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  br label %block_.L_45f9b2

block_.L_45f9b2:                                  ; preds = %block_.L_45f8d2, %block_.L_45f9a3
  %4688 = phi i32 [ %4440, %block_.L_45f8d2 ], [ %.pre198, %block_.L_45f9a3 ]
  %4689 = phi i32 [ %4441, %block_.L_45f8d2 ], [ %.pre197, %block_.L_45f9a3 ]
  %4690 = phi i64 [ %4470, %block_.L_45f8d2 ], [ %4687, %block_.L_45f9a3 ]
  %MEMORY.55 = phi %struct.Memory* [ %MEMORY.51, %block_.L_45f8d2 ], [ %call2_45f8f8, %block_.L_45f9a3 ]
  %4691 = zext i32 %4689 to i64
  store i64 %4691, i64* %RAX.i2292, align 8
  %4692 = sub i32 %4689, %4688
  %4693 = icmp ult i32 %4689, %4688
  %4694 = zext i1 %4693 to i8
  store i8 %4694, i8* %40, align 1
  %4695 = and i32 %4692, 255
  %4696 = tail call i32 @llvm.ctpop.i32(i32 %4695)
  %4697 = trunc i32 %4696 to i8
  %4698 = and i8 %4697, 1
  %4699 = xor i8 %4698, 1
  store i8 %4699, i8* %47, align 1
  %4700 = xor i32 %4688, %4689
  %4701 = xor i32 %4700, %4692
  %4702 = lshr i32 %4701, 4
  %4703 = trunc i32 %4702 to i8
  %4704 = and i8 %4703, 1
  store i8 %4704, i8* %53, align 1
  %4705 = icmp eq i32 %4692, 0
  %4706 = zext i1 %4705 to i8
  store i8 %4706, i8* %56, align 1
  %4707 = lshr i32 %4692, 31
  %4708 = trunc i32 %4707 to i8
  store i8 %4708, i8* %59, align 1
  %4709 = lshr i32 %4689, 31
  %4710 = lshr i32 %4688, 31
  %4711 = xor i32 %4710, %4709
  %4712 = xor i32 %4707, %4709
  %4713 = add nuw nsw i32 %4712, %4711
  %4714 = icmp eq i32 %4713, 2
  %4715 = zext i1 %4714 to i8
  store i8 %4715, i8* %65, align 1
  %4716 = icmp ne i8 %4708, 0
  %4717 = xor i1 %4716, %4714
  %.demorgan251 = or i1 %4705, %4717
  %.v281 = select i1 %.demorgan251, i64 20, i64 224
  %4718 = add i64 %4690, %.v281
  store i64 %4718, i64* %3, align 8
  br i1 %.demorgan251, label %block_45f9c6, label %block_.L_45fa92

block_45f9c6:                                     ; preds = %block_.L_45f9b2
  %4719 = load i64, i64* %RBP.i, align 8
  %4720 = add i64 %4719, -80
  store i64 %4720, i64* %RDX.i2074.pre-phi, align 8
  %4721 = add i64 %4719, -96
  store i64 %4721, i64* %RSI.i2284, align 8
  %4722 = add i64 %4719, -48
  %4723 = add i64 %4718, 11
  store i64 %4723, i64* %3, align 8
  %4724 = inttoptr i64 %4722 to i32*
  %4725 = load i32, i32* %4724, align 4
  %4726 = zext i32 %4725 to i64
  store i64 %4726, i64* %RDI.i2235, align 8
  %4727 = add i64 %4719, -60
  %4728 = add i64 %4718, 14
  store i64 %4728, i64* %3, align 8
  %4729 = inttoptr i64 %4727 to i32*
  %4730 = load i32, i32* %4729, align 4
  %4731 = zext i32 %4730 to i64
  store i64 %4731, i64* %RCX.i2272, align 8
  %4732 = add i64 %4719, -64
  %4733 = add i64 %4718, 18
  store i64 %4733, i64* %3, align 8
  %4734 = inttoptr i64 %4732 to i32*
  %4735 = load i32, i32* %4734, align 4
  %4736 = zext i32 %4735 to i64
  store i64 %4736, i64* %68, align 8
  %4737 = add i64 %4718, 42282
  %4738 = add i64 %4718, 23
  %4739 = load i64, i64* %6, align 8
  %4740 = add i64 %4739, -8
  %4741 = inttoptr i64 %4740 to i64*
  store i64 %4738, i64* %4741, align 8
  store i64 %4740, i64* %6, align 8
  store i64 %4737, i64* %3, align 8
  %call2_45f9d8 = tail call %struct.Memory* @sub_469ef0.special_attack4(%struct.State* nonnull %0, i64 %4737, %struct.Memory* %MEMORY.55)
  %4742 = load i64, i64* %RBP.i, align 8
  %4743 = add i64 %4742, -764
  %4744 = load i32, i32* %EAX.i2231, align 4
  %4745 = load i64, i64* %3, align 8
  %4746 = add i64 %4745, 6
  store i64 %4746, i64* %3, align 8
  %4747 = inttoptr i64 %4743 to i32*
  store i32 %4744, i32* %4747, align 4
  %4748 = load i64, i64* %3, align 8
  store i64 5, i64* %RAX.i2292, align 8
  %4749 = load i64, i64* %RBP.i, align 8
  %4750 = add i64 %4749, -764
  %4751 = add i64 %4748, 11
  store i64 %4751, i64* %3, align 8
  %4752 = inttoptr i64 %4750 to i32*
  %4753 = load i32, i32* %4752, align 4
  %4754 = sub i32 5, %4753
  %4755 = zext i32 %4754 to i64
  store i64 %4755, i64* %RAX.i2292, align 8
  %4756 = and i32 %4754, 255
  %4757 = tail call i32 @llvm.ctpop.i32(i32 %4756)
  %4758 = trunc i32 %4757 to i8
  %4759 = and i8 %4758, 1
  %4760 = xor i8 %4759, 1
  %4761 = icmp eq i32 %4754, 0
  %4762 = zext i1 %4761 to i8
  %4763 = lshr i32 %4754, 31
  %4764 = trunc i32 %4763 to i8
  store i8 0, i8* %40, align 1
  store i8 %4760, i8* %47, align 1
  store i8 0, i8* %53, align 1
  store i8 %4762, i8* %56, align 1
  store i8 %4764, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v312 = select i1 %4761, i64 20, i64 103
  %4765 = add i64 %4748, %.v312
  store i64 %4765, i64* %3, align 8
  br i1 %4761, label %block_45f9f7, label %block_.L_45fa4a

block_45f9f7:                                     ; preds = %block_45f9c6
  %4766 = add i64 %4749, -56
  %4767 = add i64 %4765, 5
  store i64 %4767, i64* %3, align 8
  %4768 = inttoptr i64 %4766 to i64*
  %4769 = load i64, i64* %4768, align 8
  store i8 0, i8* %40, align 1
  %4770 = trunc i64 %4769 to i32
  %4771 = and i32 %4770, 255
  %4772 = tail call i32 @llvm.ctpop.i32(i32 %4771)
  %4773 = trunc i32 %4772 to i8
  %4774 = and i8 %4773, 1
  %4775 = xor i8 %4774, 1
  store i8 %4775, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4776 = icmp eq i64 %4769, 0
  %4777 = zext i1 %4776 to i8
  store i8 %4777, i8* %56, align 1
  %4778 = lshr i64 %4769, 63
  %4779 = trunc i64 %4778 to i8
  store i8 %4779, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v314 = select i1 %4776, i64 20, i64 11
  %4780 = add i64 %4765, %.v314
  store i64 %4780, i64* %3, align 8
  br i1 %4776, label %block_.L_45fa0b, label %block_45fa02

block_45fa02:                                     ; preds = %block_45f9f7
  %4781 = add i64 %4749, -80
  %4782 = add i64 %4780, 3
  store i64 %4782, i64* %3, align 8
  %4783 = inttoptr i64 %4781 to i32*
  %4784 = load i32, i32* %4783, align 4
  %4785 = zext i32 %4784 to i64
  store i64 %4785, i64* %RAX.i2292, align 8
  %4786 = add i64 %4780, 7
  store i64 %4786, i64* %3, align 8
  %4787 = load i64, i64* %4768, align 8
  store i64 %4787, i64* %RCX.i2272, align 8
  %4788 = add i64 %4780, 9
  store i64 %4788, i64* %3, align 8
  %4789 = inttoptr i64 %4787 to i32*
  store i32 %4784, i32* %4789, align 4
  %.pre199 = load i64, i64* %3, align 8
  br label %block_.L_45fa0b

block_.L_45fa0b:                                  ; preds = %block_45fa02, %block_45f9f7
  %4790 = phi i64 [ %.pre199, %block_45fa02 ], [ %4780, %block_45f9f7 ]
  %4791 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %4792 = trunc i64 %4791 to i32
  %4793 = and i32 %4792, 255
  %4794 = tail call i32 @llvm.ctpop.i32(i32 %4793)
  %4795 = trunc i32 %4794 to i8
  %4796 = and i8 %4795, 1
  %4797 = xor i8 %4796, 1
  store i8 %4797, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %4798 = icmp eq i64 %4791, 0
  %4799 = zext i1 %4798 to i8
  store i8 %4799, i8* %56, align 1
  %4800 = lshr i64 %4791, 63
  %4801 = trunc i64 %4800 to i8
  store i8 %4801, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v315 = select i1 %4798, i64 51, i64 15
  %4802 = add i64 %4790, %.v315
  store i64 %4802, i64* %3, align 8
  br i1 %4798, label %block_.L_45fa3e, label %block_45fa1a

block_45fa1a:                                     ; preds = %block_.L_45fa0b
  store i64 5, i64* %RCX.i2272, align 8
  store i64 ptrtoint (%G__0x57fe56_type* @G__0x57fe56 to i64), i64* %68, align 8
  %4803 = load i64, i64* %RBP.i, align 8
  %4804 = add i64 %4803, -1200
  %4805 = add i64 %4802, 22
  store i64 %4805, i64* %3, align 8
  %4806 = inttoptr i64 %4804 to i64*
  %4807 = load i64, i64* %4806, align 8
  store i64 %4807, i64* %RDI.i2235, align 8
  %4808 = add i64 %4803, -1204
  %4809 = add i64 %4802, 28
  store i64 %4809, i64* %3, align 8
  %4810 = inttoptr i64 %4808 to i32*
  %4811 = load i32, i32* %4810, align 4
  %4812 = zext i32 %4811 to i64
  store i64 %4812, i64* %RSI.i2284, align 8
  %4813 = add i64 %4803, -80
  %4814 = add i64 %4802, 31
  store i64 %4814, i64* %3, align 8
  %4815 = inttoptr i64 %4813 to i32*
  %4816 = load i32, i32* %4815, align 4
  %4817 = zext i32 %4816 to i64
  store i64 %4817, i64* %RDX.i2074.pre-phi, align 8
  %4818 = add i64 %4802, -293466
  %4819 = add i64 %4802, 36
  %4820 = load i64, i64* %6, align 8
  %4821 = add i64 %4820, -8
  %4822 = inttoptr i64 %4821 to i64*
  store i64 %4819, i64* %4822, align 8
  store i64 %4821, i64* %6, align 8
  store i64 %4818, i64* %3, align 8
  %call2_45fa39 = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %4818, %struct.Memory* %call2_45f9d8)
  %.pre200 = load i64, i64* %3, align 8
  br label %block_.L_45fa3e

block_.L_45fa3e:                                  ; preds = %block_45fa1a, %block_.L_45fa0b
  %4823 = phi i64 [ %4802, %block_.L_45fa0b ], [ %.pre200, %block_45fa1a ]
  %MEMORY.57 = phi %struct.Memory* [ %call2_45f9d8, %block_.L_45fa0b ], [ %call2_45fa39, %block_45fa1a ]
  %4824 = load i64, i64* %RBP.i, align 8
  %4825 = add i64 %4824, -44
  %4826 = add i64 %4823, 7
  store i64 %4826, i64* %3, align 8
  %4827 = inttoptr i64 %4825 to i32*
  store i32 5, i32* %4827, align 4
  %4828 = load i64, i64* %3, align 8
  %4829 = add i64 %4828, 1241
  store i64 %4829, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45fa4a:                                  ; preds = %block_45f9c6
  store i64 5, i64* %RAX.i2292, align 8
  store i64 5, i64* %RCX.i2272, align 8
  %4830 = add i64 %4765, 13
  store i64 %4830, i64* %3, align 8
  %4831 = load i32, i32* %4752, align 4
  %4832 = sub i32 5, %4831
  %4833 = zext i32 %4832 to i64
  store i64 %4833, i64* %RCX.i2272, align 8
  %4834 = lshr i32 %4832, 31
  %4835 = lshr i32 %4831, 31
  %4836 = add nuw nsw i32 %4834, %4835
  %4837 = icmp eq i32 %4836, 2
  %4838 = zext i1 %4837 to i8
  %4839 = zext i32 %4831 to i64
  store i64 %4839, i64* %RAX.i2292, align 8
  %4840 = icmp ugt i32 %4832, 5
  %4841 = zext i1 %4840 to i8
  store i8 %4841, i8* %40, align 1
  %4842 = and i32 %4831, 255
  %4843 = tail call i32 @llvm.ctpop.i32(i32 %4842)
  %4844 = trunc i32 %4843 to i8
  %4845 = and i8 %4844, 1
  %4846 = xor i8 %4845, 1
  store i8 %4846, i8* %47, align 1
  %4847 = xor i32 %4832, %4831
  %4848 = lshr i32 %4847, 4
  %4849 = trunc i32 %4848 to i8
  %4850 = and i8 %4849, 1
  store i8 %4850, i8* %53, align 1
  %4851 = icmp eq i32 %4831, 0
  %4852 = zext i1 %4851 to i8
  store i8 %4852, i8* %56, align 1
  %4853 = trunc i32 %4835 to i8
  store i8 %4853, i8* %59, align 1
  store i8 %4838, i8* %65, align 1
  %4854 = add i64 %4749, -760
  %4855 = add i64 %4765, 21
  store i64 %4855, i64* %3, align 8
  %4856 = inttoptr i64 %4854 to i32*
  %4857 = load i32, i32* %4856, align 4
  %4858 = sub i32 %4831, %4857
  %4859 = icmp ult i32 %4831, %4857
  %4860 = zext i1 %4859 to i8
  store i8 %4860, i8* %40, align 1
  %4861 = and i32 %4858, 255
  %4862 = tail call i32 @llvm.ctpop.i32(i32 %4861)
  %4863 = trunc i32 %4862 to i8
  %4864 = and i8 %4863, 1
  %4865 = xor i8 %4864, 1
  store i8 %4865, i8* %47, align 1
  %4866 = xor i32 %4857, %4831
  %4867 = xor i32 %4866, %4858
  %4868 = lshr i32 %4867, 4
  %4869 = trunc i32 %4868 to i8
  %4870 = and i8 %4869, 1
  store i8 %4870, i8* %53, align 1
  %4871 = icmp eq i32 %4858, 0
  %4872 = zext i1 %4871 to i8
  store i8 %4872, i8* %56, align 1
  %4873 = lshr i32 %4858, 31
  %4874 = trunc i32 %4873 to i8
  store i8 %4874, i8* %59, align 1
  %4875 = lshr i32 %4857, 31
  %4876 = xor i32 %4875, %4835
  %4877 = xor i32 %4873, %4835
  %4878 = add nuw nsw i32 %4877, %4876
  %4879 = icmp eq i32 %4878, 2
  %4880 = zext i1 %4879 to i8
  store i8 %4880, i8* %65, align 1
  %4881 = icmp ne i8 %4874, 0
  %4882 = xor i1 %4881, %4879
  %4883 = or i1 %4871, %4882
  %.v313 = select i1 %4883, i64 57, i64 27
  %4884 = add i64 %4765, %.v313
  store i64 %4884, i64* %3, align 8
  br i1 %4883, label %block_.L_45fa83, label %block_45fa65

block_45fa65:                                     ; preds = %block_.L_45fa4a
  store i64 5, i64* %RAX.i2292, align 8
  %4885 = load i64, i64* %RBP.i, align 8
  %4886 = add i64 %4885, -80
  %4887 = add i64 %4884, 8
  store i64 %4887, i64* %3, align 8
  %4888 = inttoptr i64 %4886 to i32*
  %4889 = load i32, i32* %4888, align 4
  %4890 = add i64 %4885, -756
  %4891 = add i64 %4884, 14
  store i64 %4891, i64* %3, align 8
  %4892 = inttoptr i64 %4890 to i32*
  store i32 %4889, i32* %4892, align 4
  %4893 = load i32, i32* %EAX.i2231, align 4
  %4894 = zext i32 %4893 to i64
  %4895 = load i64, i64* %3, align 8
  store i64 %4894, i64* %RCX.i2272, align 8
  %4896 = load i64, i64* %RBP.i, align 8
  %4897 = add i64 %4896, -764
  %4898 = add i64 %4895, 8
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4897 to i32*
  %4900 = load i32, i32* %4899, align 4
  %4901 = sub i32 %4893, %4900
  %4902 = zext i32 %4901 to i64
  store i64 %4902, i64* %RCX.i2272, align 8
  %4903 = lshr i32 %4901, 31
  %4904 = load i64, i64* %RAX.i2292, align 8
  %4905 = trunc i64 %4904 to i32
  %4906 = sub i32 %4905, %4901
  %4907 = zext i32 %4906 to i64
  store i64 %4907, i64* %RAX.i2292, align 8
  %4908 = icmp ult i32 %4905, %4901
  %4909 = zext i1 %4908 to i8
  store i8 %4909, i8* %40, align 1
  %4910 = and i32 %4906, 255
  %4911 = tail call i32 @llvm.ctpop.i32(i32 %4910)
  %4912 = trunc i32 %4911 to i8
  %4913 = and i8 %4912, 1
  %4914 = xor i8 %4913, 1
  store i8 %4914, i8* %47, align 1
  %4915 = xor i64 %4902, %4904
  %4916 = trunc i64 %4915 to i32
  %4917 = xor i32 %4916, %4906
  %4918 = lshr i32 %4917, 4
  %4919 = trunc i32 %4918 to i8
  %4920 = and i8 %4919, 1
  store i8 %4920, i8* %53, align 1
  %4921 = icmp eq i32 %4906, 0
  %4922 = zext i1 %4921 to i8
  store i8 %4922, i8* %56, align 1
  %4923 = lshr i32 %4906, 31
  %4924 = trunc i32 %4923 to i8
  store i8 %4924, i8* %59, align 1
  %4925 = lshr i32 %4905, 31
  %4926 = xor i32 %4903, %4925
  %4927 = xor i32 %4923, %4925
  %4928 = add nuw nsw i32 %4927, %4926
  %4929 = icmp eq i32 %4928, 2
  %4930 = zext i1 %4929 to i8
  store i8 %4930, i8* %65, align 1
  %4931 = add i64 %4896, -760
  %4932 = add i64 %4895, 16
  store i64 %4932, i64* %3, align 8
  %4933 = inttoptr i64 %4931 to i32*
  store i32 %4906, i32* %4933, align 4
  %.pre201 = load i64, i64* %3, align 8
  br label %block_.L_45fa83

block_.L_45fa83:                                  ; preds = %block_45fa65, %block_.L_45fa4a
  %4934 = phi i64 [ %.pre201, %block_45fa65 ], [ %4884, %block_.L_45fa4a ]
  %4935 = add i64 %4934, 15
  store i64 %4935, i64* %3, align 8
  br label %block_.L_45fa92

block_.L_45fa92:                                  ; preds = %block_.L_45f9b2, %block_.L_45fa83
  %4936 = phi i64 [ %4718, %block_.L_45f9b2 ], [ %4935, %block_.L_45fa83 ]
  %MEMORY.59 = phi %struct.Memory* [ %MEMORY.55, %block_.L_45f9b2 ], [ %call2_45f9d8, %block_.L_45fa83 ]
  %4937 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %4938 = add i32 %4937, -10
  %4939 = icmp ult i32 %4937, 10
  %4940 = zext i1 %4939 to i8
  store i8 %4940, i8* %40, align 1
  %4941 = and i32 %4938, 255
  %4942 = tail call i32 @llvm.ctpop.i32(i32 %4941)
  %4943 = trunc i32 %4942 to i8
  %4944 = and i8 %4943, 1
  %4945 = xor i8 %4944, 1
  store i8 %4945, i8* %47, align 1
  %4946 = xor i32 %4938, %4937
  %4947 = lshr i32 %4946, 4
  %4948 = trunc i32 %4947 to i8
  %4949 = and i8 %4948, 1
  store i8 %4949, i8* %53, align 1
  %4950 = icmp eq i32 %4938, 0
  %4951 = zext i1 %4950 to i8
  store i8 %4951, i8* %56, align 1
  %4952 = lshr i32 %4938, 31
  %4953 = trunc i32 %4952 to i8
  store i8 %4953, i8* %59, align 1
  %4954 = lshr i32 %4937, 31
  %4955 = xor i32 %4952, %4954
  %4956 = add nuw nsw i32 %4955, %4954
  %4957 = icmp eq i32 %4956, 2
  %4958 = zext i1 %4957 to i8
  store i8 %4958, i8* %65, align 1
  %4959 = icmp ne i8 %4953, 0
  %4960 = xor i1 %4959, %4957
  %.v282 = select i1 %4960, i64 931, i64 14
  %4961 = add i64 %4936, %.v282
  store i64 %4961, i64* %3, align 8
  br i1 %4960, label %block_.L_45fe35, label %block_45faa0

block_45faa0:                                     ; preds = %block_.L_45fa92
  %4962 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %4963 = zext i32 %4962 to i64
  store i64 %4963, i64* %RAX.i2292, align 8
  %4964 = load i32, i32* bitcast (%G_0xb060b8_type* @G_0xb060b8 to i32*), align 8
  %4965 = sub i32 %4962, %4964
  %4966 = icmp ult i32 %4962, %4964
  %4967 = zext i1 %4966 to i8
  store i8 %4967, i8* %40, align 1
  %4968 = and i32 %4965, 255
  %4969 = tail call i32 @llvm.ctpop.i32(i32 %4968)
  %4970 = trunc i32 %4969 to i8
  %4971 = and i8 %4970, 1
  %4972 = xor i8 %4971, 1
  store i8 %4972, i8* %47, align 1
  %4973 = xor i32 %4964, %4962
  %4974 = xor i32 %4973, %4965
  %4975 = lshr i32 %4974, 4
  %4976 = trunc i32 %4975 to i8
  %4977 = and i8 %4976, 1
  store i8 %4977, i8* %53, align 1
  %4978 = icmp eq i32 %4965, 0
  %4979 = zext i1 %4978 to i8
  store i8 %4979, i8* %56, align 1
  %4980 = lshr i32 %4965, 31
  %4981 = trunc i32 %4980 to i8
  store i8 %4981, i8* %59, align 1
  %4982 = lshr i32 %4962, 31
  %4983 = lshr i32 %4964, 31
  %4984 = xor i32 %4983, %4982
  %4985 = xor i32 %4980, %4982
  %4986 = add nuw nsw i32 %4985, %4984
  %4987 = icmp eq i32 %4986, 2
  %4988 = zext i1 %4987 to i8
  store i8 %4988, i8* %65, align 1
  %4989 = icmp ne i8 %4981, 0
  %4990 = xor i1 %4989, %4987
  %.demorgan252 = or i1 %4978, %4990
  %.v283 = select i1 %.demorgan252, i64 20, i64 917
  %4991 = add i64 %4961, %.v283
  store i64 %4991, i64* %3, align 8
  br i1 %.demorgan252, label %block_45fab4, label %block_.L_45fe35

block_45fab4:                                     ; preds = %block_45faa0
  store i64 %4963, i64* %RAX.i2292, align 8
  %4992 = load i32, i32* bitcast (%G_0xafd960_type* @G_0xafd960 to i32*), align 8
  %4993 = sub i32 %4962, %4992
  %4994 = icmp ult i32 %4962, %4992
  %4995 = zext i1 %4994 to i8
  store i8 %4995, i8* %40, align 1
  %4996 = and i32 %4993, 255
  %4997 = tail call i32 @llvm.ctpop.i32(i32 %4996)
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = xor i8 %4999, 1
  store i8 %5000, i8* %47, align 1
  %5001 = xor i32 %4992, %4962
  %5002 = xor i32 %5001, %4993
  %5003 = lshr i32 %5002, 4
  %5004 = trunc i32 %5003 to i8
  %5005 = and i8 %5004, 1
  store i8 %5005, i8* %53, align 1
  %5006 = icmp eq i32 %4993, 0
  %5007 = zext i1 %5006 to i8
  store i8 %5007, i8* %56, align 1
  %5008 = lshr i32 %4993, 31
  %5009 = trunc i32 %5008 to i8
  store i8 %5009, i8* %59, align 1
  %5010 = lshr i32 %4992, 31
  %5011 = xor i32 %5010, %4982
  %5012 = xor i32 %5008, %4982
  %5013 = add nuw nsw i32 %5012, %5011
  %5014 = icmp eq i32 %5013, 2
  %5015 = zext i1 %5014 to i8
  store i8 %5015, i8* %65, align 1
  %5016 = icmp ne i8 %5009, 0
  %5017 = xor i1 %5016, %5014
  %5018 = or i1 %5006, %5017
  %.v290 = select i1 %5018, i64 33, i64 20
  %5019 = add i64 %4991, %.v290
  store i64 %5019, i64* %3, align 8
  %.pre202 = load i64, i64* %RBP.i, align 8
  br i1 %5018, label %block_.L_45fad5, label %block_45fac8

block_45fac8:                                     ; preds = %block_45fab4
  %5020 = add i64 %.pre202, -776
  %5021 = add i64 %5019, 7
  store i64 %5021, i64* %3, align 8
  %5022 = inttoptr i64 %5020 to i32*
  %5023 = load i32, i32* %5022, align 4
  store i8 0, i8* %40, align 1
  %5024 = and i32 %5023, 255
  %5025 = tail call i32 @llvm.ctpop.i32(i32 %5024)
  %5026 = trunc i32 %5025 to i8
  %5027 = and i8 %5026, 1
  %5028 = xor i8 %5027, 1
  store i8 %5028, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5029 = icmp eq i32 %5023, 0
  %5030 = zext i1 %5029 to i8
  store i8 %5030, i8* %56, align 1
  %5031 = lshr i32 %5023, 31
  %5032 = trunc i32 %5031 to i8
  store i8 %5032, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v291 = select i1 %5029, i64 13, i64 877
  %5033 = add i64 %5019, %.v291
  store i64 %5033, i64* %3, align 8
  br i1 %5029, label %block_.L_45fad5, label %block_.L_45fe35

block_.L_45fad5:                                  ; preds = %block_45fab4, %block_45fac8
  %5034 = phi i64 [ %5033, %block_45fac8 ], [ %5019, %block_45fab4 ]
  %5035 = add i64 %.pre202, -1364
  %5036 = add i64 %5034, 10
  store i64 %5036, i64* %3, align 8
  %5037 = inttoptr i64 %5035 to i32*
  store i32 2, i32* %5037, align 4
  %5038 = load i64, i64* %3, align 8
  %5039 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %5040 = zext i32 %5039 to i64
  store i64 %5040, i64* %RAX.i2292, align 8
  %5041 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*), align 8
  %5042 = sub i32 %5039, %5041
  %5043 = icmp ult i32 %5039, %5041
  %5044 = zext i1 %5043 to i8
  store i8 %5044, i8* %40, align 1
  %5045 = and i32 %5042, 255
  %5046 = tail call i32 @llvm.ctpop.i32(i32 %5045)
  %5047 = trunc i32 %5046 to i8
  %5048 = and i8 %5047, 1
  %5049 = xor i8 %5048, 1
  store i8 %5049, i8* %47, align 1
  %5050 = xor i32 %5041, %5039
  %5051 = xor i32 %5050, %5042
  %5052 = lshr i32 %5051, 4
  %5053 = trunc i32 %5052 to i8
  %5054 = and i8 %5053, 1
  store i8 %5054, i8* %53, align 1
  %5055 = icmp eq i32 %5042, 0
  %5056 = zext i1 %5055 to i8
  store i8 %5056, i8* %56, align 1
  %5057 = lshr i32 %5042, 31
  %5058 = trunc i32 %5057 to i8
  store i8 %5058, i8* %59, align 1
  %5059 = lshr i32 %5039, 31
  %5060 = lshr i32 %5041, 31
  %5061 = xor i32 %5060, %5059
  %5062 = xor i32 %5057, %5059
  %5063 = add nuw nsw i32 %5062, %5061
  %5064 = icmp eq i32 %5063, 2
  %5065 = zext i1 %5064 to i8
  store i8 %5065, i8* %65, align 1
  %5066 = icmp ne i8 %5058, 0
  %5067 = xor i1 %5066, %5064
  %.demorgan253 = or i1 %5055, %5067
  %.v292 = select i1 %.demorgan253, i64 20, i64 30
  %5068 = add i64 %5038, %.v292
  store i64 %5068, i64* %3, align 8
  br i1 %.demorgan253, label %block_45faf3, label %block_.L_45fafd

block_45faf3:                                     ; preds = %block_.L_45fad5
  %5069 = load i64, i64* %RBP.i, align 8
  %5070 = add i64 %5069, -1364
  %5071 = add i64 %5068, 10
  store i64 %5071, i64* %3, align 8
  %5072 = inttoptr i64 %5070 to i32*
  store i32 3, i32* %5072, align 4
  %.pre203 = load i64, i64* %3, align 8
  br label %block_.L_45fafd

block_.L_45fafd:                                  ; preds = %block_.L_45fad5, %block_45faf3
  %5073 = phi i64 [ %.pre203, %block_45faf3 ], [ %5068, %block_.L_45fad5 ]
  %5074 = load i64, i64* %RBP.i, align 8
  %5075 = add i64 %5074, -1252
  store i64 %5075, i64* %RSI.i2284, align 8
  %5076 = add i64 %5074, -1360
  store i64 %5076, i64* %RDX.i2074.pre-phi, align 8
  %5077 = add i64 %5074, -48
  %5078 = add i64 %5073, 17
  store i64 %5078, i64* %3, align 8
  %5079 = inttoptr i64 %5077 to i32*
  %5080 = load i32, i32* %5079, align 4
  %5081 = zext i32 %5080 to i64
  store i64 %5081, i64* %RDI.i2235, align 8
  %5082 = add i64 %5074, -1364
  %5083 = add i64 %5073, 23
  store i64 %5083, i64* %3, align 8
  %5084 = inttoptr i64 %5082 to i32*
  %5085 = load i32, i32* %5084, align 4
  %5086 = zext i32 %5085 to i64
  store i64 %5086, i64* %RCX.i2272, align 8
  %5087 = add i64 %5073, 116147
  %5088 = add i64 %5073, 28
  %5089 = load i64, i64* %6, align 8
  %5090 = add i64 %5089, -8
  %5091 = inttoptr i64 %5090 to i64*
  store i64 %5088, i64* %5091, align 8
  store i64 %5090, i64* %6, align 8
  store i64 %5087, i64* %3, align 8
  %call2_45fb14 = tail call %struct.Memory* @sub_47c0b0.find_superstring_liberties(%struct.State* nonnull %0, i64 %5087, %struct.Memory* %MEMORY.59)
  %5092 = load i64, i64* %RBP.i, align 8
  %5093 = add i64 %5092, -1252
  %5094 = load i64, i64* %3, align 8
  %5095 = add i64 %5094, 7
  store i64 %5095, i64* %3, align 8
  %5096 = inttoptr i64 %5093 to i32*
  %5097 = load i32, i32* %5096, align 4
  %5098 = add i32 %5097, -5
  %5099 = icmp ult i32 %5097, 5
  %5100 = zext i1 %5099 to i8
  store i8 %5100, i8* %40, align 1
  %5101 = and i32 %5098, 255
  %5102 = tail call i32 @llvm.ctpop.i32(i32 %5101)
  %5103 = trunc i32 %5102 to i8
  %5104 = and i8 %5103, 1
  %5105 = xor i8 %5104, 1
  store i8 %5105, i8* %47, align 1
  %5106 = xor i32 %5098, %5097
  %5107 = lshr i32 %5106, 4
  %5108 = trunc i32 %5107 to i8
  %5109 = and i8 %5108, 1
  store i8 %5109, i8* %53, align 1
  %5110 = icmp eq i32 %5098, 0
  %5111 = zext i1 %5110 to i8
  store i8 %5111, i8* %56, align 1
  %5112 = lshr i32 %5098, 31
  %5113 = trunc i32 %5112 to i8
  store i8 %5113, i8* %59, align 1
  %5114 = lshr i32 %5097, 31
  %5115 = xor i32 %5112, %5114
  %5116 = add nuw nsw i32 %5115, %5114
  %5117 = icmp eq i32 %5116, 2
  %5118 = zext i1 %5117 to i8
  store i8 %5118, i8* %65, align 1
  %5119 = icmp ne i8 %5113, 0
  %5120 = xor i1 %5119, %5117
  %.demorgan254 = or i1 %5110, %5120
  %.v293 = select i1 %.demorgan254, i64 13, i64 791
  %5121 = add i64 %5094, %.v293
  store i64 %5121, i64* %3, align 8
  br i1 %.demorgan254, label %block_45fb26, label %block_.L_45fe30

block_45fb26:                                     ; preds = %block_.L_45fafd
  %5122 = add i64 %5092, -772
  %5123 = add i64 %5121, 10
  store i64 %5123, i64* %3, align 8
  %5124 = inttoptr i64 %5122 to i32*
  store i32 0, i32* %5124, align 4
  %.pre204 = load i64, i64* %3, align 8
  br label %block_.L_45fb30

block_.L_45fb30:                                  ; preds = %block_.L_45fe17, %block_45fb26
  %5125 = phi i64 [ %.pre204, %block_45fb26 ], [ %5996, %block_.L_45fe17 ]
  %MEMORY.62 = phi %struct.Memory* [ %call2_45fb14, %block_45fb26 ], [ %MEMORY.77, %block_.L_45fe17 ]
  %5126 = load i64, i64* %RBP.i, align 8
  %5127 = add i64 %5126, -772
  %5128 = add i64 %5125, 6
  store i64 %5128, i64* %3, align 8
  %5129 = inttoptr i64 %5127 to i32*
  %5130 = load i32, i32* %5129, align 4
  %5131 = zext i32 %5130 to i64
  store i64 %5131, i64* %RAX.i2292, align 8
  %5132 = add i64 %5126, -1252
  %5133 = add i64 %5125, 12
  store i64 %5133, i64* %3, align 8
  %5134 = inttoptr i64 %5132 to i32*
  %5135 = load i32, i32* %5134, align 4
  %5136 = sub i32 %5130, %5135
  %5137 = icmp ult i32 %5130, %5135
  %5138 = zext i1 %5137 to i8
  store i8 %5138, i8* %40, align 1
  %5139 = and i32 %5136, 255
  %5140 = tail call i32 @llvm.ctpop.i32(i32 %5139)
  %5141 = trunc i32 %5140 to i8
  %5142 = and i8 %5141, 1
  %5143 = xor i8 %5142, 1
  store i8 %5143, i8* %47, align 1
  %5144 = xor i32 %5135, %5130
  %5145 = xor i32 %5144, %5136
  %5146 = lshr i32 %5145, 4
  %5147 = trunc i32 %5146 to i8
  %5148 = and i8 %5147, 1
  store i8 %5148, i8* %53, align 1
  %5149 = icmp eq i32 %5136, 0
  %5150 = zext i1 %5149 to i8
  store i8 %5150, i8* %56, align 1
  %5151 = lshr i32 %5136, 31
  %5152 = trunc i32 %5151 to i8
  store i8 %5152, i8* %59, align 1
  %5153 = lshr i32 %5130, 31
  %5154 = lshr i32 %5135, 31
  %5155 = xor i32 %5154, %5153
  %5156 = xor i32 %5151, %5153
  %5157 = add nuw nsw i32 %5156, %5155
  %5158 = icmp eq i32 %5157, 2
  %5159 = zext i1 %5158 to i8
  store i8 %5159, i8* %65, align 1
  %5160 = icmp ne i8 %5152, 0
  %5161 = xor i1 %5160, %5158
  %.v294 = select i1 %5161, i64 18, i64 763
  %5162 = add i64 %5125, %.v294
  store i64 %5162, i64* %3, align 8
  br i1 %5161, label %block_45fb42, label %block_.L_45fe2b

block_45fb42:                                     ; preds = %block_.L_45fb30
  %5163 = add i64 %5162, 7
  store i64 %5163, i64* %3, align 8
  %5164 = load i32, i32* %5129, align 4
  %5165 = sext i32 %5164 to i64
  store i64 %5165, i64* %RAX.i2292, align 8
  %5166 = shl nsw i64 %5165, 2
  %5167 = add i64 %5126, -1360
  %5168 = add i64 %5167, %5166
  %5169 = add i64 %5162, 14
  store i64 %5169, i64* %3, align 8
  %5170 = inttoptr i64 %5168 to i32*
  %5171 = load i32, i32* %5170, align 4
  %5172 = zext i32 %5171 to i64
  store i64 %5172, i64* %RCX.i2272, align 8
  %5173 = add i64 %5126, -1368
  %5174 = add i64 %5162, 20
  store i64 %5174, i64* %3, align 8
  %5175 = inttoptr i64 %5173 to i32*
  store i32 %5171, i32* %5175, align 4
  %5176 = load i64, i64* %RBP.i, align 8
  %5177 = add i64 %5176, -1368
  %5178 = load i64, i64* %3, align 8
  %5179 = add i64 %5178, 6
  store i64 %5179, i64* %3, align 8
  %5180 = inttoptr i64 %5177 to i32*
  %5181 = load i32, i32* %5180, align 4
  %5182 = zext i32 %5181 to i64
  store i64 %5182, i64* %RDI.i2235, align 8
  %5183 = add i64 %5176, -48
  %5184 = add i64 %5178, 9
  store i64 %5184, i64* %3, align 8
  %5185 = inttoptr i64 %5183 to i32*
  %5186 = load i32, i32* %5185, align 4
  %5187 = zext i32 %5186 to i64
  store i64 %5187, i64* %RSI.i2284, align 8
  %5188 = add i64 %5178, -307366
  %5189 = add i64 %5178, 14
  %5190 = load i64, i64* %6, align 8
  %5191 = add i64 %5190, -8
  %5192 = inttoptr i64 %5191 to i64*
  store i64 %5189, i64* %5192, align 8
  store i64 %5191, i64* %6, align 8
  store i64 %5188, i64* %3, align 8
  %call2_45fb5f = tail call %struct.Memory* @sub_414ab0.liberty_of_string(%struct.State* nonnull %0, i64 %5188, %struct.Memory* %MEMORY.62)
  %5193 = load i32, i32* %EAX.i2231, align 4
  %5194 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %5195 = and i32 %5193, 255
  %5196 = tail call i32 @llvm.ctpop.i32(i32 %5195)
  %5197 = trunc i32 %5196 to i8
  %5198 = and i8 %5197, 1
  %5199 = xor i8 %5198, 1
  store i8 %5199, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5200 = icmp eq i32 %5193, 0
  %5201 = zext i1 %5200 to i8
  store i8 %5201, i8* %56, align 1
  %5202 = lshr i32 %5193, 31
  %5203 = trunc i32 %5202 to i8
  store i8 %5203, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v295 = select i1 %5200, i64 14, i64 9
  %5204 = add i64 %5194, %.v295
  store i64 %5204, i64* %3, align 8
  br i1 %5200, label %block_.L_45fb72, label %block_45fb6d

block_45fb6d:                                     ; preds = %block_45fb42
  %5205 = add i64 %5204, 682
  br label %block_.L_45fe17

block_.L_45fb72:                                  ; preds = %block_45fb42
  store i64 ptrtoint (%G__0x57fe66_type* @G__0x57fe66 to i64), i64* %RDX.i2074.pre-phi, align 8
  %5206 = load i64, i64* %RBP.i, align 8
  %5207 = add i64 %5206, -1368
  %5208 = add i64 %5204, 16
  store i64 %5208, i64* %3, align 8
  %5209 = inttoptr i64 %5207 to i32*
  %5210 = load i32, i32* %5209, align 4
  %5211 = zext i32 %5210 to i64
  store i64 %5211, i64* %RDI.i2235, align 8
  %5212 = add i64 %5206, -72
  %5213 = add i64 %5204, 19
  store i64 %5213, i64* %3, align 8
  %5214 = inttoptr i64 %5212 to i32*
  %5215 = load i32, i32* %5214, align 4
  %5216 = zext i32 %5215 to i64
  store i64 %5216, i64* %RSI.i2284, align 8
  %5217 = add i64 %5206, -48
  %5218 = add i64 %5204, 22
  store i64 %5218, i64* %3, align 8
  %5219 = inttoptr i64 %5217 to i32*
  %5220 = load i32, i32* %5219, align 4
  %5221 = zext i32 %5220 to i64
  store i64 %5221, i64* %RCX.i2272, align 8
  %5222 = add i64 %5206, -60
  %5223 = add i64 %5204, 26
  store i64 %5223, i64* %3, align 8
  %5224 = inttoptr i64 %5222 to i32*
  %5225 = load i32, i32* %5224, align 4
  %5226 = zext i32 %5225 to i64
  store i64 %5226, i64* %68, align 8
  %5227 = add i64 %5206, -64
  %5228 = add i64 %5204, 30
  store i64 %5228, i64* %3, align 8
  %5229 = inttoptr i64 %5227 to i32*
  %5230 = load i32, i32* %5229, align 4
  %5231 = zext i32 %5230 to i64
  store i64 %5231, i64* %3989, align 8
  %5232 = add i64 %5204, -355650
  %5233 = add i64 %5204, 35
  %5234 = load i64, i64* %6, align 8
  %5235 = add i64 %5234, -8
  %5236 = inttoptr i64 %5235 to i64*
  store i64 %5233, i64* %5236, align 8
  store i64 %5235, i64* %6, align 8
  store i64 %5232, i64* %3, align 8
  %call2_45fb90 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %5232, %struct.Memory* %MEMORY.62)
  %5237 = load i32, i32* %EAX.i2231, align 4
  %5238 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %5239 = and i32 %5237, 255
  %5240 = tail call i32 @llvm.ctpop.i32(i32 %5239)
  %5241 = trunc i32 %5240 to i8
  %5242 = and i8 %5241, 1
  %5243 = xor i8 %5242, 1
  store i8 %5243, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5244 = icmp eq i32 %5237, 0
  %5245 = zext i1 %5244 to i8
  store i8 %5245, i8* %56, align 1
  %5246 = lshr i32 %5237, 31
  %5247 = trunc i32 %5246 to i8
  store i8 %5247, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v296 = select i1 %5244, i64 637, i64 9
  %5248 = add i64 %5238, %.v296
  store i64 %5248, i64* %3, align 8
  br i1 %5244, label %block_.L_45fe12, label %block_45fb9e

block_45fb9e:                                     ; preds = %block_.L_45fb72
  %5249 = load i64, i64* %RBP.i, align 8
  %5250 = add i64 %5249, -1368
  %5251 = add i64 %5248, 6
  store i64 %5251, i64* %3, align 8
  %5252 = inttoptr i64 %5250 to i32*
  %5253 = load i32, i32* %5252, align 4
  %5254 = zext i32 %5253 to i64
  store i64 %5254, i64* %RDI.i2235, align 8
  %5255 = add i64 %5248, -328734
  %5256 = add i64 %5248, 11
  %5257 = load i64, i64* %6, align 8
  %5258 = add i64 %5257, -8
  %5259 = inttoptr i64 %5258 to i64*
  store i64 %5256, i64* %5259, align 8
  store i64 %5258, i64* %6, align 8
  store i64 %5255, i64* %3, align 8
  %call2_45fba4 = tail call %struct.Memory* @sub_40f780.countlib(%struct.State* nonnull %0, i64 %5255, %struct.Memory* %MEMORY.62)
  %5260 = load i32, i32* %EAX.i2231, align 4
  %5261 = load i64, i64* %3, align 8
  %5262 = add i32 %5260, -1
  %5263 = icmp eq i32 %5260, 0
  %5264 = zext i1 %5263 to i8
  store i8 %5264, i8* %40, align 1
  %5265 = and i32 %5262, 255
  %5266 = tail call i32 @llvm.ctpop.i32(i32 %5265)
  %5267 = trunc i32 %5266 to i8
  %5268 = and i8 %5267, 1
  %5269 = xor i8 %5268, 1
  store i8 %5269, i8* %47, align 1
  %5270 = xor i32 %5262, %5260
  %5271 = lshr i32 %5270, 4
  %5272 = trunc i32 %5271 to i8
  %5273 = and i8 %5272, 1
  store i8 %5273, i8* %53, align 1
  %5274 = icmp eq i32 %5262, 0
  %5275 = zext i1 %5274 to i8
  store i8 %5275, i8* %56, align 1
  %5276 = lshr i32 %5262, 31
  %5277 = trunc i32 %5276 to i8
  store i8 %5277, i8* %59, align 1
  %5278 = lshr i32 %5260, 31
  %5279 = xor i32 %5276, %5278
  %5280 = add nuw nsw i32 %5279, %5278
  %5281 = icmp eq i32 %5280, 2
  %5282 = zext i1 %5281 to i8
  store i8 %5282, i8* %65, align 1
  %.v297 = select i1 %5274, i64 9, i64 364
  %5283 = add i64 %5261, %.v297
  store i64 %5283, i64* %3, align 8
  br i1 %5274, label %block_45fbb2, label %block_.L_45fd15

block_45fbb2:                                     ; preds = %block_45fb9e
  store i64 1, i64* %RSI.i2284, align 8
  %5284 = load i64, i64* %RBP.i, align 8
  %5285 = add i64 %5284, -80
  store i64 %5285, i64* %RDX.i2074.pre-phi, align 8
  %5286 = add i64 %5284, -1368
  %5287 = add i64 %5283, 15
  store i64 %5287, i64* %3, align 8
  %5288 = inttoptr i64 %5286 to i32*
  %5289 = load i32, i32* %5288, align 4
  %5290 = zext i32 %5289 to i64
  store i64 %5290, i64* %RDI.i2235, align 8
  %5291 = add i64 %5283, -328562
  %5292 = add i64 %5283, 20
  %5293 = load i64, i64* %6, align 8
  %5294 = add i64 %5293, -8
  %5295 = inttoptr i64 %5294 to i64*
  store i64 %5292, i64* %5295, align 8
  store i64 %5294, i64* %6, align 8
  store i64 %5291, i64* %3, align 8
  %call2_45fbc1 = tail call %struct.Memory* @sub_40f840.findlib(%struct.State* nonnull %0, i64 %5291, %struct.Memory* %MEMORY.62)
  %5296 = load i64, i64* %3, align 8
  store i64 2, i64* %RDX.i2074.pre-phi, align 8
  store i64 0, i64* %RSI.i2284, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RCX.i2272, align 8
  %5297 = load i64, i64* %RBP.i, align 8
  %5298 = add i64 %5297, -80
  %5299 = add i64 %5296, 12
  store i64 %5299, i64* %3, align 8
  %5300 = inttoptr i64 %5298 to i32*
  %5301 = load i32, i32* %5300, align 4
  %5302 = zext i32 %5301 to i64
  store i64 %5302, i64* %RDI.i2235, align 8
  %5303 = add i64 %5297, -72
  %5304 = add i64 %5296, 15
  store i64 %5304, i64* %3, align 8
  %5305 = inttoptr i64 %5303 to i32*
  %5306 = load i32, i32* %5305, align 4
  %5307 = zext i32 %5306 to i64
  store i64 %5307, i64* %RSI.i2284, align 8
  %5308 = add i64 %5297, -1504
  %5309 = load i32, i32* %EAX.i2231, align 4
  %5310 = add i64 %5296, 21
  store i64 %5310, i64* %3, align 8
  %5311 = inttoptr i64 %5308 to i32*
  store i32 %5309, i32* %5311, align 4
  %5312 = load i64, i64* %3, align 8
  %5313 = add i64 %5312, -321067
  %5314 = add i64 %5312, 5
  %5315 = load i64, i64* %6, align 8
  %5316 = add i64 %5315, -8
  %5317 = inttoptr i64 %5316 to i64*
  store i64 %5314, i64* %5317, align 8
  store i64 %5316, i64* %6, align 8
  store i64 %5313, i64* %3, align 8
  %call2_45fbdb = tail call %struct.Memory* @sub_4115b0.approxlib(%struct.State* nonnull %0, i64 %5313, %struct.Memory* %MEMORY.62)
  %5318 = load i32, i32* %EAX.i2231, align 4
  %5319 = load i64, i64* %3, align 8
  %5320 = add i32 %5318, -1
  %5321 = icmp eq i32 %5318, 0
  %5322 = zext i1 %5321 to i8
  store i8 %5322, i8* %40, align 1
  %5323 = and i32 %5320, 255
  %5324 = tail call i32 @llvm.ctpop.i32(i32 %5323)
  %5325 = trunc i32 %5324 to i8
  %5326 = and i8 %5325, 1
  %5327 = xor i8 %5326, 1
  store i8 %5327, i8* %47, align 1
  %5328 = xor i32 %5320, %5318
  %5329 = lshr i32 %5328, 4
  %5330 = trunc i32 %5329 to i8
  %5331 = and i8 %5330, 1
  store i8 %5331, i8* %53, align 1
  %5332 = icmp eq i32 %5320, 0
  %5333 = zext i1 %5332 to i8
  store i8 %5333, i8* %56, align 1
  %5334 = lshr i32 %5320, 31
  %5335 = trunc i32 %5334 to i8
  store i8 %5335, i8* %59, align 1
  %5336 = lshr i32 %5318, 31
  %5337 = xor i32 %5334, %5336
  %5338 = add nuw nsw i32 %5337, %5336
  %5339 = icmp eq i32 %5338, 2
  %5340 = zext i1 %5339 to i8
  store i8 %5340, i8* %65, align 1
  %5341 = icmp ne i8 %5335, 0
  %5342 = xor i1 %5341, %5339
  %5343 = or i1 %5332, %5342
  %.v304 = select i1 %5343, i64 299, i64 9
  %5344 = add i64 %5319, %.v304
  store i64 %5344, i64* %3, align 8
  br i1 %5343, label %block_.L_45fd0b, label %block_45fbe9

block_45fbe9:                                     ; preds = %block_45fbb2
  %5345 = add i64 %5344, -335497
  %5346 = add i64 %5344, 5
  %5347 = load i64, i64* %6, align 8
  %5348 = add i64 %5347, -8
  %5349 = inttoptr i64 %5348 to i64*
  store i64 %5346, i64* %5349, align 8
  store i64 %5348, i64* %6, align 8
  store i64 %5345, i64* %3, align 8
  %call2_45fbe9 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5345, %struct.Memory* %MEMORY.62)
  %5350 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x57fe70_type* @G__0x57fe70 to i64), i64* %RDX.i2074.pre-phi, align 8
  %5351 = load i64, i64* %RBP.i, align 8
  %5352 = add i64 %5351, -80
  %5353 = add i64 %5350, 13
  store i64 %5353, i64* %3, align 8
  %5354 = inttoptr i64 %5352 to i32*
  %5355 = load i32, i32* %5354, align 4
  %5356 = zext i32 %5355 to i64
  store i64 %5356, i64* %RDI.i2235, align 8
  %5357 = add i64 %5351, -72
  %5358 = add i64 %5350, 16
  store i64 %5358, i64* %3, align 8
  %5359 = inttoptr i64 %5357 to i32*
  %5360 = load i32, i32* %5359, align 4
  %5361 = zext i32 %5360 to i64
  store i64 %5361, i64* %RSI.i2284, align 8
  %5362 = add i64 %5351, -48
  %5363 = add i64 %5350, 19
  store i64 %5363, i64* %3, align 8
  %5364 = inttoptr i64 %5362 to i32*
  %5365 = load i32, i32* %5364, align 4
  %5366 = zext i32 %5365 to i64
  store i64 %5366, i64* %RCX.i2272, align 8
  %5367 = add i64 %5351, -60
  %5368 = add i64 %5350, 23
  store i64 %5368, i64* %3, align 8
  %5369 = inttoptr i64 %5367 to i32*
  %5370 = load i32, i32* %5369, align 4
  %5371 = zext i32 %5370 to i64
  store i64 %5371, i64* %68, align 8
  %5372 = add i64 %5351, -64
  %5373 = add i64 %5350, 27
  store i64 %5373, i64* %3, align 8
  %5374 = inttoptr i64 %5372 to i32*
  %5375 = load i32, i32* %5374, align 4
  %5376 = zext i32 %5375 to i64
  store i64 %5376, i64* %3989, align 8
  %5377 = add i64 %5350, -355774
  %5378 = add i64 %5350, 32
  %5379 = load i64, i64* %6, align 8
  %5380 = add i64 %5379, -8
  %5381 = inttoptr i64 %5380 to i64*
  store i64 %5378, i64* %5381, align 8
  store i64 %5380, i64* %6, align 8
  store i64 %5377, i64* %3, align 8
  %call2_45fc09 = tail call %struct.Memory* @sub_408e30.trymove(%struct.State* nonnull %0, i64 %5377, %struct.Memory* %MEMORY.62)
  %5382 = load i32, i32* %EAX.i2231, align 4
  %5383 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %5384 = and i32 %5382, 255
  %5385 = tail call i32 @llvm.ctpop.i32(i32 %5384)
  %5386 = trunc i32 %5385 to i8
  %5387 = and i8 %5386, 1
  %5388 = xor i8 %5387, 1
  store i8 %5388, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5389 = icmp eq i32 %5382, 0
  %5390 = zext i1 %5389 to i8
  store i8 %5390, i8* %56, align 1
  %5391 = lshr i32 %5382, 31
  %5392 = trunc i32 %5391 to i8
  store i8 %5392, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v305 = select i1 %5389, i64 248, i64 9
  %5393 = add i64 %5383, %.v305
  store i64 %5393, i64* %3, align 8
  br i1 %5389, label %block_.L_45fd06, label %block_45fc17

block_45fc17:                                     ; preds = %block_45fbe9
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2284, align 8
  %5394 = load i64, i64* %RBP.i, align 8
  %5395 = add i64 %5394, -48
  %5396 = add i64 %5393, 7
  store i64 %5396, i64* %3, align 8
  %5397 = inttoptr i64 %5395 to i32*
  %5398 = load i32, i32* %5397, align 4
  %5399 = zext i32 %5398 to i64
  store i64 %5399, i64* %RDI.i2235, align 8
  %5400 = add i64 %5394, -60
  %5401 = add i64 %5393, 10
  store i64 %5401, i64* %3, align 8
  %5402 = inttoptr i64 %5400 to i32*
  %5403 = load i32, i32* %5402, align 4
  %5404 = zext i32 %5403 to i64
  store i64 %5404, i64* %RDX.i2074.pre-phi, align 8
  %5405 = add i64 %5394, -64
  %5406 = add i64 %5393, 13
  store i64 %5406, i64* %3, align 8
  %5407 = inttoptr i64 %5405 to i32*
  %5408 = load i32, i32* %5407, align 4
  %5409 = zext i32 %5408 to i64
  store i64 %5409, i64* %RCX.i2272, align 8
  %5410 = add i64 %5393, 14857
  %5411 = add i64 %5393, 18
  %5412 = load i64, i64* %6, align 8
  %5413 = add i64 %5412, -8
  %5414 = inttoptr i64 %5413 to i64*
  store i64 %5411, i64* %5414, align 8
  store i64 %5413, i64* %6, align 8
  store i64 %5410, i64* %3, align 8
  %call2_45fc24 = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %5410, %struct.Memory* %MEMORY.62)
  %5415 = load i64, i64* %RBP.i, align 8
  %5416 = add i64 %5415, -768
  %5417 = load i32, i32* %EAX.i2231, align 4
  %5418 = load i64, i64* %3, align 8
  %5419 = add i64 %5418, 6
  store i64 %5419, i64* %3, align 8
  %5420 = inttoptr i64 %5416 to i32*
  store i32 %5417, i32* %5420, align 4
  %5421 = load i64, i64* %RBP.i, align 8
  %5422 = add i64 %5421, -768
  %5423 = load i64, i64* %3, align 8
  %5424 = add i64 %5423, 7
  store i64 %5424, i64* %3, align 8
  %5425 = inttoptr i64 %5422 to i32*
  %5426 = load i32, i32* %5425, align 4
  %5427 = add i32 %5426, -5
  %5428 = icmp ult i32 %5426, 5
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %40, align 1
  %5430 = and i32 %5427, 255
  %5431 = tail call i32 @llvm.ctpop.i32(i32 %5430)
  %5432 = trunc i32 %5431 to i8
  %5433 = and i8 %5432, 1
  %5434 = xor i8 %5433, 1
  store i8 %5434, i8* %47, align 1
  %5435 = xor i32 %5427, %5426
  %5436 = lshr i32 %5435, 4
  %5437 = trunc i32 %5436 to i8
  %5438 = and i8 %5437, 1
  store i8 %5438, i8* %53, align 1
  %5439 = icmp eq i32 %5427, 0
  %5440 = zext i1 %5439 to i8
  store i8 %5440, i8* %56, align 1
  %5441 = lshr i32 %5427, 31
  %5442 = trunc i32 %5441 to i8
  store i8 %5442, i8* %59, align 1
  %5443 = lshr i32 %5426, 31
  %5444 = xor i32 %5441, %5443
  %5445 = add nuw nsw i32 %5444, %5443
  %5446 = icmp eq i32 %5445, 2
  %5447 = zext i1 %5446 to i8
  store i8 %5447, i8* %65, align 1
  %.v306 = select i1 %5439, i64 205, i64 13
  %5448 = add i64 %5423, %.v306
  store i64 %5448, i64* %3, align 8
  br i1 %5439, label %block_.L_45fcfc, label %block_45fc3c

block_45fc3c:                                     ; preds = %block_45fc17
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2284, align 8
  %5449 = add i64 %5421, -48
  %5450 = add i64 %5448, 7
  store i64 %5450, i64* %3, align 8
  %5451 = inttoptr i64 %5449 to i32*
  %5452 = load i32, i32* %5451, align 4
  %5453 = zext i32 %5452 to i64
  store i64 %5453, i64* %RDI.i2235, align 8
  %5454 = add i64 %5421, -60
  %5455 = add i64 %5448, 10
  store i64 %5455, i64* %3, align 8
  %5456 = inttoptr i64 %5454 to i32*
  %5457 = load i32, i32* %5456, align 4
  %5458 = zext i32 %5457 to i64
  store i64 %5458, i64* %RDX.i2074.pre-phi, align 8
  %5459 = add i64 %5421, -64
  %5460 = add i64 %5448, 13
  store i64 %5460, i64* %3, align 8
  %5461 = inttoptr i64 %5459 to i32*
  %5462 = load i32, i32* %5461, align 4
  %5463 = zext i32 %5462 to i64
  store i64 %5463, i64* %RCX.i2272, align 8
  %5464 = add i64 %5448, -8028
  %5465 = add i64 %5448, 18
  %5466 = load i64, i64* %6, align 8
  %5467 = add i64 %5466, -8
  %5468 = inttoptr i64 %5467 to i64*
  store i64 %5465, i64* %5468, align 8
  store i64 %5467, i64* %6, align 8
  store i64 %5464, i64* %3, align 8
  %call2_45fc49 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %5464, %struct.Memory* %MEMORY.62)
  %5469 = load i32, i32* %EAX.i2231, align 4
  %5470 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %5471 = and i32 %5469, 255
  %5472 = tail call i32 @llvm.ctpop.i32(i32 %5471)
  %5473 = trunc i32 %5472 to i8
  %5474 = and i8 %5473, 1
  %5475 = xor i8 %5474, 1
  store i8 %5475, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5476 = icmp eq i32 %5469, 0
  %5477 = zext i1 %5476 to i8
  store i8 %5477, i8* %56, align 1
  %5478 = lshr i32 %5469, 31
  %5479 = trunc i32 %5478 to i8
  store i8 %5479, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v307 = select i1 %5476, i64 174, i64 9
  %5480 = add i64 %5470, %.v307
  store i64 %5480, i64* %3, align 8
  br i1 %5476, label %block_.L_45fcfc, label %block_45fc57

block_45fc57:                                     ; preds = %block_45fc3c
  %5481 = add i64 %5480, -335607
  %5482 = add i64 %5480, 5
  %5483 = load i64, i64* %6, align 8
  %5484 = add i64 %5483, -8
  %5485 = inttoptr i64 %5484 to i64*
  store i64 %5482, i64* %5485, align 8
  store i64 %5484, i64* %6, align 8
  store i64 %5481, i64* %3, align 8
  %call2_45fc57 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5481, %struct.Memory* %MEMORY.62)
  %5486 = load i64, i64* %RBP.i, align 8
  %5487 = add i64 %5486, -768
  %5488 = load i64, i64* %3, align 8
  %5489 = add i64 %5488, 7
  store i64 %5489, i64* %3, align 8
  %5490 = inttoptr i64 %5487 to i32*
  %5491 = load i32, i32* %5490, align 4
  store i8 0, i8* %40, align 1
  %5492 = and i32 %5491, 255
  %5493 = tail call i32 @llvm.ctpop.i32(i32 %5492)
  %5494 = trunc i32 %5493 to i8
  %5495 = and i8 %5494, 1
  %5496 = xor i8 %5495, 1
  store i8 %5496, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5497 = icmp eq i32 %5491, 0
  %5498 = zext i1 %5497 to i8
  store i8 %5498, i8* %56, align 1
  %5499 = lshr i32 %5491, 31
  %5500 = trunc i32 %5499 to i8
  store i8 %5500, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v308 = select i1 %5497, i64 13, i64 96
  %5501 = add i64 %5488, %.v308
  store i64 %5501, i64* %3, align 8
  br i1 %5497, label %block_45fc69, label %block_.L_45fcbc

block_45fc69:                                     ; preds = %block_45fc57
  %5502 = add i64 %5486, -56
  %5503 = add i64 %5501, 5
  store i64 %5503, i64* %3, align 8
  %5504 = inttoptr i64 %5502 to i64*
  %5505 = load i64, i64* %5504, align 8
  store i8 0, i8* %40, align 1
  %5506 = trunc i64 %5505 to i32
  %5507 = and i32 %5506, 255
  %5508 = tail call i32 @llvm.ctpop.i32(i32 %5507)
  %5509 = trunc i32 %5508 to i8
  %5510 = and i8 %5509, 1
  %5511 = xor i8 %5510, 1
  store i8 %5511, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5512 = icmp eq i64 %5505, 0
  %5513 = zext i1 %5512 to i8
  store i8 %5513, i8* %56, align 1
  %5514 = lshr i64 %5505, 63
  %5515 = trunc i64 %5514 to i8
  store i8 %5515, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v310 = select i1 %5512, i64 20, i64 11
  %5516 = add i64 %5501, %.v310
  store i64 %5516, i64* %3, align 8
  br i1 %5512, label %block_.L_45fc7d, label %block_45fc74

block_45fc74:                                     ; preds = %block_45fc69
  %5517 = add i64 %5486, -80
  %5518 = add i64 %5516, 3
  store i64 %5518, i64* %3, align 8
  %5519 = inttoptr i64 %5517 to i32*
  %5520 = load i32, i32* %5519, align 4
  %5521 = zext i32 %5520 to i64
  store i64 %5521, i64* %RAX.i2292, align 8
  %5522 = add i64 %5516, 7
  store i64 %5522, i64* %3, align 8
  %5523 = load i64, i64* %5504, align 8
  store i64 %5523, i64* %RCX.i2272, align 8
  %5524 = add i64 %5516, 9
  store i64 %5524, i64* %3, align 8
  %5525 = inttoptr i64 %5523 to i32*
  store i32 %5520, i32* %5525, align 4
  %.pre205 = load i64, i64* %3, align 8
  br label %block_.L_45fc7d

block_.L_45fc7d:                                  ; preds = %block_45fc74, %block_45fc69
  %5526 = phi i64 [ %.pre205, %block_45fc74 ], [ %5516, %block_45fc69 ]
  %5527 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %5528 = trunc i64 %5527 to i32
  %5529 = and i32 %5528, 255
  %5530 = tail call i32 @llvm.ctpop.i32(i32 %5529)
  %5531 = trunc i32 %5530 to i8
  %5532 = and i8 %5531, 1
  %5533 = xor i8 %5532, 1
  store i8 %5533, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5534 = icmp eq i64 %5527, 0
  %5535 = zext i1 %5534 to i8
  store i8 %5535, i8* %56, align 1
  %5536 = lshr i64 %5527, 63
  %5537 = trunc i64 %5536 to i8
  store i8 %5537, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v311 = select i1 %5534, i64 51, i64 15
  %5538 = add i64 %5526, %.v311
  store i64 %5538, i64* %3, align 8
  br i1 %5534, label %block_.L_45fcb0, label %block_45fc8c

block_45fc8c:                                     ; preds = %block_.L_45fc7d
  store i64 5, i64* %RCX.i2272, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %68, align 8
  %5539 = load i64, i64* %RBP.i, align 8
  %5540 = add i64 %5539, -1200
  %5541 = add i64 %5538, 22
  store i64 %5541, i64* %3, align 8
  %5542 = inttoptr i64 %5540 to i64*
  %5543 = load i64, i64* %5542, align 8
  store i64 %5543, i64* %RDI.i2235, align 8
  %5544 = add i64 %5539, -1204
  %5545 = add i64 %5538, 28
  store i64 %5545, i64* %3, align 8
  %5546 = inttoptr i64 %5544 to i32*
  %5547 = load i32, i32* %5546, align 4
  %5548 = zext i32 %5547 to i64
  store i64 %5548, i64* %RSI.i2284, align 8
  %5549 = add i64 %5539, -80
  %5550 = add i64 %5538, 31
  store i64 %5550, i64* %3, align 8
  %5551 = inttoptr i64 %5549 to i32*
  %5552 = load i32, i32* %5551, align 4
  %5553 = zext i32 %5552 to i64
  store i64 %5553, i64* %RDX.i2074.pre-phi, align 8
  %5554 = add i64 %5538, -294092
  %5555 = add i64 %5538, 36
  %5556 = load i64, i64* %6, align 8
  %5557 = add i64 %5556, -8
  %5558 = inttoptr i64 %5557 to i64*
  store i64 %5555, i64* %5558, align 8
  store i64 %5557, i64* %6, align 8
  store i64 %5554, i64* %3, align 8
  %call2_45fcab = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %5554, %struct.Memory* %MEMORY.62)
  %.pre206 = load i64, i64* %3, align 8
  br label %block_.L_45fcb0

block_.L_45fcb0:                                  ; preds = %block_45fc8c, %block_.L_45fc7d
  %5559 = phi i64 [ %5538, %block_.L_45fc7d ], [ %.pre206, %block_45fc8c ]
  %MEMORY.64 = phi %struct.Memory* [ %MEMORY.62, %block_.L_45fc7d ], [ %call2_45fcab, %block_45fc8c ]
  %5560 = load i64, i64* %RBP.i, align 8
  %5561 = add i64 %5560, -44
  %5562 = add i64 %5559, 7
  store i64 %5562, i64* %3, align 8
  %5563 = inttoptr i64 %5561 to i32*
  store i32 5, i32* %5563, align 4
  %5564 = load i64, i64* %3, align 8
  %5565 = add i64 %5564, 615
  store i64 %5565, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45fcbc:                                  ; preds = %block_45fc57
  store i64 5, i64* %RAX.i2292, align 8
  %5566 = add i64 %5501, 11
  store i64 %5566, i64* %3, align 8
  %5567 = load i32, i32* %5490, align 4
  %5568 = sub i32 5, %5567
  %5569 = zext i32 %5568 to i64
  store i64 %5569, i64* %RAX.i2292, align 8
  %5570 = icmp ugt i32 %5567, 5
  %5571 = zext i1 %5570 to i8
  store i8 %5571, i8* %40, align 1
  %5572 = and i32 %5568, 255
  %5573 = tail call i32 @llvm.ctpop.i32(i32 %5572)
  %5574 = trunc i32 %5573 to i8
  %5575 = and i8 %5574, 1
  %5576 = xor i8 %5575, 1
  store i8 %5576, i8* %47, align 1
  %5577 = xor i32 %5568, %5567
  %5578 = lshr i32 %5577, 4
  %5579 = trunc i32 %5578 to i8
  %5580 = and i8 %5579, 1
  store i8 %5580, i8* %53, align 1
  %5581 = icmp eq i32 %5568, 0
  %5582 = zext i1 %5581 to i8
  store i8 %5582, i8* %56, align 1
  %5583 = lshr i32 %5568, 31
  %5584 = trunc i32 %5583 to i8
  store i8 %5584, i8* %59, align 1
  %5585 = lshr i32 %5567, 31
  %5586 = add nuw nsw i32 %5583, %5585
  %5587 = icmp eq i32 %5586, 2
  %5588 = zext i1 %5587 to i8
  store i8 %5588, i8* %65, align 1
  %5589 = add i64 %5486, -760
  %5590 = add i64 %5501, 17
  store i64 %5590, i64* %3, align 8
  %5591 = inttoptr i64 %5589 to i32*
  %5592 = load i32, i32* %5591, align 4
  %5593 = sub i32 %5568, %5592
  %5594 = icmp ult i32 %5568, %5592
  %5595 = zext i1 %5594 to i8
  store i8 %5595, i8* %40, align 1
  %5596 = and i32 %5593, 255
  %5597 = tail call i32 @llvm.ctpop.i32(i32 %5596)
  %5598 = trunc i32 %5597 to i8
  %5599 = and i8 %5598, 1
  %5600 = xor i8 %5599, 1
  store i8 %5600, i8* %47, align 1
  %5601 = xor i32 %5592, %5568
  %5602 = xor i32 %5601, %5593
  %5603 = lshr i32 %5602, 4
  %5604 = trunc i32 %5603 to i8
  %5605 = and i8 %5604, 1
  store i8 %5605, i8* %53, align 1
  %5606 = icmp eq i32 %5593, 0
  %5607 = zext i1 %5606 to i8
  store i8 %5607, i8* %56, align 1
  %5608 = lshr i32 %5593, 31
  %5609 = trunc i32 %5608 to i8
  store i8 %5609, i8* %59, align 1
  %5610 = lshr i32 %5592, 31
  %5611 = xor i32 %5610, %5583
  %5612 = xor i32 %5608, %5583
  %5613 = add nuw nsw i32 %5612, %5611
  %5614 = icmp eq i32 %5613, 2
  %5615 = zext i1 %5614 to i8
  store i8 %5615, i8* %65, align 1
  %5616 = icmp ne i8 %5609, 0
  %5617 = xor i1 %5616, %5614
  %5618 = or i1 %5606, %5617
  %.v309 = select i1 %5618, i64 49, i64 23
  %5619 = add i64 %5501, %.v309
  store i64 %5619, i64* %3, align 8
  br i1 %5618, label %block_.L_45fced, label %block_45fcd3

block_45fcd3:                                     ; preds = %block_.L_45fcbc
  store i64 5, i64* %RAX.i2292, align 8
  %5620 = add i64 %5486, -80
  %5621 = add i64 %5619, 8
  store i64 %5621, i64* %3, align 8
  %5622 = inttoptr i64 %5620 to i32*
  %5623 = load i32, i32* %5622, align 4
  %5624 = zext i32 %5623 to i64
  store i64 %5624, i64* %RCX.i2272, align 8
  %5625 = add i64 %5486, -756
  %5626 = add i64 %5619, 14
  store i64 %5626, i64* %3, align 8
  %5627 = inttoptr i64 %5625 to i32*
  store i32 %5623, i32* %5627, align 4
  %5628 = load i64, i64* %RAX.i2292, align 8
  %5629 = load i64, i64* %RBP.i, align 8
  %5630 = add i64 %5629, -768
  %5631 = load i64, i64* %3, align 8
  %5632 = add i64 %5631, 6
  store i64 %5632, i64* %3, align 8
  %5633 = trunc i64 %5628 to i32
  %5634 = inttoptr i64 %5630 to i32*
  %5635 = load i32, i32* %5634, align 4
  %5636 = sub i32 %5633, %5635
  %5637 = zext i32 %5636 to i64
  store i64 %5637, i64* %RAX.i2292, align 8
  %5638 = icmp ult i32 %5633, %5635
  %5639 = zext i1 %5638 to i8
  store i8 %5639, i8* %40, align 1
  %5640 = and i32 %5636, 255
  %5641 = tail call i32 @llvm.ctpop.i32(i32 %5640)
  %5642 = trunc i32 %5641 to i8
  %5643 = and i8 %5642, 1
  %5644 = xor i8 %5643, 1
  store i8 %5644, i8* %47, align 1
  %5645 = xor i32 %5635, %5633
  %5646 = xor i32 %5645, %5636
  %5647 = lshr i32 %5646, 4
  %5648 = trunc i32 %5647 to i8
  %5649 = and i8 %5648, 1
  store i8 %5649, i8* %53, align 1
  %5650 = icmp eq i32 %5636, 0
  %5651 = zext i1 %5650 to i8
  store i8 %5651, i8* %56, align 1
  %5652 = lshr i32 %5636, 31
  %5653 = trunc i32 %5652 to i8
  store i8 %5653, i8* %59, align 1
  %5654 = lshr i32 %5633, 31
  %5655 = lshr i32 %5635, 31
  %5656 = xor i32 %5655, %5654
  %5657 = xor i32 %5652, %5654
  %5658 = add nuw nsw i32 %5657, %5656
  %5659 = icmp eq i32 %5658, 2
  %5660 = zext i1 %5659 to i8
  store i8 %5660, i8* %65, align 1
  %5661 = add i64 %5629, -760
  %5662 = add i64 %5631, 12
  store i64 %5662, i64* %3, align 8
  %5663 = inttoptr i64 %5661 to i32*
  store i32 %5636, i32* %5663, align 4
  %.pre207 = load i64, i64* %3, align 8
  br label %block_.L_45fced

block_.L_45fced:                                  ; preds = %block_45fcd3, %block_.L_45fcbc
  %5664 = phi i64 [ %.pre207, %block_45fcd3 ], [ %5619, %block_.L_45fcbc ]
  %5665 = add i64 %5664, 20
  store i64 %5665, i64* %3, align 8
  br label %block_.L_45fd01

block_.L_45fcfc:                                  ; preds = %block_45fc3c, %block_45fc17
  %5666 = phi i64 [ %5480, %block_45fc3c ], [ %5448, %block_45fc17 ]
  %5667 = add i64 %5666, -335772
  %5668 = add i64 %5666, 5
  %5669 = load i64, i64* %6, align 8
  %5670 = add i64 %5669, -8
  %5671 = inttoptr i64 %5670 to i64*
  store i64 %5668, i64* %5671, align 8
  store i64 %5670, i64* %6, align 8
  store i64 %5667, i64* %3, align 8
  %call2_45fcfc = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5667, %struct.Memory* %MEMORY.62)
  %.pre208 = load i64, i64* %3, align 8
  br label %block_.L_45fd01

block_.L_45fd01:                                  ; preds = %block_.L_45fcfc, %block_.L_45fced
  %5672 = phi i64 [ %.pre208, %block_.L_45fcfc ], [ %5665, %block_.L_45fced ]
  %MEMORY.67 = phi %struct.Memory* [ %call2_45fcfc, %block_.L_45fcfc ], [ %MEMORY.62, %block_.L_45fced ]
  %5673 = add i64 %5672, 5
  store i64 %5673, i64* %3, align 8
  br label %block_.L_45fd06

block_.L_45fd06:                                  ; preds = %block_.L_45fd01, %block_45fbe9
  %5674 = phi i64 [ %5393, %block_45fbe9 ], [ %5673, %block_.L_45fd01 ]
  %MEMORY.68 = phi %struct.Memory* [ %MEMORY.62, %block_45fbe9 ], [ %MEMORY.67, %block_.L_45fd01 ]
  %5675 = add i64 %5674, 10
  store i64 %5675, i64* %3, align 8
  br label %block_.L_45fd10

block_.L_45fd0b:                                  ; preds = %block_45fbb2
  %5676 = add i64 %5344, -335787
  %5677 = add i64 %5344, 5
  %5678 = load i64, i64* %6, align 8
  %5679 = add i64 %5678, -8
  %5680 = inttoptr i64 %5679 to i64*
  store i64 %5677, i64* %5680, align 8
  store i64 %5679, i64* %6, align 8
  store i64 %5676, i64* %3, align 8
  %call2_45fd0b = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5676, %struct.Memory* %MEMORY.62)
  %.pre209 = load i64, i64* %3, align 8
  br label %block_.L_45fd10

block_.L_45fd10:                                  ; preds = %block_.L_45fd0b, %block_.L_45fd06
  %5681 = phi i64 [ %.pre209, %block_.L_45fd0b ], [ %5675, %block_.L_45fd06 ]
  %MEMORY.69 = phi %struct.Memory* [ %MEMORY.62, %block_.L_45fd0b ], [ %MEMORY.68, %block_.L_45fd06 ]
  %5682 = add i64 %5681, 253
  br label %block_.L_45fe0d

block_.L_45fd15:                                  ; preds = %block_45fb9e
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2284, align 8
  %5683 = load i64, i64* %RBP.i, align 8
  %5684 = add i64 %5683, -48
  %5685 = add i64 %5283, 7
  store i64 %5685, i64* %3, align 8
  %5686 = inttoptr i64 %5684 to i32*
  %5687 = load i32, i32* %5686, align 4
  %5688 = zext i32 %5687 to i64
  store i64 %5688, i64* %RDI.i2235, align 8
  %5689 = add i64 %5683, -60
  %5690 = add i64 %5283, 10
  store i64 %5690, i64* %3, align 8
  %5691 = inttoptr i64 %5689 to i32*
  %5692 = load i32, i32* %5691, align 4
  %5693 = zext i32 %5692 to i64
  store i64 %5693, i64* %RDX.i2074.pre-phi, align 8
  %5694 = add i64 %5683, -64
  %5695 = add i64 %5283, 13
  store i64 %5695, i64* %3, align 8
  %5696 = inttoptr i64 %5694 to i32*
  %5697 = load i32, i32* %5696, align 4
  %5698 = zext i32 %5697 to i64
  store i64 %5698, i64* %RCX.i2272, align 8
  %5699 = add i64 %5283, 14603
  %5700 = add i64 %5283, 18
  %5701 = load i64, i64* %6, align 8
  %5702 = add i64 %5701, -8
  %5703 = inttoptr i64 %5702 to i64*
  store i64 %5700, i64* %5703, align 8
  store i64 %5702, i64* %6, align 8
  store i64 %5699, i64* %3, align 8
  %call2_45fd22 = tail call %struct.Memory* @sub_463620.do_find_defense(%struct.State* nonnull %0, i64 %5699, %struct.Memory* %MEMORY.62)
  %5704 = load i64, i64* %RBP.i, align 8
  %5705 = add i64 %5704, -768
  %5706 = load i32, i32* %EAX.i2231, align 4
  %5707 = load i64, i64* %3, align 8
  %5708 = add i64 %5707, 6
  store i64 %5708, i64* %3, align 8
  %5709 = inttoptr i64 %5705 to i32*
  store i32 %5706, i32* %5709, align 4
  %5710 = load i64, i64* %RBP.i, align 8
  %5711 = add i64 %5710, -768
  %5712 = load i64, i64* %3, align 8
  %5713 = add i64 %5712, 7
  store i64 %5713, i64* %3, align 8
  %5714 = inttoptr i64 %5711 to i32*
  %5715 = load i32, i32* %5714, align 4
  %5716 = add i32 %5715, -5
  %5717 = icmp ult i32 %5715, 5
  %5718 = zext i1 %5717 to i8
  store i8 %5718, i8* %40, align 1
  %5719 = and i32 %5716, 255
  %5720 = tail call i32 @llvm.ctpop.i32(i32 %5719)
  %5721 = trunc i32 %5720 to i8
  %5722 = and i8 %5721, 1
  %5723 = xor i8 %5722, 1
  store i8 %5723, i8* %47, align 1
  %5724 = xor i32 %5716, %5715
  %5725 = lshr i32 %5724, 4
  %5726 = trunc i32 %5725 to i8
  %5727 = and i8 %5726, 1
  store i8 %5727, i8* %53, align 1
  %5728 = icmp eq i32 %5716, 0
  %5729 = zext i1 %5728 to i8
  store i8 %5729, i8* %56, align 1
  %5730 = lshr i32 %5716, 31
  %5731 = trunc i32 %5730 to i8
  store i8 %5731, i8* %59, align 1
  %5732 = lshr i32 %5715, 31
  %5733 = xor i32 %5730, %5732
  %5734 = add nuw nsw i32 %5733, %5732
  %5735 = icmp eq i32 %5734, 2
  %5736 = zext i1 %5735 to i8
  store i8 %5736, i8* %65, align 1
  %.v298 = select i1 %5728, i64 214, i64 13
  %5737 = add i64 %5712, %.v298
  store i64 %5737, i64* %3, align 8
  br i1 %5728, label %block_.L_45fe03, label %block_45fd3a

block_45fd3a:                                     ; preds = %block_.L_45fd15
  store i64 0, i64* %RAX.i2292, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %RSI.i2284, align 8
  %5738 = add i64 %5710, -48
  %5739 = add i64 %5737, 7
  store i64 %5739, i64* %3, align 8
  %5740 = inttoptr i64 %5738 to i32*
  %5741 = load i32, i32* %5740, align 4
  %5742 = zext i32 %5741 to i64
  store i64 %5742, i64* %RDI.i2235, align 8
  %5743 = add i64 %5710, -60
  %5744 = add i64 %5737, 10
  store i64 %5744, i64* %3, align 8
  %5745 = inttoptr i64 %5743 to i32*
  %5746 = load i32, i32* %5745, align 4
  %5747 = zext i32 %5746 to i64
  store i64 %5747, i64* %RDX.i2074.pre-phi, align 8
  %5748 = add i64 %5710, -64
  %5749 = add i64 %5737, 13
  store i64 %5749, i64* %3, align 8
  %5750 = inttoptr i64 %5748 to i32*
  %5751 = load i32, i32* %5750, align 4
  %5752 = zext i32 %5751 to i64
  store i64 %5752, i64* %RCX.i2272, align 8
  %5753 = add i64 %5737, -8282
  %5754 = add i64 %5737, 18
  %5755 = load i64, i64* %6, align 8
  %5756 = add i64 %5755, -8
  %5757 = inttoptr i64 %5756 to i64*
  store i64 %5754, i64* %5757, align 8
  store i64 %5756, i64* %6, align 8
  store i64 %5753, i64* %3, align 8
  %call2_45fd47 = tail call %struct.Memory* @sub_45dce0.do_attack(%struct.State* nonnull %0, i64 %5753, %struct.Memory* %MEMORY.62)
  %5758 = load i32, i32* %EAX.i2231, align 4
  %5759 = load i64, i64* %3, align 8
  store i8 0, i8* %40, align 1
  %5760 = and i32 %5758, 255
  %5761 = tail call i32 @llvm.ctpop.i32(i32 %5760)
  %5762 = trunc i32 %5761 to i8
  %5763 = and i8 %5762, 1
  %5764 = xor i8 %5763, 1
  store i8 %5764, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5765 = icmp eq i32 %5758, 0
  %5766 = zext i1 %5765 to i8
  store i8 %5766, i8* %56, align 1
  %5767 = lshr i32 %5758, 31
  %5768 = trunc i32 %5767 to i8
  store i8 %5768, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v299 = select i1 %5765, i64 183, i64 9
  %5769 = add i64 %5759, %.v299
  store i64 %5769, i64* %3, align 8
  br i1 %5765, label %block_.L_45fe03, label %block_45fd55

block_45fd55:                                     ; preds = %block_45fd3a
  %5770 = add i64 %5769, -335861
  %5771 = add i64 %5769, 5
  %5772 = load i64, i64* %6, align 8
  %5773 = add i64 %5772, -8
  %5774 = inttoptr i64 %5773 to i64*
  store i64 %5771, i64* %5774, align 8
  store i64 %5773, i64* %6, align 8
  store i64 %5770, i64* %3, align 8
  %call2_45fd55 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5770, %struct.Memory* %MEMORY.62)
  %5775 = load i64, i64* %RBP.i, align 8
  %5776 = add i64 %5775, -768
  %5777 = load i64, i64* %3, align 8
  %5778 = add i64 %5777, 7
  store i64 %5778, i64* %3, align 8
  %5779 = inttoptr i64 %5776 to i32*
  %5780 = load i32, i32* %5779, align 4
  store i8 0, i8* %40, align 1
  %5781 = and i32 %5780, 255
  %5782 = tail call i32 @llvm.ctpop.i32(i32 %5781)
  %5783 = trunc i32 %5782 to i8
  %5784 = and i8 %5783, 1
  %5785 = xor i8 %5784, 1
  store i8 %5785, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5786 = icmp eq i32 %5780, 0
  %5787 = zext i1 %5786 to i8
  store i8 %5787, i8* %56, align 1
  %5788 = lshr i32 %5780, 31
  %5789 = trunc i32 %5788 to i8
  store i8 %5789, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v300 = select i1 %5786, i64 13, i64 102
  %5790 = add i64 %5777, %.v300
  store i64 %5790, i64* %3, align 8
  br i1 %5786, label %block_45fd67, label %block_.L_45fdc0

block_45fd67:                                     ; preds = %block_45fd55
  %5791 = add i64 %5775, -56
  %5792 = add i64 %5790, 5
  store i64 %5792, i64* %3, align 8
  %5793 = inttoptr i64 %5791 to i64*
  %5794 = load i64, i64* %5793, align 8
  store i8 0, i8* %40, align 1
  %5795 = trunc i64 %5794 to i32
  %5796 = and i32 %5795, 255
  %5797 = tail call i32 @llvm.ctpop.i32(i32 %5796)
  %5798 = trunc i32 %5797 to i8
  %5799 = and i8 %5798, 1
  %5800 = xor i8 %5799, 1
  store i8 %5800, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5801 = icmp eq i64 %5794, 0
  %5802 = zext i1 %5801 to i8
  store i8 %5802, i8* %56, align 1
  %5803 = lshr i64 %5794, 63
  %5804 = trunc i64 %5803 to i8
  store i8 %5804, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v302 = select i1 %5801, i64 23, i64 11
  %5805 = add i64 %5790, %.v302
  store i64 %5805, i64* %3, align 8
  br i1 %5801, label %block_.L_45fd7e, label %block_45fd72

block_45fd72:                                     ; preds = %block_45fd67
  %5806 = add i64 %5775, -1368
  %5807 = add i64 %5805, 6
  store i64 %5807, i64* %3, align 8
  %5808 = inttoptr i64 %5806 to i32*
  %5809 = load i32, i32* %5808, align 4
  %5810 = zext i32 %5809 to i64
  store i64 %5810, i64* %RAX.i2292, align 8
  %5811 = add i64 %5805, 10
  store i64 %5811, i64* %3, align 8
  %5812 = load i64, i64* %5793, align 8
  store i64 %5812, i64* %RCX.i2272, align 8
  %5813 = add i64 %5805, 12
  store i64 %5813, i64* %3, align 8
  %5814 = inttoptr i64 %5812 to i32*
  store i32 %5809, i32* %5814, align 4
  %.pre210 = load i64, i64* %3, align 8
  br label %block_.L_45fd7e

block_.L_45fd7e:                                  ; preds = %block_45fd72, %block_45fd67
  %5815 = phi i64 [ %.pre210, %block_45fd72 ], [ %5805, %block_45fd67 ]
  %5816 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %5817 = trunc i64 %5816 to i32
  %5818 = and i32 %5817, 255
  %5819 = tail call i32 @llvm.ctpop.i32(i32 %5818)
  %5820 = trunc i32 %5819 to i8
  %5821 = and i8 %5820, 1
  %5822 = xor i8 %5821, 1
  store i8 %5822, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %5823 = icmp eq i64 %5816, 0
  %5824 = zext i1 %5823 to i8
  store i8 %5824, i8* %56, align 1
  %5825 = lshr i64 %5816, 63
  %5826 = trunc i64 %5825 to i8
  store i8 %5826, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v303 = select i1 %5823, i64 54, i64 15
  %5827 = add i64 %5815, %.v303
  store i64 %5827, i64* %3, align 8
  br i1 %5823, label %block_.L_45fdb4, label %block_45fd8d

block_45fd8d:                                     ; preds = %block_.L_45fd7e
  store i64 5, i64* %RCX.i2272, align 8
  store i64 ptrtoint (%G__0x57e5fb_type* @G__0x57e5fb to i64), i64* %68, align 8
  %5828 = load i64, i64* %RBP.i, align 8
  %5829 = add i64 %5828, -1200
  %5830 = add i64 %5827, 22
  store i64 %5830, i64* %3, align 8
  %5831 = inttoptr i64 %5829 to i64*
  %5832 = load i64, i64* %5831, align 8
  store i64 %5832, i64* %RDI.i2235, align 8
  %5833 = add i64 %5828, -1204
  %5834 = add i64 %5827, 28
  store i64 %5834, i64* %3, align 8
  %5835 = inttoptr i64 %5833 to i32*
  %5836 = load i32, i32* %5835, align 4
  %5837 = zext i32 %5836 to i64
  store i64 %5837, i64* %RSI.i2284, align 8
  %5838 = add i64 %5828, -1368
  %5839 = add i64 %5827, 34
  store i64 %5839, i64* %3, align 8
  %5840 = inttoptr i64 %5838 to i32*
  %5841 = load i32, i32* %5840, align 4
  %5842 = zext i32 %5841 to i64
  store i64 %5842, i64* %RDX.i2074.pre-phi, align 8
  %5843 = add i64 %5827, -294349
  %5844 = add i64 %5827, 39
  %5845 = load i64, i64* %6, align 8
  %5846 = add i64 %5845, -8
  %5847 = inttoptr i64 %5846 to i64*
  store i64 %5844, i64* %5847, align 8
  store i64 %5846, i64* %6, align 8
  store i64 %5843, i64* %3, align 8
  %call2_45fdaf = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %5843, %struct.Memory* %MEMORY.62)
  %.pre211 = load i64, i64* %3, align 8
  br label %block_.L_45fdb4

block_.L_45fdb4:                                  ; preds = %block_45fd8d, %block_.L_45fd7e
  %5848 = phi i64 [ %5827, %block_.L_45fd7e ], [ %.pre211, %block_45fd8d ]
  %MEMORY.71 = phi %struct.Memory* [ %MEMORY.62, %block_.L_45fd7e ], [ %call2_45fdaf, %block_45fd8d ]
  %5849 = load i64, i64* %RBP.i, align 8
  %5850 = add i64 %5849, -44
  %5851 = add i64 %5848, 7
  store i64 %5851, i64* %3, align 8
  %5852 = inttoptr i64 %5850 to i32*
  store i32 5, i32* %5852, align 4
  %5853 = load i64, i64* %3, align 8
  %5854 = add i64 %5853, 355
  store i64 %5854, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45fdc0:                                  ; preds = %block_45fd55
  store i64 5, i64* %RAX.i2292, align 8
  %5855 = add i64 %5790, 11
  store i64 %5855, i64* %3, align 8
  %5856 = load i32, i32* %5779, align 4
  %5857 = sub i32 5, %5856
  %5858 = zext i32 %5857 to i64
  store i64 %5858, i64* %RAX.i2292, align 8
  %5859 = icmp ugt i32 %5856, 5
  %5860 = zext i1 %5859 to i8
  store i8 %5860, i8* %40, align 1
  %5861 = and i32 %5857, 255
  %5862 = tail call i32 @llvm.ctpop.i32(i32 %5861)
  %5863 = trunc i32 %5862 to i8
  %5864 = and i8 %5863, 1
  %5865 = xor i8 %5864, 1
  store i8 %5865, i8* %47, align 1
  %5866 = xor i32 %5857, %5856
  %5867 = lshr i32 %5866, 4
  %5868 = trunc i32 %5867 to i8
  %5869 = and i8 %5868, 1
  store i8 %5869, i8* %53, align 1
  %5870 = icmp eq i32 %5857, 0
  %5871 = zext i1 %5870 to i8
  store i8 %5871, i8* %56, align 1
  %5872 = lshr i32 %5857, 31
  %5873 = trunc i32 %5872 to i8
  store i8 %5873, i8* %59, align 1
  %5874 = lshr i32 %5856, 31
  %5875 = add nuw nsw i32 %5872, %5874
  %5876 = icmp eq i32 %5875, 2
  %5877 = zext i1 %5876 to i8
  store i8 %5877, i8* %65, align 1
  %5878 = add i64 %5775, -760
  %5879 = add i64 %5790, 17
  store i64 %5879, i64* %3, align 8
  %5880 = inttoptr i64 %5878 to i32*
  %5881 = load i32, i32* %5880, align 4
  %5882 = sub i32 %5857, %5881
  %5883 = icmp ult i32 %5857, %5881
  %5884 = zext i1 %5883 to i8
  store i8 %5884, i8* %40, align 1
  %5885 = and i32 %5882, 255
  %5886 = tail call i32 @llvm.ctpop.i32(i32 %5885)
  %5887 = trunc i32 %5886 to i8
  %5888 = and i8 %5887, 1
  %5889 = xor i8 %5888, 1
  store i8 %5889, i8* %47, align 1
  %5890 = xor i32 %5881, %5857
  %5891 = xor i32 %5890, %5882
  %5892 = lshr i32 %5891, 4
  %5893 = trunc i32 %5892 to i8
  %5894 = and i8 %5893, 1
  store i8 %5894, i8* %53, align 1
  %5895 = icmp eq i32 %5882, 0
  %5896 = zext i1 %5895 to i8
  store i8 %5896, i8* %56, align 1
  %5897 = lshr i32 %5882, 31
  %5898 = trunc i32 %5897 to i8
  store i8 %5898, i8* %59, align 1
  %5899 = lshr i32 %5881, 31
  %5900 = xor i32 %5899, %5872
  %5901 = xor i32 %5897, %5872
  %5902 = add nuw nsw i32 %5901, %5900
  %5903 = icmp eq i32 %5902, 2
  %5904 = zext i1 %5903 to i8
  store i8 %5904, i8* %65, align 1
  %5905 = icmp ne i8 %5898, 0
  %5906 = xor i1 %5905, %5903
  %5907 = or i1 %5895, %5906
  %.v301 = select i1 %5907, i64 52, i64 23
  %5908 = add i64 %5790, %.v301
  store i64 %5908, i64* %3, align 8
  br i1 %5907, label %block_.L_45fdf4, label %block_45fdd7

block_45fdd7:                                     ; preds = %block_.L_45fdc0
  store i64 5, i64* %RAX.i2292, align 8
  %5909 = add i64 %5775, -1368
  %5910 = add i64 %5908, 11
  store i64 %5910, i64* %3, align 8
  %5911 = inttoptr i64 %5909 to i32*
  %5912 = load i32, i32* %5911, align 4
  %5913 = zext i32 %5912 to i64
  store i64 %5913, i64* %RCX.i2272, align 8
  %5914 = add i64 %5775, -756
  %5915 = add i64 %5908, 17
  store i64 %5915, i64* %3, align 8
  %5916 = inttoptr i64 %5914 to i32*
  store i32 %5912, i32* %5916, align 4
  %5917 = load i64, i64* %RAX.i2292, align 8
  %5918 = load i64, i64* %RBP.i, align 8
  %5919 = add i64 %5918, -768
  %5920 = load i64, i64* %3, align 8
  %5921 = add i64 %5920, 6
  store i64 %5921, i64* %3, align 8
  %5922 = trunc i64 %5917 to i32
  %5923 = inttoptr i64 %5919 to i32*
  %5924 = load i32, i32* %5923, align 4
  %5925 = sub i32 %5922, %5924
  %5926 = zext i32 %5925 to i64
  store i64 %5926, i64* %RAX.i2292, align 8
  %5927 = icmp ult i32 %5922, %5924
  %5928 = zext i1 %5927 to i8
  store i8 %5928, i8* %40, align 1
  %5929 = and i32 %5925, 255
  %5930 = tail call i32 @llvm.ctpop.i32(i32 %5929)
  %5931 = trunc i32 %5930 to i8
  %5932 = and i8 %5931, 1
  %5933 = xor i8 %5932, 1
  store i8 %5933, i8* %47, align 1
  %5934 = xor i32 %5924, %5922
  %5935 = xor i32 %5934, %5925
  %5936 = lshr i32 %5935, 4
  %5937 = trunc i32 %5936 to i8
  %5938 = and i8 %5937, 1
  store i8 %5938, i8* %53, align 1
  %5939 = icmp eq i32 %5925, 0
  %5940 = zext i1 %5939 to i8
  store i8 %5940, i8* %56, align 1
  %5941 = lshr i32 %5925, 31
  %5942 = trunc i32 %5941 to i8
  store i8 %5942, i8* %59, align 1
  %5943 = lshr i32 %5922, 31
  %5944 = lshr i32 %5924, 31
  %5945 = xor i32 %5944, %5943
  %5946 = xor i32 %5941, %5943
  %5947 = add nuw nsw i32 %5946, %5945
  %5948 = icmp eq i32 %5947, 2
  %5949 = zext i1 %5948 to i8
  store i8 %5949, i8* %65, align 1
  %5950 = add i64 %5918, -760
  %5951 = add i64 %5920, 12
  store i64 %5951, i64* %3, align 8
  %5952 = inttoptr i64 %5950 to i32*
  store i32 %5925, i32* %5952, align 4
  %.pre212 = load i64, i64* %3, align 8
  br label %block_.L_45fdf4

block_.L_45fdf4:                                  ; preds = %block_45fdd7, %block_.L_45fdc0
  %5953 = phi i64 [ %.pre212, %block_45fdd7 ], [ %5908, %block_.L_45fdc0 ]
  %5954 = add i64 %5953, 20
  store i64 %5954, i64* %3, align 8
  br label %block_.L_45fe08

block_.L_45fe03:                                  ; preds = %block_45fd3a, %block_.L_45fd15
  %5955 = phi i64 [ %5769, %block_45fd3a ], [ %5737, %block_.L_45fd15 ]
  %5956 = add i64 %5955, -336035
  %5957 = add i64 %5955, 5
  %5958 = load i64, i64* %6, align 8
  %5959 = add i64 %5958, -8
  %5960 = inttoptr i64 %5959 to i64*
  store i64 %5957, i64* %5960, align 8
  store i64 %5959, i64* %6, align 8
  store i64 %5956, i64* %3, align 8
  %call2_45fe03 = tail call %struct.Memory* @sub_40dd60.popgo(%struct.State* nonnull %0, i64 %5956, %struct.Memory* %MEMORY.62)
  %.pre213 = load i64, i64* %3, align 8
  br label %block_.L_45fe08

block_.L_45fe08:                                  ; preds = %block_.L_45fe03, %block_.L_45fdf4
  %5961 = phi i64 [ %.pre213, %block_.L_45fe03 ], [ %5954, %block_.L_45fdf4 ]
  %MEMORY.74 = phi %struct.Memory* [ %call2_45fe03, %block_.L_45fe03 ], [ %MEMORY.62, %block_.L_45fdf4 ]
  %5962 = add i64 %5961, 5
  store i64 %5962, i64* %3, align 8
  br label %block_.L_45fe0d

block_.L_45fe0d:                                  ; preds = %block_.L_45fe08, %block_.L_45fd10
  %storemerge110 = phi i64 [ %5682, %block_.L_45fd10 ], [ %5962, %block_.L_45fe08 ]
  %MEMORY.75 = phi %struct.Memory* [ %MEMORY.69, %block_.L_45fd10 ], [ %MEMORY.74, %block_.L_45fe08 ]
  %5963 = add i64 %storemerge110, 5
  store i64 %5963, i64* %3, align 8
  br label %block_.L_45fe12

block_.L_45fe12:                                  ; preds = %block_.L_45fe0d, %block_.L_45fb72
  %5964 = phi i64 [ %5248, %block_.L_45fb72 ], [ %5963, %block_.L_45fe0d ]
  %MEMORY.76 = phi %struct.Memory* [ %MEMORY.62, %block_.L_45fb72 ], [ %MEMORY.75, %block_.L_45fe0d ]
  %5965 = add i64 %5964, 5
  store i64 %5965, i64* %3, align 8
  br label %block_.L_45fe17

block_.L_45fe17:                                  ; preds = %block_.L_45fe12, %block_45fb6d
  %storemerge = phi i64 [ %5205, %block_45fb6d ], [ %5965, %block_.L_45fe12 ]
  %MEMORY.77 = phi %struct.Memory* [ %MEMORY.62, %block_45fb6d ], [ %MEMORY.76, %block_.L_45fe12 ]
  %5966 = load i64, i64* %RBP.i, align 8
  %5967 = add i64 %5966, -772
  %5968 = add i64 %storemerge, 6
  store i64 %5968, i64* %3, align 8
  %5969 = inttoptr i64 %5967 to i32*
  %5970 = load i32, i32* %5969, align 4
  %5971 = add i32 %5970, 1
  %5972 = zext i32 %5971 to i64
  store i64 %5972, i64* %RAX.i2292, align 8
  %5973 = icmp eq i32 %5970, -1
  %5974 = icmp eq i32 %5971, 0
  %5975 = or i1 %5973, %5974
  %5976 = zext i1 %5975 to i8
  store i8 %5976, i8* %40, align 1
  %5977 = and i32 %5971, 255
  %5978 = tail call i32 @llvm.ctpop.i32(i32 %5977)
  %5979 = trunc i32 %5978 to i8
  %5980 = and i8 %5979, 1
  %5981 = xor i8 %5980, 1
  store i8 %5981, i8* %47, align 1
  %5982 = xor i32 %5971, %5970
  %5983 = lshr i32 %5982, 4
  %5984 = trunc i32 %5983 to i8
  %5985 = and i8 %5984, 1
  store i8 %5985, i8* %53, align 1
  %5986 = zext i1 %5974 to i8
  store i8 %5986, i8* %56, align 1
  %5987 = lshr i32 %5971, 31
  %5988 = trunc i32 %5987 to i8
  store i8 %5988, i8* %59, align 1
  %5989 = lshr i32 %5970, 31
  %5990 = xor i32 %5987, %5989
  %5991 = add nuw nsw i32 %5990, %5987
  %5992 = icmp eq i32 %5991, 2
  %5993 = zext i1 %5992 to i8
  store i8 %5993, i8* %65, align 1
  %5994 = add i64 %storemerge, 15
  store i64 %5994, i64* %3, align 8
  store i32 %5971, i32* %5969, align 4
  %5995 = load i64, i64* %3, align 8
  %5996 = add i64 %5995, -758
  store i64 %5996, i64* %3, align 8
  br label %block_.L_45fb30

block_.L_45fe2b:                                  ; preds = %block_.L_45fb30
  %5997 = add i64 %5162, 5
  store i64 %5997, i64* %3, align 8
  br label %block_.L_45fe30

block_.L_45fe30:                                  ; preds = %block_.L_45fafd, %block_.L_45fe2b
  %5998 = phi i64 [ %5121, %block_.L_45fafd ], [ %5997, %block_.L_45fe2b ]
  %MEMORY.78 = phi %struct.Memory* [ %call2_45fb14, %block_.L_45fafd ], [ %MEMORY.62, %block_.L_45fe2b ]
  %5999 = add i64 %5998, 5
  store i64 %5999, i64* %3, align 8
  br label %block_.L_45fe35

block_.L_45fe35:                                  ; preds = %block_45fac8, %block_45faa0, %block_.L_45fe30, %block_.L_45fa92
  %6000 = phi i64 [ %4961, %block_.L_45fa92 ], [ %4991, %block_45faa0 ], [ %5999, %block_.L_45fe30 ], [ %5033, %block_45fac8 ]
  %MEMORY.79 = phi %struct.Memory* [ %MEMORY.59, %block_.L_45fa92 ], [ %MEMORY.59, %block_45faa0 ], [ %MEMORY.78, %block_.L_45fe30 ], [ %MEMORY.59, %block_45fac8 ]
  %6001 = load i64, i64* %RBP.i, align 8
  %6002 = add i64 %6001, -760
  %6003 = add i64 %6000, 7
  store i64 %6003, i64* %3, align 8
  %6004 = inttoptr i64 %6002 to i32*
  %6005 = load i32, i32* %6004, align 4
  store i8 0, i8* %40, align 1
  %6006 = and i32 %6005, 255
  %6007 = tail call i32 @llvm.ctpop.i32(i32 %6006)
  %6008 = trunc i32 %6007 to i8
  %6009 = and i8 %6008, 1
  %6010 = xor i8 %6009, 1
  store i8 %6010, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %6011 = icmp eq i32 %6005, 0
  %6012 = zext i1 %6011 to i8
  store i8 %6012, i8* %56, align 1
  %6013 = lshr i32 %6005, 31
  %6014 = trunc i32 %6013 to i8
  store i8 %6014, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v284 = select i1 %6011, i64 13, i64 74
  %6015 = add i64 %6000, %.v284
  %6016 = add i64 %6015, 5
  store i64 %6016, i64* %3, align 8
  br i1 %6011, label %block_.L_45fe47, label %block_.L_45fe84

block_.L_45fe47:                                  ; preds = %block_.L_45fe35
  %6017 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %6018 = trunc i64 %6017 to i32
  %6019 = and i32 %6018, 255
  %6020 = tail call i32 @llvm.ctpop.i32(i32 %6019)
  %6021 = trunc i32 %6020 to i8
  %6022 = and i8 %6021, 1
  %6023 = xor i8 %6022, 1
  store i8 %6023, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %6024 = icmp eq i64 %6017, 0
  %6025 = zext i1 %6024 to i8
  store i8 %6025, i8* %56, align 1
  %6026 = lshr i64 %6017, 63
  %6027 = trunc i64 %6026 to i8
  store i8 %6027, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v289 = select i1 %6024, i64 49, i64 20
  %6028 = add i64 %6015, %.v289
  store i64 %6028, i64* %3, align 8
  br i1 %6024, label %block_.L_45fe73, label %block_45fe56

block_45fe56:                                     ; preds = %block_.L_45fe47
  store i64 0, i64* %RAX.i2292, align 8
  store i64 0, i64* %RCX.i2272, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %68, align 8
  %6029 = add i64 %6001, -1200
  %6030 = add i64 %6028, 14
  store i64 %6030, i64* %3, align 8
  %6031 = inttoptr i64 %6029 to i64*
  %6032 = load i64, i64* %6031, align 8
  store i64 %6032, i64* %RDI.i2235, align 8
  %6033 = add i64 %6001, -1204
  %6034 = add i64 %6028, 20
  store i64 %6034, i64* %3, align 8
  %6035 = inttoptr i64 %6033 to i32*
  %6036 = load i32, i32* %6035, align 4
  %6037 = zext i32 %6036 to i64
  store i64 %6037, i64* %RSI.i2284, align 8
  store i64 0, i64* %RDX.i2074.pre-phi, align 8
  store i64 0, i64* %RCX.i2272, align 8
  %6038 = add i64 %6028, -294550
  %6039 = add i64 %6028, 29
  %6040 = load i64, i64* %6, align 8
  %6041 = add i64 %6040, -8
  %6042 = inttoptr i64 %6041 to i64*
  store i64 %6039, i64* %6042, align 8
  store i64 %6041, i64* %6, align 8
  store i64 %6038, i64* %3, align 8
  %call2_45fe6e = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %6038, %struct.Memory* %MEMORY.79)
  %.pre214 = load i64, i64* %RBP.i, align 8
  %.pre215 = load i64, i64* %3, align 8
  br label %block_.L_45fe73

block_.L_45fe73:                                  ; preds = %block_45fe56, %block_.L_45fe47
  %6043 = phi i64 [ %6028, %block_.L_45fe47 ], [ %.pre215, %block_45fe56 ]
  %6044 = phi i64 [ %6001, %block_.L_45fe47 ], [ %.pre214, %block_45fe56 ]
  %MEMORY.80 = phi %struct.Memory* [ %MEMORY.79, %block_.L_45fe47 ], [ %call2_45fe6e, %block_45fe56 ]
  %6045 = add i64 %6044, -44
  %6046 = add i64 %6043, 7
  store i64 %6046, i64* %3, align 8
  %6047 = inttoptr i64 %6045 to i32*
  store i32 0, i32* %6047, align 4
  %6048 = load i64, i64* %3, align 8
  %6049 = add i64 %6048, 164
  store i64 %6049, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45fe84:                                  ; preds = %block_.L_45fe35
  %6050 = add i64 %6015, 12
  store i64 %6050, i64* %3, align 8
  %6051 = load i32, i32* %6004, align 4
  store i8 0, i8* %40, align 1
  %6052 = and i32 %6051, 255
  %6053 = tail call i32 @llvm.ctpop.i32(i32 %6052)
  %6054 = trunc i32 %6053 to i8
  %6055 = and i8 %6054, 1
  %6056 = xor i8 %6055, 1
  store i8 %6056, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %6057 = icmp eq i32 %6051, 0
  %6058 = zext i1 %6057 to i8
  store i8 %6058, i8* %56, align 1
  %6059 = lshr i32 %6051, 31
  %6060 = trunc i32 %6059 to i8
  store i8 %6060, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v285 = select i1 %6057, i64 101, i64 18
  %6061 = add i64 %6015, %.v285
  store i64 %6061, i64* %3, align 8
  br i1 %6057, label %block_.L_45fee4, label %block_45fe91

block_45fe91:                                     ; preds = %block_.L_45fe84
  %6062 = add i64 %6001, -56
  %6063 = add i64 %6061, 5
  store i64 %6063, i64* %3, align 8
  %6064 = inttoptr i64 %6062 to i64*
  %6065 = load i64, i64* %6064, align 8
  store i8 0, i8* %40, align 1
  %6066 = trunc i64 %6065 to i32
  %6067 = and i32 %6066, 255
  %6068 = tail call i32 @llvm.ctpop.i32(i32 %6067)
  %6069 = trunc i32 %6068 to i8
  %6070 = and i8 %6069, 1
  %6071 = xor i8 %6070, 1
  store i8 %6071, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %6072 = icmp eq i64 %6065, 0
  %6073 = zext i1 %6072 to i8
  store i8 %6073, i8* %56, align 1
  %6074 = lshr i64 %6065, 63
  %6075 = trunc i64 %6074 to i8
  store i8 %6075, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v286 = select i1 %6072, i64 23, i64 11
  %6076 = add i64 %6061, %.v286
  store i64 %6076, i64* %3, align 8
  br i1 %6072, label %block_.L_45fea8, label %block_45fe9c

block_45fe9c:                                     ; preds = %block_45fe91
  %6077 = add i64 %6001, -756
  %6078 = add i64 %6076, 6
  store i64 %6078, i64* %3, align 8
  %6079 = inttoptr i64 %6077 to i32*
  %6080 = load i32, i32* %6079, align 4
  %6081 = zext i32 %6080 to i64
  store i64 %6081, i64* %RAX.i2292, align 8
  %6082 = add i64 %6076, 10
  store i64 %6082, i64* %3, align 8
  %6083 = load i64, i64* %6064, align 8
  store i64 %6083, i64* %RCX.i2272, align 8
  %6084 = add i64 %6076, 12
  store i64 %6084, i64* %3, align 8
  %6085 = inttoptr i64 %6083 to i32*
  store i32 %6080, i32* %6085, align 4
  %.pre216 = load i64, i64* %3, align 8
  br label %block_.L_45fea8

block_.L_45fea8:                                  ; preds = %block_45fe9c, %block_45fe91
  %6086 = phi i64 [ %.pre216, %block_45fe9c ], [ %6076, %block_45fe91 ]
  %6087 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %6088 = trunc i64 %6087 to i32
  %6089 = and i32 %6088, 255
  %6090 = tail call i32 @llvm.ctpop.i32(i32 %6089)
  %6091 = trunc i32 %6090 to i8
  %6092 = and i8 %6091, 1
  %6093 = xor i8 %6092, 1
  store i8 %6093, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %6094 = icmp eq i64 %6087, 0
  %6095 = zext i1 %6094 to i8
  store i8 %6095, i8* %56, align 1
  %6096 = lshr i64 %6087, 63
  %6097 = trunc i64 %6096 to i8
  store i8 %6097, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v287 = select i1 %6094, i64 55, i64 15
  %6098 = add i64 %6086, %.v287
  store i64 %6098, i64* %3, align 8
  br i1 %6094, label %block_.L_45fedf, label %block_45feb7

block_45feb7:                                     ; preds = %block_.L_45fea8
  store i64 ptrtoint (%G__0x57f60a_type* @G__0x57f60a to i64), i64* %68, align 8
  %6099 = load i64, i64* %RBP.i, align 8
  %6100 = add i64 %6099, -1200
  %6101 = add i64 %6098, 17
  store i64 %6101, i64* %3, align 8
  %6102 = inttoptr i64 %6100 to i64*
  %6103 = load i64, i64* %6102, align 8
  store i64 %6103, i64* %RDI.i2235, align 8
  %6104 = add i64 %6099, -1204
  %6105 = add i64 %6098, 23
  store i64 %6105, i64* %3, align 8
  %6106 = inttoptr i64 %6104 to i32*
  %6107 = load i32, i32* %6106, align 4
  %6108 = zext i32 %6107 to i64
  store i64 %6108, i64* %RSI.i2284, align 8
  %6109 = add i64 %6099, -756
  %6110 = add i64 %6098, 29
  store i64 %6110, i64* %3, align 8
  %6111 = inttoptr i64 %6109 to i32*
  %6112 = load i32, i32* %6111, align 4
  %6113 = zext i32 %6112 to i64
  store i64 %6113, i64* %RDX.i2074.pre-phi, align 8
  %6114 = add i64 %6099, -760
  %6115 = add i64 %6098, 35
  store i64 %6115, i64* %3, align 8
  %6116 = inttoptr i64 %6114 to i32*
  %6117 = load i32, i32* %6116, align 4
  %6118 = zext i32 %6117 to i64
  store i64 %6118, i64* %RCX.i2272, align 8
  %6119 = add i64 %6098, -294647
  %6120 = add i64 %6098, 40
  %6121 = load i64, i64* %6, align 8
  %6122 = add i64 %6121, -8
  %6123 = inttoptr i64 %6122 to i64*
  store i64 %6120, i64* %6123, align 8
  store i64 %6122, i64* %6, align 8
  store i64 %6119, i64* %3, align 8
  %call2_45feda = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %6119, %struct.Memory* %MEMORY.79)
  %.pre217 = load i64, i64* %3, align 8
  br label %block_.L_45fedf

block_.L_45fedf:                                  ; preds = %block_45feb7, %block_.L_45fea8
  %6124 = phi i64 [ %6098, %block_.L_45fea8 ], [ %.pre217, %block_45feb7 ]
  %MEMORY.82 = phi %struct.Memory* [ %MEMORY.79, %block_.L_45fea8 ], [ %call2_45feda, %block_45feb7 ]
  %6125 = add i64 %6124, 54
  br label %block_.L_45ff15

block_.L_45fee4:                                  ; preds = %block_.L_45fe84
  %6126 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i8 0, i8* %40, align 1
  %6127 = trunc i64 %6126 to i32
  %6128 = and i32 %6127, 255
  %6129 = tail call i32 @llvm.ctpop.i32(i32 %6128)
  %6130 = trunc i32 %6129 to i8
  %6131 = and i8 %6130, 1
  %6132 = xor i8 %6131, 1
  store i8 %6132, i8* %47, align 1
  store i8 0, i8* %53, align 1
  %6133 = icmp eq i64 %6126, 0
  %6134 = zext i1 %6133 to i8
  store i8 %6134, i8* %56, align 1
  %6135 = lshr i64 %6126, 63
  %6136 = trunc i64 %6135 to i8
  store i8 %6136, i8* %59, align 1
  store i8 0, i8* %65, align 1
  %.v288 = select i1 %6133, i64 44, i64 15
  %6137 = add i64 %6061, %.v288
  store i64 %6137, i64* %3, align 8
  br i1 %6133, label %block_.L_45ff10, label %block_45fef3

block_45fef3:                                     ; preds = %block_.L_45fee4
  store i64 0, i64* %RAX.i2292, align 8
  store i64 0, i64* %RCX.i2272, align 8
  store i8 0, i8* %40, align 1
  store i8 1, i8* %47, align 1
  store i8 1, i8* %56, align 1
  store i8 0, i8* %59, align 1
  store i8 0, i8* %65, align 1
  store i8 0, i8* %53, align 1
  store i64 0, i64* %68, align 8
  %6138 = add i64 %6001, -1200
  %6139 = add i64 %6137, 14
  store i64 %6139, i64* %3, align 8
  %6140 = inttoptr i64 %6138 to i64*
  %6141 = load i64, i64* %6140, align 8
  store i64 %6141, i64* %RDI.i2235, align 8
  %6142 = add i64 %6001, -1204
  %6143 = add i64 %6137, 20
  store i64 %6143, i64* %3, align 8
  %6144 = inttoptr i64 %6142 to i32*
  %6145 = load i32, i32* %6144, align 4
  %6146 = zext i32 %6145 to i64
  store i64 %6146, i64* %RSI.i2284, align 8
  store i64 0, i64* %RDX.i2074.pre-phi, align 8
  store i64 0, i64* %RCX.i2272, align 8
  %6147 = add i64 %6137, -294707
  %6148 = add i64 %6137, 29
  %6149 = load i64, i64* %6, align 8
  %6150 = add i64 %6149, -8
  %6151 = inttoptr i64 %6150 to i64*
  store i64 %6148, i64* %6151, align 8
  store i64 %6150, i64* %6, align 8
  store i64 %6147, i64* %3, align 8
  %call2_45ff0b = tail call %struct.Memory* @sub_417fc0.sgf_trace(%struct.State* nonnull %0, i64 %6147, %struct.Memory* %MEMORY.79)
  %.pre218 = load i64, i64* %3, align 8
  br label %block_.L_45ff10

block_.L_45ff10:                                  ; preds = %block_45fef3, %block_.L_45fee4
  %6152 = phi i64 [ %6137, %block_.L_45fee4 ], [ %.pre218, %block_45fef3 ]
  %MEMORY.83 = phi %struct.Memory* [ %MEMORY.79, %block_.L_45fee4 ], [ %call2_45ff0b, %block_45fef3 ]
  %6153 = add i64 %6152, 5
  store i64 %6153, i64* %3, align 8
  br label %block_.L_45ff15

block_.L_45ff15:                                  ; preds = %block_.L_45ff10, %block_.L_45fedf
  %storemerge111 = phi i64 [ %6125, %block_.L_45fedf ], [ %6153, %block_.L_45ff10 ]
  %MEMORY.84 = phi %struct.Memory* [ %MEMORY.82, %block_.L_45fedf ], [ %MEMORY.83, %block_.L_45ff10 ]
  %6154 = load i64, i64* %RBP.i, align 8
  %6155 = add i64 %6154, -760
  %6156 = add i64 %storemerge111, 6
  store i64 %6156, i64* %3, align 8
  %6157 = inttoptr i64 %6155 to i32*
  %6158 = load i32, i32* %6157, align 4
  %6159 = zext i32 %6158 to i64
  store i64 %6159, i64* %RAX.i2292, align 8
  %6160 = add i64 %6154, -44
  %6161 = add i64 %storemerge111, 9
  store i64 %6161, i64* %3, align 8
  %6162 = inttoptr i64 %6160 to i32*
  store i32 %6158, i32* %6162, align 4
  %.pre241 = load i64, i64* %3, align 8
  br label %block_.L_45ff1e

block_.L_45ff1e:                                  ; preds = %block_.L_45ff15, %block_.L_45fe73, %block_.L_45fdb4, %block_.L_45fcb0, %block_.L_45fa3e, %block_.L_45f95e, %block_.L_45f87e, %block_.L_45f7a3, %block_.L_45f654, %block_.L_45ecf5
  %6163 = phi i64 [ %.pre241, %block_.L_45ff15 ], [ %6049, %block_.L_45fe73 ], [ %5854, %block_.L_45fdb4 ], [ %5565, %block_.L_45fcb0 ], [ %4829, %block_.L_45fa3e ], [ %4581, %block_.L_45f95e ], [ %4333, %block_.L_45f87e ], [ %4087, %block_.L_45f7a3 ], [ %3743, %block_.L_45f654 ], [ %789, %block_.L_45ecf5 ]
  %MEMORY.85 = phi %struct.Memory* [ %MEMORY.84, %block_.L_45ff15 ], [ %MEMORY.80, %block_.L_45fe73 ], [ %MEMORY.71, %block_.L_45fdb4 ], [ %MEMORY.64, %block_.L_45fcb0 ], [ %MEMORY.57, %block_.L_45fa3e ], [ %MEMORY.53, %block_.L_45f95e ], [ %MEMORY.49, %block_.L_45f87e ], [ %MEMORY.46, %block_.L_45f7a3 ], [ %MEMORY.38, %block_.L_45f654 ], [ %MEMORY.4, %block_.L_45ecf5 ]
  %6164 = load i64, i64* %RBP.i, align 8
  %6165 = add i64 %6164, -44
  %6166 = add i64 %6163, 3
  store i64 %6166, i64* %3, align 8
  %6167 = inttoptr i64 %6165 to i32*
  %6168 = load i32, i32* %6167, align 4
  %6169 = zext i32 %6168 to i64
  store i64 %6169, i64* %RAX.i2292, align 8
  %6170 = load i64, i64* %6, align 8
  %6171 = add i64 %6170, 1496
  store i64 %6171, i64* %6, align 8
  %6172 = icmp ugt i64 %6170, -1497
  %6173 = zext i1 %6172 to i8
  store i8 %6173, i8* %40, align 1
  %6174 = trunc i64 %6171 to i32
  %6175 = and i32 %6174, 255
  %6176 = tail call i32 @llvm.ctpop.i32(i32 %6175)
  %6177 = trunc i32 %6176 to i8
  %6178 = and i8 %6177, 1
  %6179 = xor i8 %6178, 1
  store i8 %6179, i8* %47, align 1
  %6180 = xor i64 %6170, 16
  %6181 = xor i64 %6180, %6171
  %6182 = lshr i64 %6181, 4
  %6183 = trunc i64 %6182 to i8
  %6184 = and i8 %6183, 1
  store i8 %6184, i8* %53, align 1
  %6185 = icmp eq i64 %6171, 0
  %6186 = zext i1 %6185 to i8
  store i8 %6186, i8* %56, align 1
  %6187 = lshr i64 %6171, 63
  %6188 = trunc i64 %6187 to i8
  store i8 %6188, i8* %59, align 1
  %6189 = lshr i64 %6170, 63
  %6190 = xor i64 %6187, %6189
  %6191 = add nuw nsw i64 %6190, %6187
  %6192 = icmp eq i64 %6191, 2
  %6193 = zext i1 %6192 to i8
  store i8 %6193, i8* %65, align 1
  %6194 = add i64 %6163, 11
  store i64 %6194, i64* %3, align 8
  %6195 = add i64 %6170, 1504
  %6196 = inttoptr i64 %6171 to i64*
  %6197 = load i64, i64* %6196, align 8
  store i64 %6197, i64* %RBX.i2186, align 8
  store i64 %6195, i64* %6, align 8
  %6198 = add i64 %6163, 13
  store i64 %6198, i64* %3, align 8
  %6199 = add i64 %6170, 1512
  %6200 = inttoptr i64 %6195 to i64*
  %6201 = load i64, i64* %6200, align 8
  store i64 %6201, i64* %R12.i2169, align 8
  store i64 %6199, i64* %6, align 8
  %6202 = add i64 %6163, 15
  store i64 %6202, i64* %3, align 8
  %6203 = add i64 %6170, 1520
  %6204 = inttoptr i64 %6199 to i64*
  %6205 = load i64, i64* %6204, align 8
  store i64 %6205, i64* %R13.i2114, align 8
  store i64 %6203, i64* %6, align 8
  %6206 = add i64 %6163, 17
  store i64 %6206, i64* %3, align 8
  %6207 = add i64 %6170, 1528
  %6208 = inttoptr i64 %6203 to i64*
  %6209 = load i64, i64* %6208, align 8
  store i64 %6209, i64* %R14.i2097, align 8
  store i64 %6207, i64* %6, align 8
  %6210 = add i64 %6163, 19
  store i64 %6210, i64* %3, align 8
  %6211 = add i64 %6170, 1536
  %6212 = inttoptr i64 %6207 to i64*
  %6213 = load i64, i64* %6212, align 8
  store i64 %6213, i64* %R15.i1848, align 8
  store i64 %6211, i64* %6, align 8
  %6214 = add i64 %6163, 20
  store i64 %6214, i64* %3, align 8
  %6215 = add i64 %6170, 1544
  %6216 = inttoptr i64 %6211 to i64*
  %6217 = load i64, i64* %6216, align 8
  store i64 %6217, i64* %RBP.i, align 8
  store i64 %6215, i64* %6, align 8
  %6218 = add i64 %6163, 21
  store i64 %6218, i64* %3, align 8
  %6219 = inttoptr i64 %6215 to i64*
  %6220 = load i64, i64* %6219, align 8
  store i64 %6220, i64* %3, align 8
  %6221 = add i64 %6170, 1552
  store i64 %6221, i64* %6, align 8
  ret %struct.Memory* %MEMORY.85
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
define %struct.Memory* @routine_movq__0x57fe3e___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe3e_type* @G__0x57fe3e to i64), i64* %RAX, align 8
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
define %struct.Memory* @routine_movl__0x0__MINUS0x2f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -756
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movl__0x0__MINUS0x308__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_movq__rax__MINUS0x4b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1204
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
define %struct.Memory* @routine_movl__0x0__MINUS0x310__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -784
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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
define %struct.Memory* @routine_callq_.find_origin(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
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
define %struct.Memory* @routine_je_.L_45eb70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45eb75(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45ebe6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x9f8___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2552, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57a4d2___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57a4d2_type* @G__0x57a4d2 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_jne_.L_45ebfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45ec6d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x9f9___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2553, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x574__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1396
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x580__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1408
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x574__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1396
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
define %struct.Memory* @routine_movl__eax__MINUS0x584__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1412
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x580__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x588__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1416
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x584__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1412
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
define %struct.Memory* @routine_movl_MINUS0x588__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1416
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
define %struct.Memory* @routine_leaq_MINUS0x2f0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -108
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -108
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
define %struct.Memory* @routine_jge_.L_45ee1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_45ed01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -752
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
define %struct.Memory* @routine_callq_.countstones(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45ecc9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45ecf5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4b4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1204
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
define %struct.Memory* @routine_jmpq_.L_45ff1e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_45ed2c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x4c__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movl__eax__MINUS0x58c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1420
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
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
define %struct.Memory* @routine_cmpl_MINUS0x310__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -784
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
define %struct.Memory* @routine_jge_.L_45edb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4b8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1208
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
define %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1184
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
define %struct.Memory* @routine_jne_.L_45ed9b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3d8__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -984
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3d8__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -984
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
define %struct.Memory* @routine_jmpq_.L_45edb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45eda0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1208
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45ed55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45ee05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x32__MINUS0x310__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -784
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
define %struct.Memory* @routine_jge_.L_45ee05(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x310__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -784
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
define %struct.Memory* @routine_movl__eax__MINUS0x4a0__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -1184
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3d8__rbp__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -984
  %7 = add i64 %6, %5
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 11
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  store i32 0, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x310__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -784
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
define %struct.Memory* @routine_jmpq_.L_45ee0a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45ee0f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -88
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45ec8b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_jne_.L_45ee40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45eeb1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xa15___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2581, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__eax__MINUS0x590__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1424
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x598__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1432
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x590__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1424
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
define %struct.Memory* @routine_movl__eax__MINUS0x59c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x598__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x5a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1440
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x59c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1436
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
define %struct.Memory* @routine_movl_MINUS0x5a0__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1440
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, 20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_je_.L_45eef5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_subl__0x1___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = add i32 %6, -20
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
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
define %struct.Memory* @routine_jne_.L_45eeff(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x4a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1188
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x304__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -772
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2__MINUS0x304__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -772
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
define %struct.Memory* @routine_jge_.L_45f33b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x304__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -772
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -96
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1212
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4bc__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1212
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
define %struct.Memory* @routine_jne_.L_45ef48(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__MINUS0x308__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -776
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
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
define %struct.Memory* @routine_jle_.L_45f008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_45ef7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1188
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
define %struct.Memory* @routine_je_.L_45eff1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4bc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1212
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
define %struct.Memory* @routine_jne_.L_45f008(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45f0d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f00d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1216
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1216
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
define %struct.Memory* @routine_jge_.L_45f079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1216
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
define %struct.Memory* @routine_cmpl_MINUS0x4bc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -1212
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
define %struct.Memory* @routine_jne_.L_45f060(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f079(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f065(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f017(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45f0cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45f0cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f0d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f0d7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_45f322(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x68__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_jne_.L_45f322(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1220
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1220
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
define %struct.Memory* @routine_jge_.L_45f179(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4c4__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1220
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
define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -104
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
define %struct.Memory* @routine_jne_.L_45f160(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f179(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f165(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f11a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45f1ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45f1ca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -104
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
define %struct.Memory* @routine_jmpq_.L_45f1cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_jge_.L_45f31d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
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
define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8053168
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = trunc i64 %3 to i32
  %10 = inttoptr i64 %6 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = add i32 %11, %9
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RAX, align 8
  %14 = icmp ult i32 %12, %9
  %15 = icmp ult i32 %12, %11
  %16 = or i1 %14, %15
  %17 = zext i1 %16 to i8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %17, i8* %18, align 1
  %19 = and i32 %12, 255
  %20 = tail call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %23, i8* %24, align 1
  %25 = xor i32 %11, %9
  %26 = xor i32 %25, %12
  %27 = lshr i32 %26, 4
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %29, i8* %30, align 1
  %31 = icmp eq i32 %12, 0
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %12, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %9, 31
  %38 = lshr i32 %11, 31
  %39 = xor i32 %34, %37
  %40 = xor i32 %34, %38
  %41 = add nuw nsw i32 %39, %40
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %43, i8* %44, align 1
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
define %struct.Memory* @routine_movslq_MINUS0x4c8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1224
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
define %struct.Memory* @routine_jne_.L_45f30a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4c8__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1224
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
define %struct.Memory* @routine_jle_.L_45f30a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2f0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -752
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
define %struct.Memory* @routine_movl__eax__MINUS0x5a4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1444
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1228
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4cc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1228
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
define %struct.Memory* @routine_jge_.L_45f2af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x4cc__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1228
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
define %struct.Memory* @routine_cmpl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
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
define %struct.Memory* @routine_jne_.L_45f296(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f2af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f29b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x4cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1228
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f250(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45f300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45f300(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f305(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f30a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f30f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f1d6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f322(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f327(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x304__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -772
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
define %struct.Memory* @routine_jmpq_.L_45ef09(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x308__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -776
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
define %struct.Memory* @routine_jne_.L_45f392(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45f38d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x60__rbp__rax_4____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -96
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
define %struct.Memory* @routine_jmpq_.L_45f352(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f392(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_45f420(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2f0__rbp__rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -752
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1232
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl_MINUS0x4d0__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1232
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
define %struct.Memory* @routine_je_.L_45f40d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_jmpq_.L_45f412(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f3b0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4a0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movq_MINUS0x4b0__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1200
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
define %struct.Memory* @routine_jge_.L_45f728(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x304__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -772
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
define %struct.Memory* @routine_movl_MINUS0x4a0__rbp__rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %3, -1184
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
define %struct.Memory* @routine_movl__eax__MINUS0x4e0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1248
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
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
define %struct.Memory* @routine_movl__r9d__MINUS0x5a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1448
  %6 = load i32, i32* %R9D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x5ac__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1452
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x5b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1456
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x5b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1460
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x5b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1464
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__cl__MINUS0x5b9__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1465
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_45f4ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movb__al__MINUS0x5b9__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1465
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x5b9__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1465
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fe22___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe22_type* @G__0x57fe22 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4d4__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4d8__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4dc__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1244
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
define %struct.Memory* @routine_movl_MINUS0x5b0__rbp____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
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
define %struct.Memory* @routine_movl_MINUS0x5b4__rbp____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_movl_MINUS0x5b8__rbp____ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1464
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
define %struct.Memory* @routine_movl_MINUS0x5a8__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1448
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
define %struct.Memory* @routine_je_.L_45f70f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1244
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
define %struct.Memory* @routine_jne_.L_45f6ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4d4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1236
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
define %struct.Memory* @routine_movl_MINUS0x4d8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1240
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
define %struct.Memory* @routine_movl__eax__MINUS0x300__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -768
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5__MINUS0x300__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -768
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
define %struct.Memory* @routine_je_.L_45f6a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x300__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -768
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
define %struct.Memory* @routine_jne_.L_45f660(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f61e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
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
define %struct.Memory* @routine_je_.L_45f654(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
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
define %struct.Memory* @routine_subl_MINUS0x300__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -768
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
define %struct.Memory* @routine_jle_.L_45f694(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4e0__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1248
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
define %struct.Memory* @routine_movl__ecx__MINUS0x2f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -756
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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
define %struct.Memory* @routine_jmpq_.L_45f699(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f69e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f6a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f70a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f705(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x2f4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -756
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x2f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -760
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f70f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f714(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f460(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
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
define %struct.Memory* @routine_movl_MINUS0x5c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -92
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
define %struct.Memory* @routine_callq_.find_cap2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2fc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -764
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
define %struct.Memory* @routine_jne_.L_45f7af(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f7a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fe2c___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe2c_type* @G__0x57fe2c to i64), i64* %R8, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x2fc__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -764
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
define %struct.Memory* @routine_jle_.L_45f7e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jmpq_.L_45f7ed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f7f2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_45f8d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -60
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
define %struct.Memory* @routine_movl_MINUS0x40__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
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
define %struct.Memory* @routine_callq_.special_attack2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45f88a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f84b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f87e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fe36___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe36_type* @G__0x57fe36 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_45f8c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f8c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f8cd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f8d2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_45f9b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.special_attack3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45f96a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f92b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45f95e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fe46___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe46_type* @G__0x57fe46 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_45f9a3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45f9a8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f9ad(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45f9b2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_45fa92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.special_attack4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45fa4a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45fa0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45fa3e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fe56___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe56_type* @G__0x57fe56 to i64), i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_45fa83(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45fa88(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fa8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fa92(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_45fe35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_45fe35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_45fad5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45fe35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__MINUS0x554__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_45fafd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x3__MINUS0x554__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1364
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 3, i32* %7, align 4
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
define %struct.Memory* @routine_jg_.L_45fe30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_45fe2b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x558__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -1368
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x558__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
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
define %struct.Memory* @routine_je_.L_45fb72(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45fe17(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57fe66___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe66_type* @G__0x57fe66 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_45fe12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45fd15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x50__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_jle_.L_45fd0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57fe70___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57fe70_type* @G__0x57fe70 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_45fd06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45fcfc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45fcbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45fc7d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45fcb0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_45fced(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45fcf2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fcf7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fd01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fd06(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fd10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fe0d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_45fe03(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_45fdc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45fd7e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x558__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
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
define %struct.Memory* @routine_je_.L_45fdb4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x558__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
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
define %struct.Memory* @routine_jle_.L_45fdf4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x558__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -1368
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
define %struct.Memory* @routine_jmpq_.L_45fdf9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fdfe(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fe08(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fe12(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fb30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fe30(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_45fe35(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_45fe7f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45fe47(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_45fe73(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_45fe84(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_45fee4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_45fea8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -756
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
define %struct.Memory* @routine_je_.L_45fedf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x2f4__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -756
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
define %struct.Memory* @routine_jmpq_.L_45ff15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_45ff10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
