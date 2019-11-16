; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x62db08_type = type <{ [8 x i8] }>
%G_0x62db10_type = type <{ [8 x i8] }>
%G_0x62db18_type = type <{ [8 x i8] }>
%G_0x62e51c_type = type <{ [1 x i8] }>
%G_0x62e9e0_type = type <{ [4 x i8] }>
%G_0x62e9f8_type = type <{ [4 x i8] }>
%G_0x62ea0c_type = type <{ [4 x i8] }>
%G_0x62ea38_type = type <{ [4 x i8] }>
%G_0x633b40_type = type <{ [4 x i8] }>
%G_0x633b50_type = type <{ [1 x i8] }>
%G_0x639110_type = type <{ [4 x i8] }>
%G_0x85f150_type = type <{ [4 x i8] }>
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x85f164_type = type <{ [4 x i8] }>
%G_0x8644f4_type = type <{ [4 x i8] }>
%G_0x864500_type = type <{ [4 x i8] }>
%G_0x86450c_type = type <{ [4 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661dc_type = type <{ [4 x i8] }>
%G_0x866530_type = type <{ [4 x i8] }>
%G_0x866788_type = type <{ [4 x i8] }>
%G_0x866790_type = type <{ [1 x i8] }>
%G_0x86679c_type = type <{ [1 x i8] }>
%G_0x8825f8_type = type <{ [4 x i8] }>
%G_0x886a5c_type = type <{ [4 x i8] }>
%G_0x886bbc_type = type <{ [1 x i8] }>
%G_0x886bc0_type = type <{ [4 x i8] }>
%G_0x8a2a04_type = type <{ [1 x i8] }>
%G__0x639220_type = type <{ [8 x i8] }>
%G__0x63ae50_type = type <{ [8 x i8] }>
%G__0x864510_type = type <{ [8 x i8] }>
%G__0x86bda0_type = type <{ [8 x i8] }>
%G__0x882600_type = type <{ [8 x i8] }>
%G__0x884b20_type = type <{ [8 x i8] }>
%G__0x886bd0_type = type <{ [8 x i8] }>
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
@G_0x62db08 = local_unnamed_addr global %G_0x62db08_type zeroinitializer
@G_0x62db10 = local_unnamed_addr global %G_0x62db10_type zeroinitializer
@G_0x62db18 = local_unnamed_addr global %G_0x62db18_type zeroinitializer
@G_0x62e51c = local_unnamed_addr global %G_0x62e51c_type zeroinitializer
@G_0x62e9e0 = local_unnamed_addr global %G_0x62e9e0_type zeroinitializer
@G_0x62e9f8 = local_unnamed_addr global %G_0x62e9f8_type zeroinitializer
@G_0x62ea0c = local_unnamed_addr global %G_0x62ea0c_type zeroinitializer
@G_0x62ea38 = local_unnamed_addr global %G_0x62ea38_type zeroinitializer
@G_0x633b40 = local_unnamed_addr global %G_0x633b40_type zeroinitializer
@G_0x633b50 = local_unnamed_addr global %G_0x633b50_type zeroinitializer
@G_0x639110 = local_unnamed_addr global %G_0x639110_type zeroinitializer
@G_0x85f150 = local_unnamed_addr global %G_0x85f150_type zeroinitializer
@G_0x85f154 = local_unnamed_addr global %G_0x85f154_type zeroinitializer
@G_0x85f164 = local_unnamed_addr global %G_0x85f164_type zeroinitializer
@G_0x8644f4 = local_unnamed_addr global %G_0x8644f4_type zeroinitializer
@G_0x864500 = local_unnamed_addr global %G_0x864500_type zeroinitializer
@G_0x86450c = local_unnamed_addr global %G_0x86450c_type zeroinitializer
@G_0x8661bc = local_unnamed_addr global %G_0x8661bc_type zeroinitializer
@G_0x8661dc = local_unnamed_addr global %G_0x8661dc_type zeroinitializer
@G_0x866530 = local_unnamed_addr global %G_0x866530_type zeroinitializer
@G_0x866788 = local_unnamed_addr global %G_0x866788_type zeroinitializer
@G_0x866790 = local_unnamed_addr global %G_0x866790_type zeroinitializer
@G_0x86679c = local_unnamed_addr global %G_0x86679c_type zeroinitializer
@G_0x8825f8 = local_unnamed_addr global %G_0x8825f8_type zeroinitializer
@G_0x886a5c = local_unnamed_addr global %G_0x886a5c_type zeroinitializer
@G_0x886bbc = local_unnamed_addr global %G_0x886bbc_type zeroinitializer
@G_0x886bc0 = local_unnamed_addr global %G_0x886bc0_type zeroinitializer
@G_0x8a2a04 = local_unnamed_addr global %G_0x8a2a04_type zeroinitializer
@G__0x639220 = global %G__0x639220_type zeroinitializer
@G__0x63ae50 = global %G__0x63ae50_type zeroinitializer
@G__0x864510 = global %G__0x864510_type zeroinitializer
@G__0x86bda0 = global %G__0x86bda0_type zeroinitializer
@G__0x882600 = global %G__0x882600_type zeroinitializer
@G__0x884b20 = global %G__0x884b20_type zeroinitializer
@G__0x886bd0 = global %G__0x886bd0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare %struct.Memory* @sub_402920.is_draw(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4098e0.in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_407e30.gen(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40b730.make(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_406680.check_legal(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_40c7a0.unmake(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_415f00.order_moves(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4174b0.remove_one(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_421970.comp_to_san(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_409980.f_in_check(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_417560.search(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423990.post_fh_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423b80.post_fl_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_423410.post_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4237a0.post_fail_thinking(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @search_root(%struct.State* noalias, i64, %struct.Memory* noalias readnone) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -16584
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 16576
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
  %RAX.i2220 = getelementptr inbounds %union.anon, %union.anon* %39, i64 0, i32 0
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %RDI.i2221 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  %41 = load i64, i64* %RDI.i2221, align 8
  store i64 %41, i64* %RAX.i2220, align 8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI.i2217 = bitcast %union.anon* %42 to i32*
  %43 = add i64 %7, -12
  %44 = load i32, i32* %ESI.i2217, align 4
  %45 = add i64 %10, 16
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i32*
  store i32 %44, i32* %46, align 4
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX.i2214 = bitcast %union.anon* %47 to i32*
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -8
  %50 = load i32, i32* %EDX.i2214, align 4
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 3
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i32*
  store i32 %50, i32* %53, align 4
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i2211 = bitcast %union.anon* %54 to i32*
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -12
  %57 = load i32, i32* %ECX.i2211, align 4
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 3
  store i64 %59, i64* %3, align 8
  %60 = inttoptr i64 %56 to i32*
  store i32 %57, i32* %60, align 4
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8.i2209 = getelementptr inbounds %union.anon, %union.anon* %61, i64 0, i32 0
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  %64 = load i64, i64* %RBP.i, align 8
  %65 = add i64 %64, -12328
  %66 = add i64 %62, 15
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i64*
  store i64 %63, i64* %67, align 8
  %68 = load i64, i64* %3, align 8
  %69 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -12320
  %72 = add i64 %68, 15
  store i64 %72, i64* %3, align 8
  %73 = inttoptr i64 %71 to i64*
  store i64 %69, i64* %73, align 8
  %74 = load i64, i64* %3, align 8
  %75 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %75, i64* %R8.i2209, align 8
  %76 = load i64, i64* %RBP.i, align 8
  %77 = add i64 %76, -12312
  %78 = add i64 %74, 15
  store i64 %78, i64* %3, align 8
  %79 = inttoptr i64 %77 to i64*
  store i64 %75, i64* %79, align 8
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -12344
  %82 = load i64, i64* %3, align 8
  %83 = add i64 %82, 10
  store i64 %83, i64* %3, align 8
  %84 = inttoptr i64 %81 to i32*
  store i32 -1000000, i32* %84, align 4
  %85 = load i64, i64* %RBP.i, align 8
  %86 = add i64 %85, -16508
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 10
  store i64 %88, i64* %3, align 8
  %89 = inttoptr i64 %86 to i32*
  store i32 0, i32* %89, align 4
  %RCX.i2189 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  %90 = load i64, i64* %RBP.i, align 8
  %91 = add i64 %90, -4
  %92 = load i64, i64* %3, align 8
  %93 = add i64 %92, 3
  store i64 %93, i64* %3, align 8
  %94 = inttoptr i64 %91 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = zext i32 %95 to i64
  store i64 %96, i64* %RCX.i2189, align 8
  %97 = add i64 %90, -16464
  %98 = add i64 %92, 9
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %97 to i32*
  store i32 %95, i32* %99, align 4
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -8
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 3
  store i64 %103, i64* %3, align 8
  %104 = inttoptr i64 %101 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = add i64 %100, -16468
  %107 = add i64 %102, 9
  store i64 %107, i64* %3, align 8
  %108 = inttoptr i64 %106 to i32*
  store i32 %105, i32* %108, align 4
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -12332
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 10
  store i64 %112, i64* %3, align 8
  %113 = inttoptr i64 %110 to i32*
  store i32 0, i32* %113, align 4
  %114 = load i64, i64* %RBP.i, align 8
  %115 = add i64 %114, -16452
  %116 = load i64, i64* %3, align 8
  %117 = add i64 %116, 10
  store i64 %117, i64* %3, align 8
  %118 = inttoptr i64 %115 to i32*
  store i32 1, i32* %118, align 4
  %119 = load i64, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x8661dc_type* @G_0x8661dc to i32*), align 8
  %120 = load i64, i64* %RBP.i, align 8
  %121 = add i64 %120, -16460
  %122 = add i64 %119, 54
  store i64 %122, i64* %3, align 8
  %123 = inttoptr i64 %121 to i32*
  store i32 1, i32* %123, align 4
  %124 = load i64, i64* %3, align 8
  store i32 -1000000, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %125 = load i32, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  %126 = add i32 %125, 1
  %127 = zext i32 %126 to i64
  store i64 %127, i64* %RCX.i2189, align 8
  %128 = icmp eq i32 %125, -1
  %129 = icmp eq i32 %126, 0
  %130 = or i1 %128, %129
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %14, align 1
  %132 = and i32 %126, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %21, align 1
  %137 = xor i32 %126, %125
  %138 = lshr i32 %137, 4
  %139 = trunc i32 %138 to i8
  %140 = and i8 %139, 1
  store i8 %140, i8* %26, align 1
  %141 = zext i1 %129 to i8
  store i8 %141, i8* %29, align 1
  %142 = lshr i32 %126, 31
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %32, align 1
  %144 = lshr i32 %125, 31
  %145 = xor i32 %142, %144
  %146 = add nuw nsw i32 %145, %142
  %147 = icmp eq i32 %146, 2
  %148 = zext i1 %147 to i8
  store i8 %148, i8* %38, align 1
  store i32 %126, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  %149 = load i64, i64* %RBP.i, align 8
  %150 = add i64 %149, -16520
  %151 = load i64, i64* %RAX.i2220, align 8
  %152 = add i64 %124, 35
  store i64 %152, i64* %3, align 8
  %153 = inttoptr i64 %150 to i64*
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -16528
  %156 = load i64, i64* %RDI.i2221, align 8
  %157 = load i64, i64* %3, align 8
  %158 = add i64 %157, 7
  store i64 %158, i64* %3, align 8
  %159 = inttoptr i64 %155 to i64*
  store i64 %156, i64* %159, align 8
  %160 = load i64, i64* %3, align 8
  %161 = add i64 %160, -93102
  %162 = add i64 %160, 5
  %163 = load i64, i64* %6, align 8
  %164 = add i64 %163, -8
  %165 = inttoptr i64 %164 to i64*
  store i64 %162, i64* %165, align 8
  store i64 %164, i64* %6, align 8
  store i64 %161, i64* %3, align 8
  %call2_4194ce = tail call %struct.Memory* @sub_402920.is_draw(%struct.State* %0, i64 %161, %struct.Memory* %2)
  %EAX.i2154 = bitcast %union.anon* %39 to i32*
  %166 = load i32, i32* %EAX.i2154, align 4
  %167 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %168 = and i32 %166, 255
  %169 = tail call i32 @llvm.ctpop.i32(i32 %168)
  %170 = trunc i32 %169 to i8
  %171 = and i8 %170, 1
  %172 = xor i8 %171, 1
  store i8 %172, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %173 = icmp eq i32 %166, 0
  %174 = zext i1 %173 to i8
  store i8 %174, i8* %29, align 1
  %175 = lshr i32 %166, 31
  %176 = trunc i32 %175 to i8
  store i8 %176, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v140 = select i1 %173, i64 97, i64 9
  %177 = add i64 %167, %.v140
  store i64 %177, i64* %3, align 8
  br i1 %173, label %block_.L_419534, label %block_4194dc

block_4194dc:                                     ; preds = %entry
  store i32 5, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %178 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %179 = sext i32 %178 to i64
  %180 = shl nsw i64 %179, 2
  %181 = add nsw i64 %180, 8829104
  %182 = add i64 %177, 41
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %181 to i32*
  store i32 0, i32* %183, align 4
  %184 = load i64, i64* %3, align 8
  %185 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %185, i64* %RAX.i2220, align 8
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -16528
  %188 = add i64 %184, 15
  store i64 %188, i64* %3, align 8
  %189 = inttoptr i64 %187 to i64*
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %RCX.i2189, align 8
  %191 = add i64 %184, 18
  store i64 %191, i64* %3, align 8
  %192 = inttoptr i64 %190 to i64*
  store i64 %185, i64* %192, align 8
  %193 = load i64, i64* %3, align 8
  %194 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %195 = load i64, i64* %RCX.i2189, align 8
  %196 = add i64 %195, 8
  %197 = add i64 %193, 12
  store i64 %197, i64* %3, align 8
  %198 = inttoptr i64 %196 to i64*
  store i64 %194, i64* %198, align 8
  %199 = load i64, i64* %3, align 8
  %200 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %200, i64* %RAX.i2220, align 8
  %201 = load i64, i64* %RCX.i2189, align 8
  %202 = add i64 %201, 16
  %203 = add i64 %199, 12
  store i64 %203, i64* %3, align 8
  %204 = inttoptr i64 %202 to i64*
  store i64 %200, i64* %204, align 8
  %205 = load i64, i64* %3, align 8
  %206 = add i64 %205, 5119
  store i64 %206, i64* %3, align 8
  br label %block_.L_41a92e

block_.L_419534:                                  ; preds = %entry
  %207 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %208 = sext i32 %207 to i64
  %209 = shl nsw i64 %208, 2
  %210 = add nsw i64 %209, 8829104
  %211 = add i64 %177, 22
  store i64 %211, i64* %3, align 8
  %212 = inttoptr i64 %210 to i32*
  store i32 %207, i32* %212, align 4
  %213 = load i64, i64* %3, align 8
  %214 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %215 = zext i32 %214 to i64
  store i64 %215, i64* %RAX.i2220, align 8
  %RDX.i2117 = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  %216 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %217 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %218 = add i32 %217, %216
  %219 = icmp eq i32 %218, 0
  %220 = zext i1 %219 to i8
  %221 = lshr i32 %218, 31
  %222 = add i32 %218, -1
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RDX.i2117, align 8
  store i8 %220, i8* %14, align 1
  %224 = and i32 %222, 255
  %225 = tail call i32 @llvm.ctpop.i32(i32 %224)
  %226 = trunc i32 %225 to i8
  %227 = and i8 %226, 1
  %228 = xor i8 %227, 1
  store i8 %228, i8* %21, align 1
  %229 = xor i32 %222, %218
  %230 = lshr i32 %229, 4
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  store i8 %232, i8* %26, align 1
  %233 = icmp eq i32 %222, 0
  %234 = zext i1 %233 to i8
  store i8 %234, i8* %29, align 1
  %235 = lshr i32 %222, 31
  %236 = trunc i32 %235 to i8
  store i8 %236, i8* %32, align 1
  %237 = xor i32 %235, %221
  %238 = add nuw nsw i32 %237, %221
  %239 = icmp eq i32 %238, 2
  %240 = zext i1 %239 to i8
  store i8 %240, i8* %38, align 1
  %241 = sext i32 %222 to i64
  store i64 %241, i64* %RCX.i2189, align 8
  %242 = shl nsw i64 %241, 2
  %243 = add nsw i64 %242, 8692688
  %244 = add i64 %213, 34
  store i64 %244, i64* %3, align 8
  %245 = inttoptr i64 %243 to i32*
  store i32 %214, i32* %245, align 4
  %246 = load i64, i64* %3, align 8
  %247 = add i64 %246, -64652
  %248 = add i64 %246, 5
  %249 = load i64, i64* %6, align 8
  %250 = add i64 %249, -8
  %251 = inttoptr i64 %250 to i64*
  store i64 %248, i64* %251, align 8
  store i64 %250, i64* %6, align 8
  store i64 %247, i64* %3, align 8
  %call2_41956c = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %247, %struct.Memory* %call2_4194ce)
  %252 = load i64, i64* %RBP.i, align 8
  %253 = add i64 %252, -16504
  %254 = load i32, i32* %EAX.i2154, align 4
  %255 = load i64, i64* %3, align 8
  %256 = add i64 %255, 6
  store i64 %256, i64* %3, align 8
  %257 = inttoptr i64 %253 to i32*
  store i32 %254, i32* %257, align 4
  %258 = load i64, i64* %RBP.i, align 8
  %259 = add i64 %258, -16504
  %260 = load i64, i64* %3, align 8
  %261 = add i64 %260, 7
  store i64 %261, i64* %3, align 8
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262, align 4
  store i8 0, i8* %14, align 1
  %264 = and i32 %263, 255
  %265 = tail call i32 @llvm.ctpop.i32(i32 %264)
  %266 = trunc i32 %265 to i8
  %267 = and i8 %266, 1
  %268 = xor i8 %267, 1
  store i8 %268, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %269 = icmp eq i32 %263, 0
  %270 = zext i1 %269 to i8
  store i8 %270, i8* %29, align 1
  %271 = lshr i32 %263, 31
  %272 = trunc i32 %271 to i8
  store i8 %272, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v141 = select i1 %269, i64 39, i64 13
  %273 = add i64 %260, %.v141
  store i64 %273, i64* %3, align 8
  br i1 %269, label %block_.L_41959e, label %block_419584

block_419584:                                     ; preds = %block_.L_419534
  %274 = load i32, i32* bitcast (%G_0x62e9f8_type* @G_0x62e9f8 to i32*), align 8
  %275 = add i32 %274, 1
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RAX.i2220, align 8
  %277 = icmp eq i32 %274, -1
  %278 = icmp eq i32 %275, 0
  %279 = or i1 %277, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %14, align 1
  %281 = and i32 %275, 255
  %282 = tail call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %21, align 1
  %286 = xor i32 %275, %274
  %287 = lshr i32 %286, 4
  %288 = trunc i32 %287 to i8
  %289 = and i8 %288, 1
  store i8 %289, i8* %26, align 1
  %290 = zext i1 %278 to i8
  store i8 %290, i8* %29, align 1
  %291 = lshr i32 %275, 31
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %32, align 1
  %293 = lshr i32 %274, 31
  %294 = xor i32 %291, %293
  %295 = add nuw nsw i32 %294, %291
  %296 = icmp eq i32 %295, 2
  %297 = zext i1 %296 to i8
  store i8 %297, i8* %38, align 1
  store i32 %275, i32* bitcast (%G_0x62e9f8_type* @G_0x62e9f8 to i32*), align 8
  %298 = add i64 %258, -12
  %299 = add i64 %273, 20
  store i64 %299, i64* %3, align 8
  %300 = inttoptr i64 %298 to i32*
  %301 = load i32, i32* %300, align 4
  %302 = add i32 %301, 1
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i2220, align 8
  %304 = icmp eq i32 %301, -1
  %305 = icmp eq i32 %302, 0
  %306 = or i1 %304, %305
  %307 = zext i1 %306 to i8
  store i8 %307, i8* %14, align 1
  %308 = and i32 %302, 255
  %309 = tail call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  store i8 %312, i8* %21, align 1
  %313 = xor i32 %302, %301
  %314 = lshr i32 %313, 4
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  store i8 %316, i8* %26, align 1
  %317 = zext i1 %305 to i8
  store i8 %317, i8* %29, align 1
  %318 = lshr i32 %302, 31
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %32, align 1
  %320 = lshr i32 %301, 31
  %321 = xor i32 %318, %320
  %322 = add nuw nsw i32 %321, %318
  %323 = icmp eq i32 %322, 2
  %324 = zext i1 %323 to i8
  store i8 %324, i8* %38, align 1
  %325 = add i64 %273, 26
  store i64 %325, i64* %3, align 8
  store i32 %302, i32* %300, align 4
  %.pre = load i64, i64* %RBP.i, align 8
  %.pre106 = load i64, i64* %3, align 8
  br label %block_.L_41959e

block_.L_41959e:                                  ; preds = %block_419584, %block_.L_419534
  %326 = phi i64 [ %.pre106, %block_419584 ], [ %273, %block_.L_419534 ]
  %327 = phi i64 [ %.pre, %block_419584 ], [ %258, %block_.L_419534 ]
  %328 = add i64 %327, -16504
  %329 = add i64 %326, 6
  store i64 %329, i64* %3, align 8
  %330 = inttoptr i64 %328 to i32*
  %331 = load i32, i32* %330, align 4
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX.i2220, align 8
  %333 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %334 = sext i32 %333 to i64
  %335 = shl nsw i64 %334, 2
  %336 = add nsw i64 %335, 8914528
  %337 = add i64 %326, 21
  store i64 %337, i64* %3, align 8
  %338 = inttoptr i64 %336 to i32*
  store i32 %331, i32* %338, align 4
  %339 = load i64, i64* %3, align 8
  %340 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %341 = sext i32 %340 to i64
  %342 = shl nsw i64 %341, 2
  %343 = add nsw i64 %342, 9045440
  %344 = add i64 %339, 19
  store i64 %344, i64* %3, align 8
  %345 = inttoptr i64 %343 to i32*
  store i32 0, i32* %345, align 4
  %346 = load i64, i64* %3, align 8
  %347 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %348 = sext i32 %347 to i64
  store i64 %348, i64* %RCX.i2189, align 8
  %349 = shl nsw i64 %348, 2
  %350 = add nsw i64 %349, 8913312
  %351 = add i64 %346, 19
  store i64 %351, i64* %3, align 8
  %352 = inttoptr i64 %350 to i32*
  store i32 0, i32* %352, align 4
  %353 = load i64, i64* %3, align 8
  %354 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %355 = add i32 %354, -4
  %356 = icmp ult i32 %354, 4
  %357 = zext i1 %356 to i8
  store i8 %357, i8* %14, align 1
  %358 = and i32 %355, 255
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %21, align 1
  %363 = xor i32 %355, %354
  %364 = lshr i32 %363, 4
  %365 = trunc i32 %364 to i8
  %366 = and i8 %365, 1
  store i8 %366, i8* %26, align 1
  %367 = icmp eq i32 %355, 0
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %29, align 1
  %369 = lshr i32 %355, 31
  %370 = trunc i32 %369 to i8
  store i8 %370, i8* %32, align 1
  %371 = lshr i32 %354, 31
  %372 = xor i32 %369, %371
  %373 = add nuw nsw i32 %372, %371
  %374 = icmp eq i32 %373, 2
  %375 = zext i1 %374 to i8
  store i8 %375, i8* %38, align 1
  %.v142 = select i1 %367, i64 14, i64 418
  %376 = add i64 %353, %.v142
  %377 = load i64, i64* %RBP.i, align 8
  %378 = add i64 %377, -12304
  %379 = add i64 %376, 7
  store i64 %379, i64* %3, align 8
  store i64 %378, i64* %RDI.i2221, align 8
  br i1 %367, label %block_4195e7, label %block_.L_41977b

block_4195e7:                                     ; preds = %block_.L_41959e
  store i32 0, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  store i32 1, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %380 = add i64 %376, -71607
  %381 = add i64 %376, 34
  %382 = load i64, i64* %6, align 8
  %383 = add i64 %382, -8
  %384 = inttoptr i64 %383 to i64*
  store i64 %381, i64* %384, align 8
  store i64 %383, i64* %6, align 8
  store i64 %380, i64* %3, align 8
  %call2_419604 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %380, %struct.Memory* %call2_41956c)
  %385 = load i64, i64* %3, align 8
  %386 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %387 = zext i32 %386 to i64
  store i64 %387, i64* %RAX.i2220, align 8
  %388 = load i64, i64* %RBP.i, align 8
  %389 = add i64 %388, -12332
  %390 = add i64 %385, 13
  store i64 %390, i64* %3, align 8
  %391 = inttoptr i64 %389 to i32*
  store i32 %386, i32* %391, align 4
  %392 = load i64, i64* %3, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %393 = load i64, i64* %RBP.i, align 8
  %394 = add i64 %393, -12332
  %395 = add i64 %392, 18
  store i64 %395, i64* %3, align 8
  %396 = inttoptr i64 %394 to i32*
  %397 = load i32, i32* %396, align 4
  store i8 0, i8* %14, align 1
  %398 = and i32 %397, 255
  %399 = tail call i32 @llvm.ctpop.i32(i32 %398)
  %400 = trunc i32 %399 to i8
  %401 = and i8 %400, 1
  %402 = xor i8 %401, 1
  store i8 %402, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %403 = icmp eq i32 %397, 0
  %404 = zext i1 %403 to i8
  store i8 %404, i8* %29, align 1
  %405 = lshr i32 %397, 31
  %406 = trunc i32 %405 to i8
  store i8 %406, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v200 = select i1 %403, i64 163, i64 24
  %407 = add i64 %392, %.v200
  store i64 %407, i64* %3, align 8
  br i1 %403, label %block_.L_4196b9, label %block_41962e

block_41962e:                                     ; preds = %block_4195e7
  %408 = add i64 %393, -12336
  %409 = add i64 %407, 10
  store i64 %409, i64* %3, align 8
  %410 = inttoptr i64 %408 to i32*
  store i32 0, i32* %410, align 4
  %RSI.i2038 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %.pre107 = load i64, i64* %3, align 8
  br label %block_.L_419638

block_.L_419638:                                  ; preds = %block_.L_41968e, %block_41962e
  %411 = phi i64 [ %557, %block_.L_41968e ], [ %.pre107, %block_41962e ]
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -12336
  %414 = add i64 %411, 6
  store i64 %414, i64* %3, align 8
  %415 = inttoptr i64 %413 to i32*
  %416 = load i32, i32* %415, align 4
  %417 = zext i32 %416 to i64
  store i64 %417, i64* %RAX.i2220, align 8
  %418 = add i64 %412, -12332
  %419 = add i64 %411, 12
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = sub i32 %416, %421
  %423 = icmp ult i32 %416, %421
  %424 = zext i1 %423 to i8
  store i8 %424, i8* %14, align 1
  %425 = and i32 %422, 255
  %426 = tail call i32 @llvm.ctpop.i32(i32 %425)
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = xor i8 %428, 1
  store i8 %429, i8* %21, align 1
  %430 = xor i32 %421, %416
  %431 = xor i32 %430, %422
  %432 = lshr i32 %431, 4
  %433 = trunc i32 %432 to i8
  %434 = and i8 %433, 1
  store i8 %434, i8* %26, align 1
  %435 = icmp eq i32 %422, 0
  %436 = zext i1 %435 to i8
  store i8 %436, i8* %29, align 1
  %437 = lshr i32 %422, 31
  %438 = trunc i32 %437 to i8
  store i8 %438, i8* %32, align 1
  %439 = lshr i32 %416, 31
  %440 = lshr i32 %421, 31
  %441 = xor i32 %440, %439
  %442 = xor i32 %437, %439
  %443 = add nuw nsw i32 %442, %441
  %444 = icmp eq i32 %443, 2
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %38, align 1
  %446 = icmp ne i8 %438, 0
  %447 = xor i1 %446, %444
  %.v201 = select i1 %447, i64 18, i64 124
  %448 = add i64 %411, %.v201
  store i64 %448, i64* %3, align 8
  br i1 %447, label %block_41964a, label %block_.L_4196b4

block_41964a:                                     ; preds = %block_.L_419638
  %449 = add i64 %412, -12304
  store i64 %449, i64* %RDI.i2221, align 8
  %450 = add i64 %448, 13
  store i64 %450, i64* %3, align 8
  %451 = load i32, i32* %415, align 4
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RSI.i2038, align 8
  %453 = add i64 %448, -57114
  %454 = add i64 %448, 18
  %455 = load i64, i64* %6, align 8
  %456 = add i64 %455, -8
  %457 = inttoptr i64 %456 to i64*
  store i64 %454, i64* %457, align 8
  store i64 %456, i64* %6, align 8
  store i64 %453, i64* %3, align 8
  %call2_419657 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %453, %struct.Memory* %call2_419604)
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -12304
  %460 = load i64, i64* %3, align 8
  store i64 %459, i64* %RDI.i2221, align 8
  %461 = add i64 %458, -12336
  %462 = add i64 %460, 13
  store i64 %462, i64* %3, align 8
  %463 = inttoptr i64 %461 to i32*
  %464 = load i32, i32* %463, align 4
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RSI.i2038, align 8
  %466 = add i64 %458, -16504
  %467 = add i64 %460, 19
  store i64 %467, i64* %3, align 8
  %468 = inttoptr i64 %466 to i32*
  %469 = load i32, i32* %468, align 4
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RDX.i2117, align 8
  %471 = add i64 %460, -77788
  %472 = add i64 %460, 24
  %473 = load i64, i64* %6, align 8
  %474 = add i64 %473, -8
  %475 = inttoptr i64 %474 to i64*
  store i64 %472, i64* %475, align 8
  store i64 %474, i64* %6, align 8
  store i64 %471, i64* %3, align 8
  %call2_41966f = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %471, %struct.Memory* %call2_419604)
  %476 = load i32, i32* %EAX.i2154, align 4
  %477 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %478 = and i32 %476, 255
  %479 = tail call i32 @llvm.ctpop.i32(i32 %478)
  %480 = trunc i32 %479 to i8
  %481 = and i8 %480, 1
  %482 = xor i8 %481, 1
  store i8 %482, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %483 = icmp eq i32 %476, 0
  %484 = zext i1 %483 to i8
  store i8 %484, i8* %29, align 1
  %485 = lshr i32 %476, 31
  %486 = trunc i32 %485 to i8
  store i8 %486, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v205 = select i1 %483, i64 26, i64 9
  %487 = add i64 %477, %.v205
  store i64 %487, i64* %3, align 8
  br i1 %483, label %block_.L_41968e, label %block_41967d

block_41967d:                                     ; preds = %block_41964a
  %488 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %489 = add i32 %488, 1
  %490 = zext i32 %489 to i64
  store i64 %490, i64* %RAX.i2220, align 8
  %491 = icmp eq i32 %488, -1
  %492 = icmp eq i32 %489, 0
  %493 = or i1 %491, %492
  %494 = zext i1 %493 to i8
  store i8 %494, i8* %14, align 1
  %495 = and i32 %489, 255
  %496 = tail call i32 @llvm.ctpop.i32(i32 %495)
  %497 = trunc i32 %496 to i8
  %498 = and i8 %497, 1
  %499 = xor i8 %498, 1
  store i8 %499, i8* %21, align 1
  %500 = xor i32 %489, %488
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  store i8 %503, i8* %26, align 1
  %504 = zext i1 %492 to i8
  store i8 %504, i8* %29, align 1
  %505 = lshr i32 %489, 31
  %506 = trunc i32 %505 to i8
  store i8 %506, i8* %32, align 1
  %507 = lshr i32 %488, 31
  %508 = xor i32 %505, %507
  %509 = add nuw nsw i32 %508, %505
  %510 = icmp eq i32 %509, 2
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %38, align 1
  %512 = add i64 %487, 17
  store i64 %512, i64* %3, align 8
  store i32 %489, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  br label %block_.L_41968e

block_.L_41968e:                                  ; preds = %block_41967d, %block_41964a
  %513 = phi i64 [ %512, %block_41967d ], [ %487, %block_41964a ]
  %514 = load i64, i64* %RBP.i, align 8
  %515 = add i64 %514, -12304
  store i64 %515, i64* %RDI.i2221, align 8
  %516 = add i64 %514, -12336
  %517 = add i64 %513, 13
  store i64 %517, i64* %3, align 8
  %518 = inttoptr i64 %516 to i32*
  %519 = load i32, i32* %518, align 4
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RSI.i2038, align 8
  %521 = add i64 %513, -52974
  %522 = add i64 %513, 18
  %523 = load i64, i64* %6, align 8
  %524 = add i64 %523, -8
  %525 = inttoptr i64 %524 to i64*
  store i64 %522, i64* %525, align 8
  store i64 %524, i64* %6, align 8
  store i64 %521, i64* %3, align 8
  %call2_41969b = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %521, %struct.Memory* %call2_419604)
  %526 = load i64, i64* %RBP.i, align 8
  %527 = add i64 %526, -12336
  %528 = load i64, i64* %3, align 8
  %529 = add i64 %528, 6
  store i64 %529, i64* %3, align 8
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530, align 4
  %532 = add i32 %531, 1
  %533 = zext i32 %532 to i64
  store i64 %533, i64* %RAX.i2220, align 8
  %534 = icmp eq i32 %531, -1
  %535 = icmp eq i32 %532, 0
  %536 = or i1 %534, %535
  %537 = zext i1 %536 to i8
  store i8 %537, i8* %14, align 1
  %538 = and i32 %532, 255
  %539 = tail call i32 @llvm.ctpop.i32(i32 %538)
  %540 = trunc i32 %539 to i8
  %541 = and i8 %540, 1
  %542 = xor i8 %541, 1
  store i8 %542, i8* %21, align 1
  %543 = xor i32 %532, %531
  %544 = lshr i32 %543, 4
  %545 = trunc i32 %544 to i8
  %546 = and i8 %545, 1
  store i8 %546, i8* %26, align 1
  %547 = zext i1 %535 to i8
  store i8 %547, i8* %29, align 1
  %548 = lshr i32 %532, 31
  %549 = trunc i32 %548 to i8
  store i8 %549, i8* %32, align 1
  %550 = lshr i32 %531, 31
  %551 = xor i32 %548, %550
  %552 = add nuw nsw i32 %551, %548
  %553 = icmp eq i32 %552, 2
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %38, align 1
  %555 = add i64 %528, 15
  store i64 %555, i64* %3, align 8
  store i32 %532, i32* %530, align 4
  %556 = load i64, i64* %3, align 8
  %557 = add i64 %556, -119
  store i64 %557, i64* %3, align 8
  br label %block_.L_419638

block_.L_4196b4:                                  ; preds = %block_.L_419638
  %558 = add i64 %448, 5
  store i64 %558, i64* %3, align 8
  br label %block_.L_4196b9

block_.L_4196b9:                                  ; preds = %block_.L_4196b4, %block_4195e7
  %559 = phi i64 [ %412, %block_.L_4196b4 ], [ %393, %block_4195e7 ]
  %560 = phi i64 [ %558, %block_.L_4196b4 ], [ %407, %block_4195e7 ]
  %561 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  store i8 0, i8* %14, align 1
  %562 = and i32 %561, 255
  %563 = tail call i32 @llvm.ctpop.i32(i32 %562)
  %564 = trunc i32 %563 to i8
  %565 = and i8 %564, 1
  %566 = xor i8 %565, 1
  store i8 %566, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %567 = icmp eq i32 %561, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %29, align 1
  %569 = lshr i32 %561, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v202 = select i1 %567, i64 14, i64 189
  %571 = add i64 %560, %.v202
  store i64 %571, i64* %3, align 8
  br i1 %567, label %block_4196c7, label %block_.L_419776

block_4196c7:                                     ; preds = %block_.L_4196b9
  %572 = add i64 %559, -12304
  store i64 %572, i64* %RDI.i2221, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  %573 = add i64 %571, -71831
  %574 = add i64 %571, 23
  %575 = load i64, i64* %6, align 8
  %576 = add i64 %575, -8
  %577 = inttoptr i64 %576 to i64*
  store i64 %574, i64* %577, align 8
  store i64 %576, i64* %6, align 8
  store i64 %573, i64* %3, align 8
  %call2_4196d9 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %573, %struct.Memory* %call2_419604)
  %578 = load i64, i64* %3, align 8
  %579 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %580 = zext i32 %579 to i64
  store i64 %580, i64* %RAX.i2220, align 8
  %581 = load i64, i64* %RBP.i, align 8
  %582 = add i64 %581, -12332
  %583 = add i64 %578, 13
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i32*
  store i32 %579, i32* %584, align 4
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -12336
  %587 = load i64, i64* %3, align 8
  %588 = add i64 %587, 10
  store i64 %588, i64* %3, align 8
  %589 = inttoptr i64 %586 to i32*
  store i32 0, i32* %589, align 4
  %RSI.i1974 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %.pre108 = load i64, i64* %3, align 8
  br label %block_.L_4196f5

block_.L_4196f5:                                  ; preds = %block_.L_41974b, %block_4196c7
  %590 = phi i64 [ %736, %block_.L_41974b ], [ %.pre108, %block_4196c7 ]
  %591 = load i64, i64* %RBP.i, align 8
  %592 = add i64 %591, -12336
  %593 = add i64 %590, 6
  store i64 %593, i64* %3, align 8
  %594 = inttoptr i64 %592 to i32*
  %595 = load i32, i32* %594, align 4
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX.i2220, align 8
  %597 = add i64 %591, -12332
  %598 = add i64 %590, 12
  store i64 %598, i64* %3, align 8
  %599 = inttoptr i64 %597 to i32*
  %600 = load i32, i32* %599, align 4
  %601 = sub i32 %595, %600
  %602 = icmp ult i32 %595, %600
  %603 = zext i1 %602 to i8
  store i8 %603, i8* %14, align 1
  %604 = and i32 %601, 255
  %605 = tail call i32 @llvm.ctpop.i32(i32 %604)
  %606 = trunc i32 %605 to i8
  %607 = and i8 %606, 1
  %608 = xor i8 %607, 1
  store i8 %608, i8* %21, align 1
  %609 = xor i32 %600, %595
  %610 = xor i32 %609, %601
  %611 = lshr i32 %610, 4
  %612 = trunc i32 %611 to i8
  %613 = and i8 %612, 1
  store i8 %613, i8* %26, align 1
  %614 = icmp eq i32 %601, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %29, align 1
  %616 = lshr i32 %601, 31
  %617 = trunc i32 %616 to i8
  store i8 %617, i8* %32, align 1
  %618 = lshr i32 %595, 31
  %619 = lshr i32 %600, 31
  %620 = xor i32 %619, %618
  %621 = xor i32 %616, %618
  %622 = add nuw nsw i32 %621, %620
  %623 = icmp eq i32 %622, 2
  %624 = zext i1 %623 to i8
  store i8 %624, i8* %38, align 1
  %625 = icmp ne i8 %617, 0
  %626 = xor i1 %625, %623
  %.v203 = select i1 %626, i64 18, i64 124
  %627 = add i64 %590, %.v203
  store i64 %627, i64* %3, align 8
  br i1 %626, label %block_419707, label %block_.L_419771

block_419707:                                     ; preds = %block_.L_4196f5
  %628 = add i64 %591, -12304
  store i64 %628, i64* %RDI.i2221, align 8
  %629 = add i64 %627, 13
  store i64 %629, i64* %3, align 8
  %630 = load i32, i32* %594, align 4
  %631 = zext i32 %630 to i64
  store i64 %631, i64* %RSI.i1974, align 8
  %632 = add i64 %627, -57303
  %633 = add i64 %627, 18
  %634 = load i64, i64* %6, align 8
  %635 = add i64 %634, -8
  %636 = inttoptr i64 %635 to i64*
  store i64 %633, i64* %636, align 8
  store i64 %635, i64* %6, align 8
  store i64 %632, i64* %3, align 8
  %call2_419714 = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %632, %struct.Memory* %call2_4196d9)
  %637 = load i64, i64* %RBP.i, align 8
  %638 = add i64 %637, -12304
  %639 = load i64, i64* %3, align 8
  store i64 %638, i64* %RDI.i2221, align 8
  %640 = add i64 %637, -12336
  %641 = add i64 %639, 13
  store i64 %641, i64* %3, align 8
  %642 = inttoptr i64 %640 to i32*
  %643 = load i32, i32* %642, align 4
  %644 = zext i32 %643 to i64
  store i64 %644, i64* %RSI.i1974, align 8
  %645 = add i64 %637, -16504
  %646 = add i64 %639, 19
  store i64 %646, i64* %3, align 8
  %647 = inttoptr i64 %645 to i32*
  %648 = load i32, i32* %647, align 4
  %649 = zext i32 %648 to i64
  store i64 %649, i64* %RDX.i2117, align 8
  %650 = add i64 %639, -77977
  %651 = add i64 %639, 24
  %652 = load i64, i64* %6, align 8
  %653 = add i64 %652, -8
  %654 = inttoptr i64 %653 to i64*
  store i64 %651, i64* %654, align 8
  store i64 %653, i64* %6, align 8
  store i64 %650, i64* %3, align 8
  %call2_41972c = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %650, %struct.Memory* %call2_4196d9)
  %655 = load i32, i32* %EAX.i2154, align 4
  %656 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %657 = and i32 %655, 255
  %658 = tail call i32 @llvm.ctpop.i32(i32 %657)
  %659 = trunc i32 %658 to i8
  %660 = and i8 %659, 1
  %661 = xor i8 %660, 1
  store i8 %661, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %662 = icmp eq i32 %655, 0
  %663 = zext i1 %662 to i8
  store i8 %663, i8* %29, align 1
  %664 = lshr i32 %655, 31
  %665 = trunc i32 %664 to i8
  store i8 %665, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v204 = select i1 %662, i64 26, i64 9
  %666 = add i64 %656, %.v204
  store i64 %666, i64* %3, align 8
  br i1 %662, label %block_.L_41974b, label %block_41973a

block_41973a:                                     ; preds = %block_419707
  %667 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %668 = add i32 %667, 1
  %669 = zext i32 %668 to i64
  store i64 %669, i64* %RAX.i2220, align 8
  %670 = icmp eq i32 %667, -1
  %671 = icmp eq i32 %668, 0
  %672 = or i1 %670, %671
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %14, align 1
  %674 = and i32 %668, 255
  %675 = tail call i32 @llvm.ctpop.i32(i32 %674)
  %676 = trunc i32 %675 to i8
  %677 = and i8 %676, 1
  %678 = xor i8 %677, 1
  store i8 %678, i8* %21, align 1
  %679 = xor i32 %668, %667
  %680 = lshr i32 %679, 4
  %681 = trunc i32 %680 to i8
  %682 = and i8 %681, 1
  store i8 %682, i8* %26, align 1
  %683 = zext i1 %671 to i8
  store i8 %683, i8* %29, align 1
  %684 = lshr i32 %668, 31
  %685 = trunc i32 %684 to i8
  store i8 %685, i8* %32, align 1
  %686 = lshr i32 %667, 31
  %687 = xor i32 %684, %686
  %688 = add nuw nsw i32 %687, %684
  %689 = icmp eq i32 %688, 2
  %690 = zext i1 %689 to i8
  store i8 %690, i8* %38, align 1
  %691 = add i64 %666, 17
  store i64 %691, i64* %3, align 8
  store i32 %668, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  br label %block_.L_41974b

block_.L_41974b:                                  ; preds = %block_41973a, %block_419707
  %692 = phi i64 [ %691, %block_41973a ], [ %666, %block_419707 ]
  %693 = load i64, i64* %RBP.i, align 8
  %694 = add i64 %693, -12304
  store i64 %694, i64* %RDI.i2221, align 8
  %695 = add i64 %693, -12336
  %696 = add i64 %692, 13
  store i64 %696, i64* %3, align 8
  %697 = inttoptr i64 %695 to i32*
  %698 = load i32, i32* %697, align 4
  %699 = zext i32 %698 to i64
  store i64 %699, i64* %RSI.i1974, align 8
  %700 = add i64 %692, -53163
  %701 = add i64 %692, 18
  %702 = load i64, i64* %6, align 8
  %703 = add i64 %702, -8
  %704 = inttoptr i64 %703 to i64*
  store i64 %701, i64* %704, align 8
  store i64 %703, i64* %6, align 8
  store i64 %700, i64* %3, align 8
  %call2_419758 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %700, %struct.Memory* %call2_4196d9)
  %705 = load i64, i64* %RBP.i, align 8
  %706 = add i64 %705, -12336
  %707 = load i64, i64* %3, align 8
  %708 = add i64 %707, 6
  store i64 %708, i64* %3, align 8
  %709 = inttoptr i64 %706 to i32*
  %710 = load i32, i32* %709, align 4
  %711 = add i32 %710, 1
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RAX.i2220, align 8
  %713 = icmp eq i32 %710, -1
  %714 = icmp eq i32 %711, 0
  %715 = or i1 %713, %714
  %716 = zext i1 %715 to i8
  store i8 %716, i8* %14, align 1
  %717 = and i32 %711, 255
  %718 = tail call i32 @llvm.ctpop.i32(i32 %717)
  %719 = trunc i32 %718 to i8
  %720 = and i8 %719, 1
  %721 = xor i8 %720, 1
  store i8 %721, i8* %21, align 1
  %722 = xor i32 %711, %710
  %723 = lshr i32 %722, 4
  %724 = trunc i32 %723 to i8
  %725 = and i8 %724, 1
  store i8 %725, i8* %26, align 1
  %726 = zext i1 %714 to i8
  store i8 %726, i8* %29, align 1
  %727 = lshr i32 %711, 31
  %728 = trunc i32 %727 to i8
  store i8 %728, i8* %32, align 1
  %729 = lshr i32 %710, 31
  %730 = xor i32 %727, %729
  %731 = add nuw nsw i32 %730, %727
  %732 = icmp eq i32 %731, 2
  %733 = zext i1 %732 to i8
  store i8 %733, i8* %38, align 1
  %734 = add i64 %707, 15
  store i64 %734, i64* %3, align 8
  store i32 %711, i32* %709, align 4
  %735 = load i64, i64* %3, align 8
  %736 = add i64 %735, -119
  store i64 %736, i64* %3, align 8
  br label %block_.L_4196f5

block_.L_419771:                                  ; preds = %block_.L_4196f5
  %737 = add i64 %627, 5
  store i64 %737, i64* %3, align 8
  br label %block_.L_419776

block_.L_419776:                                  ; preds = %block_.L_4196b9, %block_.L_419771
  %738 = phi i64 [ %559, %block_.L_4196b9 ], [ %591, %block_.L_419771 ]
  %739 = phi i64 [ %571, %block_.L_4196b9 ], [ %737, %block_.L_419771 ]
  %MEMORY.6 = phi %struct.Memory* [ %call2_419604, %block_.L_4196b9 ], [ %call2_4196d9, %block_.L_419771 ]
  %740 = add i64 %739, 30
  store i64 %740, i64* %3, align 8
  br label %block_.L_419794

block_.L_41977b:                                  ; preds = %block_.L_41959e
  %741 = add i64 %376, -72011
  %742 = add i64 %376, 12
  %743 = load i64, i64* %6, align 8
  %744 = add i64 %743, -8
  %745 = inttoptr i64 %744 to i64*
  store i64 %742, i64* %745, align 8
  store i64 %744, i64* %6, align 8
  store i64 %741, i64* %3, align 8
  %call2_419782 = tail call %struct.Memory* @sub_407e30.gen(%struct.State* nonnull %0, i64 %741, %struct.Memory* %call2_41956c)
  %746 = load i64, i64* %3, align 8
  %747 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %748 = zext i32 %747 to i64
  store i64 %748, i64* %RAX.i2220, align 8
  %749 = load i64, i64* %RBP.i, align 8
  %750 = add i64 %749, -12332
  %751 = add i64 %746, 13
  store i64 %751, i64* %3, align 8
  %752 = inttoptr i64 %750 to i32*
  store i32 %747, i32* %752, align 4
  %.pre109 = load i64, i64* %3, align 8
  %.pre110 = load i64, i64* %RBP.i, align 8
  br label %block_.L_419794

block_.L_419794:                                  ; preds = %block_.L_41977b, %block_.L_419776
  %753 = phi i64 [ %.pre110, %block_.L_41977b ], [ %738, %block_.L_419776 ]
  %754 = phi i64 [ %.pre109, %block_.L_41977b ], [ %740, %block_.L_419776 ]
  %MEMORY.7 = phi %struct.Memory* [ %call2_419782, %block_.L_41977b ], [ %MEMORY.6, %block_.L_419776 ]
  %R8D.i1925 = bitcast %union.anon* %61 to i32*
  store i64 4294967295, i64* %R8.i2209, align 8
  %755 = add i64 %753, -16448
  store i64 %755, i64* %RDX.i2117, align 8
  %RSI.i1919 = getelementptr inbounds %union.anon, %union.anon* %42, i64 0, i32 0
  %756 = add i64 %753, -14400
  store i64 %756, i64* %RSI.i1919, align 8
  %757 = add i64 %753, -12304
  store i64 %757, i64* %RDI.i2221, align 8
  %758 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %759 = zext i32 %758 to i64
  store i64 %759, i64* %RAX.i2220, align 8
  store i32 %758, i32* bitcast (%G_0x62ea0c_type* @G_0x62ea0c to i32*), align 8
  %760 = add i64 %753, -12332
  %761 = add i64 %754, 47
  store i64 %761, i64* %3, align 8
  %762 = inttoptr i64 %760 to i32*
  %763 = load i32, i32* %762, align 4
  %764 = zext i32 %763 to i64
  store i64 %764, i64* %RCX.i2189, align 8
  %765 = add i64 %754, -14484
  %766 = add i64 %754, 52
  %767 = load i64, i64* %6, align 8
  %768 = add i64 %767, -8
  %769 = inttoptr i64 %768 to i64*
  store i64 %766, i64* %769, align 8
  store i64 %768, i64* %6, align 8
  store i64 %765, i64* %3, align 8
  %call2_4197c3 = tail call %struct.Memory* @sub_415f00.order_moves(%struct.State* nonnull %0, i64 %765, %struct.Memory* %MEMORY.7)
  %770 = bitcast %union.anon* %39 to i64**
  %771 = bitcast %union.anon* %54 to i64**
  %772 = bitcast %union.anon* %42 to i64**
  %EDI.i431 = bitcast %union.anon* %40 to i32*
  %773 = bitcast %union.anon* %47 to i64**
  %774 = bitcast i64* %6 to i64**
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D.i1307 = bitcast %union.anon* %775 to i32*
  %776 = getelementptr inbounds %union.anon, %union.anon* %775, i64 0, i32 0
  %.pre111 = load i64, i64* %3, align 8
  br label %block_.L_4197c8

block_.L_4197c8:                                  ; preds = %block_.L_4197c8.backedge, %block_.L_419794
  %777 = phi i64 [ %.pre111, %block_.L_419794 ], [ %880, %block_.L_4197c8.backedge ]
  %MEMORY.8 = phi %struct.Memory* [ %call2_4197c3, %block_.L_419794 ], [ %MEMORY.8.be, %block_.L_4197c8.backedge ]
  %778 = load i64, i64* %RBP.i, align 8
  %779 = add i64 %778, -12336
  store i64 %779, i64* %RDI.i2221, align 8
  %780 = add i64 %778, -14400
  store i64 %780, i64* %RSI.i1919, align 8
  %781 = add i64 %778, -12332
  %782 = add i64 %777, 20
  store i64 %782, i64* %3, align 8
  %783 = inttoptr i64 %781 to i32*
  %784 = load i32, i32* %783, align 4
  %785 = zext i32 %784 to i64
  store i64 %785, i64* %RDX.i2117, align 8
  %786 = add i64 %777, -8984
  %787 = add i64 %777, 25
  %788 = load i64, i64* %6, align 8
  %789 = add i64 %788, -8
  %790 = inttoptr i64 %789 to i64*
  store i64 %787, i64* %790, align 8
  store i64 %789, i64* %6, align 8
  store i64 %786, i64* %3, align 8
  %call2_4197dc = tail call %struct.Memory* @sub_4174b0.remove_one(%struct.State* nonnull %0, i64 %786, %struct.Memory* %MEMORY.8)
  %791 = load i32, i32* %EAX.i2154, align 4
  %792 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %793 = and i32 %791, 255
  %794 = tail call i32 @llvm.ctpop.i32(i32 %793)
  %795 = trunc i32 %794 to i8
  %796 = and i8 %795, 1
  %797 = xor i8 %796, 1
  store i8 %797, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %798 = icmp eq i32 %791, 0
  %799 = zext i1 %798 to i8
  store i8 %799, i8* %29, align 1
  %800 = lshr i32 %791, 31
  %801 = trunc i32 %800 to i8
  store i8 %801, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v143 = select i1 %798, i64 4082, i64 9
  %802 = add i64 %792, %.v143
  store i64 %802, i64* %3, align 8
  br i1 %798, label %block_.L_41a7d3, label %block_4197ea

block_4197ea:                                     ; preds = %block_.L_4197c8
  %803 = load i32, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
  store i8 0, i8* %14, align 1
  %804 = and i32 %803, 255
  %805 = tail call i32 @llvm.ctpop.i32(i32 %804)
  %806 = trunc i32 %805 to i8
  %807 = and i8 %806, 1
  %808 = xor i8 %807, 1
  store i8 %808, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %809 = icmp eq i32 %803, 0
  %810 = zext i1 %809 to i8
  store i8 %810, i8* %29, align 1
  %811 = lshr i32 %803, 31
  %812 = trunc i32 %811 to i8
  store i8 %812, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v144 = select i1 %809, i64 14, i64 68
  %813 = add i64 %802, %.v144
  store i64 %813, i64* %3, align 8
  %814 = load i64, i64* %RBP.i, align 8
  br i1 %809, label %block_4197f8, label %block_.L_41982e

block_4197f8:                                     ; preds = %block_4197ea
  %815 = add i64 %814, -12336
  %816 = add i64 %813, 7
  store i64 %816, i64* %3, align 8
  %817 = inttoptr i64 %815 to i32*
  %818 = load i32, i32* %817, align 4
  %819 = sext i32 %818 to i64
  store i64 %819, i64* %RAX.i2220, align 8
  %820 = shl nsw i64 %819, 2
  %821 = add nsw i64 %820, 8940528
  %822 = add i64 %813, 15
  store i64 %822, i64* %3, align 8
  %823 = inttoptr i64 %821 to i32*
  %824 = load i32, i32* %823, align 4
  store i8 0, i8* %14, align 1
  %825 = and i32 %824, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %830 = icmp eq i32 %824, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %29, align 1
  %832 = lshr i32 %824, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v188 = select i1 %830, i64 54, i64 21
  %834 = add i64 %813, %.v188
  store i64 %834, i64* %3, align 8
  br i1 %830, label %block_.L_41982e, label %block_41980d

block_41980d:                                     ; preds = %block_4197f8
  %835 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %836 = add i32 %835, -4
  %837 = icmp ult i32 %835, 4
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %14, align 1
  %839 = and i32 %836, 255
  %840 = tail call i32 @llvm.ctpop.i32(i32 %839)
  %841 = trunc i32 %840 to i8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  store i8 %843, i8* %21, align 1
  %844 = xor i32 %836, %835
  %845 = lshr i32 %844, 4
  %846 = trunc i32 %845 to i8
  %847 = and i8 %846, 1
  store i8 %847, i8* %26, align 1
  %848 = icmp eq i32 %836, 0
  %849 = zext i1 %848 to i8
  store i8 %849, i8* %29, align 1
  %850 = lshr i32 %836, 31
  %851 = trunc i32 %850 to i8
  store i8 %851, i8* %32, align 1
  %852 = lshr i32 %835, 31
  %853 = xor i32 %850, %852
  %854 = add nuw nsw i32 %853, %852
  %855 = icmp eq i32 %854, 2
  %856 = zext i1 %855 to i8
  store i8 %856, i8* %38, align 1
  %.v189 = select i1 %848, i64 28, i64 14
  %857 = add i64 %834, %.v189
  store i64 %857, i64* %3, align 8
  br i1 %848, label %block_.L_4197c8.backedge, label %block_41981b

block_41981b:                                     ; preds = %block_41980d
  %858 = add i32 %835, -3
  %859 = icmp ult i32 %835, 3
  %860 = zext i1 %859 to i8
  store i8 %860, i8* %14, align 1
  %861 = and i32 %858, 255
  %862 = tail call i32 @llvm.ctpop.i32(i32 %861)
  %863 = trunc i32 %862 to i8
  %864 = and i8 %863, 1
  %865 = xor i8 %864, 1
  store i8 %865, i8* %21, align 1
  %866 = xor i32 %858, %835
  %867 = lshr i32 %866, 4
  %868 = trunc i32 %867 to i8
  %869 = and i8 %868, 1
  store i8 %869, i8* %26, align 1
  %870 = icmp eq i32 %858, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %29, align 1
  %872 = lshr i32 %858, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %32, align 1
  %874 = xor i32 %872, %852
  %875 = add nuw nsw i32 %874, %852
  %876 = icmp eq i32 %875, 2
  %877 = zext i1 %876 to i8
  store i8 %877, i8* %38, align 1
  %.v190 = select i1 %870, i64 14, i64 19
  %878 = add i64 %857, %.v190
  store i64 %878, i64* %3, align 8
  br i1 %870, label %block_.L_4197c8.backedge, label %block_.L_41982e

block_.L_4197c8.backedge:                         ; preds = %block_41981b, %block_41980d, %block_.L_41a7b3
  %879 = phi i64 [ %.pre130, %block_.L_41a7b3 ], [ %878, %block_41981b ], [ %857, %block_41980d ]
  %.sink90 = phi i64 [ -4102, %block_.L_41a7b3 ], [ -97, %block_41981b ], [ -97, %block_41980d ]
  %MEMORY.8.be = phi %struct.Memory* [ %MEMORY.38, %block_.L_41a7b3 ], [ %MEMORY.8, %block_41981b ], [ %MEMORY.8, %block_41980d ]
  %880 = add i64 %879, %.sink90
  store i64 %880, i64* %3, align 8
  br label %block_.L_4197c8

block_.L_41982e:                                  ; preds = %block_4197ea, %block_41981b, %block_4197f8
  %881 = phi i64 [ %878, %block_41981b ], [ %834, %block_4197f8 ], [ %813, %block_4197ea ]
  %882 = add i64 %814, -12304
  store i64 %882, i64* %RDI.i2221, align 8
  %883 = add i64 %814, -12336
  %884 = add i64 %881, 13
  store i64 %884, i64* %3, align 8
  %885 = inttoptr i64 %883 to i32*
  %886 = load i32, i32* %885, align 4
  %887 = zext i32 %886 to i64
  store i64 %887, i64* %RSI.i1919, align 8
  %888 = add i64 %881, -57598
  %889 = add i64 %881, 18
  %890 = load i64, i64* %6, align 8
  %891 = add i64 %890, -8
  %892 = inttoptr i64 %891 to i64*
  store i64 %889, i64* %892, align 8
  store i64 %891, i64* %6, align 8
  store i64 %888, i64* %3, align 8
  %call2_41983b = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %888, %struct.Memory* %MEMORY.8)
  %893 = load i64, i64* %RBP.i, align 8
  %894 = add i64 %893, -12304
  %895 = load i64, i64* %3, align 8
  store i64 %894, i64* %RDI.i2221, align 8
  store i64 ptrtoint (%G__0x864510_type* @G__0x864510 to i64), i64* %RAX.i2220, align 8
  %896 = add i64 %893, -16456
  %897 = add i64 %895, 27
  store i64 %897, i64* %3, align 8
  %898 = inttoptr i64 %896 to i32*
  store i32 0, i32* %898, align 4
  %899 = load i64, i64* %3, align 8
  %900 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %901 = zext i32 %900 to i64
  store i64 %901, i64* %RSI.i1919, align 8
  %902 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %903 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %904 = add i32 %903, %902
  %905 = add i32 %904, -1
  %906 = sext i32 %905 to i64
  %907 = shl nsw i64 %906, 2
  %908 = add nsw i64 %907, 8692688
  %909 = add i64 %899, 34
  store i64 %909, i64* %3, align 8
  %910 = inttoptr i64 %908 to i32*
  store i32 %900, i32* %910, align 4
  %911 = load i64, i64* %3, align 8
  %912 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %913 = add i32 %912, -1
  %914 = zext i32 %913 to i64
  store i64 %914, i64* %RCX.i2189, align 8
  %915 = sext i32 %913 to i64
  %916 = mul nsw i64 %915, 24
  store i64 %916, i64* %RDX.i2117, align 8
  %917 = lshr i64 %916, 63
  %918 = load i64, i64* %RAX.i2220, align 8
  %919 = add i64 %916, %918
  store i64 %919, i64* %RAX.i2220, align 8
  %920 = icmp ult i64 %919, %918
  %921 = icmp ult i64 %919, %916
  %922 = or i1 %920, %921
  %923 = zext i1 %922 to i8
  store i8 %923, i8* %14, align 1
  %924 = trunc i64 %919 to i32
  %925 = and i32 %924, 255
  %926 = tail call i32 @llvm.ctpop.i32(i32 %925)
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  %929 = xor i8 %928, 1
  store i8 %929, i8* %21, align 1
  %930 = xor i64 %916, %918
  %931 = xor i64 %930, %919
  %932 = lshr i64 %931, 4
  %933 = trunc i64 %932 to i8
  %934 = and i8 %933, 1
  store i8 %934, i8* %26, align 1
  %935 = icmp eq i64 %919, 0
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %29, align 1
  %937 = lshr i64 %919, 63
  %938 = trunc i64 %937 to i8
  store i8 %938, i8* %32, align 1
  %939 = lshr i64 %918, 63
  %940 = xor i64 %937, %939
  %941 = xor i64 %937, %917
  %942 = add nuw nsw i64 %940, %941
  %943 = icmp eq i64 %942, 2
  %944 = zext i1 %943 to i8
  store i8 %944, i8* %38, align 1
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -12336
  %947 = add i64 %911, 27
  store i64 %947, i64* %3, align 8
  %948 = inttoptr i64 %946 to i32*
  %949 = load i32, i32* %948, align 4
  %950 = sext i32 %949 to i64
  %951 = mul nsw i64 %950, 24
  store i64 %951, i64* %RDX.i2117, align 8
  %952 = lshr i64 %951, 63
  %953 = load i64, i64* %RDI.i2221, align 8
  %954 = add i64 %951, %953
  store i64 %954, i64* %R8.i2209, align 8
  %955 = icmp ult i64 %954, %953
  %956 = icmp ult i64 %954, %951
  %957 = or i1 %955, %956
  %958 = zext i1 %957 to i8
  store i8 %958, i8* %14, align 1
  %959 = trunc i64 %954 to i32
  %960 = and i32 %959, 255
  %961 = tail call i32 @llvm.ctpop.i32(i32 %960)
  %962 = trunc i32 %961 to i8
  %963 = and i8 %962, 1
  %964 = xor i8 %963, 1
  store i8 %964, i8* %21, align 1
  %965 = xor i64 %951, %953
  %966 = xor i64 %965, %954
  %967 = lshr i64 %966, 4
  %968 = trunc i64 %967 to i8
  %969 = and i8 %968, 1
  store i8 %969, i8* %26, align 1
  %970 = icmp eq i64 %954, 0
  %971 = zext i1 %970 to i8
  store i8 %971, i8* %29, align 1
  %972 = lshr i64 %954, 63
  %973 = trunc i64 %972 to i8
  store i8 %973, i8* %32, align 1
  %974 = lshr i64 %953, 63
  %975 = xor i64 %972, %974
  %976 = xor i64 %972, %952
  %977 = add nuw nsw i64 %975, %976
  %978 = icmp eq i64 %977, 2
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %38, align 1
  %980 = inttoptr i64 %954 to i64*
  %981 = add i64 %911, 40
  store i64 %981, i64* %3, align 8
  %982 = load i64, i64* %980, align 8
  store i64 %982, i64* %RDX.i2117, align 8
  %983 = load i64*, i64** %770, align 8
  %984 = add i64 %911, 43
  store i64 %984, i64* %3, align 8
  store i64 %982, i64* %983, align 8
  %985 = load i64, i64* %R8.i2209, align 8
  %986 = add i64 %985, 8
  %987 = load i64, i64* %3, align 8
  %988 = add i64 %987, 4
  store i64 %988, i64* %3, align 8
  %989 = inttoptr i64 %986 to i64*
  %990 = load i64, i64* %989, align 8
  store i64 %990, i64* %RDX.i2117, align 8
  %991 = load i64, i64* %RAX.i2220, align 8
  %992 = add i64 %991, 8
  %993 = add i64 %987, 8
  store i64 %993, i64* %3, align 8
  %994 = inttoptr i64 %992 to i64*
  store i64 %990, i64* %994, align 8
  %995 = load i64, i64* %R8.i2209, align 8
  %996 = add i64 %995, 16
  %997 = load i64, i64* %3, align 8
  %998 = add i64 %997, 4
  store i64 %998, i64* %3, align 8
  %999 = inttoptr i64 %996 to i64*
  %1000 = load i64, i64* %999, align 8
  store i64 %1000, i64* %RDX.i2117, align 8
  %1001 = load i64, i64* %RAX.i2220, align 8
  %1002 = add i64 %1001, 16
  %1003 = add i64 %997, 8
  store i64 %1003, i64* %3, align 8
  %1004 = inttoptr i64 %1002 to i64*
  store i64 %1000, i64* %1004, align 8
  %1005 = load i64, i64* %3, align 8
  %1006 = load i32, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  %1007 = zext i32 %1006 to i64
  store i64 %1007, i64* %RCX.i2189, align 8
  %1008 = load i64, i64* %RBP.i, align 8
  %1009 = add i64 %1008, -16512
  %1010 = add i64 %1005, 13
  store i64 %1010, i64* %3, align 8
  %1011 = inttoptr i64 %1009 to i32*
  store i32 %1006, i32* %1011, align 4
  %1012 = load i64, i64* %RBP.i, align 8
  %1013 = add i64 %1012, -12336
  %1014 = load i64, i64* %3, align 8
  %1015 = add i64 %1014, 6
  store i64 %1015, i64* %3, align 8
  %1016 = inttoptr i64 %1013 to i32*
  %1017 = load i32, i32* %1016, align 4
  %1018 = zext i32 %1017 to i64
  store i64 %1018, i64* %RSI.i1919, align 8
  %1019 = add i64 %1012, -16504
  %1020 = add i64 %1014, 12
  store i64 %1020, i64* %3, align 8
  %1021 = inttoptr i64 %1019 to i32*
  %1022 = load i32, i32* %1021, align 4
  %1023 = zext i32 %1022 to i64
  store i64 %1023, i64* %RDX.i2117, align 8
  %1024 = add i64 %1014, -78405
  %1025 = add i64 %1014, 17
  %1026 = load i64, i64* %6, align 8
  %1027 = add i64 %1026, -8
  %1028 = inttoptr i64 %1027 to i64*
  store i64 %1025, i64* %1028, align 8
  store i64 %1027, i64* %6, align 8
  store i64 %1024, i64* %3, align 8
  %call2_4198d1 = tail call %struct.Memory* @sub_406680.check_legal(%struct.State* nonnull %0, i64 %1024, %struct.Memory* %MEMORY.8)
  %1029 = load i32, i32* %EAX.i2154, align 4
  %1030 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %1031 = and i32 %1029, 255
  %1032 = tail call i32 @llvm.ctpop.i32(i32 %1031)
  %1033 = trunc i32 %1032 to i8
  %1034 = and i8 %1033, 1
  %1035 = xor i8 %1034, 1
  store i8 %1035, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1036 = icmp eq i32 %1029, 0
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %29, align 1
  %1038 = lshr i32 %1029, 31
  %1039 = trunc i32 %1038 to i8
  store i8 %1039, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v145 = select i1 %1036, i64 1843, i64 9
  %1040 = add i64 %1030, %.v145
  store i64 %1040, i64* %3, align 8
  br i1 %1036, label %block_.L_41a009, label %block_4198df

block_4198df:                                     ; preds = %block_.L_41982e
  %1041 = load i64, i64* %RBP.i, align 8
  %1042 = add i64 %1041, -12304
  store i64 %1042, i64* %RDI.i2221, align 8
  %1043 = add i64 %1041, -12336
  %1044 = add i64 %1040, 13
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i32*
  %1046 = load i32, i32* %1045, align 4
  %1047 = zext i32 %1046 to i64
  store i64 %1047, i64* %RSI.i1919, align 8
  %1048 = add i64 %1040, -53567
  %1049 = add i64 %1040, 18
  %1050 = load i64, i64* %6, align 8
  %1051 = add i64 %1050, -8
  %1052 = inttoptr i64 %1051 to i64*
  store i64 %1049, i64* %1052, align 8
  store i64 %1051, i64* %6, align 8
  store i64 %1048, i64* %3, align 8
  %call2_4198ec = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %1048, %struct.Memory* %MEMORY.8)
  %1053 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x886bd0_type* @G__0x886bd0 to i64), i64* %RDI.i2221, align 8
  %1054 = load i64, i64* %RBP.i, align 8
  %1055 = add i64 %1054, -12304
  store i64 %1055, i64* %RAX.i2220, align 8
  %1056 = add i64 %1054, -16508
  %1057 = add i64 %1053, 23
  store i64 %1057, i64* %3, align 8
  %1058 = inttoptr i64 %1056 to i32*
  %1059 = load i32, i32* %1058, align 4
  %1060 = add i32 %1059, 1
  %1061 = icmp eq i32 %1059, -1
  %1062 = icmp eq i32 %1060, 0
  %1063 = or i1 %1061, %1062
  %1064 = zext i1 %1063 to i8
  store i8 %1064, i8* %14, align 1
  %1065 = and i32 %1060, 255
  %1066 = tail call i32 @llvm.ctpop.i32(i32 %1065)
  %1067 = trunc i32 %1066 to i8
  %1068 = and i8 %1067, 1
  %1069 = xor i8 %1068, 1
  store i8 %1069, i8* %21, align 1
  %1070 = xor i32 %1060, %1059
  %1071 = lshr i32 %1070, 4
  %1072 = trunc i32 %1071 to i8
  %1073 = and i8 %1072, 1
  store i8 %1073, i8* %26, align 1
  %1074 = zext i1 %1062 to i8
  store i8 %1074, i8* %29, align 1
  %1075 = lshr i32 %1060, 31
  %1076 = trunc i32 %1075 to i8
  store i8 %1076, i8* %32, align 1
  %1077 = lshr i32 %1059, 31
  %1078 = xor i32 %1075, %1077
  %1079 = add nuw nsw i32 %1078, %1075
  %1080 = icmp eq i32 %1079, 2
  %1081 = zext i1 %1080 to i8
  store i8 %1081, i8* %38, align 1
  %1082 = add i64 %1053, 32
  store i64 %1082, i64* %3, align 8
  store i32 %1060, i32* %1058, align 4
  %1083 = load i64, i64* %3, align 8
  %1084 = load i32, i32* bitcast (%G_0x62ea0c_type* @G_0x62ea0c to i32*), align 8
  %1085 = zext i32 %1084 to i64
  store i64 %1085, i64* %RSI.i1919, align 8
  %1086 = load i64, i64* %RBP.i, align 8
  %1087 = add i64 %1086, -16508
  %1088 = add i64 %1083, 13
  store i64 %1088, i64* %3, align 8
  %1089 = inttoptr i64 %1087 to i32*
  %1090 = load i32, i32* %1089, align 4
  %1091 = sub i32 %1084, %1090
  %1092 = zext i32 %1091 to i64
  store i64 %1092, i64* %RSI.i1919, align 8
  %1093 = icmp ult i32 %1084, %1090
  %1094 = zext i1 %1093 to i8
  store i8 %1094, i8* %14, align 1
  %1095 = and i32 %1091, 255
  %1096 = tail call i32 @llvm.ctpop.i32(i32 %1095)
  %1097 = trunc i32 %1096 to i8
  %1098 = and i8 %1097, 1
  %1099 = xor i8 %1098, 1
  store i8 %1099, i8* %21, align 1
  %1100 = xor i32 %1090, %1084
  %1101 = xor i32 %1100, %1091
  %1102 = lshr i32 %1101, 4
  %1103 = trunc i32 %1102 to i8
  %1104 = and i8 %1103, 1
  store i8 %1104, i8* %26, align 1
  %1105 = icmp eq i32 %1091, 0
  %1106 = zext i1 %1105 to i8
  store i8 %1106, i8* %29, align 1
  %1107 = lshr i32 %1091, 31
  %1108 = trunc i32 %1107 to i8
  store i8 %1108, i8* %32, align 1
  %1109 = lshr i32 %1084, 31
  %1110 = lshr i32 %1090, 31
  %1111 = xor i32 %1110, %1109
  %1112 = xor i32 %1107, %1109
  %1113 = add nuw nsw i32 %1112, %1111
  %1114 = icmp eq i32 %1113, 2
  %1115 = zext i1 %1114 to i8
  store i8 %1115, i8* %38, align 1
  store i32 %1091, i32* bitcast (%G_0x886a5c_type* @G_0x886a5c to i32*), align 8
  %1116 = add i64 %1086, -12336
  %1117 = add i64 %1083, 27
  store i64 %1117, i64* %3, align 8
  %1118 = inttoptr i64 %1116 to i32*
  %1119 = load i32, i32* %1118, align 4
  %1120 = sext i32 %1119 to i64
  %1121 = mul nsw i64 %1120, 24
  store i64 %1121, i64* %RCX.i2189, align 8
  %1122 = lshr i64 %1121, 63
  %1123 = load i64, i64* %RAX.i2220, align 8
  %1124 = add i64 %1121, %1123
  store i64 %1124, i64* %RAX.i2220, align 8
  %1125 = icmp ult i64 %1124, %1123
  %1126 = icmp ult i64 %1124, %1121
  %1127 = or i1 %1125, %1126
  %1128 = zext i1 %1127 to i8
  store i8 %1128, i8* %14, align 1
  %1129 = trunc i64 %1124 to i32
  %1130 = and i32 %1129, 255
  %1131 = tail call i32 @llvm.ctpop.i32(i32 %1130)
  %1132 = trunc i32 %1131 to i8
  %1133 = and i8 %1132, 1
  %1134 = xor i8 %1133, 1
  store i8 %1134, i8* %21, align 1
  %1135 = xor i64 %1121, %1123
  %1136 = xor i64 %1135, %1124
  %1137 = lshr i64 %1136, 4
  %1138 = trunc i64 %1137 to i8
  %1139 = and i8 %1138, 1
  store i8 %1139, i8* %26, align 1
  %1140 = icmp eq i64 %1124, 0
  %1141 = zext i1 %1140 to i8
  store i8 %1141, i8* %29, align 1
  %1142 = lshr i64 %1124, 63
  %1143 = trunc i64 %1142 to i8
  store i8 %1143, i8* %32, align 1
  %1144 = lshr i64 %1123, 63
  %1145 = xor i64 %1142, %1144
  %1146 = xor i64 %1142, %1122
  %1147 = add nuw nsw i64 %1145, %1146
  %1148 = icmp eq i64 %1147, 2
  %1149 = zext i1 %1148 to i8
  store i8 %1149, i8* %38, align 1
  %1150 = inttoptr i64 %1124 to i64*
  %1151 = add i64 %1083, 37
  store i64 %1151, i64* %3, align 8
  %1152 = load i64, i64* %1150, align 8
  store i64 %1152, i64* %RCX.i2189, align 8
  %1153 = load i64*, i64** %774, align 8
  %1154 = add i64 %1083, 41
  store i64 %1154, i64* %3, align 8
  store i64 %1152, i64* %1153, align 8
  %1155 = load i64, i64* %RAX.i2220, align 8
  %1156 = add i64 %1155, 8
  %1157 = load i64, i64* %3, align 8
  %1158 = add i64 %1157, 4
  store i64 %1158, i64* %3, align 8
  %1159 = inttoptr i64 %1156 to i64*
  %1160 = load i64, i64* %1159, align 8
  store i64 %1160, i64* %RCX.i2189, align 8
  %1161 = load i64, i64* %6, align 8
  %1162 = add i64 %1161, 8
  %1163 = add i64 %1157, 9
  store i64 %1163, i64* %3, align 8
  %1164 = inttoptr i64 %1162 to i64*
  store i64 %1160, i64* %1164, align 8
  %1165 = load i64, i64* %RAX.i2220, align 8
  %1166 = add i64 %1165, 16
  %1167 = load i64, i64* %3, align 8
  %1168 = add i64 %1167, 4
  store i64 %1168, i64* %3, align 8
  %1169 = inttoptr i64 %1166 to i64*
  %1170 = load i64, i64* %1169, align 8
  store i64 %1170, i64* %RAX.i2220, align 8
  %1171 = load i64, i64* %6, align 8
  %1172 = add i64 %1171, 16
  %1173 = add i64 %1167, 9
  store i64 %1173, i64* %3, align 8
  %1174 = inttoptr i64 %1172 to i64*
  store i64 %1170, i64* %1174, align 8
  %1175 = load i64, i64* %3, align 8
  %1176 = add i64 %1175, 32804
  %1177 = add i64 %1175, 5
  %1178 = load i64, i64* %6, align 8
  %1179 = add i64 %1178, -8
  %1180 = inttoptr i64 %1179 to i64*
  store i64 %1177, i64* %1180, align 8
  store i64 %1179, i64* %6, align 8
  store i64 %1176, i64* %3, align 8
  %call2_41994c = tail call %struct.Memory* @sub_421970.comp_to_san(%struct.State* nonnull %0, i64 %1176, %struct.Memory* %MEMORY.8)
  %1181 = load i64, i64* %RBP.i, align 8
  %1182 = add i64 %1181, -12304
  %1183 = load i64, i64* %3, align 8
  store i64 %1182, i64* %RDI.i2221, align 8
  %1184 = add i64 %1181, -12336
  %1185 = add i64 %1183, 13
  store i64 %1185, i64* %3, align 8
  %1186 = inttoptr i64 %1184 to i32*
  %1187 = load i32, i32* %1186, align 4
  %1188 = zext i32 %1187 to i64
  store i64 %1188, i64* %RSI.i1919, align 8
  %1189 = add i64 %1183, -57889
  %1190 = add i64 %1183, 18
  %1191 = load i64, i64* %6, align 8
  %1192 = add i64 %1191, -8
  %1193 = inttoptr i64 %1192 to i64*
  store i64 %1190, i64* %1193, align 8
  store i64 %1192, i64* %6, align 8
  store i64 %1189, i64* %3, align 8
  %call2_41995e = tail call %struct.Memory* @sub_40b730.make(%struct.State* nonnull %0, i64 %1189, %struct.Memory* %MEMORY.8)
  %1194 = load i64, i64* %RBP.i, align 8
  %1195 = add i64 %1194, -12304
  %1196 = load i64, i64* %3, align 8
  store i64 %1195, i64* %RDI.i2221, align 8
  %1197 = add i64 %1194, -12336
  %1198 = add i64 %1196, 13
  store i64 %1198, i64* %3, align 8
  %1199 = inttoptr i64 %1197 to i32*
  %1200 = load i32, i32* %1199, align 4
  %1201 = zext i32 %1200 to i64
  store i64 %1201, i64* %RSI.i1919, align 8
  %1202 = add i64 %1196, -65507
  %1203 = add i64 %1196, 18
  %1204 = load i64, i64* %6, align 8
  %1205 = add i64 %1204, -8
  %1206 = inttoptr i64 %1205 to i64*
  store i64 %1203, i64* %1206, align 8
  store i64 %1205, i64* %6, align 8
  store i64 %1202, i64* %3, align 8
  %call2_419970 = tail call %struct.Memory* @sub_409980.f_in_check(%struct.State* nonnull %0, i64 %1202, %struct.Memory* %MEMORY.8)
  %1207 = load i64, i64* %3, align 8
  %1208 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1209 = sext i32 %1208 to i64
  %1210 = shl nsw i64 %1209, 2
  %1211 = add nsw i64 %1210, 8914528
  %1212 = load i32, i32* %EAX.i2154, align 4
  %1213 = add i64 %1207, 15
  store i64 %1213, i64* %3, align 8
  %1214 = inttoptr i64 %1211 to i32*
  store i32 %1212, i32* %1214, align 4
  %1215 = load i64, i64* %3, align 8
  %1216 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1217 = sext i32 %1216 to i64
  %1218 = shl nsw i64 %1217, 2
  %1219 = add nsw i64 %1218, 9045440
  %1220 = add i64 %1215, 19
  store i64 %1220, i64* %3, align 8
  %1221 = inttoptr i64 %1219 to i32*
  store i32 0, i32* %1221, align 4
  %1222 = load i64, i64* %3, align 8
  %1223 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1224 = sext i32 %1223 to i64
  store i64 %1224, i64* %RCX.i2189, align 8
  %1225 = shl nsw i64 %1224, 2
  %1226 = add nsw i64 %1225, 8913312
  %1227 = add i64 %1222, 19
  store i64 %1227, i64* %3, align 8
  %1228 = inttoptr i64 %1226 to i32*
  store i32 0, i32* %1228, align 4
  %1229 = load i64, i64* %RBP.i, align 8
  %1230 = add i64 %1229, -16460
  %1231 = load i64, i64* %3, align 8
  %1232 = add i64 %1231, 7
  store i64 %1232, i64* %3, align 8
  %1233 = inttoptr i64 %1230 to i32*
  %1234 = load i32, i32* %1233, align 4
  %1235 = add i32 %1234, -1
  %1236 = icmp eq i32 %1234, 0
  %1237 = zext i1 %1236 to i8
  store i8 %1237, i8* %14, align 1
  %1238 = and i32 %1235, 255
  %1239 = tail call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  store i8 %1242, i8* %21, align 1
  %1243 = xor i32 %1235, %1234
  %1244 = lshr i32 %1243, 4
  %1245 = trunc i32 %1244 to i8
  %1246 = and i8 %1245, 1
  store i8 %1246, i8* %26, align 1
  %1247 = icmp eq i32 %1235, 0
  %1248 = zext i1 %1247 to i8
  store i8 %1248, i8* %29, align 1
  %1249 = lshr i32 %1235, 31
  %1250 = trunc i32 %1249 to i8
  store i8 %1250, i8* %32, align 1
  %1251 = lshr i32 %1234, 31
  %1252 = xor i32 %1249, %1251
  %1253 = add nuw nsw i32 %1252, %1251
  %1254 = icmp eq i32 %1253, 2
  %1255 = zext i1 %1254 to i8
  store i8 %1255, i8* %38, align 1
  %.v146 = select i1 %1247, i64 27, i64 13
  %1256 = add i64 %1231, %.v146
  store i64 %1256, i64* %3, align 8
  br i1 %1247, label %block_.L_4199c5, label %block_4199b7

block_4199b7:                                     ; preds = %block_4198df
  %1257 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %1258 = add i32 %1257, -2
  %1259 = icmp ult i32 %1257, 2
  %1260 = zext i1 %1259 to i8
  store i8 %1260, i8* %14, align 1
  %1261 = and i32 %1258, 255
  %1262 = tail call i32 @llvm.ctpop.i32(i32 %1261)
  %1263 = trunc i32 %1262 to i8
  %1264 = and i8 %1263, 1
  %1265 = xor i8 %1264, 1
  store i8 %1265, i8* %21, align 1
  %1266 = xor i32 %1258, %1257
  %1267 = lshr i32 %1266, 4
  %1268 = trunc i32 %1267 to i8
  %1269 = and i8 %1268, 1
  store i8 %1269, i8* %26, align 1
  %1270 = icmp eq i32 %1258, 0
  %1271 = zext i1 %1270 to i8
  store i8 %1271, i8* %29, align 1
  %1272 = lshr i32 %1258, 31
  %1273 = trunc i32 %1272 to i8
  store i8 %1273, i8* %32, align 1
  %1274 = lshr i32 %1257, 31
  %1275 = xor i32 %1272, %1274
  %1276 = add nuw nsw i32 %1275, %1274
  %1277 = icmp eq i32 %1276, 2
  %1278 = zext i1 %1277 to i8
  store i8 %1278, i8* %38, align 1
  %1279 = icmp ne i8 %1273, 0
  %1280 = xor i1 %1279, %1277
  %.v147 = select i1 %1280, i64 14, i64 687
  %1281 = add i64 %1256, %.v147
  store i64 %1281, i64* %3, align 8
  br i1 %1280, label %block_.L_4199c5, label %block_.L_419c66

block_.L_4199c5:                                  ; preds = %block_4199b7, %block_4198df
  %1282 = phi i64 [ %1281, %block_4199b7 ], [ %1256, %block_4198df ]
  store i64 0, i64* %RAX.i2220, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i2189, align 8
  %1283 = add i64 %1229, -16468
  %1284 = add i64 %1282, 10
  store i64 %1284, i64* %3, align 8
  %1285 = inttoptr i64 %1283 to i32*
  %1286 = load i32, i32* %1285, align 4
  %1287 = sub i32 0, %1286
  %1288 = zext i32 %1287 to i64
  store i64 %1288, i64* %RCX.i2189, align 8
  %1289 = icmp ne i32 %1286, 0
  %1290 = zext i1 %1289 to i8
  store i8 %1290, i8* %14, align 1
  %1291 = and i32 %1287, 255
  %1292 = tail call i32 @llvm.ctpop.i32(i32 %1291)
  %1293 = trunc i32 %1292 to i8
  %1294 = and i8 %1293, 1
  %1295 = xor i8 %1294, 1
  store i8 %1295, i8* %21, align 1
  %1296 = xor i32 %1286, %1287
  %1297 = lshr i32 %1296, 4
  %1298 = trunc i32 %1297 to i8
  %1299 = and i8 %1298, 1
  store i8 %1299, i8* %26, align 1
  %1300 = icmp eq i32 %1286, 0
  %1301 = zext i1 %1300 to i8
  store i8 %1301, i8* %29, align 1
  %1302 = lshr i32 %1287, 31
  %1303 = trunc i32 %1302 to i8
  store i8 %1303, i8* %32, align 1
  %1304 = lshr i32 %1286, 31
  %1305 = add nuw nsw i32 %1302, %1304
  %1306 = icmp eq i32 %1305, 2
  %1307 = zext i1 %1306 to i8
  store i8 %1307, i8* %38, align 1
  store i64 0, i64* %RDX.i2117, align 8
  %1308 = add i64 %1229, -16464
  %1309 = add i64 %1282, 18
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i32*
  %1311 = load i32, i32* %1310, align 4
  %1312 = sub i32 0, %1311
  %1313 = zext i32 %1312 to i64
  store i64 %1313, i64* %RDX.i2117, align 8
  %1314 = icmp ne i32 %1311, 0
  %1315 = zext i1 %1314 to i8
  store i8 %1315, i8* %14, align 1
  %1316 = and i32 %1312, 255
  %1317 = tail call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %21, align 1
  %1321 = xor i32 %1311, %1312
  %1322 = lshr i32 %1321, 4
  %1323 = trunc i32 %1322 to i8
  %1324 = and i8 %1323, 1
  store i8 %1324, i8* %26, align 1
  %1325 = icmp eq i32 %1311, 0
  %1326 = zext i1 %1325 to i8
  store i8 %1326, i8* %29, align 1
  %1327 = lshr i32 %1312, 31
  %1328 = trunc i32 %1327 to i8
  store i8 %1328, i8* %32, align 1
  %1329 = lshr i32 %1311, 31
  %1330 = add nuw nsw i32 %1327, %1329
  %1331 = icmp eq i32 %1330, 2
  %1332 = zext i1 %1331 to i8
  store i8 %1332, i8* %38, align 1
  %1333 = load i64, i64* %RBP.i, align 8
  %1334 = add i64 %1333, -12
  %1335 = add i64 %1282, 21
  store i64 %1335, i64* %3, align 8
  %1336 = inttoptr i64 %1334 to i32*
  %1337 = load i32, i32* %1336, align 4
  %1338 = add i32 %1337, -1
  %1339 = icmp eq i32 %1337, 0
  %1340 = zext i1 %1339 to i8
  store i8 %1340, i8* %14, align 1
  %1341 = and i32 %1338, 255
  %1342 = tail call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  store i8 %1345, i8* %21, align 1
  %1346 = xor i32 %1338, %1337
  %1347 = lshr i32 %1346, 4
  %1348 = trunc i32 %1347 to i8
  %1349 = and i8 %1348, 1
  store i8 %1349, i8* %26, align 1
  %1350 = icmp eq i32 %1338, 0
  %1351 = zext i1 %1350 to i8
  store i8 %1351, i8* %29, align 1
  %1352 = lshr i32 %1338, 31
  %1353 = trunc i32 %1352 to i8
  store i8 %1353, i8* %32, align 1
  %1354 = lshr i32 %1337, 31
  %1355 = xor i32 %1352, %1354
  %1356 = add nuw nsw i32 %1355, %1354
  %1357 = icmp eq i32 %1356, 2
  %1358 = zext i1 %1357 to i8
  store i8 %1358, i8* %38, align 1
  %1359 = load i32, i32* %ECX.i2211, align 4
  %1360 = zext i32 %1359 to i64
  store i64 %1360, i64* %RDI.i2221, align 8
  %1361 = add i64 %1333, -16532
  %1362 = add i64 %1282, 32
  store i64 %1362, i64* %3, align 8
  %1363 = inttoptr i64 %1361 to i32*
  store i32 %1338, i32* %1363, align 4
  %1364 = load i32, i32* %EDX.i2214, align 4
  %1365 = zext i32 %1364 to i64
  %1366 = load i64, i64* %3, align 8
  store i64 %1365, i64* %RSI.i1919, align 8
  %1367 = load i64, i64* %RBP.i, align 8
  %1368 = add i64 %1367, -16532
  %1369 = add i64 %1366, 8
  store i64 %1369, i64* %3, align 8
  %1370 = inttoptr i64 %1368 to i32*
  %1371 = load i32, i32* %1370, align 4
  %1372 = zext i32 %1371 to i64
  store i64 %1372, i64* %RDX.i2117, align 8
  %1373 = load i32, i32* %EAX.i2154, align 4
  %1374 = zext i32 %1373 to i64
  store i64 %1374, i64* %RCX.i2189, align 8
  %1375 = add i64 %1366, -9349
  %1376 = add i64 %1366, 15
  %1377 = load i64, i64* %6, align 8
  %1378 = add i64 %1377, -8
  %1379 = inttoptr i64 %1378 to i64*
  store i64 %1376, i64* %1379, align 8
  store i64 %1378, i64* %6, align 8
  store i64 %1375, i64* %3, align 8
  %call2_4199ef = tail call %struct.Memory* @sub_417560.search(%struct.State* nonnull %0, i64 %1375, %struct.Memory* %MEMORY.8)
  %1380 = load i64, i64* %3, align 8
  %1381 = load i32, i32* %EAX.i2154, align 4
  %1382 = sub i32 0, %1381
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RCX.i2189, align 8
  %1384 = load i64, i64* %RBP.i, align 8
  %1385 = add i64 %1384, -12344
  %1386 = add i64 %1380, 10
  store i64 %1386, i64* %3, align 8
  %1387 = inttoptr i64 %1385 to i32*
  store i32 %1382, i32* %1387, align 4
  %1388 = load i64, i64* %3, align 8
  %1389 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1390 = and i32 %1389, 255
  %1391 = tail call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  store i8 %1394, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1395 = icmp eq i32 %1389, 0
  %1396 = zext i1 %1395 to i8
  store i8 %1396, i8* %29, align 1
  %1397 = lshr i32 %1389, 31
  %1398 = trunc i32 %1397 to i8
  store i8 %1398, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v182 = select i1 %1395, i64 14, i64 611
  %1399 = add i64 %1388, %.v182
  store i64 %1399, i64* %3, align 8
  br i1 %1395, label %block_419a0c, label %block_.L_419c61

block_419a0c:                                     ; preds = %block_.L_4199c5
  %1400 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
  store i8 0, i8* %14, align 1
  %1401 = and i32 %1400, 255
  %1402 = tail call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  store i8 %1405, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1406 = icmp eq i32 %1400, 0
  %1407 = zext i1 %1406 to i8
  store i8 %1407, i8* %29, align 1
  %1408 = lshr i32 %1400, 31
  %1409 = trunc i32 %1408 to i8
  store i8 %1409, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v183 = select i1 %1406, i64 14, i64 28
  %1410 = add i64 %1399, %.v183
  store i64 %1410, i64* %3, align 8
  br i1 %1406, label %block_419a1a, label %block_.L_419a28

block_419a1a:                                     ; preds = %block_419a0c
  %1411 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1412 = and i32 %1411, 255
  %1413 = tail call i32 @llvm.ctpop.i32(i32 %1412)
  %1414 = trunc i32 %1413 to i8
  %1415 = and i8 %1414, 1
  %1416 = xor i8 %1415, 1
  store i8 %1416, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1417 = icmp eq i32 %1411, 0
  %1418 = zext i1 %1417 to i8
  store i8 %1418, i8* %29, align 1
  %1419 = lshr i32 %1411, 31
  %1420 = trunc i32 %1419 to i8
  store i8 %1420, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v187 = select i1 %1417, i64 14, i64 583
  %1421 = add i64 %1410, %.v187
  store i64 %1421, i64* %3, align 8
  br i1 %1417, label %block_.L_419a28, label %block_.L_419c61

block_.L_419a28:                                  ; preds = %block_419a1a, %block_419a0c
  %1422 = phi i64 [ %1421, %block_419a1a ], [ %1410, %block_419a0c ]
  %1423 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %1424 = add i32 %1423, -2
  %1425 = icmp ult i32 %1423, 2
  %1426 = zext i1 %1425 to i8
  store i8 %1426, i8* %14, align 1
  %1427 = and i32 %1424, 255
  %1428 = tail call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  store i8 %1431, i8* %21, align 1
  %1432 = xor i32 %1424, %1423
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  store i8 %1435, i8* %26, align 1
  %1436 = icmp eq i32 %1424, 0
  %1437 = zext i1 %1436 to i8
  store i8 %1437, i8* %29, align 1
  %1438 = lshr i32 %1424, 31
  %1439 = trunc i32 %1438 to i8
  store i8 %1439, i8* %32, align 1
  %1440 = lshr i32 %1423, 31
  %1441 = xor i32 %1438, %1440
  %1442 = add nuw nsw i32 %1441, %1440
  %1443 = icmp eq i32 %1442, 2
  %1444 = zext i1 %1443 to i8
  store i8 %1444, i8* %38, align 1
  %1445 = icmp ne i8 %1439, 0
  %1446 = xor i1 %1445, %1443
  %.v139 = select i1 %1446, i64 569, i64 14
  %1447 = add i64 %1422, %.v139
  store i64 %1447, i64* %3, align 8
  br i1 %1446, label %block_.L_419c61, label %block_419a36

block_419a36:                                     ; preds = %block_.L_419a28
  %1448 = load i64, i64* %RBP.i, align 8
  %1449 = add i64 %1448, -12344
  %1450 = add i64 %1447, 6
  store i64 %1450, i64* %3, align 8
  %1451 = inttoptr i64 %1449 to i32*
  %1452 = load i32, i32* %1451, align 4
  %1453 = zext i32 %1452 to i64
  store i64 %1453, i64* %RAX.i2220, align 8
  %1454 = add i64 %1448, -16468
  %1455 = add i64 %1447, 12
  store i64 %1455, i64* %3, align 8
  %1456 = inttoptr i64 %1454 to i32*
  %1457 = load i32, i32* %1456, align 4
  %1458 = sub i32 %1452, %1457
  %1459 = icmp ult i32 %1452, %1457
  %1460 = zext i1 %1459 to i8
  store i8 %1460, i8* %14, align 1
  %1461 = and i32 %1458, 255
  %1462 = tail call i32 @llvm.ctpop.i32(i32 %1461)
  %1463 = trunc i32 %1462 to i8
  %1464 = and i8 %1463, 1
  %1465 = xor i8 %1464, 1
  store i8 %1465, i8* %21, align 1
  %1466 = xor i32 %1457, %1452
  %1467 = xor i32 %1466, %1458
  %1468 = lshr i32 %1467, 4
  %1469 = trunc i32 %1468 to i8
  %1470 = and i8 %1469, 1
  store i8 %1470, i8* %26, align 1
  %1471 = icmp eq i32 %1458, 0
  %1472 = zext i1 %1471 to i8
  store i8 %1472, i8* %29, align 1
  %1473 = lshr i32 %1458, 31
  %1474 = trunc i32 %1473 to i8
  store i8 %1474, i8* %32, align 1
  %1475 = lshr i32 %1452, 31
  %1476 = lshr i32 %1457, 31
  %1477 = xor i32 %1476, %1475
  %1478 = xor i32 %1473, %1475
  %1479 = add nuw nsw i32 %1478, %1477
  %1480 = icmp eq i32 %1479, 2
  %1481 = zext i1 %1480 to i8
  store i8 %1481, i8* %38, align 1
  %1482 = icmp ne i8 %1474, 0
  %1483 = xor i1 %1482, %1480
  %.v138 = select i1 %1483, i64 58, i64 18
  %1484 = add i64 %1447, %.v138
  store i64 %1484, i64* %3, align 8
  br i1 %1483, label %block_.L_419a70, label %block_419a48

block_419a48:                                     ; preds = %block_419a36
  %1485 = add i64 %1448, -12304
  store i64 %1485, i64* %RAX.i2220, align 8
  %1486 = add i64 %1484, 13
  store i64 %1486, i64* %3, align 8
  %1487 = load i32, i32* %1451, align 4
  %1488 = zext i32 %1487 to i64
  store i64 %1488, i64* %RDI.i2221, align 8
  %1489 = add i64 %1448, -12336
  %1490 = add i64 %1484, 20
  store i64 %1490, i64* %3, align 8
  %1491 = inttoptr i64 %1489 to i32*
  %1492 = load i32, i32* %1491, align 4
  %1493 = sext i32 %1492 to i64
  %1494 = mul nsw i64 %1493, 24
  store i64 %1494, i64* %RCX.i2189, align 8
  %1495 = lshr i64 %1494, 63
  %1496 = add i64 %1494, %1485
  store i64 %1496, i64* %RAX.i2220, align 8
  %1497 = icmp ult i64 %1496, %1485
  %1498 = icmp ult i64 %1496, %1494
  %1499 = or i1 %1497, %1498
  %1500 = zext i1 %1499 to i8
  store i8 %1500, i8* %14, align 1
  %1501 = trunc i64 %1496 to i32
  %1502 = and i32 %1501, 255
  %1503 = tail call i32 @llvm.ctpop.i32(i32 %1502)
  %1504 = trunc i32 %1503 to i8
  %1505 = and i8 %1504, 1
  %1506 = xor i8 %1505, 1
  store i8 %1506, i8* %21, align 1
  %1507 = xor i64 %1494, %1485
  %1508 = xor i64 %1507, %1496
  %1509 = lshr i64 %1508, 4
  %1510 = trunc i64 %1509 to i8
  %1511 = and i8 %1510, 1
  store i8 %1511, i8* %26, align 1
  %1512 = icmp eq i64 %1496, 0
  %1513 = zext i1 %1512 to i8
  store i8 %1513, i8* %29, align 1
  %1514 = lshr i64 %1496, 63
  %1515 = trunc i64 %1514 to i8
  store i8 %1515, i8* %32, align 1
  %1516 = lshr i64 %1485, 63
  %1517 = xor i64 %1514, %1516
  %1518 = xor i64 %1514, %1495
  %1519 = add nuw nsw i64 %1517, %1518
  %1520 = icmp eq i64 %1519, 2
  %1521 = zext i1 %1520 to i8
  store i8 %1521, i8* %38, align 1
  store i64 %1496, i64* %RSI.i1919, align 8
  %1522 = add i64 %1484, 40776
  %1523 = add i64 %1484, 35
  %1524 = load i64, i64* %6, align 8
  %1525 = add i64 %1524, -8
  %1526 = inttoptr i64 %1525 to i64*
  store i64 %1523, i64* %1526, align 8
  store i64 %1525, i64* %6, align 8
  store i64 %1522, i64* %3, align 8
  %call2_419a66 = tail call %struct.Memory* @sub_423990.post_fh_thinking(%struct.State* nonnull %0, i64 %1522, %struct.Memory* %MEMORY.8)
  %1527 = load i64, i64* %3, align 8
  %1528 = add i64 %1527, 385
  br label %block_.L_419bec

block_.L_419a70:                                  ; preds = %block_419a36
  %1529 = add i64 %1484, 6
  store i64 %1529, i64* %3, align 8
  %1530 = load i32, i32* %1451, align 4
  %1531 = zext i32 %1530 to i64
  store i64 %1531, i64* %RAX.i2220, align 8
  %1532 = add i64 %1448, -16464
  %1533 = add i64 %1484, 12
  store i64 %1533, i64* %3, align 8
  %1534 = inttoptr i64 %1532 to i32*
  %1535 = load i32, i32* %1534, align 4
  %1536 = sub i32 %1530, %1535
  %1537 = icmp ult i32 %1530, %1535
  %1538 = zext i1 %1537 to i8
  store i8 %1538, i8* %14, align 1
  %1539 = and i32 %1536, 255
  %1540 = tail call i32 @llvm.ctpop.i32(i32 %1539)
  %1541 = trunc i32 %1540 to i8
  %1542 = and i8 %1541, 1
  %1543 = xor i8 %1542, 1
  store i8 %1543, i8* %21, align 1
  %1544 = xor i32 %1535, %1530
  %1545 = xor i32 %1544, %1536
  %1546 = lshr i32 %1545, 4
  %1547 = trunc i32 %1546 to i8
  %1548 = and i8 %1547, 1
  store i8 %1548, i8* %26, align 1
  %1549 = icmp eq i32 %1536, 0
  %1550 = zext i1 %1549 to i8
  store i8 %1550, i8* %29, align 1
  %1551 = lshr i32 %1536, 31
  %1552 = trunc i32 %1551 to i8
  store i8 %1552, i8* %32, align 1
  %1553 = lshr i32 %1530, 31
  %1554 = lshr i32 %1535, 31
  %1555 = xor i32 %1554, %1553
  %1556 = xor i32 %1551, %1553
  %1557 = add nuw nsw i32 %1556, %1555
  %1558 = icmp eq i32 %1557, 2
  %1559 = zext i1 %1558 to i8
  store i8 %1559, i8* %38, align 1
  %1560 = icmp ne i8 %1552, 0
  %1561 = xor i1 %1560, %1558
  %.demorgan = or i1 %1549, %1561
  %.v = select i1 %.demorgan, i64 18, i64 69
  %1562 = add i64 %1484, %.v
  %1563 = add i64 %1448, -12304
  %1564 = add i64 %1562, 7
  store i64 %1564, i64* %3, align 8
  store i64 %1563, i64* %RAX.i2220, align 8
  br i1 %.demorgan, label %block_419a82, label %block_.L_419ab5

block_419a82:                                     ; preds = %block_.L_419a70
  store i32 1, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  %1565 = add i64 %1562, 24
  store i64 %1565, i64* %3, align 8
  %1566 = load i32, i32* %1451, align 4
  %1567 = zext i32 %1566 to i64
  store i64 %1567, i64* %RDI.i2221, align 8
  %1568 = add i64 %1448, -12336
  %1569 = add i64 %1562, 31
  store i64 %1569, i64* %3, align 8
  %1570 = inttoptr i64 %1568 to i32*
  %1571 = load i32, i32* %1570, align 4
  %1572 = sext i32 %1571 to i64
  %1573 = mul nsw i64 %1572, 24
  store i64 %1573, i64* %RCX.i2189, align 8
  %1574 = lshr i64 %1573, 63
  %1575 = add i64 %1573, %1563
  store i64 %1575, i64* %RAX.i2220, align 8
  %1576 = icmp ult i64 %1575, %1563
  %1577 = icmp ult i64 %1575, %1573
  %1578 = or i1 %1576, %1577
  %1579 = zext i1 %1578 to i8
  store i8 %1579, i8* %14, align 1
  %1580 = trunc i64 %1575 to i32
  %1581 = and i32 %1580, 255
  %1582 = tail call i32 @llvm.ctpop.i32(i32 %1581)
  %1583 = trunc i32 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = xor i8 %1584, 1
  store i8 %1585, i8* %21, align 1
  %1586 = xor i64 %1573, %1563
  %1587 = xor i64 %1586, %1575
  %1588 = lshr i64 %1587, 4
  %1589 = trunc i64 %1588 to i8
  %1590 = and i8 %1589, 1
  store i8 %1590, i8* %26, align 1
  %1591 = icmp eq i64 %1575, 0
  %1592 = zext i1 %1591 to i8
  store i8 %1592, i8* %29, align 1
  %1593 = lshr i64 %1575, 63
  %1594 = trunc i64 %1593 to i8
  store i8 %1594, i8* %32, align 1
  %1595 = lshr i64 %1563, 63
  %1596 = xor i64 %1593, %1595
  %1597 = xor i64 %1593, %1574
  %1598 = add nuw nsw i64 %1596, %1597
  %1599 = icmp eq i64 %1598, 2
  %1600 = zext i1 %1599 to i8
  store i8 %1600, i8* %38, align 1
  store i64 %1575, i64* %RSI.i1919, align 8
  %1601 = add i64 %1562, 41214
  %1602 = add i64 %1562, 46
  %1603 = load i64, i64* %6, align 8
  %1604 = add i64 %1603, -8
  %1605 = inttoptr i64 %1604 to i64*
  store i64 %1602, i64* %1605, align 8
  store i64 %1604, i64* %6, align 8
  store i64 %1601, i64* %3, align 8
  %call2_419aab = tail call %struct.Memory* @sub_423b80.post_fl_thinking(%struct.State* nonnull %0, i64 %1601, %struct.Memory* %MEMORY.8)
  %1606 = load i64, i64* %3, align 8
  %1607 = add i64 %1606, 311
  store i64 %1607, i64* %3, align 8
  br label %block_.L_419be7

block_.L_419ab5:                                  ; preds = %block_.L_419a70
  %1608 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1609 = add i32 %1608, -1
  %1610 = sext i32 %1609 to i64
  %1611 = mul nsw i64 %1610, 7200
  %1612 = add i64 %1611, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1613 = lshr i64 %1612, 63
  %1614 = add i32 %1608, -1
  %1615 = zext i32 %1614 to i64
  store i64 %1615, i64* %RDX.i2117, align 8
  %1616 = sext i32 %1614 to i64
  %1617 = mul nsw i64 %1616, 24
  store i64 %1617, i64* %RSI.i1919, align 8
  %1618 = lshr i64 %1617, 63
  %1619 = add i64 %1617, %1612
  store i64 %1619, i64* %RCX.i2189, align 8
  %1620 = icmp ult i64 %1619, %1612
  %1621 = icmp ult i64 %1619, %1617
  %1622 = or i1 %1620, %1621
  %1623 = zext i1 %1622 to i8
  store i8 %1623, i8* %14, align 1
  %1624 = trunc i64 %1619 to i32
  %1625 = and i32 %1624, 248
  %1626 = tail call i32 @llvm.ctpop.i32(i32 %1625)
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = xor i8 %1628, 1
  store i8 %1629, i8* %21, align 1
  %1630 = xor i64 %1617, %1612
  %1631 = xor i64 %1630, %1619
  %1632 = lshr i64 %1631, 4
  %1633 = trunc i64 %1632 to i8
  %1634 = and i8 %1633, 1
  store i8 %1634, i8* %26, align 1
  %1635 = icmp eq i64 %1619, 0
  %1636 = zext i1 %1635 to i8
  store i8 %1636, i8* %29, align 1
  %1637 = lshr i64 %1619, 63
  %1638 = trunc i64 %1637 to i8
  store i8 %1638, i8* %32, align 1
  %1639 = xor i64 %1637, %1613
  %1640 = xor i64 %1637, %1618
  %1641 = add nuw nsw i64 %1639, %1640
  %1642 = icmp eq i64 %1641, 2
  %1643 = zext i1 %1642 to i8
  store i8 %1643, i8* %38, align 1
  %1644 = load i64, i64* %RBP.i, align 8
  %1645 = add i64 %1644, -12336
  %1646 = add i64 %1562, 67
  store i64 %1646, i64* %3, align 8
  %1647 = inttoptr i64 %1645 to i32*
  %1648 = load i32, i32* %1647, align 4
  %1649 = sext i32 %1648 to i64
  %1650 = mul nsw i64 %1649, 24
  store i64 %1650, i64* %RSI.i1919, align 8
  %1651 = lshr i64 %1650, 63
  %1652 = load i64, i64* %RAX.i2220, align 8
  %1653 = add i64 %1650, %1652
  store i64 %1653, i64* %RAX.i2220, align 8
  %1654 = icmp ult i64 %1653, %1652
  %1655 = icmp ult i64 %1653, %1650
  %1656 = or i1 %1654, %1655
  %1657 = zext i1 %1656 to i8
  store i8 %1657, i8* %14, align 1
  %1658 = trunc i64 %1653 to i32
  %1659 = and i32 %1658, 255
  %1660 = tail call i32 @llvm.ctpop.i32(i32 %1659)
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = xor i8 %1662, 1
  store i8 %1663, i8* %21, align 1
  %1664 = xor i64 %1650, %1652
  %1665 = xor i64 %1664, %1653
  %1666 = lshr i64 %1665, 4
  %1667 = trunc i64 %1666 to i8
  %1668 = and i8 %1667, 1
  store i8 %1668, i8* %26, align 1
  %1669 = icmp eq i64 %1653, 0
  %1670 = zext i1 %1669 to i8
  store i8 %1670, i8* %29, align 1
  %1671 = lshr i64 %1653, 63
  %1672 = trunc i64 %1671 to i8
  store i8 %1672, i8* %32, align 1
  %1673 = lshr i64 %1652, 63
  %1674 = xor i64 %1671, %1673
  %1675 = xor i64 %1671, %1651
  %1676 = add nuw nsw i64 %1674, %1675
  %1677 = icmp eq i64 %1676, 2
  %1678 = zext i1 %1677 to i8
  store i8 %1678, i8* %38, align 1
  %1679 = inttoptr i64 %1653 to i64*
  %1680 = add i64 %1562, 77
  store i64 %1680, i64* %3, align 8
  %1681 = load i64, i64* %1679, align 8
  store i64 %1681, i64* %RSI.i1919, align 8
  %1682 = load i64*, i64** %771, align 8
  %1683 = add i64 %1562, 80
  store i64 %1683, i64* %3, align 8
  store i64 %1681, i64* %1682, align 8
  %1684 = load i64, i64* %RAX.i2220, align 8
  %1685 = add i64 %1684, 8
  %1686 = load i64, i64* %3, align 8
  %1687 = add i64 %1686, 4
  store i64 %1687, i64* %3, align 8
  %1688 = inttoptr i64 %1685 to i64*
  %1689 = load i64, i64* %1688, align 8
  store i64 %1689, i64* %RSI.i1919, align 8
  %1690 = load i64, i64* %RCX.i2189, align 8
  %1691 = add i64 %1690, 8
  %1692 = add i64 %1686, 8
  store i64 %1692, i64* %3, align 8
  %1693 = inttoptr i64 %1691 to i64*
  store i64 %1689, i64* %1693, align 8
  %1694 = load i64, i64* %RAX.i2220, align 8
  %1695 = add i64 %1694, 16
  %1696 = load i64, i64* %3, align 8
  %1697 = add i64 %1696, 4
  store i64 %1697, i64* %3, align 8
  %1698 = inttoptr i64 %1695 to i64*
  %1699 = load i64, i64* %1698, align 8
  store i64 %1699, i64* %RAX.i2220, align 8
  %1700 = load i64, i64* %RCX.i2189, align 8
  %1701 = add i64 %1700, 16
  %1702 = add i64 %1696, 8
  store i64 %1702, i64* %3, align 8
  %1703 = inttoptr i64 %1701 to i64*
  store i64 %1699, i64* %1703, align 8
  %1704 = load i64, i64* %3, align 8
  %1705 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1706 = zext i32 %1705 to i64
  store i64 %1706, i64* %RDX.i2117, align 8
  %1707 = load i64, i64* %RBP.i, align 8
  %1708 = add i64 %1707, -12340
  %1709 = add i64 %1704, 13
  store i64 %1709, i64* %3, align 8
  %1710 = inttoptr i64 %1708 to i32*
  store i32 %1705, i32* %1710, align 4
  %.pre117 = load i64, i64* %3, align 8
  br label %block_.L_419b22

block_.L_419b22:                                  ; preds = %block_419b3d, %block_.L_419ab5
  %1711 = phi i64 [ %1908, %block_419b3d ], [ %.pre117, %block_.L_419ab5 ]
  %1712 = load i64, i64* %RBP.i, align 8
  %1713 = add i64 %1712, -12340
  %1714 = add i64 %1711, 6
  store i64 %1714, i64* %3, align 8
  %1715 = inttoptr i64 %1713 to i32*
  %1716 = load i32, i32* %1715, align 4
  %1717 = zext i32 %1716 to i64
  store i64 %1717, i64* %RAX.i2220, align 8
  %1718 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1719 = sext i32 %1718 to i64
  store i64 %1719, i64* %RCX.i2189, align 8
  %1720 = shl nsw i64 %1719, 2
  %1721 = add nsw i64 %1720, 8829104
  %1722 = add i64 %1711, 21
  store i64 %1722, i64* %3, align 8
  %1723 = inttoptr i64 %1721 to i32*
  %1724 = load i32, i32* %1723, align 4
  %1725 = sub i32 %1716, %1724
  %1726 = icmp ult i32 %1716, %1724
  %1727 = zext i1 %1726 to i8
  store i8 %1727, i8* %14, align 1
  %1728 = and i32 %1725, 255
  %1729 = tail call i32 @llvm.ctpop.i32(i32 %1728)
  %1730 = trunc i32 %1729 to i8
  %1731 = and i8 %1730, 1
  %1732 = xor i8 %1731, 1
  store i8 %1732, i8* %21, align 1
  %1733 = xor i32 %1724, %1716
  %1734 = xor i32 %1733, %1725
  %1735 = lshr i32 %1734, 4
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  store i8 %1737, i8* %26, align 1
  %1738 = icmp eq i32 %1725, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %29, align 1
  %1740 = lshr i32 %1725, 31
  %1741 = trunc i32 %1740 to i8
  store i8 %1741, i8* %32, align 1
  %1742 = lshr i32 %1716, 31
  %1743 = lshr i32 %1724, 31
  %1744 = xor i32 %1743, %1742
  %1745 = xor i32 %1740, %1742
  %1746 = add nuw nsw i32 %1745, %1744
  %1747 = icmp eq i32 %1746, 2
  %1748 = zext i1 %1747 to i8
  store i8 %1748, i8* %38, align 1
  %1749 = icmp ne i8 %1741, 0
  %1750 = xor i1 %1749, %1747
  %.v186 = select i1 %1750, i64 27, i64 151
  %1751 = add i64 %1711, %.v186
  store i64 %1751, i64* %3, align 8
  br i1 %1750, label %block_419b3d, label %block_.L_419bb9

block_419b3d:                                     ; preds = %block_.L_419b22
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i2220, align 8
  %1752 = add i32 %1718, -1
  %1753 = zext i32 %1752 to i64
  store i64 %1753, i64* %RCX.i2189, align 8
  %1754 = sext i32 %1752 to i64
  %1755 = mul nsw i64 %1754, 7200
  store i64 %1755, i64* %RDX.i2117, align 8
  %1756 = lshr i64 %1755, 63
  %1757 = add i64 %1755, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  store i64 %1757, i64* %RSI.i1919, align 8
  %1758 = icmp ult i64 %1757, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1759 = icmp ult i64 %1757, %1755
  %1760 = or i1 %1758, %1759
  %1761 = zext i1 %1760 to i8
  store i8 %1761, i8* %14, align 1
  %1762 = trunc i64 %1757 to i32
  %1763 = and i32 %1762, 248
  %1764 = tail call i32 @llvm.ctpop.i32(i32 %1763)
  %1765 = trunc i32 %1764 to i8
  %1766 = and i8 %1765, 1
  %1767 = xor i8 %1766, 1
  store i8 %1767, i8* %21, align 1
  %1768 = xor i64 %1757, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %1769 = lshr i64 %1768, 4
  %1770 = trunc i64 %1769 to i8
  %1771 = and i8 %1770, 1
  store i8 %1771, i8* %26, align 1
  %1772 = icmp eq i64 %1757, 0
  %1773 = zext i1 %1772 to i8
  store i8 %1773, i8* %29, align 1
  %1774 = lshr i64 %1757, 63
  %1775 = trunc i64 %1774 to i8
  store i8 %1775, i8* %32, align 1
  %1776 = xor i64 %1774, lshr (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 63)
  %1777 = xor i64 %1774, %1756
  %1778 = add nuw nsw i64 %1776, %1777
  %1779 = icmp eq i64 %1778, 2
  %1780 = zext i1 %1779 to i8
  store i8 %1780, i8* %38, align 1
  %1781 = load i64, i64* %RBP.i, align 8
  %1782 = add i64 %1781, -12340
  %1783 = add i64 %1751, 43
  store i64 %1783, i64* %3, align 8
  %1784 = inttoptr i64 %1782 to i32*
  %1785 = load i32, i32* %1784, align 4
  %1786 = sext i32 %1785 to i64
  %1787 = mul nsw i64 %1786, 24
  %1788 = add i64 %1787, %1757
  store i64 %1788, i64* %RSI.i1919, align 8
  %1789 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %1790 = sext i32 %1789 to i64
  %1791 = mul nsw i64 %1790, 7200
  store i64 %1791, i64* %RDX.i2117, align 8
  %1792 = lshr i64 %1791, 63
  %1793 = load i64, i64* %RAX.i2220, align 8
  %1794 = add i64 %1791, %1793
  store i64 %1794, i64* %RAX.i2220, align 8
  %1795 = icmp ult i64 %1794, %1793
  %1796 = icmp ult i64 %1794, %1791
  %1797 = or i1 %1795, %1796
  %1798 = zext i1 %1797 to i8
  store i8 %1798, i8* %14, align 1
  %1799 = trunc i64 %1794 to i32
  %1800 = and i32 %1799, 255
  %1801 = tail call i32 @llvm.ctpop.i32(i32 %1800)
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = xor i8 %1803, 1
  store i8 %1804, i8* %21, align 1
  %1805 = xor i64 %1793, %1794
  %1806 = lshr i64 %1805, 4
  %1807 = trunc i64 %1806 to i8
  %1808 = and i8 %1807, 1
  store i8 %1808, i8* %26, align 1
  %1809 = icmp eq i64 %1794, 0
  %1810 = zext i1 %1809 to i8
  store i8 %1810, i8* %29, align 1
  %1811 = lshr i64 %1794, 63
  %1812 = trunc i64 %1811 to i8
  store i8 %1812, i8* %32, align 1
  %1813 = lshr i64 %1793, 63
  %1814 = xor i64 %1811, %1813
  %1815 = xor i64 %1811, %1792
  %1816 = add nuw nsw i64 %1814, %1815
  %1817 = icmp eq i64 %1816, 2
  %1818 = zext i1 %1817 to i8
  store i8 %1818, i8* %38, align 1
  %1819 = load i64, i64* %RBP.i, align 8
  %1820 = add i64 %1819, -12340
  %1821 = add i64 %1751, 75
  store i64 %1821, i64* %3, align 8
  %1822 = inttoptr i64 %1820 to i32*
  %1823 = load i32, i32* %1822, align 4
  %1824 = sext i32 %1823 to i64
  %1825 = mul nsw i64 %1824, 24
  store i64 %1825, i64* %RDX.i2117, align 8
  %1826 = lshr i64 %1825, 63
  %1827 = add i64 %1825, %1794
  store i64 %1827, i64* %RAX.i2220, align 8
  %1828 = icmp ult i64 %1827, %1794
  %1829 = icmp ult i64 %1827, %1825
  %1830 = or i1 %1828, %1829
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %14, align 1
  %1832 = trunc i64 %1827 to i32
  %1833 = and i32 %1832, 255
  %1834 = tail call i32 @llvm.ctpop.i32(i32 %1833)
  %1835 = trunc i32 %1834 to i8
  %1836 = and i8 %1835, 1
  %1837 = xor i8 %1836, 1
  store i8 %1837, i8* %21, align 1
  %1838 = xor i64 %1825, %1794
  %1839 = xor i64 %1838, %1827
  %1840 = lshr i64 %1839, 4
  %1841 = trunc i64 %1840 to i8
  %1842 = and i8 %1841, 1
  store i8 %1842, i8* %26, align 1
  %1843 = icmp eq i64 %1827, 0
  %1844 = zext i1 %1843 to i8
  store i8 %1844, i8* %29, align 1
  %1845 = lshr i64 %1827, 63
  %1846 = trunc i64 %1845 to i8
  store i8 %1846, i8* %32, align 1
  %1847 = xor i64 %1845, %1811
  %1848 = xor i64 %1845, %1826
  %1849 = add nuw nsw i64 %1847, %1848
  %1850 = icmp eq i64 %1849, 2
  %1851 = zext i1 %1850 to i8
  store i8 %1851, i8* %38, align 1
  %1852 = inttoptr i64 %1827 to i64*
  %1853 = add i64 %1751, 85
  store i64 %1853, i64* %3, align 8
  %1854 = load i64, i64* %1852, align 8
  store i64 %1854, i64* %RDX.i2117, align 8
  %1855 = load i64*, i64** %772, align 8
  %1856 = add i64 %1751, 88
  store i64 %1856, i64* %3, align 8
  store i64 %1854, i64* %1855, align 8
  %1857 = load i64, i64* %RAX.i2220, align 8
  %1858 = add i64 %1857, 8
  %1859 = load i64, i64* %3, align 8
  %1860 = add i64 %1859, 4
  store i64 %1860, i64* %3, align 8
  %1861 = inttoptr i64 %1858 to i64*
  %1862 = load i64, i64* %1861, align 8
  store i64 %1862, i64* %RDX.i2117, align 8
  %1863 = load i64, i64* %RSI.i1919, align 8
  %1864 = add i64 %1863, 8
  %1865 = add i64 %1859, 8
  store i64 %1865, i64* %3, align 8
  %1866 = inttoptr i64 %1864 to i64*
  store i64 %1862, i64* %1866, align 8
  %1867 = load i64, i64* %RAX.i2220, align 8
  %1868 = add i64 %1867, 16
  %1869 = load i64, i64* %3, align 8
  %1870 = add i64 %1869, 4
  store i64 %1870, i64* %3, align 8
  %1871 = inttoptr i64 %1868 to i64*
  %1872 = load i64, i64* %1871, align 8
  store i64 %1872, i64* %RAX.i2220, align 8
  %1873 = load i64, i64* %RSI.i1919, align 8
  %1874 = add i64 %1873, 16
  %1875 = add i64 %1869, 8
  store i64 %1875, i64* %3, align 8
  %1876 = inttoptr i64 %1874 to i64*
  store i64 %1872, i64* %1876, align 8
  %1877 = load i64, i64* %RBP.i, align 8
  %1878 = add i64 %1877, -12340
  %1879 = load i64, i64* %3, align 8
  %1880 = add i64 %1879, 6
  store i64 %1880, i64* %3, align 8
  %1881 = inttoptr i64 %1878 to i32*
  %1882 = load i32, i32* %1881, align 4
  %1883 = add i32 %1882, 1
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RAX.i2220, align 8
  %1885 = icmp eq i32 %1882, -1
  %1886 = icmp eq i32 %1883, 0
  %1887 = or i1 %1885, %1886
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %14, align 1
  %1889 = and i32 %1883, 255
  %1890 = tail call i32 @llvm.ctpop.i32(i32 %1889)
  %1891 = trunc i32 %1890 to i8
  %1892 = and i8 %1891, 1
  %1893 = xor i8 %1892, 1
  store i8 %1893, i8* %21, align 1
  %1894 = xor i32 %1883, %1882
  %1895 = lshr i32 %1894, 4
  %1896 = trunc i32 %1895 to i8
  %1897 = and i8 %1896, 1
  store i8 %1897, i8* %26, align 1
  %1898 = zext i1 %1886 to i8
  store i8 %1898, i8* %29, align 1
  %1899 = lshr i32 %1883, 31
  %1900 = trunc i32 %1899 to i8
  store i8 %1900, i8* %32, align 1
  %1901 = lshr i32 %1882, 31
  %1902 = xor i32 %1899, %1901
  %1903 = add nuw nsw i32 %1902, %1899
  %1904 = icmp eq i32 %1903, 2
  %1905 = zext i1 %1904 to i8
  store i8 %1905, i8* %38, align 1
  %1906 = add i64 %1879, 15
  store i64 %1906, i64* %3, align 8
  store i32 %1883, i32* %1881, align 4
  %1907 = load i64, i64* %3, align 8
  %1908 = add i64 %1907, -146
  store i64 %1908, i64* %3, align 8
  br label %block_.L_419b22

block_.L_419bb9:                                  ; preds = %block_.L_419b22
  store i64 %1719, i64* %RAX.i2220, align 8
  %1909 = add i64 %1751, 15
  store i64 %1909, i64* %3, align 8
  %1910 = load i32, i32* %1723, align 4
  %1911 = zext i32 %1910 to i64
  store i64 %1911, i64* %RCX.i2189, align 8
  %1912 = add i32 %1718, -1
  %1913 = zext i32 %1912 to i64
  store i64 %1913, i64* %RDX.i2117, align 8
  %1914 = icmp eq i32 %1718, 0
  %1915 = zext i1 %1914 to i8
  store i8 %1915, i8* %14, align 1
  %1916 = and i32 %1912, 255
  %1917 = tail call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  store i8 %1920, i8* %21, align 1
  %1921 = xor i32 %1912, %1718
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
  %1929 = lshr i32 %1718, 31
  %1930 = xor i32 %1927, %1929
  %1931 = add nuw nsw i32 %1930, %1929
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  store i8 %1933, i8* %38, align 1
  %1934 = sext i32 %1912 to i64
  store i64 %1934, i64* %RAX.i2220, align 8
  %1935 = shl nsw i64 %1934, 2
  %1936 = add nsw i64 %1935, 8829104
  %1937 = add i64 %1751, 35
  store i64 %1937, i64* %3, align 8
  %1938 = inttoptr i64 %1936 to i32*
  store i32 %1910, i32* %1938, align 4
  %1939 = load i64, i64* %RBP.i, align 8
  %1940 = add i64 %1939, -12344
  %1941 = load i64, i64* %3, align 8
  %1942 = add i64 %1941, 6
  store i64 %1942, i64* %3, align 8
  %1943 = inttoptr i64 %1940 to i32*
  %1944 = load i32, i32* %1943, align 4
  %1945 = zext i32 %1944 to i64
  store i64 %1945, i64* %RDI.i2221, align 8
  %1946 = add i64 %1941, 38964
  %1947 = add i64 %1941, 11
  %1948 = load i64, i64* %6, align 8
  %1949 = add i64 %1948, -8
  %1950 = inttoptr i64 %1949 to i64*
  store i64 %1947, i64* %1950, align 8
  store i64 %1949, i64* %6, align 8
  store i64 %1946, i64* %3, align 8
  %call2_419be2 = tail call %struct.Memory* @sub_423410.post_thinking(%struct.State* nonnull %0, i64 %1946, %struct.Memory* %MEMORY.8)
  %.pre118 = load i64, i64* %3, align 8
  br label %block_.L_419be7

block_.L_419be7:                                  ; preds = %block_.L_419bb9, %block_419a82
  %1951 = phi i64 [ %.pre118, %block_.L_419bb9 ], [ %1607, %block_419a82 ]
  %1952 = add i64 %1951, 5
  store i64 %1952, i64* %3, align 8
  br label %block_.L_419bec

block_.L_419bec:                                  ; preds = %block_.L_419be7, %block_419a48
  %storemerge = phi i64 [ %1528, %block_419a48 ], [ %1952, %block_.L_419be7 ]
  %1953 = load i64, i64* %RBP.i, align 8
  %1954 = add i64 %1953, -12344
  %1955 = add i64 %storemerge, 6
  store i64 %1955, i64* %3, align 8
  %1956 = inttoptr i64 %1954 to i32*
  %1957 = load i32, i32* %1956, align 4
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RAX.i2220, align 8
  %1959 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %1960 = sub i32 %1957, %1959
  %1961 = icmp ult i32 %1957, %1959
  %1962 = zext i1 %1961 to i8
  store i8 %1962, i8* %14, align 1
  %1963 = and i32 %1960, 255
  %1964 = tail call i32 @llvm.ctpop.i32(i32 %1963)
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = xor i8 %1966, 1
  store i8 %1967, i8* %21, align 1
  %1968 = xor i32 %1959, %1957
  %1969 = xor i32 %1968, %1960
  %1970 = lshr i32 %1969, 4
  %1971 = trunc i32 %1970 to i8
  %1972 = and i8 %1971, 1
  store i8 %1972, i8* %26, align 1
  %1973 = icmp eq i32 %1960, 0
  %1974 = zext i1 %1973 to i8
  store i8 %1974, i8* %29, align 1
  %1975 = lshr i32 %1960, 31
  %1976 = trunc i32 %1975 to i8
  store i8 %1976, i8* %32, align 1
  %1977 = lshr i32 %1957, 31
  %1978 = lshr i32 %1959, 31
  %1979 = xor i32 %1978, %1977
  %1980 = xor i32 %1975, %1977
  %1981 = add nuw nsw i32 %1980, %1979
  %1982 = icmp eq i32 %1981, 2
  %1983 = zext i1 %1982 to i8
  store i8 %1983, i8* %38, align 1
  %1984 = icmp ne i8 %1976, 0
  %1985 = xor i1 %1984, %1982
  %1986 = or i1 %1973, %1985
  %.v184 = select i1 %1986, i64 112, i64 19
  %1987 = add i64 %storemerge, %.v184
  store i64 %1987, i64* %3, align 8
  br i1 %1986, label %block_.L_419c5c, label %block_419bff

block_419bff:                                     ; preds = %block_.L_419bec
  %1988 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %1989 = and i32 %1988, 255
  %1990 = tail call i32 @llvm.ctpop.i32(i32 %1989)
  %1991 = trunc i32 %1990 to i8
  %1992 = and i8 %1991, 1
  %1993 = xor i8 %1992, 1
  store i8 %1993, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %1994 = icmp eq i32 %1988, 0
  %1995 = zext i1 %1994 to i8
  store i8 %1995, i8* %29, align 1
  %1996 = lshr i32 %1988, 31
  %1997 = trunc i32 %1996 to i8
  store i8 %1997, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v185 = select i1 %1994, i64 14, i64 93
  %1998 = add i64 %1987, %.v185
  store i64 %1998, i64* %3, align 8
  br i1 %1994, label %block_419c0d, label %block_.L_419c5c

block_419c0d:                                     ; preds = %block_419bff
  %1999 = add i64 %1953, -12304
  store i64 %1999, i64* %RAX.i2220, align 8
  %2000 = add i64 %1998, 13
  store i64 %2000, i64* %3, align 8
  %2001 = load i32, i32* %1956, align 4
  %2002 = zext i32 %2001 to i64
  store i64 %2002, i64* %RCX.i2189, align 8
  store i32 %2001, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %2003 = add i64 %1953, -12336
  %2004 = add i64 %1998, 26
  store i64 %2004, i64* %3, align 8
  %2005 = inttoptr i64 %2003 to i32*
  %2006 = load i32, i32* %2005, align 4
  %2007 = zext i32 %2006 to i64
  store i64 %2007, i64* %RCX.i2189, align 8
  store i32 %2006, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  %2008 = add i64 %1998, 40
  store i64 %2008, i64* %3, align 8
  %2009 = load i32, i32* %2005, align 4
  %2010 = sext i32 %2009 to i64
  %2011 = mul nsw i64 %2010, 24
  store i64 %2011, i64* %RDX.i2117, align 8
  %2012 = lshr i64 %2011, 63
  %2013 = add i64 %2011, %1999
  store i64 %2013, i64* %RAX.i2220, align 8
  %2014 = icmp ult i64 %2013, %1999
  %2015 = icmp ult i64 %2013, %2011
  %2016 = or i1 %2014, %2015
  %2017 = zext i1 %2016 to i8
  store i8 %2017, i8* %14, align 1
  %2018 = trunc i64 %2013 to i32
  %2019 = and i32 %2018, 255
  %2020 = tail call i32 @llvm.ctpop.i32(i32 %2019)
  %2021 = trunc i32 %2020 to i8
  %2022 = and i8 %2021, 1
  %2023 = xor i8 %2022, 1
  store i8 %2023, i8* %21, align 1
  %2024 = xor i64 %2011, %1999
  %2025 = xor i64 %2024, %2013
  %2026 = lshr i64 %2025, 4
  %2027 = trunc i64 %2026 to i8
  %2028 = and i8 %2027, 1
  store i8 %2028, i8* %26, align 1
  %2029 = icmp eq i64 %2013, 0
  %2030 = zext i1 %2029 to i8
  store i8 %2030, i8* %29, align 1
  %2031 = lshr i64 %2013, 63
  %2032 = trunc i64 %2031 to i8
  store i8 %2032, i8* %32, align 1
  %2033 = lshr i64 %1999, 63
  %2034 = xor i64 %2031, %2033
  %2035 = xor i64 %2031, %2012
  %2036 = add nuw nsw i64 %2034, %2035
  %2037 = icmp eq i64 %2036, 2
  %2038 = zext i1 %2037 to i8
  store i8 %2038, i8* %38, align 1
  %2039 = inttoptr i64 %2013 to i64*
  %2040 = add i64 %1998, 50
  store i64 %2040, i64* %3, align 8
  %2041 = load i64, i64* %2039, align 8
  store i64 %2041, i64* %RDX.i2117, align 8
  %2042 = add i64 %1953, -12328
  %2043 = add i64 %1998, 57
  store i64 %2043, i64* %3, align 8
  %2044 = inttoptr i64 %2042 to i64*
  store i64 %2041, i64* %2044, align 8
  %2045 = load i64, i64* %RAX.i2220, align 8
  %2046 = add i64 %2045, 8
  %2047 = load i64, i64* %3, align 8
  %2048 = add i64 %2047, 4
  store i64 %2048, i64* %3, align 8
  %2049 = inttoptr i64 %2046 to i64*
  %2050 = load i64, i64* %2049, align 8
  store i64 %2050, i64* %RDX.i2117, align 8
  %2051 = load i64, i64* %RBP.i, align 8
  %2052 = add i64 %2051, -12320
  %2053 = add i64 %2047, 11
  store i64 %2053, i64* %3, align 8
  %2054 = inttoptr i64 %2052 to i64*
  store i64 %2050, i64* %2054, align 8
  %2055 = load i64, i64* %RAX.i2220, align 8
  %2056 = add i64 %2055, 16
  %2057 = load i64, i64* %3, align 8
  %2058 = add i64 %2057, 4
  store i64 %2058, i64* %3, align 8
  %2059 = inttoptr i64 %2056 to i64*
  %2060 = load i64, i64* %2059, align 8
  store i64 %2060, i64* %RAX.i2220, align 8
  %2061 = load i64, i64* %RBP.i, align 8
  %2062 = add i64 %2061, -12312
  %2063 = add i64 %2057, 11
  store i64 %2063, i64* %3, align 8
  %2064 = inttoptr i64 %2062 to i64*
  store i64 %2060, i64* %2064, align 8
  %.pre119 = load i64, i64* %3, align 8
  br label %block_.L_419c5c

block_.L_419c5c:                                  ; preds = %block_419bff, %block_419c0d, %block_.L_419bec
  %2065 = phi i64 [ %.pre119, %block_419c0d ], [ %1998, %block_419bff ], [ %1987, %block_.L_419bec ]
  %2066 = add i64 %2065, 5
  store i64 %2066, i64* %3, align 8
  br label %block_.L_419c61

block_.L_419c61:                                  ; preds = %block_419a1a, %block_.L_4199c5, %block_.L_419c5c, %block_.L_419a28
  %2067 = phi i64 [ %2066, %block_.L_419c5c ], [ %1447, %block_.L_419a28 ], [ %1421, %block_419a1a ], [ %1399, %block_.L_4199c5 ]
  %2068 = add i64 %2067, 744
  br label %block_.L_419f49

block_.L_419c66:                                  ; preds = %block_4199b7
  store i64 0, i64* %RAX.i2220, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RCX.i2189, align 8
  %2069 = add i64 %1229, -16464
  %2070 = add i64 %1281, 10
  store i64 %2070, i64* %3, align 8
  %2071 = inttoptr i64 %2069 to i32*
  %2072 = load i32, i32* %2071, align 4
  %2073 = sub i32 0, %2072
  %2074 = icmp eq i32 %2072, 0
  %2075 = zext i1 %2074 to i8
  %2076 = lshr i32 %2073, 31
  %2077 = xor i32 %2072, -1
  %2078 = zext i32 %2077 to i64
  store i64 %2078, i64* %RCX.i2189, align 8
  store i8 %2075, i8* %14, align 1
  %2079 = and i32 %2077, 255
  %2080 = tail call i32 @llvm.ctpop.i32(i32 %2079)
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  %2083 = xor i8 %2082, 1
  store i8 %2083, i8* %21, align 1
  %2084 = xor i32 %2077, %2073
  %2085 = lshr i32 %2084, 4
  %2086 = trunc i32 %2085 to i8
  %2087 = and i8 %2086, 1
  store i8 %2087, i8* %26, align 1
  %2088 = icmp eq i32 %2072, -1
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %29, align 1
  %2090 = lshr i32 %2077, 31
  %2091 = trunc i32 %2090 to i8
  store i8 %2091, i8* %32, align 1
  %2092 = xor i32 %2090, %2076
  %2093 = add nuw nsw i32 %2092, %2076
  %2094 = icmp eq i32 %2093, 2
  %2095 = zext i1 %2094 to i8
  store i8 %2095, i8* %38, align 1
  store i64 0, i64* %RDX.i2117, align 8
  %2096 = add i64 %1281, 21
  store i64 %2096, i64* %3, align 8
  %2097 = load i32, i32* %2071, align 4
  %2098 = sub i32 0, %2097
  %2099 = zext i32 %2098 to i64
  store i64 %2099, i64* %RDX.i2117, align 8
  %2100 = icmp ne i32 %2097, 0
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %14, align 1
  %2102 = and i32 %2098, 255
  %2103 = tail call i32 @llvm.ctpop.i32(i32 %2102)
  %2104 = trunc i32 %2103 to i8
  %2105 = and i8 %2104, 1
  %2106 = xor i8 %2105, 1
  store i8 %2106, i8* %21, align 1
  %2107 = xor i32 %2097, %2098
  %2108 = lshr i32 %2107, 4
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  store i8 %2110, i8* %26, align 1
  %2111 = icmp eq i32 %2097, 0
  %2112 = zext i1 %2111 to i8
  store i8 %2112, i8* %29, align 1
  %2113 = lshr i32 %2098, 31
  %2114 = trunc i32 %2113 to i8
  store i8 %2114, i8* %32, align 1
  %2115 = lshr i32 %2097, 31
  %2116 = add nuw nsw i32 %2113, %2115
  %2117 = icmp eq i32 %2116, 2
  %2118 = zext i1 %2117 to i8
  store i8 %2118, i8* %38, align 1
  %2119 = load i64, i64* %RBP.i, align 8
  %2120 = add i64 %2119, -12
  %2121 = add i64 %1281, 24
  store i64 %2121, i64* %3, align 8
  %2122 = inttoptr i64 %2120 to i32*
  %2123 = load i32, i32* %2122, align 4
  %2124 = add i32 %2123, -1
  %2125 = icmp eq i32 %2123, 0
  %2126 = zext i1 %2125 to i8
  store i8 %2126, i8* %14, align 1
  %2127 = and i32 %2124, 255
  %2128 = tail call i32 @llvm.ctpop.i32(i32 %2127)
  %2129 = trunc i32 %2128 to i8
  %2130 = and i8 %2129, 1
  %2131 = xor i8 %2130, 1
  store i8 %2131, i8* %21, align 1
  %2132 = xor i32 %2124, %2123
  %2133 = lshr i32 %2132, 4
  %2134 = trunc i32 %2133 to i8
  %2135 = and i8 %2134, 1
  store i8 %2135, i8* %26, align 1
  %2136 = icmp eq i32 %2124, 0
  %2137 = zext i1 %2136 to i8
  store i8 %2137, i8* %29, align 1
  %2138 = lshr i32 %2124, 31
  %2139 = trunc i32 %2138 to i8
  store i8 %2139, i8* %32, align 1
  %2140 = lshr i32 %2123, 31
  %2141 = xor i32 %2138, %2140
  %2142 = add nuw nsw i32 %2141, %2140
  %2143 = icmp eq i32 %2142, 2
  %2144 = zext i1 %2143 to i8
  store i8 %2144, i8* %38, align 1
  %2145 = load i32, i32* %ECX.i2211, align 4
  %2146 = zext i32 %2145 to i64
  store i64 %2146, i64* %RDI.i2221, align 8
  %2147 = add i64 %2119, -16536
  %2148 = add i64 %1281, 35
  store i64 %2148, i64* %3, align 8
  %2149 = inttoptr i64 %2147 to i32*
  store i32 %2124, i32* %2149, align 4
  %2150 = load i32, i32* %EDX.i2214, align 4
  %2151 = zext i32 %2150 to i64
  %2152 = load i64, i64* %3, align 8
  store i64 %2151, i64* %RSI.i1919, align 8
  %2153 = load i64, i64* %RBP.i, align 8
  %2154 = add i64 %2153, -16536
  %2155 = add i64 %2152, 8
  store i64 %2155, i64* %3, align 8
  %2156 = inttoptr i64 %2154 to i32*
  %2157 = load i32, i32* %2156, align 4
  %2158 = zext i32 %2157 to i64
  store i64 %2158, i64* %RDX.i2117, align 8
  %2159 = load i32, i32* %EAX.i2154, align 4
  %2160 = zext i32 %2159 to i64
  store i64 %2160, i64* %RCX.i2189, align 8
  %2161 = add i64 %2152, -10025
  %2162 = add i64 %2152, 15
  %2163 = load i64, i64* %6, align 8
  %2164 = add i64 %2163, -8
  %2165 = inttoptr i64 %2164 to i64*
  store i64 %2162, i64* %2165, align 8
  store i64 %2164, i64* %6, align 8
  store i64 %2161, i64* %3, align 8
  %call2_419c93 = tail call %struct.Memory* @sub_417560.search(%struct.State* nonnull %0, i64 %2161, %struct.Memory* %MEMORY.8)
  %2166 = load i64, i64* %3, align 8
  %2167 = load i32, i32* %EAX.i2154, align 4
  %2168 = sub i32 0, %2167
  %2169 = zext i32 %2168 to i64
  store i64 %2169, i64* %RCX.i2189, align 8
  %2170 = icmp ne i32 %2167, 0
  %2171 = zext i1 %2170 to i8
  store i8 %2171, i8* %14, align 1
  %2172 = and i32 %2168, 255
  %2173 = tail call i32 @llvm.ctpop.i32(i32 %2172)
  %2174 = trunc i32 %2173 to i8
  %2175 = and i8 %2174, 1
  %2176 = xor i8 %2175, 1
  store i8 %2176, i8* %21, align 1
  %2177 = xor i32 %2167, %2168
  %2178 = lshr i32 %2177, 4
  %2179 = trunc i32 %2178 to i8
  %2180 = and i8 %2179, 1
  store i8 %2180, i8* %26, align 1
  %2181 = icmp eq i32 %2167, 0
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %29, align 1
  %2183 = lshr i32 %2168, 31
  %2184 = trunc i32 %2183 to i8
  store i8 %2184, i8* %32, align 1
  %2185 = lshr i32 %2167, 31
  %2186 = add nuw nsw i32 %2183, %2185
  %2187 = icmp eq i32 %2186, 2
  %2188 = zext i1 %2187 to i8
  store i8 %2188, i8* %38, align 1
  %2189 = load i64, i64* %RBP.i, align 8
  %2190 = add i64 %2189, -12344
  %2191 = add i64 %2166, 10
  store i64 %2191, i64* %3, align 8
  %2192 = inttoptr i64 %2190 to i32*
  store i32 %2168, i32* %2192, align 4
  %2193 = load i64, i64* %RBP.i, align 8
  %2194 = add i64 %2193, -12344
  %2195 = load i64, i64* %3, align 8
  %2196 = add i64 %2195, 6
  store i64 %2196, i64* %3, align 8
  %2197 = inttoptr i64 %2194 to i32*
  %2198 = load i32, i32* %2197, align 4
  %2199 = zext i32 %2198 to i64
  store i64 %2199, i64* %RAX.i2220, align 8
  %2200 = add i64 %2193, -16464
  %2201 = add i64 %2195, 12
  store i64 %2201, i64* %3, align 8
  %2202 = inttoptr i64 %2200 to i32*
  %2203 = load i32, i32* %2202, align 4
  %2204 = sub i32 %2198, %2203
  %2205 = icmp ult i32 %2198, %2203
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %14, align 1
  %2207 = and i32 %2204, 255
  %2208 = tail call i32 @llvm.ctpop.i32(i32 %2207)
  %2209 = trunc i32 %2208 to i8
  %2210 = and i8 %2209, 1
  %2211 = xor i8 %2210, 1
  store i8 %2211, i8* %21, align 1
  %2212 = xor i32 %2203, %2198
  %2213 = xor i32 %2212, %2204
  %2214 = lshr i32 %2213, 4
  %2215 = trunc i32 %2214 to i8
  %2216 = and i8 %2215, 1
  store i8 %2216, i8* %26, align 1
  %2217 = icmp eq i32 %2204, 0
  %2218 = zext i1 %2217 to i8
  store i8 %2218, i8* %29, align 1
  %2219 = lshr i32 %2204, 31
  %2220 = trunc i32 %2219 to i8
  store i8 %2220, i8* %32, align 1
  %2221 = lshr i32 %2198, 31
  %2222 = lshr i32 %2203, 31
  %2223 = xor i32 %2222, %2221
  %2224 = xor i32 %2219, %2221
  %2225 = add nuw nsw i32 %2224, %2223
  %2226 = icmp eq i32 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %38, align 1
  %2228 = icmp ne i8 %2220, 0
  %2229 = xor i1 %2228, %2226
  %2230 = or i1 %2217, %2229
  %.v148 = select i1 %2230, i64 607, i64 18
  %2231 = add i64 %2195, %.v148
  store i64 %2231, i64* %3, align 8
  br i1 %2230, label %block_.L_419f01, label %block_419cb4

block_419cb4:                                     ; preds = %block_.L_419c66
  %2232 = add i64 %2231, 6
  store i64 %2232, i64* %3, align 8
  %2233 = load i32, i32* %2197, align 4
  %2234 = zext i32 %2233 to i64
  store i64 %2234, i64* %RAX.i2220, align 8
  %2235 = add i64 %2193, -16468
  %2236 = add i64 %2231, 12
  store i64 %2236, i64* %3, align 8
  %2237 = inttoptr i64 %2235 to i32*
  %2238 = load i32, i32* %2237, align 4
  %2239 = sub i32 %2233, %2238
  %2240 = icmp ult i32 %2233, %2238
  %2241 = zext i1 %2240 to i8
  store i8 %2241, i8* %14, align 1
  %2242 = and i32 %2239, 255
  %2243 = tail call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  store i8 %2246, i8* %21, align 1
  %2247 = xor i32 %2238, %2233
  %2248 = xor i32 %2247, %2239
  %2249 = lshr i32 %2248, 4
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  store i8 %2251, i8* %26, align 1
  %2252 = icmp eq i32 %2239, 0
  %2253 = zext i1 %2252 to i8
  store i8 %2253, i8* %29, align 1
  %2254 = lshr i32 %2239, 31
  %2255 = trunc i32 %2254 to i8
  store i8 %2255, i8* %32, align 1
  %2256 = lshr i32 %2233, 31
  %2257 = lshr i32 %2238, 31
  %2258 = xor i32 %2257, %2256
  %2259 = xor i32 %2254, %2256
  %2260 = add nuw nsw i32 %2259, %2258
  %2261 = icmp eq i32 %2260, 2
  %2262 = zext i1 %2261 to i8
  store i8 %2262, i8* %38, align 1
  %2263 = icmp ne i8 %2255, 0
  %2264 = xor i1 %2263, %2261
  %.v149 = select i1 %2264, i64 18, i64 589
  %2265 = add i64 %2231, %.v149
  store i64 %2265, i64* %3, align 8
  br i1 %2264, label %block_419cc6, label %block_.L_419f01

block_419cc6:                                     ; preds = %block_419cb4
  %2266 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2267 = and i32 %2266, 255
  %2268 = tail call i32 @llvm.ctpop.i32(i32 %2267)
  %2269 = trunc i32 %2268 to i8
  %2270 = and i8 %2269, 1
  %2271 = xor i8 %2270, 1
  store i8 %2271, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2272 = icmp eq i32 %2266, 0
  %2273 = zext i1 %2272 to i8
  store i8 %2273, i8* %29, align 1
  %2274 = lshr i32 %2266, 31
  %2275 = trunc i32 %2274 to i8
  store i8 %2275, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v176 = select i1 %2272, i64 14, i64 571
  %2276 = add i64 %2265, %.v176
  store i64 %2276, i64* %3, align 8
  br i1 %2272, label %block_419cd4, label %block_.L_419f01

block_419cd4:                                     ; preds = %block_419cc6
  %2277 = add i64 %2193, -12304
  store i64 %2277, i64* %RAX.i2220, align 8
  %2278 = add i64 %2276, 13
  store i64 %2278, i64* %3, align 8
  %2279 = load i32, i32* %2197, align 4
  %2280 = zext i32 %2279 to i64
  store i64 %2280, i64* %RDI.i2221, align 8
  %2281 = add i64 %2193, -12336
  %2282 = add i64 %2276, 20
  store i64 %2282, i64* %3, align 8
  %2283 = inttoptr i64 %2281 to i32*
  %2284 = load i32, i32* %2283, align 4
  %2285 = sext i32 %2284 to i64
  %2286 = mul nsw i64 %2285, 24
  store i64 %2286, i64* %RCX.i2189, align 8
  %2287 = lshr i64 %2286, 63
  %2288 = add i64 %2286, %2277
  store i64 %2288, i64* %RAX.i2220, align 8
  %2289 = icmp ult i64 %2288, %2277
  %2290 = icmp ult i64 %2288, %2286
  %2291 = or i1 %2289, %2290
  %2292 = zext i1 %2291 to i8
  store i8 %2292, i8* %14, align 1
  %2293 = trunc i64 %2288 to i32
  %2294 = and i32 %2293, 255
  %2295 = tail call i32 @llvm.ctpop.i32(i32 %2294)
  %2296 = trunc i32 %2295 to i8
  %2297 = and i8 %2296, 1
  %2298 = xor i8 %2297, 1
  store i8 %2298, i8* %21, align 1
  %2299 = xor i64 %2286, %2277
  %2300 = xor i64 %2299, %2288
  %2301 = lshr i64 %2300, 4
  %2302 = trunc i64 %2301 to i8
  %2303 = and i8 %2302, 1
  store i8 %2303, i8* %26, align 1
  %2304 = icmp eq i64 %2288, 0
  %2305 = zext i1 %2304 to i8
  store i8 %2305, i8* %29, align 1
  %2306 = lshr i64 %2288, 63
  %2307 = trunc i64 %2306 to i8
  store i8 %2307, i8* %32, align 1
  %2308 = lshr i64 %2277, 63
  %2309 = xor i64 %2306, %2308
  %2310 = xor i64 %2306, %2287
  %2311 = add nuw nsw i64 %2309, %2310
  %2312 = icmp eq i64 %2311, 2
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %38, align 1
  store i64 %2288, i64* %RSI.i1919, align 8
  %2314 = add i64 %2276, 39628
  %2315 = add i64 %2276, 35
  %2316 = load i64, i64* %6, align 8
  %2317 = add i64 %2316, -8
  %2318 = inttoptr i64 %2317 to i64*
  store i64 %2315, i64* %2318, align 8
  store i64 %2317, i64* %6, align 8
  store i64 %2314, i64* %3, align 8
  %call2_419cf2 = tail call %struct.Memory* @sub_4237a0.post_fail_thinking(%struct.State* nonnull %0, i64 %2314, %struct.Memory* %MEMORY.8)
  %2319 = load i64, i64* %3, align 8
  store i64 0, i64* %RDI.i2221, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %29, align 1
  store i8 0, i8* %32, align 1
  store i8 0, i8* %38, align 1
  store i8 0, i8* %26, align 1
  store i64 0, i64* %RDX.i2117, align 8
  %2320 = load i64, i64* %RBP.i, align 8
  %2321 = add i64 %2320, -16468
  %2322 = add i64 %2319, 10
  store i64 %2322, i64* %3, align 8
  %2323 = inttoptr i64 %2321 to i32*
  %2324 = load i32, i32* %2323, align 4
  %2325 = sub i32 0, %2324
  %2326 = zext i32 %2325 to i64
  store i64 %2326, i64* %RDX.i2117, align 8
  %2327 = icmp ne i32 %2324, 0
  %2328 = zext i1 %2327 to i8
  store i8 %2328, i8* %14, align 1
  %2329 = and i32 %2325, 255
  %2330 = tail call i32 @llvm.ctpop.i32(i32 %2329)
  %2331 = trunc i32 %2330 to i8
  %2332 = and i8 %2331, 1
  %2333 = xor i8 %2332, 1
  store i8 %2333, i8* %21, align 1
  %2334 = xor i32 %2324, %2325
  %2335 = lshr i32 %2334, 4
  %2336 = trunc i32 %2335 to i8
  %2337 = and i8 %2336, 1
  store i8 %2337, i8* %26, align 1
  %2338 = icmp eq i32 %2324, 0
  %2339 = zext i1 %2338 to i8
  store i8 %2339, i8* %29, align 1
  %2340 = lshr i32 %2325, 31
  %2341 = trunc i32 %2340 to i8
  store i8 %2341, i8* %32, align 1
  %2342 = lshr i32 %2324, 31
  %2343 = add nuw nsw i32 %2340, %2342
  %2344 = icmp eq i32 %2343, 2
  %2345 = zext i1 %2344 to i8
  store i8 %2345, i8* %38, align 1
  store i64 0, i64* %R8.i2209, align 8
  %2346 = add i64 %2320, -16464
  %2347 = add i64 %2319, 20
  store i64 %2347, i64* %3, align 8
  %2348 = inttoptr i64 %2346 to i32*
  %2349 = load i32, i32* %2348, align 4
  %2350 = sub i32 0, %2349
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %R8.i2209, align 8
  %2352 = icmp ne i32 %2349, 0
  %2353 = zext i1 %2352 to i8
  store i8 %2353, i8* %14, align 1
  %2354 = and i32 %2350, 255
  %2355 = tail call i32 @llvm.ctpop.i32(i32 %2354)
  %2356 = trunc i32 %2355 to i8
  %2357 = and i8 %2356, 1
  %2358 = xor i8 %2357, 1
  store i8 %2358, i8* %21, align 1
  %2359 = xor i32 %2349, %2350
  %2360 = lshr i32 %2359, 4
  %2361 = trunc i32 %2360 to i8
  %2362 = and i8 %2361, 1
  store i8 %2362, i8* %26, align 1
  %2363 = icmp eq i32 %2349, 0
  %2364 = zext i1 %2363 to i8
  store i8 %2364, i8* %29, align 1
  %2365 = lshr i32 %2350, 31
  %2366 = trunc i32 %2365 to i8
  store i8 %2366, i8* %32, align 1
  %2367 = lshr i32 %2349, 31
  %2368 = add nuw nsw i32 %2365, %2367
  %2369 = icmp eq i32 %2368, 2
  %2370 = zext i1 %2369 to i8
  store i8 %2370, i8* %38, align 1
  %2371 = add i64 %2320, -12
  %2372 = add i64 %2319, 24
  store i64 %2372, i64* %3, align 8
  %2373 = inttoptr i64 %2371 to i32*
  %2374 = load i32, i32* %2373, align 4
  %2375 = add i32 %2374, -1
  %2376 = zext i32 %2375 to i64
  store i64 %2376, i64* %776, align 8
  %2377 = icmp eq i32 %2374, 0
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %14, align 1
  %2379 = and i32 %2375, 255
  %2380 = tail call i32 @llvm.ctpop.i32(i32 %2379)
  %2381 = trunc i32 %2380 to i8
  %2382 = and i8 %2381, 1
  %2383 = xor i8 %2382, 1
  store i8 %2383, i8* %21, align 1
  %2384 = xor i32 %2375, %2374
  %2385 = lshr i32 %2384, 4
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  store i8 %2387, i8* %26, align 1
  %2388 = icmp eq i32 %2375, 0
  %2389 = zext i1 %2388 to i8
  store i8 %2389, i8* %29, align 1
  %2390 = lshr i32 %2375, 31
  %2391 = trunc i32 %2390 to i8
  store i8 %2391, i8* %32, align 1
  %2392 = lshr i32 %2374, 31
  %2393 = xor i32 %2390, %2392
  %2394 = add nuw nsw i32 %2393, %2392
  %2395 = icmp eq i32 %2394, 2
  %2396 = zext i1 %2395 to i8
  store i8 %2396, i8* %38, align 1
  %2397 = load i64, i64* %RBP.i, align 8
  %2398 = add i64 %2397, -16540
  %2399 = load i32, i32* %EDI.i431, align 4
  %2400 = add i64 %2319, 34
  store i64 %2400, i64* %3, align 8
  %2401 = inttoptr i64 %2398 to i32*
  store i32 %2399, i32* %2401, align 4
  %2402 = load i32, i32* %EDX.i2214, align 4
  %2403 = zext i32 %2402 to i64
  %2404 = load i64, i64* %3, align 8
  store i64 %2403, i64* %RDI.i2221, align 8
  %2405 = load i32, i32* %R8D.i1925, align 4
  %2406 = zext i32 %2405 to i64
  store i64 %2406, i64* %RSI.i1919, align 8
  %2407 = load i32, i32* %R9D.i1307, align 4
  %2408 = zext i32 %2407 to i64
  store i64 %2408, i64* %RDX.i2117, align 8
  %2409 = load i64, i64* %RBP.i, align 8
  %2410 = add i64 %2409, -16540
  %2411 = add i64 %2404, 14
  store i64 %2411, i64* %3, align 8
  %2412 = inttoptr i64 %2410 to i32*
  %2413 = load i32, i32* %2412, align 4
  %2414 = zext i32 %2413 to i64
  store i64 %2414, i64* %RCX.i2189, align 8
  %2415 = add i64 %2404, -10169
  %2416 = add i64 %2404, 19
  %2417 = load i64, i64* %6, align 8
  %2418 = add i64 %2417, -8
  %2419 = inttoptr i64 %2418 to i64*
  store i64 %2416, i64* %2419, align 8
  store i64 %2418, i64* %6, align 8
  store i64 %2415, i64* %3, align 8
  %call2_419d27 = tail call %struct.Memory* @sub_417560.search(%struct.State* nonnull %0, i64 %2415, %struct.Memory* %MEMORY.8)
  %2420 = load i64, i64* %3, align 8
  %2421 = load i32, i32* %EAX.i2154, align 4
  %2422 = sub i32 0, %2421
  %2423 = zext i32 %2422 to i64
  store i64 %2423, i64* %RCX.i2189, align 8
  %2424 = icmp ne i32 %2421, 0
  %2425 = zext i1 %2424 to i8
  store i8 %2425, i8* %14, align 1
  %2426 = and i32 %2422, 255
  %2427 = tail call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  store i8 %2430, i8* %21, align 1
  %2431 = xor i32 %2421, %2422
  %2432 = lshr i32 %2431, 4
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  store i8 %2434, i8* %26, align 1
  %2435 = icmp eq i32 %2421, 0
  %2436 = zext i1 %2435 to i8
  store i8 %2436, i8* %29, align 1
  %2437 = lshr i32 %2422, 31
  %2438 = trunc i32 %2437 to i8
  store i8 %2438, i8* %32, align 1
  %2439 = lshr i32 %2421, 31
  %2440 = add nuw nsw i32 %2437, %2439
  %2441 = icmp eq i32 %2440, 2
  %2442 = zext i1 %2441 to i8
  store i8 %2442, i8* %38, align 1
  %2443 = load i64, i64* %RBP.i, align 8
  %2444 = add i64 %2443, -12344
  %2445 = add i64 %2420, 10
  store i64 %2445, i64* %3, align 8
  %2446 = inttoptr i64 %2444 to i32*
  store i32 %2422, i32* %2446, align 4
  %2447 = load i64, i64* %RBP.i, align 8
  %2448 = add i64 %2447, -12344
  %2449 = load i64, i64* %3, align 8
  %2450 = add i64 %2449, 6
  store i64 %2450, i64* %3, align 8
  %2451 = inttoptr i64 %2448 to i32*
  %2452 = load i32, i32* %2451, align 4
  %2453 = zext i32 %2452 to i64
  store i64 %2453, i64* %RAX.i2220, align 8
  %2454 = add i64 %2447, -16464
  %2455 = add i64 %2449, 12
  store i64 %2455, i64* %3, align 8
  %2456 = inttoptr i64 %2454 to i32*
  %2457 = load i32, i32* %2456, align 4
  %2458 = sub i32 %2452, %2457
  %2459 = icmp ult i32 %2452, %2457
  %2460 = zext i1 %2459 to i8
  store i8 %2460, i8* %14, align 1
  %2461 = and i32 %2458, 255
  %2462 = tail call i32 @llvm.ctpop.i32(i32 %2461)
  %2463 = trunc i32 %2462 to i8
  %2464 = and i8 %2463, 1
  %2465 = xor i8 %2464, 1
  store i8 %2465, i8* %21, align 1
  %2466 = xor i32 %2457, %2452
  %2467 = xor i32 %2466, %2458
  %2468 = lshr i32 %2467, 4
  %2469 = trunc i32 %2468 to i8
  %2470 = and i8 %2469, 1
  store i8 %2470, i8* %26, align 1
  %2471 = icmp eq i32 %2458, 0
  %2472 = zext i1 %2471 to i8
  store i8 %2472, i8* %29, align 1
  %2473 = lshr i32 %2458, 31
  %2474 = trunc i32 %2473 to i8
  store i8 %2474, i8* %32, align 1
  %2475 = lshr i32 %2452, 31
  %2476 = lshr i32 %2457, 31
  %2477 = xor i32 %2476, %2475
  %2478 = xor i32 %2473, %2475
  %2479 = add nuw nsw i32 %2478, %2477
  %2480 = icmp eq i32 %2479, 2
  %2481 = zext i1 %2480 to i8
  store i8 %2481, i8* %38, align 1
  %2482 = icmp ne i8 %2474, 0
  %2483 = xor i1 %2482, %2480
  %2484 = or i1 %2471, %2483
  %.v177 = select i1 %2484, i64 454, i64 18
  %2485 = add i64 %2449, %.v177
  store i64 %2485, i64* %3, align 8
  br i1 %2484, label %block_.L_419efc, label %block_419d48

block_419d48:                                     ; preds = %block_419cd4
  %2486 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %2487 = and i32 %2486, 255
  %2488 = tail call i32 @llvm.ctpop.i32(i32 %2487)
  %2489 = trunc i32 %2488 to i8
  %2490 = and i8 %2489, 1
  %2491 = xor i8 %2490, 1
  store i8 %2491, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %2492 = icmp eq i32 %2486, 0
  %2493 = zext i1 %2492 to i8
  store i8 %2493, i8* %29, align 1
  %2494 = lshr i32 %2486, 31
  %2495 = trunc i32 %2494 to i8
  store i8 %2495, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v178 = select i1 %2492, i64 14, i64 436
  %2496 = add i64 %2485, %.v178
  store i64 %2496, i64* %3, align 8
  br i1 %2492, label %block_419d56, label %block_.L_419efc

block_419d56:                                     ; preds = %block_419d48
  %2497 = add i64 %2447, -12304
  store i64 %2497, i64* %RAX.i2220, align 8
  store i32 0, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  %2498 = add i64 %2496, 24
  store i64 %2498, i64* %3, align 8
  %2499 = load i32, i32* %2451, align 4
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RCX.i2189, align 8
  store i32 %2499, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %2501 = add i64 %2447, -12336
  %2502 = add i64 %2496, 37
  store i64 %2502, i64* %3, align 8
  %2503 = inttoptr i64 %2501 to i32*
  %2504 = load i32, i32* %2503, align 4
  %2505 = zext i32 %2504 to i64
  store i64 %2505, i64* %RCX.i2189, align 8
  store i32 %2504, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  %2506 = add i64 %2496, 51
  store i64 %2506, i64* %3, align 8
  %2507 = load i32, i32* %2503, align 4
  %2508 = sext i32 %2507 to i64
  %2509 = mul nsw i64 %2508, 24
  store i64 %2509, i64* %RDX.i2117, align 8
  %2510 = lshr i64 %2509, 63
  %2511 = add i64 %2509, %2497
  store i64 %2511, i64* %RAX.i2220, align 8
  %2512 = icmp ult i64 %2511, %2497
  %2513 = icmp ult i64 %2511, %2509
  %2514 = or i1 %2512, %2513
  %2515 = zext i1 %2514 to i8
  store i8 %2515, i8* %14, align 1
  %2516 = trunc i64 %2511 to i32
  %2517 = and i32 %2516, 255
  %2518 = tail call i32 @llvm.ctpop.i32(i32 %2517)
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = xor i8 %2520, 1
  store i8 %2521, i8* %21, align 1
  %2522 = xor i64 %2509, %2497
  %2523 = xor i64 %2522, %2511
  %2524 = lshr i64 %2523, 4
  %2525 = trunc i64 %2524 to i8
  %2526 = and i8 %2525, 1
  store i8 %2526, i8* %26, align 1
  %2527 = icmp eq i64 %2511, 0
  %2528 = zext i1 %2527 to i8
  store i8 %2528, i8* %29, align 1
  %2529 = lshr i64 %2511, 63
  %2530 = trunc i64 %2529 to i8
  store i8 %2530, i8* %32, align 1
  %2531 = lshr i64 %2497, 63
  %2532 = xor i64 %2529, %2531
  %2533 = xor i64 %2529, %2510
  %2534 = add nuw nsw i64 %2532, %2533
  %2535 = icmp eq i64 %2534, 2
  %2536 = zext i1 %2535 to i8
  store i8 %2536, i8* %38, align 1
  %2537 = inttoptr i64 %2511 to i64*
  %2538 = add i64 %2496, 61
  store i64 %2538, i64* %3, align 8
  %2539 = load i64, i64* %2537, align 8
  store i64 %2539, i64* %RDX.i2117, align 8
  %2540 = add i64 %2447, -12328
  %2541 = add i64 %2496, 68
  store i64 %2541, i64* %3, align 8
  %2542 = inttoptr i64 %2540 to i64*
  store i64 %2539, i64* %2542, align 8
  %2543 = load i64, i64* %RAX.i2220, align 8
  %2544 = add i64 %2543, 8
  %2545 = load i64, i64* %3, align 8
  %2546 = add i64 %2545, 4
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2544 to i64*
  %2548 = load i64, i64* %2547, align 8
  store i64 %2548, i64* %RDX.i2117, align 8
  %2549 = load i64, i64* %RBP.i, align 8
  %2550 = add i64 %2549, -12320
  %2551 = add i64 %2545, 11
  store i64 %2551, i64* %3, align 8
  %2552 = inttoptr i64 %2550 to i64*
  store i64 %2548, i64* %2552, align 8
  %2553 = load i64, i64* %RAX.i2220, align 8
  %2554 = add i64 %2553, 16
  %2555 = load i64, i64* %3, align 8
  %2556 = add i64 %2555, 4
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2554 to i64*
  %2558 = load i64, i64* %2557, align 8
  store i64 %2558, i64* %RAX.i2220, align 8
  %2559 = load i64, i64* %RBP.i, align 8
  %2560 = add i64 %2559, -12312
  %2561 = add i64 %2555, 11
  store i64 %2561, i64* %3, align 8
  %2562 = inttoptr i64 %2560 to i64*
  store i64 %2558, i64* %2562, align 8
  %2563 = load i64, i64* %RBP.i, align 8
  %2564 = add i64 %2563, -12344
  %2565 = load i64, i64* %3, align 8
  %2566 = add i64 %2565, 6
  store i64 %2566, i64* %3, align 8
  %2567 = inttoptr i64 %2564 to i32*
  %2568 = load i32, i32* %2567, align 4
  %2569 = zext i32 %2568 to i64
  store i64 %2569, i64* %RCX.i2189, align 8
  %2570 = add i64 %2563, -16468
  %2571 = add i64 %2565, 12
  store i64 %2571, i64* %3, align 8
  %2572 = inttoptr i64 %2570 to i32*
  %2573 = load i32, i32* %2572, align 4
  %2574 = sub i32 %2568, %2573
  %2575 = icmp ult i32 %2568, %2573
  %2576 = zext i1 %2575 to i8
  store i8 %2576, i8* %14, align 1
  %2577 = and i32 %2574, 255
  %2578 = tail call i32 @llvm.ctpop.i32(i32 %2577)
  %2579 = trunc i32 %2578 to i8
  %2580 = and i8 %2579, 1
  %2581 = xor i8 %2580, 1
  store i8 %2581, i8* %21, align 1
  %2582 = xor i32 %2573, %2568
  %2583 = xor i32 %2582, %2574
  %2584 = lshr i32 %2583, 4
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  store i8 %2586, i8* %26, align 1
  %2587 = icmp eq i32 %2574, 0
  %2588 = zext i1 %2587 to i8
  store i8 %2588, i8* %29, align 1
  %2589 = lshr i32 %2574, 31
  %2590 = trunc i32 %2589 to i8
  store i8 %2590, i8* %32, align 1
  %2591 = lshr i32 %2568, 31
  %2592 = lshr i32 %2573, 31
  %2593 = xor i32 %2592, %2591
  %2594 = xor i32 %2589, %2591
  %2595 = add nuw nsw i32 %2594, %2593
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  store i8 %2597, i8* %38, align 1
  %2598 = icmp ne i8 %2590, 0
  %2599 = xor i1 %2598, %2596
  %.v179 = select i1 %2599, i64 18, i64 327
  %2600 = add i64 %2565, %.v179
  store i64 %2600, i64* %3, align 8
  br i1 %2599, label %block_419dc2, label %block_.L_419ef7

block_419dc2:                                     ; preds = %block_419d56
  %2601 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %2602 = add i32 %2601, -2
  %2603 = icmp ult i32 %2601, 2
  %2604 = zext i1 %2603 to i8
  store i8 %2604, i8* %14, align 1
  %2605 = and i32 %2602, 255
  %2606 = tail call i32 @llvm.ctpop.i32(i32 %2605)
  %2607 = trunc i32 %2606 to i8
  %2608 = and i8 %2607, 1
  %2609 = xor i8 %2608, 1
  store i8 %2609, i8* %21, align 1
  %2610 = xor i32 %2602, %2601
  %2611 = lshr i32 %2610, 4
  %2612 = trunc i32 %2611 to i8
  %2613 = and i8 %2612, 1
  store i8 %2613, i8* %26, align 1
  %2614 = icmp eq i32 %2602, 0
  %2615 = zext i1 %2614 to i8
  store i8 %2615, i8* %29, align 1
  %2616 = lshr i32 %2602, 31
  %2617 = trunc i32 %2616 to i8
  store i8 %2617, i8* %32, align 1
  %2618 = lshr i32 %2601, 31
  %2619 = xor i32 %2616, %2618
  %2620 = add nuw nsw i32 %2619, %2618
  %2621 = icmp eq i32 %2620, 2
  %2622 = zext i1 %2621 to i8
  store i8 %2622, i8* %38, align 1
  %2623 = icmp ne i8 %2617, 0
  %2624 = xor i1 %2623, %2621
  %.v180 = select i1 %2624, i64 309, i64 14
  %2625 = add i64 %2600, %.v180
  store i64 %2625, i64* %3, align 8
  br i1 %2624, label %block_.L_419ef7, label %block_419dd0

block_419dd0:                                     ; preds = %block_419dc2
  %2626 = add i64 %2563, -12304
  store i64 %2626, i64* %RAX.i2220, align 8
  %2627 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2628 = add i32 %2627, -1
  %2629 = sext i32 %2628 to i64
  %2630 = mul nsw i64 %2629, 7200
  %2631 = add i64 %2630, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %2632 = lshr i64 %2631, 63
  %2633 = add i32 %2627, -1
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RDX.i2117, align 8
  %2635 = sext i32 %2633 to i64
  %2636 = mul nsw i64 %2635, 24
  store i64 %2636, i64* %RSI.i1919, align 8
  %2637 = lshr i64 %2636, 63
  %2638 = add i64 %2636, %2631
  store i64 %2638, i64* %RCX.i2189, align 8
  %2639 = icmp ult i64 %2638, %2631
  %2640 = icmp ult i64 %2638, %2636
  %2641 = or i1 %2639, %2640
  %2642 = zext i1 %2641 to i8
  store i8 %2642, i8* %14, align 1
  %2643 = trunc i64 %2638 to i32
  %2644 = and i32 %2643, 248
  %2645 = tail call i32 @llvm.ctpop.i32(i32 %2644)
  %2646 = trunc i32 %2645 to i8
  %2647 = and i8 %2646, 1
  %2648 = xor i8 %2647, 1
  store i8 %2648, i8* %21, align 1
  %2649 = xor i64 %2636, %2631
  %2650 = xor i64 %2649, %2638
  %2651 = lshr i64 %2650, 4
  %2652 = trunc i64 %2651 to i8
  %2653 = and i8 %2652, 1
  store i8 %2653, i8* %26, align 1
  %2654 = icmp eq i64 %2638, 0
  %2655 = zext i1 %2654 to i8
  store i8 %2655, i8* %29, align 1
  %2656 = lshr i64 %2638, 63
  %2657 = trunc i64 %2656 to i8
  store i8 %2657, i8* %32, align 1
  %2658 = xor i64 %2656, %2632
  %2659 = xor i64 %2656, %2637
  %2660 = add nuw nsw i64 %2658, %2659
  %2661 = icmp eq i64 %2660, 2
  %2662 = zext i1 %2661 to i8
  store i8 %2662, i8* %38, align 1
  %2663 = load i64, i64* %RBP.i, align 8
  %2664 = add i64 %2663, -12336
  %2665 = add i64 %2625, 67
  store i64 %2665, i64* %3, align 8
  %2666 = inttoptr i64 %2664 to i32*
  %2667 = load i32, i32* %2666, align 4
  %2668 = sext i32 %2667 to i64
  %2669 = mul nsw i64 %2668, 24
  store i64 %2669, i64* %RSI.i1919, align 8
  %2670 = lshr i64 %2669, 63
  %2671 = load i64, i64* %RAX.i2220, align 8
  %2672 = add i64 %2669, %2671
  store i64 %2672, i64* %RAX.i2220, align 8
  %2673 = icmp ult i64 %2672, %2671
  %2674 = icmp ult i64 %2672, %2669
  %2675 = or i1 %2673, %2674
  %2676 = zext i1 %2675 to i8
  store i8 %2676, i8* %14, align 1
  %2677 = trunc i64 %2672 to i32
  %2678 = and i32 %2677, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %21, align 1
  %2683 = xor i64 %2669, %2671
  %2684 = xor i64 %2683, %2672
  %2685 = lshr i64 %2684, 4
  %2686 = trunc i64 %2685 to i8
  %2687 = and i8 %2686, 1
  store i8 %2687, i8* %26, align 1
  %2688 = icmp eq i64 %2672, 0
  %2689 = zext i1 %2688 to i8
  store i8 %2689, i8* %29, align 1
  %2690 = lshr i64 %2672, 63
  %2691 = trunc i64 %2690 to i8
  store i8 %2691, i8* %32, align 1
  %2692 = lshr i64 %2671, 63
  %2693 = xor i64 %2690, %2692
  %2694 = xor i64 %2690, %2670
  %2695 = add nuw nsw i64 %2693, %2694
  %2696 = icmp eq i64 %2695, 2
  %2697 = zext i1 %2696 to i8
  store i8 %2697, i8* %38, align 1
  %2698 = inttoptr i64 %2672 to i64*
  %2699 = add i64 %2625, 77
  store i64 %2699, i64* %3, align 8
  %2700 = load i64, i64* %2698, align 8
  store i64 %2700, i64* %RSI.i1919, align 8
  %2701 = load i64*, i64** %771, align 8
  %2702 = add i64 %2625, 80
  store i64 %2702, i64* %3, align 8
  store i64 %2700, i64* %2701, align 8
  %2703 = load i64, i64* %RAX.i2220, align 8
  %2704 = add i64 %2703, 8
  %2705 = load i64, i64* %3, align 8
  %2706 = add i64 %2705, 4
  store i64 %2706, i64* %3, align 8
  %2707 = inttoptr i64 %2704 to i64*
  %2708 = load i64, i64* %2707, align 8
  store i64 %2708, i64* %RSI.i1919, align 8
  %2709 = load i64, i64* %RCX.i2189, align 8
  %2710 = add i64 %2709, 8
  %2711 = add i64 %2705, 8
  store i64 %2711, i64* %3, align 8
  %2712 = inttoptr i64 %2710 to i64*
  store i64 %2708, i64* %2712, align 8
  %2713 = load i64, i64* %RAX.i2220, align 8
  %2714 = add i64 %2713, 16
  %2715 = load i64, i64* %3, align 8
  %2716 = add i64 %2715, 4
  store i64 %2716, i64* %3, align 8
  %2717 = inttoptr i64 %2714 to i64*
  %2718 = load i64, i64* %2717, align 8
  store i64 %2718, i64* %RAX.i2220, align 8
  %2719 = load i64, i64* %RCX.i2189, align 8
  %2720 = add i64 %2719, 16
  %2721 = add i64 %2715, 8
  store i64 %2721, i64* %3, align 8
  %2722 = inttoptr i64 %2720 to i64*
  store i64 %2718, i64* %2722, align 8
  %2723 = load i64, i64* %3, align 8
  %2724 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2725 = zext i32 %2724 to i64
  store i64 %2725, i64* %RDX.i2117, align 8
  %2726 = load i64, i64* %RBP.i, align 8
  %2727 = add i64 %2726, -12340
  %2728 = add i64 %2723, 13
  store i64 %2728, i64* %3, align 8
  %2729 = inttoptr i64 %2727 to i32*
  store i32 %2724, i32* %2729, align 4
  %.pre113 = load i64, i64* %3, align 8
  br label %block_.L_419e3d

block_.L_419e3d:                                  ; preds = %block_419e58, %block_419dd0
  %2730 = phi i64 [ %2927, %block_419e58 ], [ %.pre113, %block_419dd0 ]
  %2731 = load i64, i64* %RBP.i, align 8
  %2732 = add i64 %2731, -12340
  %2733 = add i64 %2730, 6
  store i64 %2733, i64* %3, align 8
  %2734 = inttoptr i64 %2732 to i32*
  %2735 = load i32, i32* %2734, align 4
  %2736 = zext i32 %2735 to i64
  store i64 %2736, i64* %RAX.i2220, align 8
  %2737 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2738 = sext i32 %2737 to i64
  store i64 %2738, i64* %RCX.i2189, align 8
  %2739 = shl nsw i64 %2738, 2
  %2740 = add nsw i64 %2739, 8829104
  %2741 = add i64 %2730, 21
  store i64 %2741, i64* %3, align 8
  %2742 = inttoptr i64 %2740 to i32*
  %2743 = load i32, i32* %2742, align 4
  %2744 = sub i32 %2735, %2743
  %2745 = icmp ult i32 %2735, %2743
  %2746 = zext i1 %2745 to i8
  store i8 %2746, i8* %14, align 1
  %2747 = and i32 %2744, 255
  %2748 = tail call i32 @llvm.ctpop.i32(i32 %2747)
  %2749 = trunc i32 %2748 to i8
  %2750 = and i8 %2749, 1
  %2751 = xor i8 %2750, 1
  store i8 %2751, i8* %21, align 1
  %2752 = xor i32 %2743, %2735
  %2753 = xor i32 %2752, %2744
  %2754 = lshr i32 %2753, 4
  %2755 = trunc i32 %2754 to i8
  %2756 = and i8 %2755, 1
  store i8 %2756, i8* %26, align 1
  %2757 = icmp eq i32 %2744, 0
  %2758 = zext i1 %2757 to i8
  store i8 %2758, i8* %29, align 1
  %2759 = lshr i32 %2744, 31
  %2760 = trunc i32 %2759 to i8
  store i8 %2760, i8* %32, align 1
  %2761 = lshr i32 %2735, 31
  %2762 = lshr i32 %2743, 31
  %2763 = xor i32 %2762, %2761
  %2764 = xor i32 %2759, %2761
  %2765 = add nuw nsw i32 %2764, %2763
  %2766 = icmp eq i32 %2765, 2
  %2767 = zext i1 %2766 to i8
  store i8 %2767, i8* %38, align 1
  %2768 = icmp ne i8 %2760, 0
  %2769 = xor i1 %2768, %2766
  %.v181 = select i1 %2769, i64 27, i64 151
  %2770 = add i64 %2730, %.v181
  store i64 %2770, i64* %3, align 8
  br i1 %2769, label %block_419e58, label %block_.L_419ed4

block_419e58:                                     ; preds = %block_.L_419e3d
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i2220, align 8
  %2771 = add i32 %2737, -1
  %2772 = zext i32 %2771 to i64
  store i64 %2772, i64* %RCX.i2189, align 8
  %2773 = sext i32 %2771 to i64
  %2774 = mul nsw i64 %2773, 7200
  store i64 %2774, i64* %RDX.i2117, align 8
  %2775 = lshr i64 %2774, 63
  %2776 = add i64 %2774, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  store i64 %2776, i64* %RSI.i1919, align 8
  %2777 = icmp ult i64 %2776, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %2778 = icmp ult i64 %2776, %2774
  %2779 = or i1 %2777, %2778
  %2780 = zext i1 %2779 to i8
  store i8 %2780, i8* %14, align 1
  %2781 = trunc i64 %2776 to i32
  %2782 = and i32 %2781, 248
  %2783 = tail call i32 @llvm.ctpop.i32(i32 %2782)
  %2784 = trunc i32 %2783 to i8
  %2785 = and i8 %2784, 1
  %2786 = xor i8 %2785, 1
  store i8 %2786, i8* %21, align 1
  %2787 = xor i64 %2776, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %2788 = lshr i64 %2787, 4
  %2789 = trunc i64 %2788 to i8
  %2790 = and i8 %2789, 1
  store i8 %2790, i8* %26, align 1
  %2791 = icmp eq i64 %2776, 0
  %2792 = zext i1 %2791 to i8
  store i8 %2792, i8* %29, align 1
  %2793 = lshr i64 %2776, 63
  %2794 = trunc i64 %2793 to i8
  store i8 %2794, i8* %32, align 1
  %2795 = xor i64 %2793, lshr (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 63)
  %2796 = xor i64 %2793, %2775
  %2797 = add nuw nsw i64 %2795, %2796
  %2798 = icmp eq i64 %2797, 2
  %2799 = zext i1 %2798 to i8
  store i8 %2799, i8* %38, align 1
  %2800 = load i64, i64* %RBP.i, align 8
  %2801 = add i64 %2800, -12340
  %2802 = add i64 %2770, 43
  store i64 %2802, i64* %3, align 8
  %2803 = inttoptr i64 %2801 to i32*
  %2804 = load i32, i32* %2803, align 4
  %2805 = sext i32 %2804 to i64
  %2806 = mul nsw i64 %2805, 24
  %2807 = add i64 %2806, %2776
  store i64 %2807, i64* %RSI.i1919, align 8
  %2808 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %2809 = sext i32 %2808 to i64
  %2810 = mul nsw i64 %2809, 7200
  store i64 %2810, i64* %RDX.i2117, align 8
  %2811 = lshr i64 %2810, 63
  %2812 = load i64, i64* %RAX.i2220, align 8
  %2813 = add i64 %2810, %2812
  store i64 %2813, i64* %RAX.i2220, align 8
  %2814 = icmp ult i64 %2813, %2812
  %2815 = icmp ult i64 %2813, %2810
  %2816 = or i1 %2814, %2815
  %2817 = zext i1 %2816 to i8
  store i8 %2817, i8* %14, align 1
  %2818 = trunc i64 %2813 to i32
  %2819 = and i32 %2818, 255
  %2820 = tail call i32 @llvm.ctpop.i32(i32 %2819)
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  %2823 = xor i8 %2822, 1
  store i8 %2823, i8* %21, align 1
  %2824 = xor i64 %2812, %2813
  %2825 = lshr i64 %2824, 4
  %2826 = trunc i64 %2825 to i8
  %2827 = and i8 %2826, 1
  store i8 %2827, i8* %26, align 1
  %2828 = icmp eq i64 %2813, 0
  %2829 = zext i1 %2828 to i8
  store i8 %2829, i8* %29, align 1
  %2830 = lshr i64 %2813, 63
  %2831 = trunc i64 %2830 to i8
  store i8 %2831, i8* %32, align 1
  %2832 = lshr i64 %2812, 63
  %2833 = xor i64 %2830, %2832
  %2834 = xor i64 %2830, %2811
  %2835 = add nuw nsw i64 %2833, %2834
  %2836 = icmp eq i64 %2835, 2
  %2837 = zext i1 %2836 to i8
  store i8 %2837, i8* %38, align 1
  %2838 = load i64, i64* %RBP.i, align 8
  %2839 = add i64 %2838, -12340
  %2840 = add i64 %2770, 75
  store i64 %2840, i64* %3, align 8
  %2841 = inttoptr i64 %2839 to i32*
  %2842 = load i32, i32* %2841, align 4
  %2843 = sext i32 %2842 to i64
  %2844 = mul nsw i64 %2843, 24
  store i64 %2844, i64* %RDX.i2117, align 8
  %2845 = lshr i64 %2844, 63
  %2846 = add i64 %2844, %2813
  store i64 %2846, i64* %RAX.i2220, align 8
  %2847 = icmp ult i64 %2846, %2813
  %2848 = icmp ult i64 %2846, %2844
  %2849 = or i1 %2847, %2848
  %2850 = zext i1 %2849 to i8
  store i8 %2850, i8* %14, align 1
  %2851 = trunc i64 %2846 to i32
  %2852 = and i32 %2851, 255
  %2853 = tail call i32 @llvm.ctpop.i32(i32 %2852)
  %2854 = trunc i32 %2853 to i8
  %2855 = and i8 %2854, 1
  %2856 = xor i8 %2855, 1
  store i8 %2856, i8* %21, align 1
  %2857 = xor i64 %2844, %2813
  %2858 = xor i64 %2857, %2846
  %2859 = lshr i64 %2858, 4
  %2860 = trunc i64 %2859 to i8
  %2861 = and i8 %2860, 1
  store i8 %2861, i8* %26, align 1
  %2862 = icmp eq i64 %2846, 0
  %2863 = zext i1 %2862 to i8
  store i8 %2863, i8* %29, align 1
  %2864 = lshr i64 %2846, 63
  %2865 = trunc i64 %2864 to i8
  store i8 %2865, i8* %32, align 1
  %2866 = xor i64 %2864, %2830
  %2867 = xor i64 %2864, %2845
  %2868 = add nuw nsw i64 %2866, %2867
  %2869 = icmp eq i64 %2868, 2
  %2870 = zext i1 %2869 to i8
  store i8 %2870, i8* %38, align 1
  %2871 = inttoptr i64 %2846 to i64*
  %2872 = add i64 %2770, 85
  store i64 %2872, i64* %3, align 8
  %2873 = load i64, i64* %2871, align 8
  store i64 %2873, i64* %RDX.i2117, align 8
  %2874 = load i64*, i64** %772, align 8
  %2875 = add i64 %2770, 88
  store i64 %2875, i64* %3, align 8
  store i64 %2873, i64* %2874, align 8
  %2876 = load i64, i64* %RAX.i2220, align 8
  %2877 = add i64 %2876, 8
  %2878 = load i64, i64* %3, align 8
  %2879 = add i64 %2878, 4
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2877 to i64*
  %2881 = load i64, i64* %2880, align 8
  store i64 %2881, i64* %RDX.i2117, align 8
  %2882 = load i64, i64* %RSI.i1919, align 8
  %2883 = add i64 %2882, 8
  %2884 = add i64 %2878, 8
  store i64 %2884, i64* %3, align 8
  %2885 = inttoptr i64 %2883 to i64*
  store i64 %2881, i64* %2885, align 8
  %2886 = load i64, i64* %RAX.i2220, align 8
  %2887 = add i64 %2886, 16
  %2888 = load i64, i64* %3, align 8
  %2889 = add i64 %2888, 4
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2887 to i64*
  %2891 = load i64, i64* %2890, align 8
  store i64 %2891, i64* %RAX.i2220, align 8
  %2892 = load i64, i64* %RSI.i1919, align 8
  %2893 = add i64 %2892, 16
  %2894 = add i64 %2888, 8
  store i64 %2894, i64* %3, align 8
  %2895 = inttoptr i64 %2893 to i64*
  store i64 %2891, i64* %2895, align 8
  %2896 = load i64, i64* %RBP.i, align 8
  %2897 = add i64 %2896, -12340
  %2898 = load i64, i64* %3, align 8
  %2899 = add i64 %2898, 6
  store i64 %2899, i64* %3, align 8
  %2900 = inttoptr i64 %2897 to i32*
  %2901 = load i32, i32* %2900, align 4
  %2902 = add i32 %2901, 1
  %2903 = zext i32 %2902 to i64
  store i64 %2903, i64* %RAX.i2220, align 8
  %2904 = icmp eq i32 %2901, -1
  %2905 = icmp eq i32 %2902, 0
  %2906 = or i1 %2904, %2905
  %2907 = zext i1 %2906 to i8
  store i8 %2907, i8* %14, align 1
  %2908 = and i32 %2902, 255
  %2909 = tail call i32 @llvm.ctpop.i32(i32 %2908)
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  store i8 %2912, i8* %21, align 1
  %2913 = xor i32 %2902, %2901
  %2914 = lshr i32 %2913, 4
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  store i8 %2916, i8* %26, align 1
  %2917 = zext i1 %2905 to i8
  store i8 %2917, i8* %29, align 1
  %2918 = lshr i32 %2902, 31
  %2919 = trunc i32 %2918 to i8
  store i8 %2919, i8* %32, align 1
  %2920 = lshr i32 %2901, 31
  %2921 = xor i32 %2918, %2920
  %2922 = add nuw nsw i32 %2921, %2918
  %2923 = icmp eq i32 %2922, 2
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %38, align 1
  %2925 = add i64 %2898, 15
  store i64 %2925, i64* %3, align 8
  store i32 %2902, i32* %2900, align 4
  %2926 = load i64, i64* %3, align 8
  %2927 = add i64 %2926, -146
  store i64 %2927, i64* %3, align 8
  br label %block_.L_419e3d

block_.L_419ed4:                                  ; preds = %block_.L_419e3d
  store i64 %2738, i64* %RAX.i2220, align 8
  %2928 = add i64 %2770, 15
  store i64 %2928, i64* %3, align 8
  %2929 = load i32, i32* %2742, align 4
  %2930 = zext i32 %2929 to i64
  store i64 %2930, i64* %RCX.i2189, align 8
  %2931 = add i32 %2737, -1
  %2932 = zext i32 %2931 to i64
  store i64 %2932, i64* %RDX.i2117, align 8
  %2933 = icmp eq i32 %2737, 0
  %2934 = zext i1 %2933 to i8
  store i8 %2934, i8* %14, align 1
  %2935 = and i32 %2931, 255
  %2936 = tail call i32 @llvm.ctpop.i32(i32 %2935)
  %2937 = trunc i32 %2936 to i8
  %2938 = and i8 %2937, 1
  %2939 = xor i8 %2938, 1
  store i8 %2939, i8* %21, align 1
  %2940 = xor i32 %2931, %2737
  %2941 = lshr i32 %2940, 4
  %2942 = trunc i32 %2941 to i8
  %2943 = and i8 %2942, 1
  store i8 %2943, i8* %26, align 1
  %2944 = icmp eq i32 %2931, 0
  %2945 = zext i1 %2944 to i8
  store i8 %2945, i8* %29, align 1
  %2946 = lshr i32 %2931, 31
  %2947 = trunc i32 %2946 to i8
  store i8 %2947, i8* %32, align 1
  %2948 = lshr i32 %2737, 31
  %2949 = xor i32 %2946, %2948
  %2950 = add nuw nsw i32 %2949, %2948
  %2951 = icmp eq i32 %2950, 2
  %2952 = zext i1 %2951 to i8
  store i8 %2952, i8* %38, align 1
  %2953 = sext i32 %2931 to i64
  store i64 %2953, i64* %RAX.i2220, align 8
  %2954 = shl nsw i64 %2953, 2
  %2955 = add nsw i64 %2954, 8829104
  %2956 = add i64 %2770, 35
  store i64 %2956, i64* %3, align 8
  %2957 = inttoptr i64 %2955 to i32*
  store i32 %2929, i32* %2957, align 4
  %.pre114 = load i64, i64* %3, align 8
  %.pre115.pre.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_419ef7

block_.L_419ef7:                                  ; preds = %block_419d56, %block_.L_419ed4, %block_419dc2
  %.pre115.pre = phi i64 [ %2563, %block_419d56 ], [ %.pre115.pre.pre, %block_.L_419ed4 ], [ %2563, %block_419dc2 ]
  %2958 = phi i64 [ %2600, %block_419d56 ], [ %.pre114, %block_.L_419ed4 ], [ %2625, %block_419dc2 ]
  %2959 = add i64 %2958, 5
  store i64 %2959, i64* %3, align 8
  br label %block_.L_419efc

block_.L_419efc:                                  ; preds = %block_419d48, %block_.L_419ef7, %block_419cd4
  %.pre115 = phi i64 [ %.pre115.pre, %block_.L_419ef7 ], [ %2447, %block_419d48 ], [ %2447, %block_419cd4 ]
  %2960 = phi i64 [ %2959, %block_.L_419ef7 ], [ %2496, %block_419d48 ], [ %2485, %block_419cd4 ]
  %2961 = add i64 %2960, 5
  store i64 %2961, i64* %3, align 8
  br label %block_.L_419f01

block_.L_419f01:                                  ; preds = %block_419cc6, %block_419cb4, %block_.L_419efc, %block_.L_419c66
  %2962 = phi i64 [ %2265, %block_419cb4 ], [ %2961, %block_.L_419efc ], [ %2276, %block_419cc6 ], [ %2231, %block_.L_419c66 ]
  %2963 = phi i64 [ %2193, %block_419cb4 ], [ %.pre115, %block_.L_419efc ], [ %2193, %block_419cc6 ], [ %2193, %block_.L_419c66 ]
  %2964 = add i64 %2963, -12344
  %2965 = add i64 %2962, 6
  store i64 %2965, i64* %3, align 8
  %2966 = inttoptr i64 %2964 to i32*
  %2967 = load i32, i32* %2966, align 4
  %2968 = zext i32 %2967 to i64
  store i64 %2968, i64* %RAX.i2220, align 8
  %2969 = add i64 %2963, -16468
  %2970 = add i64 %2962, 12
  store i64 %2970, i64* %3, align 8
  %2971 = inttoptr i64 %2969 to i32*
  %2972 = load i32, i32* %2971, align 4
  %2973 = sub i32 %2967, %2972
  %2974 = icmp ult i32 %2967, %2972
  %2975 = zext i1 %2974 to i8
  store i8 %2975, i8* %14, align 1
  %2976 = and i32 %2973, 255
  %2977 = tail call i32 @llvm.ctpop.i32(i32 %2976)
  %2978 = trunc i32 %2977 to i8
  %2979 = and i8 %2978, 1
  %2980 = xor i8 %2979, 1
  store i8 %2980, i8* %21, align 1
  %2981 = xor i32 %2972, %2967
  %2982 = xor i32 %2981, %2973
  %2983 = lshr i32 %2982, 4
  %2984 = trunc i32 %2983 to i8
  %2985 = and i8 %2984, 1
  store i8 %2985, i8* %26, align 1
  %2986 = icmp eq i32 %2973, 0
  %2987 = zext i1 %2986 to i8
  store i8 %2987, i8* %29, align 1
  %2988 = lshr i32 %2973, 31
  %2989 = trunc i32 %2988 to i8
  store i8 %2989, i8* %32, align 1
  %2990 = lshr i32 %2967, 31
  %2991 = lshr i32 %2972, 31
  %2992 = xor i32 %2991, %2990
  %2993 = xor i32 %2988, %2990
  %2994 = add nuw nsw i32 %2993, %2992
  %2995 = icmp eq i32 %2994, 2
  %2996 = zext i1 %2995 to i8
  store i8 %2996, i8* %38, align 1
  %2997 = icmp ne i8 %2989, 0
  %2998 = xor i1 %2997, %2995
  %.v150 = select i1 %2998, i64 67, i64 18
  %2999 = add i64 %2962, %.v150
  store i64 %2999, i64* %3, align 8
  br i1 %2998, label %block_.L_419f44, label %block_419f13

block_419f13:                                     ; preds = %block_.L_419f01
  %3000 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3001 = and i32 %3000, 255
  %3002 = tail call i32 @llvm.ctpop.i32(i32 %3001)
  %3003 = trunc i32 %3002 to i8
  %3004 = and i8 %3003, 1
  %3005 = xor i8 %3004, 1
  store i8 %3005, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3006 = icmp eq i32 %3000, 0
  %3007 = zext i1 %3006 to i8
  store i8 %3007, i8* %29, align 1
  %3008 = lshr i32 %3000, 31
  %3009 = trunc i32 %3008 to i8
  store i8 %3009, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v151 = select i1 %3006, i64 14, i64 49
  %3010 = add i64 %2999, %.v151
  store i64 %3010, i64* %3, align 8
  br i1 %3006, label %block_419f21, label %block_.L_419f44

block_419f21:                                     ; preds = %block_419f13
  %3011 = add i64 %2963, -12304
  store i64 %3011, i64* %RAX.i2220, align 8
  %3012 = add i64 %3010, 13
  store i64 %3012, i64* %3, align 8
  %3013 = load i32, i32* %2966, align 4
  %3014 = zext i32 %3013 to i64
  store i64 %3014, i64* %RDI.i2221, align 8
  %3015 = add i64 %2963, -12336
  %3016 = add i64 %3010, 20
  store i64 %3016, i64* %3, align 8
  %3017 = inttoptr i64 %3015 to i32*
  %3018 = load i32, i32* %3017, align 4
  %3019 = sext i32 %3018 to i64
  %3020 = mul nsw i64 %3019, 24
  store i64 %3020, i64* %RCX.i2189, align 8
  %3021 = lshr i64 %3020, 63
  %3022 = add i64 %3020, %3011
  store i64 %3022, i64* %RAX.i2220, align 8
  %3023 = icmp ult i64 %3022, %3011
  %3024 = icmp ult i64 %3022, %3020
  %3025 = or i1 %3023, %3024
  %3026 = zext i1 %3025 to i8
  store i8 %3026, i8* %14, align 1
  %3027 = trunc i64 %3022 to i32
  %3028 = and i32 %3027, 255
  %3029 = tail call i32 @llvm.ctpop.i32(i32 %3028)
  %3030 = trunc i32 %3029 to i8
  %3031 = and i8 %3030, 1
  %3032 = xor i8 %3031, 1
  store i8 %3032, i8* %21, align 1
  %3033 = xor i64 %3020, %3011
  %3034 = xor i64 %3033, %3022
  %3035 = lshr i64 %3034, 4
  %3036 = trunc i64 %3035 to i8
  %3037 = and i8 %3036, 1
  store i8 %3037, i8* %26, align 1
  %3038 = icmp eq i64 %3022, 0
  %3039 = zext i1 %3038 to i8
  store i8 %3039, i8* %29, align 1
  %3040 = lshr i64 %3022, 63
  %3041 = trunc i64 %3040 to i8
  store i8 %3041, i8* %32, align 1
  %3042 = lshr i64 %3011, 63
  %3043 = xor i64 %3040, %3042
  %3044 = xor i64 %3040, %3021
  %3045 = add nuw nsw i64 %3043, %3044
  %3046 = icmp eq i64 %3045, 2
  %3047 = zext i1 %3046 to i8
  store i8 %3047, i8* %38, align 1
  store i64 %3022, i64* %RSI.i1919, align 8
  %3048 = add i64 %3010, 39535
  %3049 = add i64 %3010, 35
  %3050 = load i64, i64* %6, align 8
  %3051 = add i64 %3050, -8
  %3052 = inttoptr i64 %3051 to i64*
  store i64 %3049, i64* %3052, align 8
  store i64 %3051, i64* %6, align 8
  store i64 %3048, i64* %3, align 8
  %call2_419f3f = tail call %struct.Memory* @sub_423990.post_fh_thinking(%struct.State* nonnull %0, i64 %3048, %struct.Memory* %MEMORY.8)
  %.pre116 = load i64, i64* %3, align 8
  br label %block_.L_419f44

block_.L_419f44:                                  ; preds = %block_419f13, %block_419f21, %block_.L_419f01
  %3053 = phi i64 [ %.pre116, %block_419f21 ], [ %3010, %block_419f13 ], [ %2999, %block_.L_419f01 ]
  %3054 = add i64 %3053, 5
  store i64 %3054, i64* %3, align 8
  br label %block_.L_419f49

block_.L_419f49:                                  ; preds = %block_.L_419f44, %block_.L_419c61
  %storemerge69 = phi i64 [ %2068, %block_.L_419c61 ], [ %3054, %block_.L_419f44 ]
  %3055 = load i64, i64* %RBP.i, align 8
  %3056 = add i64 %3055, -12344
  %3057 = add i64 %storemerge69, 6
  store i64 %3057, i64* %3, align 8
  %3058 = inttoptr i64 %3056 to i32*
  %3059 = load i32, i32* %3058, align 4
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RAX.i2220, align 8
  %3061 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %3062 = sub i32 %3059, %3061
  %3063 = icmp ult i32 %3059, %3061
  %3064 = zext i1 %3063 to i8
  store i8 %3064, i8* %14, align 1
  %3065 = and i32 %3062, 255
  %3066 = tail call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  store i8 %3069, i8* %21, align 1
  %3070 = xor i32 %3061, %3059
  %3071 = xor i32 %3070, %3062
  %3072 = lshr i32 %3071, 4
  %3073 = trunc i32 %3072 to i8
  %3074 = and i8 %3073, 1
  store i8 %3074, i8* %26, align 1
  %3075 = icmp eq i32 %3062, 0
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %29, align 1
  %3077 = lshr i32 %3062, 31
  %3078 = trunc i32 %3077 to i8
  store i8 %3078, i8* %32, align 1
  %3079 = lshr i32 %3059, 31
  %3080 = lshr i32 %3061, 31
  %3081 = xor i32 %3080, %3079
  %3082 = xor i32 %3077, %3079
  %3083 = add nuw nsw i32 %3082, %3081
  %3084 = icmp eq i32 %3083, 2
  %3085 = zext i1 %3084 to i8
  store i8 %3085, i8* %38, align 1
  %3086 = icmp ne i8 %3078, 0
  %3087 = xor i1 %3086, %3084
  %3088 = or i1 %3075, %3087
  %.v152 = select i1 %3088, i64 112, i64 19
  %3089 = add i64 %storemerge69, %.v152
  store i64 %3089, i64* %3, align 8
  br i1 %3088, label %block_.L_419fb9, label %block_419f5c

block_419f5c:                                     ; preds = %block_.L_419f49
  %3090 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3091 = and i32 %3090, 255
  %3092 = tail call i32 @llvm.ctpop.i32(i32 %3091)
  %3093 = trunc i32 %3092 to i8
  %3094 = and i8 %3093, 1
  %3095 = xor i8 %3094, 1
  store i8 %3095, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3096 = icmp eq i32 %3090, 0
  %3097 = zext i1 %3096 to i8
  store i8 %3097, i8* %29, align 1
  %3098 = lshr i32 %3090, 31
  %3099 = trunc i32 %3098 to i8
  store i8 %3099, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v153 = select i1 %3096, i64 14, i64 93
  %3100 = add i64 %3089, %.v153
  store i64 %3100, i64* %3, align 8
  br i1 %3096, label %block_419f6a, label %block_.L_419fb9

block_419f6a:                                     ; preds = %block_419f5c
  %3101 = add i64 %3055, -12304
  store i64 %3101, i64* %RAX.i2220, align 8
  %3102 = add i64 %3100, 13
  store i64 %3102, i64* %3, align 8
  %3103 = load i32, i32* %3058, align 4
  %3104 = zext i32 %3103 to i64
  store i64 %3104, i64* %RCX.i2189, align 8
  store i32 %3103, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %3105 = add i64 %3055, -12336
  %3106 = add i64 %3100, 26
  store i64 %3106, i64* %3, align 8
  %3107 = inttoptr i64 %3105 to i32*
  %3108 = load i32, i32* %3107, align 4
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RCX.i2189, align 8
  store i32 %3108, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  %3110 = add i64 %3100, 40
  store i64 %3110, i64* %3, align 8
  %3111 = load i32, i32* %3107, align 4
  %3112 = sext i32 %3111 to i64
  %3113 = mul nsw i64 %3112, 24
  store i64 %3113, i64* %RDX.i2117, align 8
  %3114 = lshr i64 %3113, 63
  %3115 = add i64 %3113, %3101
  store i64 %3115, i64* %RAX.i2220, align 8
  %3116 = icmp ult i64 %3115, %3101
  %3117 = icmp ult i64 %3115, %3113
  %3118 = or i1 %3116, %3117
  %3119 = zext i1 %3118 to i8
  store i8 %3119, i8* %14, align 1
  %3120 = trunc i64 %3115 to i32
  %3121 = and i32 %3120, 255
  %3122 = tail call i32 @llvm.ctpop.i32(i32 %3121)
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = xor i8 %3124, 1
  store i8 %3125, i8* %21, align 1
  %3126 = xor i64 %3113, %3101
  %3127 = xor i64 %3126, %3115
  %3128 = lshr i64 %3127, 4
  %3129 = trunc i64 %3128 to i8
  %3130 = and i8 %3129, 1
  store i8 %3130, i8* %26, align 1
  %3131 = icmp eq i64 %3115, 0
  %3132 = zext i1 %3131 to i8
  store i8 %3132, i8* %29, align 1
  %3133 = lshr i64 %3115, 63
  %3134 = trunc i64 %3133 to i8
  store i8 %3134, i8* %32, align 1
  %3135 = lshr i64 %3101, 63
  %3136 = xor i64 %3133, %3135
  %3137 = xor i64 %3133, %3114
  %3138 = add nuw nsw i64 %3136, %3137
  %3139 = icmp eq i64 %3138, 2
  %3140 = zext i1 %3139 to i8
  store i8 %3140, i8* %38, align 1
  %3141 = inttoptr i64 %3115 to i64*
  %3142 = add i64 %3100, 50
  store i64 %3142, i64* %3, align 8
  %3143 = load i64, i64* %3141, align 8
  store i64 %3143, i64* %RDX.i2117, align 8
  %3144 = add i64 %3055, -12328
  %3145 = add i64 %3100, 57
  store i64 %3145, i64* %3, align 8
  %3146 = inttoptr i64 %3144 to i64*
  store i64 %3143, i64* %3146, align 8
  %3147 = load i64, i64* %RAX.i2220, align 8
  %3148 = add i64 %3147, 8
  %3149 = load i64, i64* %3, align 8
  %3150 = add i64 %3149, 4
  store i64 %3150, i64* %3, align 8
  %3151 = inttoptr i64 %3148 to i64*
  %3152 = load i64, i64* %3151, align 8
  store i64 %3152, i64* %RDX.i2117, align 8
  %3153 = load i64, i64* %RBP.i, align 8
  %3154 = add i64 %3153, -12320
  %3155 = add i64 %3149, 11
  store i64 %3155, i64* %3, align 8
  %3156 = inttoptr i64 %3154 to i64*
  store i64 %3152, i64* %3156, align 8
  %3157 = load i64, i64* %RAX.i2220, align 8
  %3158 = add i64 %3157, 16
  %3159 = load i64, i64* %3, align 8
  %3160 = add i64 %3159, 4
  store i64 %3160, i64* %3, align 8
  %3161 = inttoptr i64 %3158 to i64*
  %3162 = load i64, i64* %3161, align 8
  store i64 %3162, i64* %RAX.i2220, align 8
  %3163 = load i64, i64* %RBP.i, align 8
  %3164 = add i64 %3163, -12312
  %3165 = add i64 %3159, 11
  store i64 %3165, i64* %3, align 8
  %3166 = inttoptr i64 %3164 to i64*
  store i64 %3162, i64* %3166, align 8
  %.pre120 = load i64, i64* %3, align 8
  br label %block_.L_419fb9

block_.L_419fb9:                                  ; preds = %block_419f5c, %block_419f6a, %block_.L_419f49
  %3167 = phi i64 [ %.pre120, %block_419f6a ], [ %3100, %block_419f5c ], [ %3089, %block_.L_419f49 ]
  %3168 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3169 = and i32 %3168, 255
  %3170 = tail call i32 @llvm.ctpop.i32(i32 %3169)
  %3171 = trunc i32 %3170 to i8
  %3172 = and i8 %3171, 1
  %3173 = xor i8 %3172, 1
  store i8 %3173, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3174 = icmp eq i32 %3168, 0
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %29, align 1
  %3176 = lshr i32 %3168, 31
  %3177 = trunc i32 %3176 to i8
  store i8 %3177, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v154 = select i1 %3174, i64 60, i64 14
  %3178 = add i64 %3167, %.v154
  store i64 %3178, i64* %3, align 8
  br i1 %3174, label %block_.L_419ff5, label %block_419fc7

block_419fc7:                                     ; preds = %block_.L_419fb9
  %3179 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %3180 = add i32 %3179, 1000000
  %3181 = icmp ult i32 %3179, -1000000
  %3182 = zext i1 %3181 to i8
  store i8 %3182, i8* %14, align 1
  %3183 = and i32 %3180, 255
  %3184 = tail call i32 @llvm.ctpop.i32(i32 %3183)
  %3185 = trunc i32 %3184 to i8
  %3186 = and i8 %3185, 1
  %3187 = xor i8 %3186, 1
  store i8 %3187, i8* %21, align 1
  %3188 = xor i32 %3180, %3179
  %3189 = lshr i32 %3188, 4
  %3190 = trunc i32 %3189 to i8
  %3191 = and i8 %3190, 1
  store i8 %3191, i8* %26, align 1
  %3192 = icmp eq i32 %3180, 0
  %3193 = zext i1 %3192 to i8
  store i8 %3193, i8* %29, align 1
  %3194 = lshr i32 %3180, 31
  %3195 = trunc i32 %3194 to i8
  store i8 %3195, i8* %32, align 1
  %3196 = lshr i32 %3179, 31
  %3197 = xor i32 %3196, 1
  %3198 = xor i32 %3194, %3196
  %3199 = add nuw nsw i32 %3198, %3197
  %3200 = icmp eq i32 %3199, 2
  %3201 = zext i1 %3200 to i8
  store i8 %3201, i8* %38, align 1
  %.v155 = select i1 %3192, i64 17, i64 46
  %3202 = add i64 %3178, %.v155
  store i64 %3202, i64* %3, align 8
  br i1 %3192, label %block_419fd8, label %block_.L_419ff5

block_419fd8:                                     ; preds = %block_419fc7
  %3203 = load i64, i64* %RBP.i, align 8
  %3204 = add i64 %3203, -16452
  %3205 = add i64 %3202, 7
  store i64 %3205, i64* %3, align 8
  %3206 = inttoptr i64 %3204 to i32*
  %3207 = load i32, i32* %3206, align 4
  store i8 0, i8* %14, align 1
  %3208 = and i32 %3207, 255
  %3209 = tail call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  store i8 %3212, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3213 = icmp eq i32 %3207, 0
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %29, align 1
  %3215 = lshr i32 %3207, 31
  %3216 = trunc i32 %3215 to i8
  store i8 %3216, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v175 = select i1 %3213, i64 24, i64 13
  %3217 = add i64 %3202, %.v175
  store i64 %3217, i64* %3, align 8
  br i1 %3213, label %block_.L_419ff0, label %block_419fe5

block_419fe5:                                     ; preds = %block_419fd8
  %3218 = add i64 %3217, 11
  store i64 %3218, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x8661dc_type* @G_0x8661dc to i32*), align 8
  br label %block_.L_419ff0

block_.L_419ff0:                                  ; preds = %block_419fe5, %block_419fd8
  %3219 = phi i64 [ %3218, %block_419fe5 ], [ %3217, %block_419fd8 ]
  %3220 = add i64 %3219, 5
  store i64 %3220, i64* %3, align 8
  br label %block_.L_419ff5

block_.L_419ff5:                                  ; preds = %block_419fc7, %block_.L_419ff0, %block_.L_419fb9
  %3221 = phi i64 [ %3220, %block_.L_419ff0 ], [ %3202, %block_419fc7 ], [ %3178, %block_.L_419fb9 ]
  %3222 = load i64, i64* %RBP.i, align 8
  %3223 = add i64 %3222, -16452
  %3224 = add i64 %3221, 10
  store i64 %3224, i64* %3, align 8
  %3225 = inttoptr i64 %3223 to i32*
  store i32 0, i32* %3225, align 4
  %3226 = load i64, i64* %RBP.i, align 8
  %3227 = add i64 %3226, -16456
  %3228 = load i64, i64* %3, align 8
  %3229 = add i64 %3228, 10
  store i64 %3229, i64* %3, align 8
  %3230 = inttoptr i64 %3227 to i32*
  store i32 1, i32* %3230, align 4
  %.pre121 = load i64, i64* %3, align 8
  br label %block_.L_41a009

block_.L_41a009:                                  ; preds = %block_.L_419ff5, %block_.L_41982e
  %3231 = phi i64 [ %.pre121, %block_.L_419ff5 ], [ %1040, %block_.L_41982e ]
  %3232 = load i64, i64* %RBP.i, align 8
  %3233 = add i64 %3232, -12304
  store i64 %3233, i64* %RDI.i2221, align 8
  %3234 = add i64 %3232, -12336
  %3235 = add i64 %3231, 13
  store i64 %3235, i64* %3, align 8
  %3236 = inttoptr i64 %3234 to i32*
  %3237 = load i32, i32* %3236, align 4
  %3238 = zext i32 %3237 to i64
  store i64 %3238, i64* %RSI.i1919, align 8
  %3239 = add i64 %3231, -55401
  %3240 = add i64 %3231, 18
  %3241 = load i64, i64* %6, align 8
  %3242 = add i64 %3241, -8
  %3243 = inttoptr i64 %3242 to i64*
  store i64 %3240, i64* %3243, align 8
  store i64 %3242, i64* %6, align 8
  store i64 %3239, i64* %3, align 8
  %call2_41a016 = tail call %struct.Memory* @sub_40c7a0.unmake(%struct.State* nonnull %0, i64 %3239, %struct.Memory* %MEMORY.8)
  %3244 = load i64, i64* %3, align 8
  %3245 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  store i8 0, i8* %14, align 1
  %3246 = and i32 %3245, 255
  %3247 = tail call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  store i8 %3250, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3251 = icmp eq i32 %3245, 0
  %3252 = zext i1 %3251 to i8
  store i8 %3252, i8* %29, align 1
  %3253 = lshr i32 %3245, 31
  %3254 = trunc i32 %3253 to i8
  store i8 %3254, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v156 = select i1 %3251, i64 58, i64 14
  %3255 = add i64 %3244, %.v156
  store i64 %3255, i64* %3, align 8
  %3256 = load i64, i64* %RBP.i, align 8
  br i1 %3251, label %block_.L_41a055, label %block_41a029

block_41a029:                                     ; preds = %block_.L_41a009
  %3257 = add i64 %3256, -12328
  %3258 = add i64 %3255, 7
  store i64 %3258, i64* %3, align 8
  %3259 = inttoptr i64 %3257 to i64*
  %3260 = load i64, i64* %3259, align 8
  store i64 %3260, i64* %RAX.i2220, align 8
  %3261 = add i64 %3256, -16528
  %3262 = add i64 %3255, 14
  store i64 %3262, i64* %3, align 8
  %3263 = inttoptr i64 %3261 to i64*
  %3264 = load i64, i64* %3263, align 8
  store i64 %3264, i64* %RCX.i2189, align 8
  %3265 = add i64 %3255, 17
  store i64 %3265, i64* %3, align 8
  %3266 = inttoptr i64 %3264 to i64*
  store i64 %3260, i64* %3266, align 8
  %3267 = load i64, i64* %RBP.i, align 8
  %3268 = add i64 %3267, -12320
  %3269 = load i64, i64* %3, align 8
  %3270 = add i64 %3269, 7
  store i64 %3270, i64* %3, align 8
  %3271 = inttoptr i64 %3268 to i64*
  %3272 = load i64, i64* %3271, align 8
  store i64 %3272, i64* %RAX.i2220, align 8
  %3273 = load i64, i64* %RCX.i2189, align 8
  %3274 = add i64 %3273, 8
  %3275 = add i64 %3269, 11
  store i64 %3275, i64* %3, align 8
  %3276 = inttoptr i64 %3274 to i64*
  store i64 %3272, i64* %3276, align 8
  %3277 = load i64, i64* %RBP.i, align 8
  %3278 = add i64 %3277, -12312
  %3279 = load i64, i64* %3, align 8
  %3280 = add i64 %3279, 7
  store i64 %3280, i64* %3, align 8
  %3281 = inttoptr i64 %3278 to i64*
  %3282 = load i64, i64* %3281, align 8
  store i64 %3282, i64* %RAX.i2220, align 8
  %3283 = load i64, i64* %RCX.i2189, align 8
  %3284 = add i64 %3283, 16
  %3285 = add i64 %3279, 11
  store i64 %3285, i64* %3, align 8
  %3286 = inttoptr i64 %3284 to i64*
  store i64 %3282, i64* %3286, align 8
  %3287 = load i64, i64* %3, align 8
  %3288 = add i64 %3287, 2270
  store i64 %3288, i64* %3, align 8
  br label %block_.L_41a92e

block_.L_41a055:                                  ; preds = %block_.L_41a009
  %3289 = add i64 %3256, -12344
  %3290 = add i64 %3255, 6
  store i64 %3290, i64* %3, align 8
  %3291 = inttoptr i64 %3289 to i32*
  %3292 = load i32, i32* %3291, align 4
  %3293 = zext i32 %3292 to i64
  store i64 %3293, i64* %RAX.i2220, align 8
  %3294 = add i64 %3256, -16464
  %3295 = add i64 %3255, 12
  store i64 %3295, i64* %3, align 8
  %3296 = inttoptr i64 %3294 to i32*
  %3297 = load i32, i32* %3296, align 4
  %3298 = sub i32 %3292, %3297
  %3299 = icmp ult i32 %3292, %3297
  %3300 = zext i1 %3299 to i8
  store i8 %3300, i8* %14, align 1
  %3301 = and i32 %3298, 255
  %3302 = tail call i32 @llvm.ctpop.i32(i32 %3301)
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  %3305 = xor i8 %3304, 1
  store i8 %3305, i8* %21, align 1
  %3306 = xor i32 %3297, %3292
  %3307 = xor i32 %3306, %3298
  %3308 = lshr i32 %3307, 4
  %3309 = trunc i32 %3308 to i8
  %3310 = and i8 %3309, 1
  store i8 %3310, i8* %26, align 1
  %3311 = icmp eq i32 %3298, 0
  %3312 = zext i1 %3311 to i8
  store i8 %3312, i8* %29, align 1
  %3313 = lshr i32 %3298, 31
  %3314 = trunc i32 %3313 to i8
  store i8 %3314, i8* %32, align 1
  %3315 = lshr i32 %3292, 31
  %3316 = lshr i32 %3297, 31
  %3317 = xor i32 %3316, %3315
  %3318 = xor i32 %3313, %3315
  %3319 = add nuw nsw i32 %3318, %3317
  %3320 = icmp eq i32 %3319, 2
  %3321 = zext i1 %3320 to i8
  store i8 %3321, i8* %38, align 1
  %3322 = icmp ne i8 %3314, 0
  %3323 = xor i1 %3322, %3320
  %3324 = or i1 %3311, %3323
  %.v157 = select i1 %3324, i64 1863, i64 18
  %3325 = add i64 %3255, %.v157
  store i64 %3325, i64* %3, align 8
  br i1 %3324, label %block_.L_41a79c, label %block_41a067

block_41a067:                                     ; preds = %block_.L_41a055
  %3326 = add i64 %3256, -16456
  %3327 = add i64 %3325, 7
  store i64 %3327, i64* %3, align 8
  %3328 = inttoptr i64 %3326 to i32*
  %3329 = load i32, i32* %3328, align 4
  store i8 0, i8* %14, align 1
  %3330 = and i32 %3329, 255
  %3331 = tail call i32 @llvm.ctpop.i32(i32 %3330)
  %3332 = trunc i32 %3331 to i8
  %3333 = and i8 %3332, 1
  %3334 = xor i8 %3333, 1
  store i8 %3334, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %3335 = icmp eq i32 %3329, 0
  %3336 = zext i1 %3335 to i8
  store i8 %3336, i8* %29, align 1
  %3337 = lshr i32 %3329, 31
  %3338 = trunc i32 %3337 to i8
  store i8 %3338, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v158 = select i1 %3335, i64 1845, i64 13
  %3339 = add i64 %3325, %.v158
  store i64 %3339, i64* %3, align 8
  br i1 %3335, label %block_.L_41a79c, label %block_41a074

block_41a074:                                     ; preds = %block_41a067
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i2220, align 8
  %3340 = add i64 %3256, -12304
  store i64 %3340, i64* %RCX.i2189, align 8
  %3341 = add i64 %3256, -12336
  %3342 = add i64 %3339, 24
  store i64 %3342, i64* %3, align 8
  %3343 = inttoptr i64 %3341 to i32*
  %3344 = load i32, i32* %3343, align 4
  %3345 = sext i32 %3344 to i64
  %3346 = mul nsw i64 %3345, 24
  store i64 %3346, i64* %RDX.i2117, align 8
  %3347 = lshr i64 %3346, 63
  %3348 = add i64 %3346, %3340
  store i64 %3348, i64* %RCX.i2189, align 8
  %3349 = icmp ult i64 %3348, %3340
  %3350 = icmp ult i64 %3348, %3346
  %3351 = or i1 %3349, %3350
  %3352 = zext i1 %3351 to i8
  store i8 %3352, i8* %14, align 1
  %3353 = trunc i64 %3348 to i32
  %3354 = and i32 %3353, 255
  %3355 = tail call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  store i8 %3358, i8* %21, align 1
  %3359 = xor i64 %3346, %3340
  %3360 = xor i64 %3359, %3348
  %3361 = lshr i64 %3360, 4
  %3362 = trunc i64 %3361 to i8
  %3363 = and i8 %3362, 1
  store i8 %3363, i8* %26, align 1
  %3364 = icmp eq i64 %3348, 0
  %3365 = zext i1 %3364 to i8
  store i8 %3365, i8* %29, align 1
  %3366 = lshr i64 %3348, 63
  %3367 = trunc i64 %3366 to i8
  store i8 %3367, i8* %32, align 1
  %3368 = lshr i64 %3340, 63
  %3369 = xor i64 %3366, %3368
  %3370 = xor i64 %3366, %3347
  %3371 = add nuw nsw i64 %3369, %3370
  %3372 = icmp eq i64 %3371, 2
  %3373 = zext i1 %3372 to i8
  store i8 %3373, i8* %38, align 1
  %3374 = inttoptr i64 %3348 to i32*
  %3375 = add i64 %3339, 33
  store i64 %3375, i64* %3, align 8
  %3376 = load i32, i32* %3374, align 4
  %3377 = zext i32 %3376 to i64
  store i64 %3377, i64* %RSI.i1919, align 8
  %3378 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3379 = sext i32 %3378 to i64
  %3380 = mul nsw i64 %3379, 24
  store i64 %3380, i64* %RCX.i2189, align 8
  %3381 = lshr i64 %3380, 63
  %3382 = load i64, i64* %RAX.i2220, align 8
  %3383 = add i64 %3380, %3382
  store i64 %3383, i64* %RAX.i2220, align 8
  %3384 = icmp ult i64 %3383, %3382
  %3385 = icmp ult i64 %3383, %3380
  %3386 = or i1 %3384, %3385
  %3387 = zext i1 %3386 to i8
  store i8 %3387, i8* %14, align 1
  %3388 = trunc i64 %3383 to i32
  %3389 = and i32 %3388, 255
  %3390 = tail call i32 @llvm.ctpop.i32(i32 %3389)
  %3391 = trunc i32 %3390 to i8
  %3392 = and i8 %3391, 1
  %3393 = xor i8 %3392, 1
  store i8 %3393, i8* %21, align 1
  %3394 = xor i64 %3380, %3382
  %3395 = xor i64 %3394, %3383
  %3396 = lshr i64 %3395, 4
  %3397 = trunc i64 %3396 to i8
  %3398 = and i8 %3397, 1
  store i8 %3398, i8* %26, align 1
  %3399 = icmp eq i64 %3383, 0
  %3400 = zext i1 %3399 to i8
  store i8 %3400, i8* %29, align 1
  %3401 = lshr i64 %3383, 63
  %3402 = trunc i64 %3401 to i8
  store i8 %3402, i8* %32, align 1
  %3403 = lshr i64 %3382, 63
  %3404 = xor i64 %3401, %3403
  %3405 = xor i64 %3401, %3381
  %3406 = add nuw nsw i64 %3404, %3405
  %3407 = icmp eq i64 %3406, 2
  %3408 = zext i1 %3407 to i8
  store i8 %3408, i8* %38, align 1
  %3409 = inttoptr i64 %3383 to i32*
  %3410 = add i64 %3339, 50
  store i64 %3410, i64* %3, align 8
  %3411 = load i32, i32* %3409, align 4
  %3412 = sub i32 %3376, %3411
  %3413 = icmp ult i32 %3376, %3411
  %3414 = zext i1 %3413 to i8
  store i8 %3414, i8* %14, align 1
  %3415 = and i32 %3412, 255
  %3416 = tail call i32 @llvm.ctpop.i32(i32 %3415)
  %3417 = trunc i32 %3416 to i8
  %3418 = and i8 %3417, 1
  %3419 = xor i8 %3418, 1
  store i8 %3419, i8* %21, align 1
  %3420 = xor i32 %3411, %3376
  %3421 = xor i32 %3420, %3412
  %3422 = lshr i32 %3421, 4
  %3423 = trunc i32 %3422 to i8
  %3424 = and i8 %3423, 1
  store i8 %3424, i8* %26, align 1
  %3425 = icmp eq i32 %3412, 0
  %3426 = zext i1 %3425 to i8
  store i8 %3426, i8* %29, align 1
  %3427 = lshr i32 %3412, 31
  %3428 = trunc i32 %3427 to i8
  store i8 %3428, i8* %32, align 1
  %3429 = lshr i32 %3376, 31
  %3430 = lshr i32 %3411, 31
  %3431 = xor i32 %3430, %3429
  %3432 = xor i32 %3427, %3429
  %3433 = add nuw nsw i32 %3432, %3431
  %3434 = icmp eq i32 %3433, 2
  %3435 = zext i1 %3434 to i8
  store i8 %3435, i8* %38, align 1
  %.v159 = select i1 %3425, i64 56, i64 202
  %3436 = add i64 %3339, %.v159
  store i64 %3436, i64* %3, align 8
  br i1 %3425, label %block_41a0ac, label %block_.L_41a13e

block_41a0ac:                                     ; preds = %block_41a074
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i2220, align 8
  %3437 = load i64, i64* %RBP.i, align 8
  %3438 = add i64 %3437, -12304
  store i64 %3438, i64* %RCX.i2189, align 8
  %3439 = add i64 %3437, -12336
  %3440 = add i64 %3436, 24
  store i64 %3440, i64* %3, align 8
  %3441 = inttoptr i64 %3439 to i32*
  %3442 = load i32, i32* %3441, align 4
  %3443 = sext i32 %3442 to i64
  %3444 = mul nsw i64 %3443, 24
  store i64 %3444, i64* %RDX.i2117, align 8
  %3445 = lshr i64 %3444, 63
  %3446 = add i64 %3444, %3438
  store i64 %3446, i64* %RCX.i2189, align 8
  %3447 = icmp ult i64 %3446, %3438
  %3448 = icmp ult i64 %3446, %3444
  %3449 = or i1 %3447, %3448
  %3450 = zext i1 %3449 to i8
  store i8 %3450, i8* %14, align 1
  %3451 = trunc i64 %3446 to i32
  %3452 = and i32 %3451, 255
  %3453 = tail call i32 @llvm.ctpop.i32(i32 %3452)
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  %3456 = xor i8 %3455, 1
  store i8 %3456, i8* %21, align 1
  %3457 = xor i64 %3444, %3438
  %3458 = xor i64 %3457, %3446
  %3459 = lshr i64 %3458, 4
  %3460 = trunc i64 %3459 to i8
  %3461 = and i8 %3460, 1
  store i8 %3461, i8* %26, align 1
  %3462 = icmp eq i64 %3446, 0
  %3463 = zext i1 %3462 to i8
  store i8 %3463, i8* %29, align 1
  %3464 = lshr i64 %3446, 63
  %3465 = trunc i64 %3464 to i8
  store i8 %3465, i8* %32, align 1
  %3466 = lshr i64 %3438, 63
  %3467 = xor i64 %3464, %3466
  %3468 = xor i64 %3464, %3445
  %3469 = add nuw nsw i64 %3467, %3468
  %3470 = icmp eq i64 %3469, 2
  %3471 = zext i1 %3470 to i8
  store i8 %3471, i8* %38, align 1
  %3472 = add i64 %3446, 4
  %3473 = add i64 %3436, 34
  store i64 %3473, i64* %3, align 8
  %3474 = inttoptr i64 %3472 to i32*
  %3475 = load i32, i32* %3474, align 4
  %3476 = zext i32 %3475 to i64
  store i64 %3476, i64* %RSI.i1919, align 8
  %3477 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3478 = sext i32 %3477 to i64
  %3479 = mul nsw i64 %3478, 24
  store i64 %3479, i64* %RCX.i2189, align 8
  %3480 = lshr i64 %3479, 63
  %3481 = load i64, i64* %RAX.i2220, align 8
  %3482 = add i64 %3479, %3481
  store i64 %3482, i64* %RAX.i2220, align 8
  %3483 = icmp ult i64 %3482, %3481
  %3484 = icmp ult i64 %3482, %3479
  %3485 = or i1 %3483, %3484
  %3486 = zext i1 %3485 to i8
  store i8 %3486, i8* %14, align 1
  %3487 = trunc i64 %3482 to i32
  %3488 = and i32 %3487, 255
  %3489 = tail call i32 @llvm.ctpop.i32(i32 %3488)
  %3490 = trunc i32 %3489 to i8
  %3491 = and i8 %3490, 1
  %3492 = xor i8 %3491, 1
  store i8 %3492, i8* %21, align 1
  %3493 = xor i64 %3479, %3481
  %3494 = xor i64 %3493, %3482
  %3495 = lshr i64 %3494, 4
  %3496 = trunc i64 %3495 to i8
  %3497 = and i8 %3496, 1
  store i8 %3497, i8* %26, align 1
  %3498 = icmp eq i64 %3482, 0
  %3499 = zext i1 %3498 to i8
  store i8 %3499, i8* %29, align 1
  %3500 = lshr i64 %3482, 63
  %3501 = trunc i64 %3500 to i8
  store i8 %3501, i8* %32, align 1
  %3502 = lshr i64 %3481, 63
  %3503 = xor i64 %3500, %3502
  %3504 = xor i64 %3500, %3480
  %3505 = add nuw nsw i64 %3503, %3504
  %3506 = icmp eq i64 %3505, 2
  %3507 = zext i1 %3506 to i8
  store i8 %3507, i8* %38, align 1
  %3508 = add i64 %3482, 4
  %3509 = add i64 %3436, 52
  store i64 %3509, i64* %3, align 8
  %3510 = inttoptr i64 %3508 to i32*
  %3511 = load i32, i32* %3510, align 4
  %3512 = sub i32 %3475, %3511
  %3513 = icmp ult i32 %3475, %3511
  %3514 = zext i1 %3513 to i8
  store i8 %3514, i8* %14, align 1
  %3515 = and i32 %3512, 255
  %3516 = tail call i32 @llvm.ctpop.i32(i32 %3515)
  %3517 = trunc i32 %3516 to i8
  %3518 = and i8 %3517, 1
  %3519 = xor i8 %3518, 1
  store i8 %3519, i8* %21, align 1
  %3520 = xor i32 %3511, %3475
  %3521 = xor i32 %3520, %3512
  %3522 = lshr i32 %3521, 4
  %3523 = trunc i32 %3522 to i8
  %3524 = and i8 %3523, 1
  store i8 %3524, i8* %26, align 1
  %3525 = icmp eq i32 %3512, 0
  %3526 = zext i1 %3525 to i8
  store i8 %3526, i8* %29, align 1
  %3527 = lshr i32 %3512, 31
  %3528 = trunc i32 %3527 to i8
  store i8 %3528, i8* %32, align 1
  %3529 = lshr i32 %3475, 31
  %3530 = lshr i32 %3511, 31
  %3531 = xor i32 %3530, %3529
  %3532 = xor i32 %3527, %3529
  %3533 = add nuw nsw i32 %3532, %3531
  %3534 = icmp eq i32 %3533, 2
  %3535 = zext i1 %3534 to i8
  store i8 %3535, i8* %38, align 1
  %.v173 = select i1 %3525, i64 58, i64 146
  %3536 = add i64 %3436, %.v173
  store i64 %3536, i64* %3, align 8
  br i1 %3525, label %block_41a0e6, label %block_.L_41a13e

block_41a0e6:                                     ; preds = %block_41a0ac
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX.i2220, align 8
  %3537 = load i64, i64* %RBP.i, align 8
  %3538 = add i64 %3537, -12304
  store i64 %3538, i64* %RCX.i2189, align 8
  %3539 = add i64 %3537, -12336
  %3540 = add i64 %3536, 24
  store i64 %3540, i64* %3, align 8
  %3541 = inttoptr i64 %3539 to i32*
  %3542 = load i32, i32* %3541, align 4
  %3543 = sext i32 %3542 to i64
  %3544 = mul nsw i64 %3543, 24
  store i64 %3544, i64* %RDX.i2117, align 8
  %3545 = lshr i64 %3544, 63
  %3546 = add i64 %3544, %3538
  store i64 %3546, i64* %RCX.i2189, align 8
  %3547 = icmp ult i64 %3546, %3538
  %3548 = icmp ult i64 %3546, %3544
  %3549 = or i1 %3547, %3548
  %3550 = zext i1 %3549 to i8
  store i8 %3550, i8* %14, align 1
  %3551 = trunc i64 %3546 to i32
  %3552 = and i32 %3551, 255
  %3553 = tail call i32 @llvm.ctpop.i32(i32 %3552)
  %3554 = trunc i32 %3553 to i8
  %3555 = and i8 %3554, 1
  %3556 = xor i8 %3555, 1
  store i8 %3556, i8* %21, align 1
  %3557 = xor i64 %3544, %3538
  %3558 = xor i64 %3557, %3546
  %3559 = lshr i64 %3558, 4
  %3560 = trunc i64 %3559 to i8
  %3561 = and i8 %3560, 1
  store i8 %3561, i8* %26, align 1
  %3562 = icmp eq i64 %3546, 0
  %3563 = zext i1 %3562 to i8
  store i8 %3563, i8* %29, align 1
  %3564 = lshr i64 %3546, 63
  %3565 = trunc i64 %3564 to i8
  store i8 %3565, i8* %32, align 1
  %3566 = lshr i64 %3538, 63
  %3567 = xor i64 %3564, %3566
  %3568 = xor i64 %3564, %3545
  %3569 = add nuw nsw i64 %3567, %3568
  %3570 = icmp eq i64 %3569, 2
  %3571 = zext i1 %3570 to i8
  store i8 %3571, i8* %38, align 1
  %3572 = add i64 %3546, 12
  %3573 = add i64 %3536, 34
  store i64 %3573, i64* %3, align 8
  %3574 = inttoptr i64 %3572 to i32*
  %3575 = load i32, i32* %3574, align 4
  %3576 = zext i32 %3575 to i64
  store i64 %3576, i64* %RSI.i1919, align 8
  %3577 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3578 = sext i32 %3577 to i64
  %3579 = mul nsw i64 %3578, 24
  store i64 %3579, i64* %RCX.i2189, align 8
  %3580 = lshr i64 %3579, 63
  %3581 = load i64, i64* %RAX.i2220, align 8
  %3582 = add i64 %3579, %3581
  store i64 %3582, i64* %RAX.i2220, align 8
  %3583 = icmp ult i64 %3582, %3581
  %3584 = icmp ult i64 %3582, %3579
  %3585 = or i1 %3583, %3584
  %3586 = zext i1 %3585 to i8
  store i8 %3586, i8* %14, align 1
  %3587 = trunc i64 %3582 to i32
  %3588 = and i32 %3587, 255
  %3589 = tail call i32 @llvm.ctpop.i32(i32 %3588)
  %3590 = trunc i32 %3589 to i8
  %3591 = and i8 %3590, 1
  %3592 = xor i8 %3591, 1
  store i8 %3592, i8* %21, align 1
  %3593 = xor i64 %3579, %3581
  %3594 = xor i64 %3593, %3582
  %3595 = lshr i64 %3594, 4
  %3596 = trunc i64 %3595 to i8
  %3597 = and i8 %3596, 1
  store i8 %3597, i8* %26, align 1
  %3598 = icmp eq i64 %3582, 0
  %3599 = zext i1 %3598 to i8
  store i8 %3599, i8* %29, align 1
  %3600 = lshr i64 %3582, 63
  %3601 = trunc i64 %3600 to i8
  store i8 %3601, i8* %32, align 1
  %3602 = lshr i64 %3581, 63
  %3603 = xor i64 %3600, %3602
  %3604 = xor i64 %3600, %3580
  %3605 = add nuw nsw i64 %3603, %3604
  %3606 = icmp eq i64 %3605, 2
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %38, align 1
  %3608 = add i64 %3582, 12
  %3609 = add i64 %3536, 52
  store i64 %3609, i64* %3, align 8
  %3610 = inttoptr i64 %3608 to i32*
  %3611 = load i32, i32* %3610, align 4
  %3612 = sub i32 %3575, %3611
  %3613 = icmp ult i32 %3575, %3611
  %3614 = zext i1 %3613 to i8
  store i8 %3614, i8* %14, align 1
  %3615 = and i32 %3612, 255
  %3616 = tail call i32 @llvm.ctpop.i32(i32 %3615)
  %3617 = trunc i32 %3616 to i8
  %3618 = and i8 %3617, 1
  %3619 = xor i8 %3618, 1
  store i8 %3619, i8* %21, align 1
  %3620 = xor i32 %3611, %3575
  %3621 = xor i32 %3620, %3612
  %3622 = lshr i32 %3621, 4
  %3623 = trunc i32 %3622 to i8
  %3624 = and i8 %3623, 1
  store i8 %3624, i8* %26, align 1
  %3625 = icmp eq i32 %3612, 0
  %3626 = zext i1 %3625 to i8
  store i8 %3626, i8* %29, align 1
  %3627 = lshr i32 %3612, 31
  %3628 = trunc i32 %3627 to i8
  store i8 %3628, i8* %32, align 1
  %3629 = lshr i32 %3575, 31
  %3630 = lshr i32 %3611, 31
  %3631 = xor i32 %3630, %3629
  %3632 = xor i32 %3627, %3629
  %3633 = add nuw nsw i32 %3632, %3631
  %3634 = icmp eq i32 %3633, 2
  %3635 = zext i1 %3634 to i8
  store i8 %3635, i8* %38, align 1
  %.v174 = select i1 %3625, i64 58, i64 88
  %3636 = add i64 %3536, %.v174
  store i64 %3636, i64* %3, align 8
  br i1 %3625, label %block_41a120, label %block_.L_41a13e

block_41a120:                                     ; preds = %block_41a0e6
  %3637 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3638 = sext i32 %3637 to i64
  store i64 %3638, i64* %RAX.i2220, align 8
  %3639 = shl nsw i64 %3638, 2
  %3640 = add nsw i64 %3639, 6481200
  %3641 = add i64 %3636, 15
  store i64 %3641, i64* %3, align 8
  %3642 = inttoptr i64 %3640 to i32*
  %3643 = load i32, i32* %3642, align 4
  %3644 = add i32 %3643, 1
  %3645 = zext i32 %3644 to i64
  store i64 %3645, i64* %RCX.i2189, align 8
  %3646 = icmp eq i32 %3643, -1
  %3647 = icmp eq i32 %3644, 0
  %3648 = or i1 %3646, %3647
  %3649 = zext i1 %3648 to i8
  store i8 %3649, i8* %14, align 1
  %3650 = and i32 %3644, 255
  %3651 = tail call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  store i8 %3654, i8* %21, align 1
  %3655 = xor i32 %3644, %3643
  %3656 = lshr i32 %3655, 4
  %3657 = trunc i32 %3656 to i8
  %3658 = and i8 %3657, 1
  store i8 %3658, i8* %26, align 1
  %3659 = zext i1 %3647 to i8
  store i8 %3659, i8* %29, align 1
  %3660 = lshr i32 %3644, 31
  %3661 = trunc i32 %3660 to i8
  store i8 %3661, i8* %32, align 1
  %3662 = lshr i32 %3643, 31
  %3663 = xor i32 %3660, %3662
  %3664 = add nuw nsw i32 %3663, %3660
  %3665 = icmp eq i32 %3664, 2
  %3666 = zext i1 %3665 to i8
  store i8 %3666, i8* %38, align 1
  %3667 = add i64 %3636, 25
  store i64 %3667, i64* %3, align 8
  store i32 %3644, i32* %3642, align 4
  %3668 = load i64, i64* %3, align 8
  %3669 = add i64 %3668, 1066
  br label %block_.L_41a563

block_.L_41a13e:                                  ; preds = %block_41a0e6, %block_41a0ac, %block_41a074
  %3670 = phi i64 [ %3636, %block_41a0e6 ], [ %3536, %block_41a0ac ], [ %3436, %block_41a074 ]
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i2220, align 8
  %3671 = load i64, i64* %RBP.i, align 8
  %3672 = add i64 %3671, -12304
  store i64 %3672, i64* %RCX.i2189, align 8
  %3673 = add i64 %3671, -12336
  %3674 = add i64 %3670, 24
  store i64 %3674, i64* %3, align 8
  %3675 = inttoptr i64 %3673 to i32*
  %3676 = load i32, i32* %3675, align 4
  %3677 = sext i32 %3676 to i64
  %3678 = mul nsw i64 %3677, 24
  store i64 %3678, i64* %RDX.i2117, align 8
  %3679 = lshr i64 %3678, 63
  %3680 = add i64 %3678, %3672
  store i64 %3680, i64* %RCX.i2189, align 8
  %3681 = icmp ult i64 %3680, %3672
  %3682 = icmp ult i64 %3680, %3678
  %3683 = or i1 %3681, %3682
  %3684 = zext i1 %3683 to i8
  store i8 %3684, i8* %14, align 1
  %3685 = trunc i64 %3680 to i32
  %3686 = and i32 %3685, 255
  %3687 = tail call i32 @llvm.ctpop.i32(i32 %3686)
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  store i8 %3690, i8* %21, align 1
  %3691 = xor i64 %3678, %3672
  %3692 = xor i64 %3691, %3680
  %3693 = lshr i64 %3692, 4
  %3694 = trunc i64 %3693 to i8
  %3695 = and i8 %3694, 1
  store i8 %3695, i8* %26, align 1
  %3696 = icmp eq i64 %3680, 0
  %3697 = zext i1 %3696 to i8
  store i8 %3697, i8* %29, align 1
  %3698 = lshr i64 %3680, 63
  %3699 = trunc i64 %3698 to i8
  store i8 %3699, i8* %32, align 1
  %3700 = lshr i64 %3672, 63
  %3701 = xor i64 %3698, %3700
  %3702 = xor i64 %3698, %3679
  %3703 = add nuw nsw i64 %3701, %3702
  %3704 = icmp eq i64 %3703, 2
  %3705 = zext i1 %3704 to i8
  store i8 %3705, i8* %38, align 1
  %3706 = inttoptr i64 %3680 to i32*
  %3707 = add i64 %3670, 33
  store i64 %3707, i64* %3, align 8
  %3708 = load i32, i32* %3706, align 4
  %3709 = zext i32 %3708 to i64
  store i64 %3709, i64* %RSI.i1919, align 8
  %3710 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3711 = sext i32 %3710 to i64
  %3712 = mul nsw i64 %3711, 24
  store i64 %3712, i64* %RCX.i2189, align 8
  %3713 = lshr i64 %3712, 63
  %3714 = load i64, i64* %RAX.i2220, align 8
  %3715 = add i64 %3712, %3714
  store i64 %3715, i64* %RAX.i2220, align 8
  %3716 = icmp ult i64 %3715, %3714
  %3717 = icmp ult i64 %3715, %3712
  %3718 = or i1 %3716, %3717
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %14, align 1
  %3720 = trunc i64 %3715 to i32
  %3721 = and i32 %3720, 255
  %3722 = tail call i32 @llvm.ctpop.i32(i32 %3721)
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  %3725 = xor i8 %3724, 1
  store i8 %3725, i8* %21, align 1
  %3726 = xor i64 %3712, %3714
  %3727 = xor i64 %3726, %3715
  %3728 = lshr i64 %3727, 4
  %3729 = trunc i64 %3728 to i8
  %3730 = and i8 %3729, 1
  store i8 %3730, i8* %26, align 1
  %3731 = icmp eq i64 %3715, 0
  %3732 = zext i1 %3731 to i8
  store i8 %3732, i8* %29, align 1
  %3733 = lshr i64 %3715, 63
  %3734 = trunc i64 %3733 to i8
  store i8 %3734, i8* %32, align 1
  %3735 = lshr i64 %3714, 63
  %3736 = xor i64 %3733, %3735
  %3737 = xor i64 %3733, %3713
  %3738 = add nuw nsw i64 %3736, %3737
  %3739 = icmp eq i64 %3738, 2
  %3740 = zext i1 %3739 to i8
  store i8 %3740, i8* %38, align 1
  %3741 = inttoptr i64 %3715 to i32*
  %3742 = add i64 %3670, 50
  store i64 %3742, i64* %3, align 8
  %3743 = load i32, i32* %3741, align 4
  %3744 = sub i32 %3708, %3743
  %3745 = icmp ult i32 %3708, %3743
  %3746 = zext i1 %3745 to i8
  store i8 %3746, i8* %14, align 1
  %3747 = and i32 %3744, 255
  %3748 = tail call i32 @llvm.ctpop.i32(i32 %3747)
  %3749 = trunc i32 %3748 to i8
  %3750 = and i8 %3749, 1
  %3751 = xor i8 %3750, 1
  store i8 %3751, i8* %21, align 1
  %3752 = xor i32 %3743, %3708
  %3753 = xor i32 %3752, %3744
  %3754 = lshr i32 %3753, 4
  %3755 = trunc i32 %3754 to i8
  %3756 = and i8 %3755, 1
  store i8 %3756, i8* %26, align 1
  %3757 = icmp eq i32 %3744, 0
  %3758 = zext i1 %3757 to i8
  store i8 %3758, i8* %29, align 1
  %3759 = lshr i32 %3744, 31
  %3760 = trunc i32 %3759 to i8
  store i8 %3760, i8* %32, align 1
  %3761 = lshr i32 %3708, 31
  %3762 = lshr i32 %3743, 31
  %3763 = xor i32 %3762, %3761
  %3764 = xor i32 %3759, %3761
  %3765 = add nuw nsw i32 %3764, %3763
  %3766 = icmp eq i32 %3765, 2
  %3767 = zext i1 %3766 to i8
  store i8 %3767, i8* %38, align 1
  %.v160 = select i1 %3757, i64 56, i64 482
  %3768 = add i64 %3670, %.v160
  store i64 %3768, i64* %3, align 8
  br i1 %3757, label %block_41a176, label %block_.L_41a320

block_41a176:                                     ; preds = %block_.L_41a13e
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i2220, align 8
  %3769 = load i64, i64* %RBP.i, align 8
  %3770 = add i64 %3769, -12304
  store i64 %3770, i64* %RCX.i2189, align 8
  %3771 = add i64 %3769, -12336
  %3772 = add i64 %3768, 24
  store i64 %3772, i64* %3, align 8
  %3773 = inttoptr i64 %3771 to i32*
  %3774 = load i32, i32* %3773, align 4
  %3775 = sext i32 %3774 to i64
  %3776 = mul nsw i64 %3775, 24
  store i64 %3776, i64* %RDX.i2117, align 8
  %3777 = lshr i64 %3776, 63
  %3778 = add i64 %3776, %3770
  store i64 %3778, i64* %RCX.i2189, align 8
  %3779 = icmp ult i64 %3778, %3770
  %3780 = icmp ult i64 %3778, %3776
  %3781 = or i1 %3779, %3780
  %3782 = zext i1 %3781 to i8
  store i8 %3782, i8* %14, align 1
  %3783 = trunc i64 %3778 to i32
  %3784 = and i32 %3783, 255
  %3785 = tail call i32 @llvm.ctpop.i32(i32 %3784)
  %3786 = trunc i32 %3785 to i8
  %3787 = and i8 %3786, 1
  %3788 = xor i8 %3787, 1
  store i8 %3788, i8* %21, align 1
  %3789 = xor i64 %3776, %3770
  %3790 = xor i64 %3789, %3778
  %3791 = lshr i64 %3790, 4
  %3792 = trunc i64 %3791 to i8
  %3793 = and i8 %3792, 1
  store i8 %3793, i8* %26, align 1
  %3794 = icmp eq i64 %3778, 0
  %3795 = zext i1 %3794 to i8
  store i8 %3795, i8* %29, align 1
  %3796 = lshr i64 %3778, 63
  %3797 = trunc i64 %3796 to i8
  store i8 %3797, i8* %32, align 1
  %3798 = lshr i64 %3770, 63
  %3799 = xor i64 %3796, %3798
  %3800 = xor i64 %3796, %3777
  %3801 = add nuw nsw i64 %3799, %3800
  %3802 = icmp eq i64 %3801, 2
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %38, align 1
  %3804 = add i64 %3778, 4
  %3805 = add i64 %3768, 34
  store i64 %3805, i64* %3, align 8
  %3806 = inttoptr i64 %3804 to i32*
  %3807 = load i32, i32* %3806, align 4
  %3808 = zext i32 %3807 to i64
  store i64 %3808, i64* %RSI.i1919, align 8
  %3809 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3810 = sext i32 %3809 to i64
  %3811 = mul nsw i64 %3810, 24
  store i64 %3811, i64* %RCX.i2189, align 8
  %3812 = lshr i64 %3811, 63
  %3813 = load i64, i64* %RAX.i2220, align 8
  %3814 = add i64 %3811, %3813
  store i64 %3814, i64* %RAX.i2220, align 8
  %3815 = icmp ult i64 %3814, %3813
  %3816 = icmp ult i64 %3814, %3811
  %3817 = or i1 %3815, %3816
  %3818 = zext i1 %3817 to i8
  store i8 %3818, i8* %14, align 1
  %3819 = trunc i64 %3814 to i32
  %3820 = and i32 %3819, 255
  %3821 = tail call i32 @llvm.ctpop.i32(i32 %3820)
  %3822 = trunc i32 %3821 to i8
  %3823 = and i8 %3822, 1
  %3824 = xor i8 %3823, 1
  store i8 %3824, i8* %21, align 1
  %3825 = xor i64 %3811, %3813
  %3826 = xor i64 %3825, %3814
  %3827 = lshr i64 %3826, 4
  %3828 = trunc i64 %3827 to i8
  %3829 = and i8 %3828, 1
  store i8 %3829, i8* %26, align 1
  %3830 = icmp eq i64 %3814, 0
  %3831 = zext i1 %3830 to i8
  store i8 %3831, i8* %29, align 1
  %3832 = lshr i64 %3814, 63
  %3833 = trunc i64 %3832 to i8
  store i8 %3833, i8* %32, align 1
  %3834 = lshr i64 %3813, 63
  %3835 = xor i64 %3832, %3834
  %3836 = xor i64 %3832, %3812
  %3837 = add nuw nsw i64 %3835, %3836
  %3838 = icmp eq i64 %3837, 2
  %3839 = zext i1 %3838 to i8
  store i8 %3839, i8* %38, align 1
  %3840 = add i64 %3814, 4
  %3841 = add i64 %3768, 52
  store i64 %3841, i64* %3, align 8
  %3842 = inttoptr i64 %3840 to i32*
  %3843 = load i32, i32* %3842, align 4
  %3844 = sub i32 %3807, %3843
  %3845 = icmp ult i32 %3807, %3843
  %3846 = zext i1 %3845 to i8
  store i8 %3846, i8* %14, align 1
  %3847 = and i32 %3844, 255
  %3848 = tail call i32 @llvm.ctpop.i32(i32 %3847)
  %3849 = trunc i32 %3848 to i8
  %3850 = and i8 %3849, 1
  %3851 = xor i8 %3850, 1
  store i8 %3851, i8* %21, align 1
  %3852 = xor i32 %3843, %3807
  %3853 = xor i32 %3852, %3844
  %3854 = lshr i32 %3853, 4
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  store i8 %3856, i8* %26, align 1
  %3857 = icmp eq i32 %3844, 0
  %3858 = zext i1 %3857 to i8
  store i8 %3858, i8* %29, align 1
  %3859 = lshr i32 %3844, 31
  %3860 = trunc i32 %3859 to i8
  store i8 %3860, i8* %32, align 1
  %3861 = lshr i32 %3807, 31
  %3862 = lshr i32 %3843, 31
  %3863 = xor i32 %3862, %3861
  %3864 = xor i32 %3859, %3861
  %3865 = add nuw nsw i32 %3864, %3863
  %3866 = icmp eq i32 %3865, 2
  %3867 = zext i1 %3866 to i8
  store i8 %3867, i8* %38, align 1
  %.v170 = select i1 %3857, i64 58, i64 426
  %3868 = add i64 %3768, %.v170
  store i64 %3868, i64* %3, align 8
  br i1 %3857, label %block_41a1b0, label %block_.L_41a320

block_41a1b0:                                     ; preds = %block_41a176
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i2220, align 8
  %3869 = load i64, i64* %RBP.i, align 8
  %3870 = add i64 %3869, -12304
  store i64 %3870, i64* %RCX.i2189, align 8
  %3871 = add i64 %3869, -12336
  %3872 = add i64 %3868, 24
  store i64 %3872, i64* %3, align 8
  %3873 = inttoptr i64 %3871 to i32*
  %3874 = load i32, i32* %3873, align 4
  %3875 = sext i32 %3874 to i64
  %3876 = mul nsw i64 %3875, 24
  store i64 %3876, i64* %RDX.i2117, align 8
  %3877 = lshr i64 %3876, 63
  %3878 = add i64 %3876, %3870
  store i64 %3878, i64* %RCX.i2189, align 8
  %3879 = icmp ult i64 %3878, %3870
  %3880 = icmp ult i64 %3878, %3876
  %3881 = or i1 %3879, %3880
  %3882 = zext i1 %3881 to i8
  store i8 %3882, i8* %14, align 1
  %3883 = trunc i64 %3878 to i32
  %3884 = and i32 %3883, 255
  %3885 = tail call i32 @llvm.ctpop.i32(i32 %3884)
  %3886 = trunc i32 %3885 to i8
  %3887 = and i8 %3886, 1
  %3888 = xor i8 %3887, 1
  store i8 %3888, i8* %21, align 1
  %3889 = xor i64 %3876, %3870
  %3890 = xor i64 %3889, %3878
  %3891 = lshr i64 %3890, 4
  %3892 = trunc i64 %3891 to i8
  %3893 = and i8 %3892, 1
  store i8 %3893, i8* %26, align 1
  %3894 = icmp eq i64 %3878, 0
  %3895 = zext i1 %3894 to i8
  store i8 %3895, i8* %29, align 1
  %3896 = lshr i64 %3878, 63
  %3897 = trunc i64 %3896 to i8
  store i8 %3897, i8* %32, align 1
  %3898 = lshr i64 %3870, 63
  %3899 = xor i64 %3896, %3898
  %3900 = xor i64 %3896, %3877
  %3901 = add nuw nsw i64 %3899, %3900
  %3902 = icmp eq i64 %3901, 2
  %3903 = zext i1 %3902 to i8
  store i8 %3903, i8* %38, align 1
  %3904 = add i64 %3878, 12
  %3905 = add i64 %3868, 34
  store i64 %3905, i64* %3, align 8
  %3906 = inttoptr i64 %3904 to i32*
  %3907 = load i32, i32* %3906, align 4
  %3908 = zext i32 %3907 to i64
  store i64 %3908, i64* %RSI.i1919, align 8
  %3909 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3910 = sext i32 %3909 to i64
  %3911 = mul nsw i64 %3910, 24
  store i64 %3911, i64* %RCX.i2189, align 8
  %3912 = lshr i64 %3911, 63
  %3913 = load i64, i64* %RAX.i2220, align 8
  %3914 = add i64 %3911, %3913
  store i64 %3914, i64* %RAX.i2220, align 8
  %3915 = icmp ult i64 %3914, %3913
  %3916 = icmp ult i64 %3914, %3911
  %3917 = or i1 %3915, %3916
  %3918 = zext i1 %3917 to i8
  store i8 %3918, i8* %14, align 1
  %3919 = trunc i64 %3914 to i32
  %3920 = and i32 %3919, 255
  %3921 = tail call i32 @llvm.ctpop.i32(i32 %3920)
  %3922 = trunc i32 %3921 to i8
  %3923 = and i8 %3922, 1
  %3924 = xor i8 %3923, 1
  store i8 %3924, i8* %21, align 1
  %3925 = xor i64 %3911, %3913
  %3926 = xor i64 %3925, %3914
  %3927 = lshr i64 %3926, 4
  %3928 = trunc i64 %3927 to i8
  %3929 = and i8 %3928, 1
  store i8 %3929, i8* %26, align 1
  %3930 = icmp eq i64 %3914, 0
  %3931 = zext i1 %3930 to i8
  store i8 %3931, i8* %29, align 1
  %3932 = lshr i64 %3914, 63
  %3933 = trunc i64 %3932 to i8
  store i8 %3933, i8* %32, align 1
  %3934 = lshr i64 %3913, 63
  %3935 = xor i64 %3932, %3934
  %3936 = xor i64 %3932, %3912
  %3937 = add nuw nsw i64 %3935, %3936
  %3938 = icmp eq i64 %3937, 2
  %3939 = zext i1 %3938 to i8
  store i8 %3939, i8* %38, align 1
  %3940 = add i64 %3914, 12
  %3941 = add i64 %3868, 52
  store i64 %3941, i64* %3, align 8
  %3942 = inttoptr i64 %3940 to i32*
  %3943 = load i32, i32* %3942, align 4
  %3944 = sub i32 %3907, %3943
  %3945 = icmp ult i32 %3907, %3943
  %3946 = zext i1 %3945 to i8
  store i8 %3946, i8* %14, align 1
  %3947 = and i32 %3944, 255
  %3948 = tail call i32 @llvm.ctpop.i32(i32 %3947)
  %3949 = trunc i32 %3948 to i8
  %3950 = and i8 %3949, 1
  %3951 = xor i8 %3950, 1
  store i8 %3951, i8* %21, align 1
  %3952 = xor i32 %3943, %3907
  %3953 = xor i32 %3952, %3944
  %3954 = lshr i32 %3953, 4
  %3955 = trunc i32 %3954 to i8
  %3956 = and i8 %3955, 1
  store i8 %3956, i8* %26, align 1
  %3957 = icmp eq i32 %3944, 0
  %3958 = zext i1 %3957 to i8
  store i8 %3958, i8* %29, align 1
  %3959 = lshr i32 %3944, 31
  %3960 = trunc i32 %3959 to i8
  store i8 %3960, i8* %32, align 1
  %3961 = lshr i32 %3907, 31
  %3962 = lshr i32 %3943, 31
  %3963 = xor i32 %3962, %3961
  %3964 = xor i32 %3959, %3961
  %3965 = add nuw nsw i32 %3964, %3963
  %3966 = icmp eq i32 %3965, 2
  %3967 = zext i1 %3966 to i8
  store i8 %3967, i8* %38, align 1
  %.v171 = select i1 %3957, i64 58, i64 368
  %3968 = add i64 %3868, %.v171
  store i64 %3968, i64* %3, align 8
  br i1 %3957, label %block_41a1ea, label %block_.L_41a320

block_41a1ea:                                     ; preds = %block_41a1b0
  %3969 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %3970 = sext i32 %3969 to i64
  store i64 %3970, i64* %RAX.i2220, align 8
  %3971 = shl nsw i64 %3970, 2
  %3972 = add nsw i64 %3971, 6524000
  %3973 = add i64 %3968, 15
  store i64 %3973, i64* %3, align 8
  %3974 = inttoptr i64 %3972 to i32*
  %3975 = load i32, i32* %3974, align 4
  %3976 = add i32 %3975, 1
  %3977 = zext i32 %3976 to i64
  store i64 %3977, i64* %RCX.i2189, align 8
  %3978 = icmp eq i32 %3975, -1
  %3979 = icmp eq i32 %3976, 0
  %3980 = or i1 %3978, %3979
  %3981 = zext i1 %3980 to i8
  store i8 %3981, i8* %14, align 1
  %3982 = and i32 %3976, 255
  %3983 = tail call i32 @llvm.ctpop.i32(i32 %3982)
  %3984 = trunc i32 %3983 to i8
  %3985 = and i8 %3984, 1
  %3986 = xor i8 %3985, 1
  store i8 %3986, i8* %21, align 1
  %3987 = xor i32 %3976, %3975
  %3988 = lshr i32 %3987, 4
  %3989 = trunc i32 %3988 to i8
  %3990 = and i8 %3989, 1
  store i8 %3990, i8* %26, align 1
  %3991 = zext i1 %3979 to i8
  store i8 %3991, i8* %29, align 1
  %3992 = lshr i32 %3976, 31
  %3993 = trunc i32 %3992 to i8
  store i8 %3993, i8* %32, align 1
  %3994 = lshr i32 %3975, 31
  %3995 = xor i32 %3992, %3994
  %3996 = add nuw nsw i32 %3995, %3992
  %3997 = icmp eq i32 %3996, 2
  %3998 = zext i1 %3997 to i8
  store i8 %3998, i8* %38, align 1
  %3999 = add i64 %3968, 25
  store i64 %3999, i64* %3, align 8
  store i32 %3976, i32* %3974, align 4
  %4000 = load i64, i64* %3, align 8
  %4001 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4002 = sext i32 %4001 to i64
  store i64 %4002, i64* %RAX.i2220, align 8
  %4003 = shl nsw i64 %4002, 2
  %4004 = add nsw i64 %4003, 6524000
  %4005 = add i64 %4000, 15
  store i64 %4005, i64* %3, align 8
  %4006 = inttoptr i64 %4004 to i32*
  %4007 = load i32, i32* %4006, align 4
  %4008 = zext i32 %4007 to i64
  store i64 %4008, i64* %RCX.i2189, align 8
  store i64 %4002, i64* %RAX.i2220, align 8
  %4009 = add nsw i64 %4003, 6481200
  %4010 = add i64 %4000, 30
  store i64 %4010, i64* %3, align 8
  %4011 = inttoptr i64 %4009 to i32*
  %4012 = load i32, i32* %4011, align 4
  %4013 = sub i32 %4007, %4012
  %4014 = icmp ult i32 %4007, %4012
  %4015 = zext i1 %4014 to i8
  store i8 %4015, i8* %14, align 1
  %4016 = and i32 %4013, 255
  %4017 = tail call i32 @llvm.ctpop.i32(i32 %4016)
  %4018 = trunc i32 %4017 to i8
  %4019 = and i8 %4018, 1
  %4020 = xor i8 %4019, 1
  store i8 %4020, i8* %21, align 1
  %4021 = xor i32 %4012, %4007
  %4022 = xor i32 %4021, %4013
  %4023 = lshr i32 %4022, 4
  %4024 = trunc i32 %4023 to i8
  %4025 = and i8 %4024, 1
  store i8 %4025, i8* %26, align 1
  %4026 = icmp eq i32 %4013, 0
  %4027 = zext i1 %4026 to i8
  store i8 %4027, i8* %29, align 1
  %4028 = lshr i32 %4013, 31
  %4029 = trunc i32 %4028 to i8
  store i8 %4029, i8* %32, align 1
  %4030 = lshr i32 %4007, 31
  %4031 = lshr i32 %4012, 31
  %4032 = xor i32 %4031, %4030
  %4033 = xor i32 %4028, %4030
  %4034 = add nuw nsw i32 %4033, %4032
  %4035 = icmp eq i32 %4034, 2
  %4036 = zext i1 %4035 to i8
  store i8 %4036, i8* %38, align 1
  %4037 = icmp ne i8 %4029, 0
  %4038 = xor i1 %4037, %4035
  %4039 = or i1 %4026, %4038
  %.v172 = select i1 %4039, i64 280, i64 36
  %4040 = add i64 %4000, %.v172
  store i64 %4040, i64* %3, align 8
  br i1 %4039, label %block_.L_41a31b, label %block_41a227

block_41a227:                                     ; preds = %block_41a1ea
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX.i2220, align 8
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RCX.i2189, align 8
  %4041 = mul nsw i64 %4002, 24
  store i64 %4041, i64* %RDX.i2117, align 8
  %4042 = lshr i64 %4041, 63
  %4043 = add i64 %4041, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  store i64 %4043, i64* %RSI.i1919, align 8
  %4044 = icmp ult i64 %4043, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %4045 = icmp ult i64 %4043, %4041
  %4046 = or i1 %4044, %4045
  %4047 = zext i1 %4046 to i8
  store i8 %4047, i8* %14, align 1
  %4048 = trunc i64 %4043 to i32
  %4049 = and i32 %4048, 248
  %4050 = tail call i32 @llvm.ctpop.i32(i32 %4049)
  %4051 = trunc i32 %4050 to i8
  %4052 = and i8 %4051, 1
  %4053 = xor i8 %4052, 1
  store i8 %4053, i8* %21, align 1
  %4054 = xor i64 %4041, ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64)
  %4055 = xor i64 %4054, %4043
  %4056 = lshr i64 %4055, 4
  %4057 = trunc i64 %4056 to i8
  %4058 = and i8 %4057, 1
  store i8 %4058, i8* %26, align 1
  %4059 = icmp eq i64 %4043, 0
  %4060 = zext i1 %4059 to i8
  store i8 %4060, i8* %29, align 1
  %4061 = lshr i64 %4043, 63
  %4062 = trunc i64 %4061 to i8
  store i8 %4062, i8* %32, align 1
  %4063 = xor i64 %4061, lshr (i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64 63)
  %4064 = xor i64 %4061, %4042
  %4065 = add nuw nsw i64 %4063, %4064
  %4066 = icmp eq i64 %4065, 2
  %4067 = zext i1 %4066 to i8
  store i8 %4067, i8* %38, align 1
  %4068 = inttoptr i64 %4043 to i64*
  %4069 = add i64 %4040, 41
  store i64 %4069, i64* %3, align 8
  %4070 = load i64, i64* %4068, align 8
  store i64 %4070, i64* %RDX.i2117, align 8
  %4071 = load i64, i64* %RBP.i, align 8
  %4072 = add i64 %4071, -16496
  %4073 = add i64 %4040, 48
  store i64 %4073, i64* %3, align 8
  %4074 = inttoptr i64 %4072 to i64*
  store i64 %4070, i64* %4074, align 8
  %4075 = load i64, i64* %RSI.i1919, align 8
  %4076 = add i64 %4075, 8
  %4077 = load i64, i64* %3, align 8
  %4078 = add i64 %4077, 4
  store i64 %4078, i64* %3, align 8
  %4079 = inttoptr i64 %4076 to i64*
  %4080 = load i64, i64* %4079, align 8
  store i64 %4080, i64* %RDX.i2117, align 8
  %4081 = load i64, i64* %RBP.i, align 8
  %4082 = add i64 %4081, -16488
  %4083 = add i64 %4077, 11
  store i64 %4083, i64* %3, align 8
  %4084 = inttoptr i64 %4082 to i64*
  store i64 %4080, i64* %4084, align 8
  %4085 = load i64, i64* %RSI.i1919, align 8
  %4086 = add i64 %4085, 16
  %4087 = load i64, i64* %3, align 8
  %4088 = add i64 %4087, 4
  store i64 %4088, i64* %3, align 8
  %4089 = inttoptr i64 %4086 to i64*
  %4090 = load i64, i64* %4089, align 8
  %4091 = load i64, i64* %RBP.i, align 8
  %4092 = add i64 %4091, -16480
  %4093 = add i64 %4087, 11
  store i64 %4093, i64* %3, align 8
  %4094 = inttoptr i64 %4092 to i64*
  store i64 %4090, i64* %4094, align 8
  %4095 = load i64, i64* %3, align 8
  %4096 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4097 = sext i32 %4096 to i64
  %4098 = mul nsw i64 %4097, 24
  %4099 = lshr i64 %4098, 63
  %4100 = load i64, i64* %RCX.i2189, align 8
  %4101 = add i64 %4098, %4100
  store i64 %4101, i64* %RCX.i2189, align 8
  store i64 %4098, i64* %RDX.i2117, align 8
  %4102 = load i64, i64* %RAX.i2220, align 8
  %4103 = add i64 %4098, %4102
  store i64 %4103, i64* %RSI.i1919, align 8
  %4104 = icmp ult i64 %4103, %4102
  %4105 = icmp ult i64 %4103, %4098
  %4106 = or i1 %4104, %4105
  %4107 = zext i1 %4106 to i8
  store i8 %4107, i8* %14, align 1
  %4108 = trunc i64 %4103 to i32
  %4109 = and i32 %4108, 255
  %4110 = tail call i32 @llvm.ctpop.i32(i32 %4109)
  %4111 = trunc i32 %4110 to i8
  %4112 = and i8 %4111, 1
  %4113 = xor i8 %4112, 1
  store i8 %4113, i8* %21, align 1
  %4114 = xor i64 %4098, %4102
  %4115 = xor i64 %4114, %4103
  %4116 = lshr i64 %4115, 4
  %4117 = trunc i64 %4116 to i8
  %4118 = and i8 %4117, 1
  store i8 %4118, i8* %26, align 1
  %4119 = icmp eq i64 %4103, 0
  %4120 = zext i1 %4119 to i8
  store i8 %4120, i8* %29, align 1
  %4121 = lshr i64 %4103, 63
  %4122 = trunc i64 %4121 to i8
  store i8 %4122, i8* %32, align 1
  %4123 = lshr i64 %4102, 63
  %4124 = xor i64 %4121, %4123
  %4125 = xor i64 %4121, %4099
  %4126 = add nuw nsw i64 %4124, %4125
  %4127 = icmp eq i64 %4126, 2
  %4128 = zext i1 %4127 to i8
  store i8 %4128, i8* %38, align 1
  %4129 = inttoptr i64 %4103 to i64*
  %4130 = add i64 %4095, 36
  store i64 %4130, i64* %3, align 8
  %4131 = load i64, i64* %4129, align 8
  store i64 %4131, i64* %RDX.i2117, align 8
  %4132 = inttoptr i64 %4101 to i64*
  %4133 = add i64 %4095, 39
  store i64 %4133, i64* %3, align 8
  store i64 %4131, i64* %4132, align 8
  %4134 = load i64, i64* %RSI.i1919, align 8
  %4135 = add i64 %4134, 8
  %4136 = load i64, i64* %3, align 8
  %4137 = add i64 %4136, 4
  store i64 %4137, i64* %3, align 8
  %4138 = inttoptr i64 %4135 to i64*
  %4139 = load i64, i64* %4138, align 8
  store i64 %4139, i64* %RDX.i2117, align 8
  %4140 = load i64, i64* %RCX.i2189, align 8
  %4141 = add i64 %4140, 8
  %4142 = add i64 %4136, 8
  store i64 %4142, i64* %3, align 8
  %4143 = inttoptr i64 %4141 to i64*
  store i64 %4139, i64* %4143, align 8
  %4144 = load i64, i64* %RSI.i1919, align 8
  %4145 = add i64 %4144, 16
  %4146 = load i64, i64* %3, align 8
  %4147 = add i64 %4146, 4
  store i64 %4147, i64* %3, align 8
  %4148 = inttoptr i64 %4145 to i64*
  %4149 = load i64, i64* %4148, align 8
  store i64 %4149, i64* %RDX.i2117, align 8
  %4150 = load i64, i64* %RCX.i2189, align 8
  %4151 = add i64 %4150, 16
  %4152 = add i64 %4146, 8
  store i64 %4152, i64* %3, align 8
  %4153 = inttoptr i64 %4151 to i64*
  store i64 %4149, i64* %4153, align 8
  %4154 = load i64, i64* %3, align 8
  %4155 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4156 = sext i32 %4155 to i64
  %4157 = mul nsw i64 %4156, 24
  store i64 %4157, i64* %RCX.i2189, align 8
  %4158 = lshr i64 %4157, 63
  %4159 = load i64, i64* %RAX.i2220, align 8
  %4160 = add i64 %4157, %4159
  store i64 %4160, i64* %RAX.i2220, align 8
  %4161 = icmp ult i64 %4160, %4159
  %4162 = icmp ult i64 %4160, %4157
  %4163 = or i1 %4161, %4162
  %4164 = zext i1 %4163 to i8
  store i8 %4164, i8* %14, align 1
  %4165 = trunc i64 %4160 to i32
  %4166 = and i32 %4165, 255
  %4167 = tail call i32 @llvm.ctpop.i32(i32 %4166)
  %4168 = trunc i32 %4167 to i8
  %4169 = and i8 %4168, 1
  %4170 = xor i8 %4169, 1
  store i8 %4170, i8* %21, align 1
  %4171 = xor i64 %4157, %4159
  %4172 = xor i64 %4171, %4160
  %4173 = lshr i64 %4172, 4
  %4174 = trunc i64 %4173 to i8
  %4175 = and i8 %4174, 1
  store i8 %4175, i8* %26, align 1
  %4176 = icmp eq i64 %4160, 0
  %4177 = zext i1 %4176 to i8
  store i8 %4177, i8* %29, align 1
  %4178 = lshr i64 %4160, 63
  %4179 = trunc i64 %4178 to i8
  store i8 %4179, i8* %32, align 1
  %4180 = lshr i64 %4159, 63
  %4181 = xor i64 %4178, %4180
  %4182 = xor i64 %4178, %4158
  %4183 = add nuw nsw i64 %4181, %4182
  %4184 = icmp eq i64 %4183, 2
  %4185 = zext i1 %4184 to i8
  store i8 %4185, i8* %38, align 1
  %4186 = load i64, i64* %RBP.i, align 8
  %4187 = add i64 %4186, -16496
  %4188 = add i64 %4154, 22
  store i64 %4188, i64* %3, align 8
  %4189 = inttoptr i64 %4187 to i64*
  %4190 = load i64, i64* %4189, align 8
  store i64 %4190, i64* %RCX.i2189, align 8
  %4191 = inttoptr i64 %4160 to i64*
  %4192 = add i64 %4154, 25
  store i64 %4192, i64* %3, align 8
  store i64 %4190, i64* %4191, align 8
  %4193 = load i64, i64* %RBP.i, align 8
  %4194 = add i64 %4193, -16488
  %4195 = load i64, i64* %3, align 8
  %4196 = add i64 %4195, 7
  store i64 %4196, i64* %3, align 8
  %4197 = inttoptr i64 %4194 to i64*
  %4198 = load i64, i64* %4197, align 8
  store i64 %4198, i64* %RCX.i2189, align 8
  %4199 = load i64, i64* %RAX.i2220, align 8
  %4200 = add i64 %4199, 8
  %4201 = add i64 %4195, 11
  store i64 %4201, i64* %3, align 8
  %4202 = inttoptr i64 %4200 to i64*
  store i64 %4198, i64* %4202, align 8
  %4203 = load i64, i64* %RBP.i, align 8
  %4204 = add i64 %4203, -16480
  %4205 = load i64, i64* %3, align 8
  %4206 = add i64 %4205, 7
  store i64 %4206, i64* %3, align 8
  %4207 = inttoptr i64 %4204 to i64*
  %4208 = load i64, i64* %4207, align 8
  store i64 %4208, i64* %RCX.i2189, align 8
  %4209 = load i64, i64* %RAX.i2220, align 8
  %4210 = add i64 %4209, 16
  %4211 = add i64 %4205, 11
  store i64 %4211, i64* %3, align 8
  %4212 = inttoptr i64 %4210 to i64*
  store i64 %4208, i64* %4212, align 8
  %4213 = load i64, i64* %3, align 8
  %4214 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4215 = sext i32 %4214 to i64
  store i64 %4215, i64* %RAX.i2220, align 8
  %4216 = shl nsw i64 %4215, 2
  %4217 = add nsw i64 %4216, 6481200
  %4218 = add i64 %4213, 15
  store i64 %4218, i64* %3, align 8
  %4219 = inttoptr i64 %4217 to i32*
  %4220 = load i32, i32* %4219, align 4
  %4221 = zext i32 %4220 to i64
  store i64 %4221, i64* %RDI.i2221, align 8
  %4222 = load i64, i64* %RBP.i, align 8
  %4223 = add i64 %4222, -16500
  %4224 = add i64 %4213, 21
  store i64 %4224, i64* %3, align 8
  %4225 = inttoptr i64 %4223 to i32*
  store i32 %4220, i32* %4225, align 4
  %4226 = load i64, i64* %3, align 8
  %4227 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4228 = sext i32 %4227 to i64
  store i64 %4228, i64* %RAX.i2220, align 8
  %4229 = shl nsw i64 %4228, 2
  %4230 = add nsw i64 %4229, 6524000
  %4231 = add i64 %4226, 15
  store i64 %4231, i64* %3, align 8
  %4232 = inttoptr i64 %4230 to i32*
  %4233 = load i32, i32* %4232, align 4
  %4234 = zext i32 %4233 to i64
  store i64 %4234, i64* %RDI.i2221, align 8
  store i64 %4228, i64* %RAX.i2220, align 8
  %4235 = add nsw i64 %4229, 6481200
  %4236 = add i64 %4226, 30
  store i64 %4236, i64* %3, align 8
  %4237 = inttoptr i64 %4235 to i32*
  store i32 %4233, i32* %4237, align 4
  %4238 = load i64, i64* %RBP.i, align 8
  %4239 = add i64 %4238, -16500
  %4240 = load i64, i64* %3, align 8
  %4241 = add i64 %4240, 6
  store i64 %4241, i64* %3, align 8
  %4242 = inttoptr i64 %4239 to i32*
  %4243 = load i32, i32* %4242, align 4
  %4244 = zext i32 %4243 to i64
  store i64 %4244, i64* %RDI.i2221, align 8
  %4245 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4246 = sext i32 %4245 to i64
  store i64 %4246, i64* %RAX.i2220, align 8
  %4247 = shl nsw i64 %4246, 2
  %4248 = add nsw i64 %4247, 6524000
  %4249 = add i64 %4240, 21
  store i64 %4249, i64* %3, align 8
  %4250 = inttoptr i64 %4248 to i32*
  store i32 %4243, i32* %4250, align 4
  %.pre122 = load i64, i64* %3, align 8
  br label %block_.L_41a31b

block_.L_41a31b:                                  ; preds = %block_41a227, %block_41a1ea
  %4251 = phi i64 [ %.pre122, %block_41a227 ], [ %4040, %block_41a1ea ]
  %4252 = add i64 %4251, 579
  br label %block_.L_41a55e

block_.L_41a320:                                  ; preds = %block_41a1b0, %block_41a176, %block_.L_41a13e
  %4253 = phi i64 [ %3968, %block_41a1b0 ], [ %3868, %block_41a176 ], [ %3768, %block_.L_41a13e ]
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i2220, align 8
  %4254 = load i64, i64* %RBP.i, align 8
  %4255 = add i64 %4254, -12304
  store i64 %4255, i64* %RCX.i2189, align 8
  %4256 = add i64 %4254, -12336
  %4257 = add i64 %4253, 24
  store i64 %4257, i64* %3, align 8
  %4258 = inttoptr i64 %4256 to i32*
  %4259 = load i32, i32* %4258, align 4
  %4260 = sext i32 %4259 to i64
  %4261 = mul nsw i64 %4260, 24
  store i64 %4261, i64* %RDX.i2117, align 8
  %4262 = lshr i64 %4261, 63
  %4263 = add i64 %4261, %4255
  store i64 %4263, i64* %RCX.i2189, align 8
  %4264 = icmp ult i64 %4263, %4255
  %4265 = icmp ult i64 %4263, %4261
  %4266 = or i1 %4264, %4265
  %4267 = zext i1 %4266 to i8
  store i8 %4267, i8* %14, align 1
  %4268 = trunc i64 %4263 to i32
  %4269 = and i32 %4268, 255
  %4270 = tail call i32 @llvm.ctpop.i32(i32 %4269)
  %4271 = trunc i32 %4270 to i8
  %4272 = and i8 %4271, 1
  %4273 = xor i8 %4272, 1
  store i8 %4273, i8* %21, align 1
  %4274 = xor i64 %4261, %4255
  %4275 = xor i64 %4274, %4263
  %4276 = lshr i64 %4275, 4
  %4277 = trunc i64 %4276 to i8
  %4278 = and i8 %4277, 1
  store i8 %4278, i8* %26, align 1
  %4279 = icmp eq i64 %4263, 0
  %4280 = zext i1 %4279 to i8
  store i8 %4280, i8* %29, align 1
  %4281 = lshr i64 %4263, 63
  %4282 = trunc i64 %4281 to i8
  store i8 %4282, i8* %32, align 1
  %4283 = lshr i64 %4255, 63
  %4284 = xor i64 %4281, %4283
  %4285 = xor i64 %4281, %4262
  %4286 = add nuw nsw i64 %4284, %4285
  %4287 = icmp eq i64 %4286, 2
  %4288 = zext i1 %4287 to i8
  store i8 %4288, i8* %38, align 1
  %4289 = inttoptr i64 %4263 to i32*
  %4290 = add i64 %4253, 33
  store i64 %4290, i64* %3, align 8
  %4291 = load i32, i32* %4289, align 4
  %4292 = zext i32 %4291 to i64
  store i64 %4292, i64* %RSI.i1919, align 8
  %4293 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4294 = sext i32 %4293 to i64
  %4295 = mul nsw i64 %4294, 24
  store i64 %4295, i64* %RCX.i2189, align 8
  %4296 = lshr i64 %4295, 63
  %4297 = load i64, i64* %RAX.i2220, align 8
  %4298 = add i64 %4295, %4297
  store i64 %4298, i64* %RAX.i2220, align 8
  %4299 = icmp ult i64 %4298, %4297
  %4300 = icmp ult i64 %4298, %4295
  %4301 = or i1 %4299, %4300
  %4302 = zext i1 %4301 to i8
  store i8 %4302, i8* %14, align 1
  %4303 = trunc i64 %4298 to i32
  %4304 = and i32 %4303, 255
  %4305 = tail call i32 @llvm.ctpop.i32(i32 %4304)
  %4306 = trunc i32 %4305 to i8
  %4307 = and i8 %4306, 1
  %4308 = xor i8 %4307, 1
  store i8 %4308, i8* %21, align 1
  %4309 = xor i64 %4295, %4297
  %4310 = xor i64 %4309, %4298
  %4311 = lshr i64 %4310, 4
  %4312 = trunc i64 %4311 to i8
  %4313 = and i8 %4312, 1
  store i8 %4313, i8* %26, align 1
  %4314 = icmp eq i64 %4298, 0
  %4315 = zext i1 %4314 to i8
  store i8 %4315, i8* %29, align 1
  %4316 = lshr i64 %4298, 63
  %4317 = trunc i64 %4316 to i8
  store i8 %4317, i8* %32, align 1
  %4318 = lshr i64 %4297, 63
  %4319 = xor i64 %4316, %4318
  %4320 = xor i64 %4316, %4296
  %4321 = add nuw nsw i64 %4319, %4320
  %4322 = icmp eq i64 %4321, 2
  %4323 = zext i1 %4322 to i8
  store i8 %4323, i8* %38, align 1
  %4324 = inttoptr i64 %4298 to i32*
  %4325 = add i64 %4253, 50
  store i64 %4325, i64* %3, align 8
  %4326 = load i32, i32* %4324, align 4
  %4327 = sub i32 %4291, %4326
  %4328 = icmp ult i32 %4291, %4326
  %4329 = zext i1 %4328 to i8
  store i8 %4329, i8* %14, align 1
  %4330 = and i32 %4327, 255
  %4331 = tail call i32 @llvm.ctpop.i32(i32 %4330)
  %4332 = trunc i32 %4331 to i8
  %4333 = and i8 %4332, 1
  %4334 = xor i8 %4333, 1
  store i8 %4334, i8* %21, align 1
  %4335 = xor i32 %4326, %4291
  %4336 = xor i32 %4335, %4327
  %4337 = lshr i32 %4336, 4
  %4338 = trunc i32 %4337 to i8
  %4339 = and i8 %4338, 1
  store i8 %4339, i8* %26, align 1
  %4340 = icmp eq i32 %4327, 0
  %4341 = zext i1 %4340 to i8
  store i8 %4341, i8* %29, align 1
  %4342 = lshr i32 %4327, 31
  %4343 = trunc i32 %4342 to i8
  store i8 %4343, i8* %32, align 1
  %4344 = lshr i32 %4291, 31
  %4345 = lshr i32 %4326, 31
  %4346 = xor i32 %4345, %4344
  %4347 = xor i32 %4342, %4344
  %4348 = add nuw nsw i32 %4347, %4346
  %4349 = icmp eq i32 %4348, 2
  %4350 = zext i1 %4349 to i8
  store i8 %4350, i8* %38, align 1
  %.v161 = select i1 %4340, i64 56, i64 482
  %4351 = add i64 %4253, %.v161
  store i64 %4351, i64* %3, align 8
  br i1 %4340, label %block_41a358, label %block_.L_41a502

block_41a358:                                     ; preds = %block_.L_41a320
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i2220, align 8
  %4352 = load i64, i64* %RBP.i, align 8
  %4353 = add i64 %4352, -12304
  store i64 %4353, i64* %RCX.i2189, align 8
  %4354 = add i64 %4352, -12336
  %4355 = add i64 %4351, 24
  store i64 %4355, i64* %3, align 8
  %4356 = inttoptr i64 %4354 to i32*
  %4357 = load i32, i32* %4356, align 4
  %4358 = sext i32 %4357 to i64
  %4359 = mul nsw i64 %4358, 24
  store i64 %4359, i64* %RDX.i2117, align 8
  %4360 = lshr i64 %4359, 63
  %4361 = add i64 %4359, %4353
  store i64 %4361, i64* %RCX.i2189, align 8
  %4362 = icmp ult i64 %4361, %4353
  %4363 = icmp ult i64 %4361, %4359
  %4364 = or i1 %4362, %4363
  %4365 = zext i1 %4364 to i8
  store i8 %4365, i8* %14, align 1
  %4366 = trunc i64 %4361 to i32
  %4367 = and i32 %4366, 255
  %4368 = tail call i32 @llvm.ctpop.i32(i32 %4367)
  %4369 = trunc i32 %4368 to i8
  %4370 = and i8 %4369, 1
  %4371 = xor i8 %4370, 1
  store i8 %4371, i8* %21, align 1
  %4372 = xor i64 %4359, %4353
  %4373 = xor i64 %4372, %4361
  %4374 = lshr i64 %4373, 4
  %4375 = trunc i64 %4374 to i8
  %4376 = and i8 %4375, 1
  store i8 %4376, i8* %26, align 1
  %4377 = icmp eq i64 %4361, 0
  %4378 = zext i1 %4377 to i8
  store i8 %4378, i8* %29, align 1
  %4379 = lshr i64 %4361, 63
  %4380 = trunc i64 %4379 to i8
  store i8 %4380, i8* %32, align 1
  %4381 = lshr i64 %4353, 63
  %4382 = xor i64 %4379, %4381
  %4383 = xor i64 %4379, %4360
  %4384 = add nuw nsw i64 %4382, %4383
  %4385 = icmp eq i64 %4384, 2
  %4386 = zext i1 %4385 to i8
  store i8 %4386, i8* %38, align 1
  %4387 = add i64 %4361, 4
  %4388 = add i64 %4351, 34
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4387 to i32*
  %4390 = load i32, i32* %4389, align 4
  %4391 = zext i32 %4390 to i64
  store i64 %4391, i64* %RSI.i1919, align 8
  %4392 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4393 = sext i32 %4392 to i64
  %4394 = mul nsw i64 %4393, 24
  store i64 %4394, i64* %RCX.i2189, align 8
  %4395 = lshr i64 %4394, 63
  %4396 = load i64, i64* %RAX.i2220, align 8
  %4397 = add i64 %4394, %4396
  store i64 %4397, i64* %RAX.i2220, align 8
  %4398 = icmp ult i64 %4397, %4396
  %4399 = icmp ult i64 %4397, %4394
  %4400 = or i1 %4398, %4399
  %4401 = zext i1 %4400 to i8
  store i8 %4401, i8* %14, align 1
  %4402 = trunc i64 %4397 to i32
  %4403 = and i32 %4402, 255
  %4404 = tail call i32 @llvm.ctpop.i32(i32 %4403)
  %4405 = trunc i32 %4404 to i8
  %4406 = and i8 %4405, 1
  %4407 = xor i8 %4406, 1
  store i8 %4407, i8* %21, align 1
  %4408 = xor i64 %4394, %4396
  %4409 = xor i64 %4408, %4397
  %4410 = lshr i64 %4409, 4
  %4411 = trunc i64 %4410 to i8
  %4412 = and i8 %4411, 1
  store i8 %4412, i8* %26, align 1
  %4413 = icmp eq i64 %4397, 0
  %4414 = zext i1 %4413 to i8
  store i8 %4414, i8* %29, align 1
  %4415 = lshr i64 %4397, 63
  %4416 = trunc i64 %4415 to i8
  store i8 %4416, i8* %32, align 1
  %4417 = lshr i64 %4396, 63
  %4418 = xor i64 %4415, %4417
  %4419 = xor i64 %4415, %4395
  %4420 = add nuw nsw i64 %4418, %4419
  %4421 = icmp eq i64 %4420, 2
  %4422 = zext i1 %4421 to i8
  store i8 %4422, i8* %38, align 1
  %4423 = add i64 %4397, 4
  %4424 = add i64 %4351, 52
  store i64 %4424, i64* %3, align 8
  %4425 = inttoptr i64 %4423 to i32*
  %4426 = load i32, i32* %4425, align 4
  %4427 = sub i32 %4390, %4426
  %4428 = icmp ult i32 %4390, %4426
  %4429 = zext i1 %4428 to i8
  store i8 %4429, i8* %14, align 1
  %4430 = and i32 %4427, 255
  %4431 = tail call i32 @llvm.ctpop.i32(i32 %4430)
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = xor i8 %4433, 1
  store i8 %4434, i8* %21, align 1
  %4435 = xor i32 %4426, %4390
  %4436 = xor i32 %4435, %4427
  %4437 = lshr i32 %4436, 4
  %4438 = trunc i32 %4437 to i8
  %4439 = and i8 %4438, 1
  store i8 %4439, i8* %26, align 1
  %4440 = icmp eq i32 %4427, 0
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %29, align 1
  %4442 = lshr i32 %4427, 31
  %4443 = trunc i32 %4442 to i8
  store i8 %4443, i8* %32, align 1
  %4444 = lshr i32 %4390, 31
  %4445 = lshr i32 %4426, 31
  %4446 = xor i32 %4445, %4444
  %4447 = xor i32 %4442, %4444
  %4448 = add nuw nsw i32 %4447, %4446
  %4449 = icmp eq i32 %4448, 2
  %4450 = zext i1 %4449 to i8
  store i8 %4450, i8* %38, align 1
  %.v167 = select i1 %4440, i64 58, i64 426
  %4451 = add i64 %4351, %.v167
  store i64 %4451, i64* %3, align 8
  br i1 %4440, label %block_41a392, label %block_.L_41a502

block_41a392:                                     ; preds = %block_41a358
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i2220, align 8
  %4452 = load i64, i64* %RBP.i, align 8
  %4453 = add i64 %4452, -12304
  store i64 %4453, i64* %RCX.i2189, align 8
  %4454 = add i64 %4452, -12336
  %4455 = add i64 %4451, 24
  store i64 %4455, i64* %3, align 8
  %4456 = inttoptr i64 %4454 to i32*
  %4457 = load i32, i32* %4456, align 4
  %4458 = sext i32 %4457 to i64
  %4459 = mul nsw i64 %4458, 24
  store i64 %4459, i64* %RDX.i2117, align 8
  %4460 = lshr i64 %4459, 63
  %4461 = add i64 %4459, %4453
  store i64 %4461, i64* %RCX.i2189, align 8
  %4462 = icmp ult i64 %4461, %4453
  %4463 = icmp ult i64 %4461, %4459
  %4464 = or i1 %4462, %4463
  %4465 = zext i1 %4464 to i8
  store i8 %4465, i8* %14, align 1
  %4466 = trunc i64 %4461 to i32
  %4467 = and i32 %4466, 255
  %4468 = tail call i32 @llvm.ctpop.i32(i32 %4467)
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  %4471 = xor i8 %4470, 1
  store i8 %4471, i8* %21, align 1
  %4472 = xor i64 %4459, %4453
  %4473 = xor i64 %4472, %4461
  %4474 = lshr i64 %4473, 4
  %4475 = trunc i64 %4474 to i8
  %4476 = and i8 %4475, 1
  store i8 %4476, i8* %26, align 1
  %4477 = icmp eq i64 %4461, 0
  %4478 = zext i1 %4477 to i8
  store i8 %4478, i8* %29, align 1
  %4479 = lshr i64 %4461, 63
  %4480 = trunc i64 %4479 to i8
  store i8 %4480, i8* %32, align 1
  %4481 = lshr i64 %4453, 63
  %4482 = xor i64 %4479, %4481
  %4483 = xor i64 %4479, %4460
  %4484 = add nuw nsw i64 %4482, %4483
  %4485 = icmp eq i64 %4484, 2
  %4486 = zext i1 %4485 to i8
  store i8 %4486, i8* %38, align 1
  %4487 = add i64 %4461, 12
  %4488 = add i64 %4451, 34
  store i64 %4488, i64* %3, align 8
  %4489 = inttoptr i64 %4487 to i32*
  %4490 = load i32, i32* %4489, align 4
  %4491 = zext i32 %4490 to i64
  store i64 %4491, i64* %RSI.i1919, align 8
  %4492 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4493 = sext i32 %4492 to i64
  %4494 = mul nsw i64 %4493, 24
  store i64 %4494, i64* %RCX.i2189, align 8
  %4495 = lshr i64 %4494, 63
  %4496 = load i64, i64* %RAX.i2220, align 8
  %4497 = add i64 %4494, %4496
  store i64 %4497, i64* %RAX.i2220, align 8
  %4498 = icmp ult i64 %4497, %4496
  %4499 = icmp ult i64 %4497, %4494
  %4500 = or i1 %4498, %4499
  %4501 = zext i1 %4500 to i8
  store i8 %4501, i8* %14, align 1
  %4502 = trunc i64 %4497 to i32
  %4503 = and i32 %4502, 255
  %4504 = tail call i32 @llvm.ctpop.i32(i32 %4503)
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  %4507 = xor i8 %4506, 1
  store i8 %4507, i8* %21, align 1
  %4508 = xor i64 %4494, %4496
  %4509 = xor i64 %4508, %4497
  %4510 = lshr i64 %4509, 4
  %4511 = trunc i64 %4510 to i8
  %4512 = and i8 %4511, 1
  store i8 %4512, i8* %26, align 1
  %4513 = icmp eq i64 %4497, 0
  %4514 = zext i1 %4513 to i8
  store i8 %4514, i8* %29, align 1
  %4515 = lshr i64 %4497, 63
  %4516 = trunc i64 %4515 to i8
  store i8 %4516, i8* %32, align 1
  %4517 = lshr i64 %4496, 63
  %4518 = xor i64 %4515, %4517
  %4519 = xor i64 %4515, %4495
  %4520 = add nuw nsw i64 %4518, %4519
  %4521 = icmp eq i64 %4520, 2
  %4522 = zext i1 %4521 to i8
  store i8 %4522, i8* %38, align 1
  %4523 = add i64 %4497, 12
  %4524 = add i64 %4451, 52
  store i64 %4524, i64* %3, align 8
  %4525 = inttoptr i64 %4523 to i32*
  %4526 = load i32, i32* %4525, align 4
  %4527 = sub i32 %4490, %4526
  %4528 = icmp ult i32 %4490, %4526
  %4529 = zext i1 %4528 to i8
  store i8 %4529, i8* %14, align 1
  %4530 = and i32 %4527, 255
  %4531 = tail call i32 @llvm.ctpop.i32(i32 %4530)
  %4532 = trunc i32 %4531 to i8
  %4533 = and i8 %4532, 1
  %4534 = xor i8 %4533, 1
  store i8 %4534, i8* %21, align 1
  %4535 = xor i32 %4526, %4490
  %4536 = xor i32 %4535, %4527
  %4537 = lshr i32 %4536, 4
  %4538 = trunc i32 %4537 to i8
  %4539 = and i8 %4538, 1
  store i8 %4539, i8* %26, align 1
  %4540 = icmp eq i32 %4527, 0
  %4541 = zext i1 %4540 to i8
  store i8 %4541, i8* %29, align 1
  %4542 = lshr i32 %4527, 31
  %4543 = trunc i32 %4542 to i8
  store i8 %4543, i8* %32, align 1
  %4544 = lshr i32 %4490, 31
  %4545 = lshr i32 %4526, 31
  %4546 = xor i32 %4545, %4544
  %4547 = xor i32 %4542, %4544
  %4548 = add nuw nsw i32 %4547, %4546
  %4549 = icmp eq i32 %4548, 2
  %4550 = zext i1 %4549 to i8
  store i8 %4550, i8* %38, align 1
  %.v168 = select i1 %4540, i64 58, i64 368
  %4551 = add i64 %4451, %.v168
  store i64 %4551, i64* %3, align 8
  br i1 %4540, label %block_41a3cc, label %block_.L_41a502

block_41a3cc:                                     ; preds = %block_41a392
  %4552 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4553 = sext i32 %4552 to i64
  store i64 %4553, i64* %RAX.i2220, align 8
  %4554 = shl nsw i64 %4553, 2
  %4555 = add nsw i64 %4554, 8920576
  %4556 = add i64 %4551, 15
  store i64 %4556, i64* %3, align 8
  %4557 = inttoptr i64 %4555 to i32*
  %4558 = load i32, i32* %4557, align 4
  %4559 = add i32 %4558, 1
  %4560 = zext i32 %4559 to i64
  store i64 %4560, i64* %RCX.i2189, align 8
  %4561 = icmp eq i32 %4558, -1
  %4562 = icmp eq i32 %4559, 0
  %4563 = or i1 %4561, %4562
  %4564 = zext i1 %4563 to i8
  store i8 %4564, i8* %14, align 1
  %4565 = and i32 %4559, 255
  %4566 = tail call i32 @llvm.ctpop.i32(i32 %4565)
  %4567 = trunc i32 %4566 to i8
  %4568 = and i8 %4567, 1
  %4569 = xor i8 %4568, 1
  store i8 %4569, i8* %21, align 1
  %4570 = xor i32 %4559, %4558
  %4571 = lshr i32 %4570, 4
  %4572 = trunc i32 %4571 to i8
  %4573 = and i8 %4572, 1
  store i8 %4573, i8* %26, align 1
  %4574 = zext i1 %4562 to i8
  store i8 %4574, i8* %29, align 1
  %4575 = lshr i32 %4559, 31
  %4576 = trunc i32 %4575 to i8
  store i8 %4576, i8* %32, align 1
  %4577 = lshr i32 %4558, 31
  %4578 = xor i32 %4575, %4577
  %4579 = add nuw nsw i32 %4578, %4575
  %4580 = icmp eq i32 %4579, 2
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %38, align 1
  %4582 = add i64 %4551, 25
  store i64 %4582, i64* %3, align 8
  store i32 %4559, i32* %4557, align 4
  %4583 = load i64, i64* %3, align 8
  %4584 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4585 = sext i32 %4584 to i64
  store i64 %4585, i64* %RAX.i2220, align 8
  %4586 = shl nsw i64 %4585, 2
  %4587 = add nsw i64 %4586, 8920576
  %4588 = add i64 %4583, 15
  store i64 %4588, i64* %3, align 8
  %4589 = inttoptr i64 %4587 to i32*
  %4590 = load i32, i32* %4589, align 4
  %4591 = zext i32 %4590 to i64
  store i64 %4591, i64* %RCX.i2189, align 8
  store i64 %4585, i64* %RAX.i2220, align 8
  %4592 = add nsw i64 %4586, 6524000
  %4593 = add i64 %4583, 30
  store i64 %4593, i64* %3, align 8
  %4594 = inttoptr i64 %4592 to i32*
  %4595 = load i32, i32* %4594, align 4
  %4596 = sub i32 %4590, %4595
  %4597 = icmp ult i32 %4590, %4595
  %4598 = zext i1 %4597 to i8
  store i8 %4598, i8* %14, align 1
  %4599 = and i32 %4596, 255
  %4600 = tail call i32 @llvm.ctpop.i32(i32 %4599)
  %4601 = trunc i32 %4600 to i8
  %4602 = and i8 %4601, 1
  %4603 = xor i8 %4602, 1
  store i8 %4603, i8* %21, align 1
  %4604 = xor i32 %4595, %4590
  %4605 = xor i32 %4604, %4596
  %4606 = lshr i32 %4605, 4
  %4607 = trunc i32 %4606 to i8
  %4608 = and i8 %4607, 1
  store i8 %4608, i8* %26, align 1
  %4609 = icmp eq i32 %4596, 0
  %4610 = zext i1 %4609 to i8
  store i8 %4610, i8* %29, align 1
  %4611 = lshr i32 %4596, 31
  %4612 = trunc i32 %4611 to i8
  store i8 %4612, i8* %32, align 1
  %4613 = lshr i32 %4590, 31
  %4614 = lshr i32 %4595, 31
  %4615 = xor i32 %4614, %4613
  %4616 = xor i32 %4611, %4613
  %4617 = add nuw nsw i32 %4616, %4615
  %4618 = icmp eq i32 %4617, 2
  %4619 = zext i1 %4618 to i8
  store i8 %4619, i8* %38, align 1
  %4620 = icmp ne i8 %4612, 0
  %4621 = xor i1 %4620, %4618
  %4622 = or i1 %4609, %4621
  %.v169 = select i1 %4622, i64 280, i64 36
  %4623 = add i64 %4583, %.v169
  store i64 %4623, i64* %3, align 8
  br i1 %4622, label %block_.L_41a4fd, label %block_41a409

block_41a409:                                     ; preds = %block_41a3cc
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX.i2220, align 8
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RCX.i2189, align 8
  %4624 = mul nsw i64 %4585, 24
  store i64 %4624, i64* %RDX.i2117, align 8
  %4625 = lshr i64 %4624, 63
  %4626 = add i64 %4624, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  store i64 %4626, i64* %RSI.i1919, align 8
  %4627 = icmp ult i64 %4626, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %4628 = icmp ult i64 %4626, %4624
  %4629 = or i1 %4627, %4628
  %4630 = zext i1 %4629 to i8
  store i8 %4630, i8* %14, align 1
  %4631 = trunc i64 %4626 to i32
  %4632 = and i32 %4631, 248
  %4633 = tail call i32 @llvm.ctpop.i32(i32 %4632)
  %4634 = trunc i32 %4633 to i8
  %4635 = and i8 %4634, 1
  %4636 = xor i8 %4635, 1
  store i8 %4636, i8* %21, align 1
  %4637 = xor i64 %4624, ptrtoint (%G__0x639220_type* @G__0x639220 to i64)
  %4638 = xor i64 %4637, %4626
  %4639 = lshr i64 %4638, 4
  %4640 = trunc i64 %4639 to i8
  %4641 = and i8 %4640, 1
  store i8 %4641, i8* %26, align 1
  %4642 = icmp eq i64 %4626, 0
  %4643 = zext i1 %4642 to i8
  store i8 %4643, i8* %29, align 1
  %4644 = lshr i64 %4626, 63
  %4645 = trunc i64 %4644 to i8
  store i8 %4645, i8* %32, align 1
  %4646 = xor i64 %4644, lshr (i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64 63)
  %4647 = xor i64 %4644, %4625
  %4648 = add nuw nsw i64 %4646, %4647
  %4649 = icmp eq i64 %4648, 2
  %4650 = zext i1 %4649 to i8
  store i8 %4650, i8* %38, align 1
  %4651 = inttoptr i64 %4626 to i64*
  %4652 = add i64 %4623, 41
  store i64 %4652, i64* %3, align 8
  %4653 = load i64, i64* %4651, align 8
  store i64 %4653, i64* %RDX.i2117, align 8
  %4654 = load i64, i64* %RBP.i, align 8
  %4655 = add i64 %4654, -16496
  %4656 = add i64 %4623, 48
  store i64 %4656, i64* %3, align 8
  %4657 = inttoptr i64 %4655 to i64*
  store i64 %4653, i64* %4657, align 8
  %4658 = load i64, i64* %RSI.i1919, align 8
  %4659 = add i64 %4658, 8
  %4660 = load i64, i64* %3, align 8
  %4661 = add i64 %4660, 4
  store i64 %4661, i64* %3, align 8
  %4662 = inttoptr i64 %4659 to i64*
  %4663 = load i64, i64* %4662, align 8
  store i64 %4663, i64* %RDX.i2117, align 8
  %4664 = load i64, i64* %RBP.i, align 8
  %4665 = add i64 %4664, -16488
  %4666 = add i64 %4660, 11
  store i64 %4666, i64* %3, align 8
  %4667 = inttoptr i64 %4665 to i64*
  store i64 %4663, i64* %4667, align 8
  %4668 = load i64, i64* %RSI.i1919, align 8
  %4669 = add i64 %4668, 16
  %4670 = load i64, i64* %3, align 8
  %4671 = add i64 %4670, 4
  store i64 %4671, i64* %3, align 8
  %4672 = inttoptr i64 %4669 to i64*
  %4673 = load i64, i64* %4672, align 8
  %4674 = load i64, i64* %RBP.i, align 8
  %4675 = add i64 %4674, -16480
  %4676 = add i64 %4670, 11
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4675 to i64*
  store i64 %4673, i64* %4677, align 8
  %4678 = load i64, i64* %3, align 8
  %4679 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4680 = sext i32 %4679 to i64
  %4681 = mul nsw i64 %4680, 24
  %4682 = lshr i64 %4681, 63
  %4683 = load i64, i64* %RCX.i2189, align 8
  %4684 = add i64 %4681, %4683
  store i64 %4684, i64* %RCX.i2189, align 8
  store i64 %4681, i64* %RDX.i2117, align 8
  %4685 = load i64, i64* %RAX.i2220, align 8
  %4686 = add i64 %4681, %4685
  store i64 %4686, i64* %RSI.i1919, align 8
  %4687 = icmp ult i64 %4686, %4685
  %4688 = icmp ult i64 %4686, %4681
  %4689 = or i1 %4687, %4688
  %4690 = zext i1 %4689 to i8
  store i8 %4690, i8* %14, align 1
  %4691 = trunc i64 %4686 to i32
  %4692 = and i32 %4691, 255
  %4693 = tail call i32 @llvm.ctpop.i32(i32 %4692)
  %4694 = trunc i32 %4693 to i8
  %4695 = and i8 %4694, 1
  %4696 = xor i8 %4695, 1
  store i8 %4696, i8* %21, align 1
  %4697 = xor i64 %4681, %4685
  %4698 = xor i64 %4697, %4686
  %4699 = lshr i64 %4698, 4
  %4700 = trunc i64 %4699 to i8
  %4701 = and i8 %4700, 1
  store i8 %4701, i8* %26, align 1
  %4702 = icmp eq i64 %4686, 0
  %4703 = zext i1 %4702 to i8
  store i8 %4703, i8* %29, align 1
  %4704 = lshr i64 %4686, 63
  %4705 = trunc i64 %4704 to i8
  store i8 %4705, i8* %32, align 1
  %4706 = lshr i64 %4685, 63
  %4707 = xor i64 %4704, %4706
  %4708 = xor i64 %4704, %4682
  %4709 = add nuw nsw i64 %4707, %4708
  %4710 = icmp eq i64 %4709, 2
  %4711 = zext i1 %4710 to i8
  store i8 %4711, i8* %38, align 1
  %4712 = inttoptr i64 %4686 to i64*
  %4713 = add i64 %4678, 36
  store i64 %4713, i64* %3, align 8
  %4714 = load i64, i64* %4712, align 8
  store i64 %4714, i64* %RDX.i2117, align 8
  %4715 = inttoptr i64 %4684 to i64*
  %4716 = add i64 %4678, 39
  store i64 %4716, i64* %3, align 8
  store i64 %4714, i64* %4715, align 8
  %4717 = load i64, i64* %RSI.i1919, align 8
  %4718 = add i64 %4717, 8
  %4719 = load i64, i64* %3, align 8
  %4720 = add i64 %4719, 4
  store i64 %4720, i64* %3, align 8
  %4721 = inttoptr i64 %4718 to i64*
  %4722 = load i64, i64* %4721, align 8
  store i64 %4722, i64* %RDX.i2117, align 8
  %4723 = load i64, i64* %RCX.i2189, align 8
  %4724 = add i64 %4723, 8
  %4725 = add i64 %4719, 8
  store i64 %4725, i64* %3, align 8
  %4726 = inttoptr i64 %4724 to i64*
  store i64 %4722, i64* %4726, align 8
  %4727 = load i64, i64* %RSI.i1919, align 8
  %4728 = add i64 %4727, 16
  %4729 = load i64, i64* %3, align 8
  %4730 = add i64 %4729, 4
  store i64 %4730, i64* %3, align 8
  %4731 = inttoptr i64 %4728 to i64*
  %4732 = load i64, i64* %4731, align 8
  store i64 %4732, i64* %RDX.i2117, align 8
  %4733 = load i64, i64* %RCX.i2189, align 8
  %4734 = add i64 %4733, 16
  %4735 = add i64 %4729, 8
  store i64 %4735, i64* %3, align 8
  %4736 = inttoptr i64 %4734 to i64*
  store i64 %4732, i64* %4736, align 8
  %4737 = load i64, i64* %3, align 8
  %4738 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4739 = sext i32 %4738 to i64
  %4740 = mul nsw i64 %4739, 24
  store i64 %4740, i64* %RCX.i2189, align 8
  %4741 = lshr i64 %4740, 63
  %4742 = load i64, i64* %RAX.i2220, align 8
  %4743 = add i64 %4740, %4742
  store i64 %4743, i64* %RAX.i2220, align 8
  %4744 = icmp ult i64 %4743, %4742
  %4745 = icmp ult i64 %4743, %4740
  %4746 = or i1 %4744, %4745
  %4747 = zext i1 %4746 to i8
  store i8 %4747, i8* %14, align 1
  %4748 = trunc i64 %4743 to i32
  %4749 = and i32 %4748, 255
  %4750 = tail call i32 @llvm.ctpop.i32(i32 %4749)
  %4751 = trunc i32 %4750 to i8
  %4752 = and i8 %4751, 1
  %4753 = xor i8 %4752, 1
  store i8 %4753, i8* %21, align 1
  %4754 = xor i64 %4740, %4742
  %4755 = xor i64 %4754, %4743
  %4756 = lshr i64 %4755, 4
  %4757 = trunc i64 %4756 to i8
  %4758 = and i8 %4757, 1
  store i8 %4758, i8* %26, align 1
  %4759 = icmp eq i64 %4743, 0
  %4760 = zext i1 %4759 to i8
  store i8 %4760, i8* %29, align 1
  %4761 = lshr i64 %4743, 63
  %4762 = trunc i64 %4761 to i8
  store i8 %4762, i8* %32, align 1
  %4763 = lshr i64 %4742, 63
  %4764 = xor i64 %4761, %4763
  %4765 = xor i64 %4761, %4741
  %4766 = add nuw nsw i64 %4764, %4765
  %4767 = icmp eq i64 %4766, 2
  %4768 = zext i1 %4767 to i8
  store i8 %4768, i8* %38, align 1
  %4769 = load i64, i64* %RBP.i, align 8
  %4770 = add i64 %4769, -16496
  %4771 = add i64 %4737, 22
  store i64 %4771, i64* %3, align 8
  %4772 = inttoptr i64 %4770 to i64*
  %4773 = load i64, i64* %4772, align 8
  store i64 %4773, i64* %RCX.i2189, align 8
  %4774 = inttoptr i64 %4743 to i64*
  %4775 = add i64 %4737, 25
  store i64 %4775, i64* %3, align 8
  store i64 %4773, i64* %4774, align 8
  %4776 = load i64, i64* %RBP.i, align 8
  %4777 = add i64 %4776, -16488
  %4778 = load i64, i64* %3, align 8
  %4779 = add i64 %4778, 7
  store i64 %4779, i64* %3, align 8
  %4780 = inttoptr i64 %4777 to i64*
  %4781 = load i64, i64* %4780, align 8
  store i64 %4781, i64* %RCX.i2189, align 8
  %4782 = load i64, i64* %RAX.i2220, align 8
  %4783 = add i64 %4782, 8
  %4784 = add i64 %4778, 11
  store i64 %4784, i64* %3, align 8
  %4785 = inttoptr i64 %4783 to i64*
  store i64 %4781, i64* %4785, align 8
  %4786 = load i64, i64* %RBP.i, align 8
  %4787 = add i64 %4786, -16480
  %4788 = load i64, i64* %3, align 8
  %4789 = add i64 %4788, 7
  store i64 %4789, i64* %3, align 8
  %4790 = inttoptr i64 %4787 to i64*
  %4791 = load i64, i64* %4790, align 8
  store i64 %4791, i64* %RCX.i2189, align 8
  %4792 = load i64, i64* %RAX.i2220, align 8
  %4793 = add i64 %4792, 16
  %4794 = add i64 %4788, 11
  store i64 %4794, i64* %3, align 8
  %4795 = inttoptr i64 %4793 to i64*
  store i64 %4791, i64* %4795, align 8
  %4796 = load i64, i64* %3, align 8
  %4797 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4798 = sext i32 %4797 to i64
  store i64 %4798, i64* %RAX.i2220, align 8
  %4799 = shl nsw i64 %4798, 2
  %4800 = add nsw i64 %4799, 6524000
  %4801 = add i64 %4796, 15
  store i64 %4801, i64* %3, align 8
  %4802 = inttoptr i64 %4800 to i32*
  %4803 = load i32, i32* %4802, align 4
  %4804 = zext i32 %4803 to i64
  store i64 %4804, i64* %RDI.i2221, align 8
  %4805 = load i64, i64* %RBP.i, align 8
  %4806 = add i64 %4805, -16500
  %4807 = add i64 %4796, 21
  store i64 %4807, i64* %3, align 8
  %4808 = inttoptr i64 %4806 to i32*
  store i32 %4803, i32* %4808, align 4
  %4809 = load i64, i64* %3, align 8
  %4810 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4811 = sext i32 %4810 to i64
  store i64 %4811, i64* %RAX.i2220, align 8
  %4812 = shl nsw i64 %4811, 2
  %4813 = add nsw i64 %4812, 8920576
  %4814 = add i64 %4809, 15
  store i64 %4814, i64* %3, align 8
  %4815 = inttoptr i64 %4813 to i32*
  %4816 = load i32, i32* %4815, align 4
  %4817 = zext i32 %4816 to i64
  store i64 %4817, i64* %RDI.i2221, align 8
  store i64 %4811, i64* %RAX.i2220, align 8
  %4818 = add nsw i64 %4812, 6524000
  %4819 = add i64 %4809, 30
  store i64 %4819, i64* %3, align 8
  %4820 = inttoptr i64 %4818 to i32*
  store i32 %4816, i32* %4820, align 4
  %4821 = load i64, i64* %RBP.i, align 8
  %4822 = add i64 %4821, -16500
  %4823 = load i64, i64* %3, align 8
  %4824 = add i64 %4823, 6
  store i64 %4824, i64* %3, align 8
  %4825 = inttoptr i64 %4822 to i32*
  %4826 = load i32, i32* %4825, align 4
  %4827 = zext i32 %4826 to i64
  store i64 %4827, i64* %RDI.i2221, align 8
  %4828 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4829 = sext i32 %4828 to i64
  store i64 %4829, i64* %RAX.i2220, align 8
  %4830 = shl nsw i64 %4829, 2
  %4831 = add nsw i64 %4830, 8920576
  %4832 = add i64 %4823, 21
  store i64 %4832, i64* %3, align 8
  %4833 = inttoptr i64 %4831 to i32*
  store i32 %4826, i32* %4833, align 4
  %.pre123 = load i64, i64* %3, align 8
  br label %block_.L_41a4fd

block_.L_41a4fd:                                  ; preds = %block_41a409, %block_41a3cc
  %4834 = phi i64 [ %.pre123, %block_41a409 ], [ %4623, %block_41a3cc ]
  %4835 = add i64 %4834, 92
  store i64 %4835, i64* %3, align 8
  br label %block_.L_41a559

block_.L_41a502:                                  ; preds = %block_41a392, %block_41a358, %block_.L_41a320
  %4836 = phi i64 [ %4551, %block_41a392 ], [ %4451, %block_41a358 ], [ %4351, %block_.L_41a320 ]
  %4837 = load i64, i64* %RBP.i, align 8
  %4838 = add i64 %4837, -12304
  store i64 %4838, i64* %RAX.i2220, align 8
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RCX.i2189, align 8
  %4839 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4840 = sext i32 %4839 to i64
  %4841 = shl nsw i64 %4840, 2
  %4842 = add nsw i64 %4841, 8920576
  %4843 = add i64 %4836, 36
  store i64 %4843, i64* %3, align 8
  %4844 = inttoptr i64 %4842 to i32*
  store i32 1, i32* %4844, align 4
  %4845 = load i64, i64* %3, align 8
  %4846 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %4847 = sext i32 %4846 to i64
  %4848 = mul nsw i64 %4847, 24
  store i64 %4848, i64* %RDX.i2117, align 8
  %4849 = lshr i64 %4848, 63
  %4850 = load i64, i64* %RCX.i2189, align 8
  %4851 = add i64 %4848, %4850
  store i64 %4851, i64* %RCX.i2189, align 8
  %4852 = icmp ult i64 %4851, %4850
  %4853 = icmp ult i64 %4851, %4848
  %4854 = or i1 %4852, %4853
  %4855 = zext i1 %4854 to i8
  store i8 %4855, i8* %14, align 1
  %4856 = trunc i64 %4851 to i32
  %4857 = and i32 %4856, 255
  %4858 = tail call i32 @llvm.ctpop.i32(i32 %4857)
  %4859 = trunc i32 %4858 to i8
  %4860 = and i8 %4859, 1
  %4861 = xor i8 %4860, 1
  store i8 %4861, i8* %21, align 1
  %4862 = xor i64 %4848, %4850
  %4863 = xor i64 %4862, %4851
  %4864 = lshr i64 %4863, 4
  %4865 = trunc i64 %4864 to i8
  %4866 = and i8 %4865, 1
  store i8 %4866, i8* %26, align 1
  %4867 = icmp eq i64 %4851, 0
  %4868 = zext i1 %4867 to i8
  store i8 %4868, i8* %29, align 1
  %4869 = lshr i64 %4851, 63
  %4870 = trunc i64 %4869 to i8
  store i8 %4870, i8* %32, align 1
  %4871 = lshr i64 %4850, 63
  %4872 = xor i64 %4869, %4871
  %4873 = xor i64 %4869, %4849
  %4874 = add nuw nsw i64 %4872, %4873
  %4875 = icmp eq i64 %4874, 2
  %4876 = zext i1 %4875 to i8
  store i8 %4876, i8* %38, align 1
  %4877 = load i64, i64* %RBP.i, align 8
  %4878 = add i64 %4877, -12336
  %4879 = add i64 %4845, 22
  store i64 %4879, i64* %3, align 8
  %4880 = inttoptr i64 %4878 to i32*
  %4881 = load i32, i32* %4880, align 4
  %4882 = sext i32 %4881 to i64
  %4883 = mul nsw i64 %4882, 24
  store i64 %4883, i64* %RDX.i2117, align 8
  %4884 = lshr i64 %4883, 63
  %4885 = load i64, i64* %RAX.i2220, align 8
  %4886 = add i64 %4883, %4885
  store i64 %4886, i64* %RAX.i2220, align 8
  %4887 = icmp ult i64 %4886, %4885
  %4888 = icmp ult i64 %4886, %4883
  %4889 = or i1 %4887, %4888
  %4890 = zext i1 %4889 to i8
  store i8 %4890, i8* %14, align 1
  %4891 = trunc i64 %4886 to i32
  %4892 = and i32 %4891, 255
  %4893 = tail call i32 @llvm.ctpop.i32(i32 %4892)
  %4894 = trunc i32 %4893 to i8
  %4895 = and i8 %4894, 1
  %4896 = xor i8 %4895, 1
  store i8 %4896, i8* %21, align 1
  %4897 = xor i64 %4883, %4885
  %4898 = xor i64 %4897, %4886
  %4899 = lshr i64 %4898, 4
  %4900 = trunc i64 %4899 to i8
  %4901 = and i8 %4900, 1
  store i8 %4901, i8* %26, align 1
  %4902 = icmp eq i64 %4886, 0
  %4903 = zext i1 %4902 to i8
  store i8 %4903, i8* %29, align 1
  %4904 = lshr i64 %4886, 63
  %4905 = trunc i64 %4904 to i8
  store i8 %4905, i8* %32, align 1
  %4906 = lshr i64 %4885, 63
  %4907 = xor i64 %4904, %4906
  %4908 = xor i64 %4904, %4884
  %4909 = add nuw nsw i64 %4907, %4908
  %4910 = icmp eq i64 %4909, 2
  %4911 = zext i1 %4910 to i8
  store i8 %4911, i8* %38, align 1
  %4912 = inttoptr i64 %4886 to i64*
  %4913 = add i64 %4845, 32
  store i64 %4913, i64* %3, align 8
  %4914 = load i64, i64* %4912, align 8
  store i64 %4914, i64* %RDX.i2117, align 8
  %4915 = load i64*, i64** %771, align 8
  %4916 = add i64 %4845, 35
  store i64 %4916, i64* %3, align 8
  store i64 %4914, i64* %4915, align 8
  %4917 = load i64, i64* %RAX.i2220, align 8
  %4918 = add i64 %4917, 8
  %4919 = load i64, i64* %3, align 8
  %4920 = add i64 %4919, 4
  store i64 %4920, i64* %3, align 8
  %4921 = inttoptr i64 %4918 to i64*
  %4922 = load i64, i64* %4921, align 8
  store i64 %4922, i64* %RDX.i2117, align 8
  %4923 = load i64, i64* %RCX.i2189, align 8
  %4924 = add i64 %4923, 8
  %4925 = add i64 %4919, 8
  store i64 %4925, i64* %3, align 8
  %4926 = inttoptr i64 %4924 to i64*
  store i64 %4922, i64* %4926, align 8
  %4927 = load i64, i64* %RAX.i2220, align 8
  %4928 = add i64 %4927, 16
  %4929 = load i64, i64* %3, align 8
  %4930 = add i64 %4929, 4
  store i64 %4930, i64* %3, align 8
  %4931 = inttoptr i64 %4928 to i64*
  %4932 = load i64, i64* %4931, align 8
  store i64 %4932, i64* %RAX.i2220, align 8
  %4933 = load i64, i64* %RCX.i2189, align 8
  %4934 = add i64 %4933, 16
  %4935 = add i64 %4929, 8
  store i64 %4935, i64* %3, align 8
  %4936 = inttoptr i64 %4934 to i64*
  store i64 %4932, i64* %4936, align 8
  %.pre124 = load i64, i64* %3, align 8
  br label %block_.L_41a559

block_.L_41a559:                                  ; preds = %block_.L_41a502, %block_.L_41a4fd
  %4937 = phi i64 [ %.pre124, %block_.L_41a502 ], [ %4835, %block_.L_41a4fd ]
  %4938 = add i64 %4937, 5
  store i64 %4938, i64* %3, align 8
  br label %block_.L_41a55e

block_.L_41a55e:                                  ; preds = %block_.L_41a559, %block_.L_41a31b
  %storemerge71 = phi i64 [ %4252, %block_.L_41a31b ], [ %4938, %block_.L_41a559 ]
  %4939 = add i64 %storemerge71, 5
  store i64 %4939, i64* %3, align 8
  br label %block_.L_41a563

block_.L_41a563:                                  ; preds = %block_.L_41a55e, %block_41a120
  %storemerge70 = phi i64 [ %3669, %block_41a120 ], [ %4939, %block_.L_41a55e ]
  %4940 = load i64, i64* %RBP.i, align 8
  %4941 = add i64 %4940, -12304
  store i64 %4941, i64* %RAX.i2220, align 8
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RCX.i2189, align 8
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RDX.i2117, align 8
  %4942 = add i64 %4940, -12336
  %4943 = add i64 %storemerge70, 34
  store i64 %4943, i64* %3, align 8
  %4944 = inttoptr i64 %4942 to i32*
  %4945 = load i32, i32* %4944, align 4
  %4946 = sext i32 %4945 to i64
  %4947 = mul nsw i64 %4946, 24
  store i64 %4947, i64* %RSI.i1919, align 8
  %4948 = lshr i64 %4947, 63
  %4949 = add i64 %4947, %4941
  store i64 %4949, i64* %RDI.i2221, align 8
  %4950 = icmp ult i64 %4949, %4941
  %4951 = icmp ult i64 %4949, %4947
  %4952 = or i1 %4950, %4951
  %4953 = zext i1 %4952 to i8
  store i8 %4953, i8* %14, align 1
  %4954 = trunc i64 %4949 to i32
  %4955 = and i32 %4954, 255
  %4956 = tail call i32 @llvm.ctpop.i32(i32 %4955)
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  %4959 = xor i8 %4958, 1
  store i8 %4959, i8* %21, align 1
  %4960 = xor i64 %4947, %4941
  %4961 = xor i64 %4960, %4949
  %4962 = lshr i64 %4961, 4
  %4963 = trunc i64 %4962 to i8
  %4964 = and i8 %4963, 1
  store i8 %4964, i8* %26, align 1
  %4965 = icmp eq i64 %4949, 0
  %4966 = zext i1 %4965 to i8
  store i8 %4966, i8* %29, align 1
  %4967 = lshr i64 %4949, 63
  %4968 = trunc i64 %4967 to i8
  store i8 %4968, i8* %32, align 1
  %4969 = lshr i64 %4941, 63
  %4970 = xor i64 %4967, %4969
  %4971 = xor i64 %4967, %4948
  %4972 = add nuw nsw i64 %4970, %4971
  %4973 = icmp eq i64 %4972, 2
  %4974 = zext i1 %4973 to i8
  store i8 %4974, i8* %38, align 1
  %4975 = inttoptr i64 %4949 to i32*
  %4976 = add i64 %storemerge70, 47
  store i64 %4976, i64* %3, align 8
  %4977 = load i32, i32* %4975, align 4
  %4978 = sext i32 %4977 to i64
  %4979 = mul nsw i64 %4978, 576
  store i64 %4979, i64* %RSI.i1919, align 8
  %4980 = lshr i64 %4979, 63
  %4981 = load i64, i64* %RDX.i2117, align 8
  %4982 = add i64 %4979, %4981
  store i64 %4982, i64* %RDX.i2117, align 8
  %4983 = icmp ult i64 %4982, %4981
  %4984 = icmp ult i64 %4982, %4979
  %4985 = or i1 %4983, %4984
  %4986 = zext i1 %4985 to i8
  store i8 %4986, i8* %14, align 1
  %4987 = trunc i64 %4982 to i32
  %4988 = and i32 %4987, 255
  %4989 = tail call i32 @llvm.ctpop.i32(i32 %4988)
  %4990 = trunc i32 %4989 to i8
  %4991 = and i8 %4990, 1
  %4992 = xor i8 %4991, 1
  store i8 %4992, i8* %21, align 1
  %4993 = xor i64 %4981, %4982
  %4994 = lshr i64 %4993, 4
  %4995 = trunc i64 %4994 to i8
  %4996 = and i8 %4995, 1
  store i8 %4996, i8* %26, align 1
  %4997 = icmp eq i64 %4982, 0
  %4998 = zext i1 %4997 to i8
  store i8 %4998, i8* %29, align 1
  %4999 = lshr i64 %4982, 63
  %5000 = trunc i64 %4999 to i8
  store i8 %5000, i8* %32, align 1
  %5001 = lshr i64 %4981, 63
  %5002 = xor i64 %4999, %5001
  %5003 = xor i64 %4999, %4980
  %5004 = add nuw nsw i64 %5002, %5003
  %5005 = icmp eq i64 %5004, 2
  %5006 = zext i1 %5005 to i8
  store i8 %5006, i8* %38, align 1
  %5007 = load i64, i64* %RBP.i, align 8
  %5008 = add i64 %5007, -12336
  %5009 = add i64 %storemerge70, 64
  store i64 %5009, i64* %3, align 8
  %5010 = inttoptr i64 %5008 to i32*
  %5011 = load i32, i32* %5010, align 4
  %5012 = sext i32 %5011 to i64
  %5013 = mul nsw i64 %5012, 24
  store i64 %5013, i64* %RSI.i1919, align 8
  %5014 = lshr i64 %5013, 63
  %5015 = load i64, i64* %RAX.i2220, align 8
  %5016 = add i64 %5013, %5015
  store i64 %5016, i64* %RDI.i2221, align 8
  %5017 = icmp ult i64 %5016, %5015
  %5018 = icmp ult i64 %5016, %5013
  %5019 = or i1 %5017, %5018
  %5020 = zext i1 %5019 to i8
  store i8 %5020, i8* %14, align 1
  %5021 = trunc i64 %5016 to i32
  %5022 = and i32 %5021, 255
  %5023 = tail call i32 @llvm.ctpop.i32(i32 %5022)
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  %5026 = xor i8 %5025, 1
  store i8 %5026, i8* %21, align 1
  %5027 = xor i64 %5013, %5015
  %5028 = xor i64 %5027, %5016
  %5029 = lshr i64 %5028, 4
  %5030 = trunc i64 %5029 to i8
  %5031 = and i8 %5030, 1
  store i8 %5031, i8* %26, align 1
  %5032 = icmp eq i64 %5016, 0
  %5033 = zext i1 %5032 to i8
  store i8 %5033, i8* %29, align 1
  %5034 = lshr i64 %5016, 63
  %5035 = trunc i64 %5034 to i8
  store i8 %5035, i8* %32, align 1
  %5036 = lshr i64 %5015, 63
  %5037 = xor i64 %5034, %5036
  %5038 = xor i64 %5034, %5014
  %5039 = add nuw nsw i64 %5037, %5038
  %5040 = icmp eq i64 %5039, 2
  %5041 = zext i1 %5040 to i8
  store i8 %5041, i8* %38, align 1
  %5042 = add i64 %5016, 4
  %5043 = add i64 %storemerge70, 78
  store i64 %5043, i64* %3, align 8
  %5044 = inttoptr i64 %5042 to i32*
  %5045 = load i32, i32* %5044, align 4
  %5046 = sext i32 %5045 to i64
  store i64 %5046, i64* %RSI.i1919, align 8
  %5047 = load i64, i64* %RDX.i2117, align 8
  %5048 = shl nsw i64 %5046, 2
  %5049 = add i64 %5048, %5047
  %5050 = add i64 %storemerge70, 82
  store i64 %5050, i64* %3, align 8
  %5051 = inttoptr i64 %5049 to i32*
  %5052 = load i32, i32* %5051, align 4
  %5053 = add i32 %5052, 1
  %5054 = zext i32 %5053 to i64
  store i64 %5054, i64* %R8.i2209, align 8
  %5055 = icmp eq i32 %5052, -1
  %5056 = icmp eq i32 %5053, 0
  %5057 = or i1 %5055, %5056
  %5058 = zext i1 %5057 to i8
  store i8 %5058, i8* %14, align 1
  %5059 = and i32 %5053, 255
  %5060 = tail call i32 @llvm.ctpop.i32(i32 %5059)
  %5061 = trunc i32 %5060 to i8
  %5062 = and i8 %5061, 1
  %5063 = xor i8 %5062, 1
  store i8 %5063, i8* %21, align 1
  %5064 = xor i32 %5053, %5052
  %5065 = lshr i32 %5064, 4
  %5066 = trunc i32 %5065 to i8
  %5067 = and i8 %5066, 1
  store i8 %5067, i8* %26, align 1
  %5068 = zext i1 %5056 to i8
  store i8 %5068, i8* %29, align 1
  %5069 = lshr i32 %5053, 31
  %5070 = trunc i32 %5069 to i8
  store i8 %5070, i8* %32, align 1
  %5071 = lshr i32 %5052, 31
  %5072 = xor i32 %5069, %5071
  %5073 = add nuw nsw i32 %5072, %5069
  %5074 = icmp eq i32 %5073, 2
  %5075 = zext i1 %5074 to i8
  store i8 %5075, i8* %38, align 1
  %5076 = add i64 %storemerge70, 90
  store i64 %5076, i64* %3, align 8
  store i32 %5053, i32* %5051, align 4
  %5077 = load i64, i64* %RBP.i, align 8
  %5078 = add i64 %5077, -12344
  %5079 = load i64, i64* %3, align 8
  %5080 = add i64 %5079, 7
  store i64 %5080, i64* %3, align 8
  %5081 = inttoptr i64 %5078 to i32*
  %5082 = load i32, i32* %5081, align 4
  %5083 = zext i32 %5082 to i64
  store i64 %5083, i64* %R8.i2209, align 8
  %5084 = add i64 %5077, -16464
  %5085 = add i64 %5079, 14
  store i64 %5085, i64* %3, align 8
  %5086 = inttoptr i64 %5084 to i32*
  store i32 %5082, i32* %5086, align 4
  %5087 = load i64, i64* %RBP.i, align 8
  %5088 = add i64 %5087, -12336
  %5089 = load i64, i64* %3, align 8
  %5090 = add i64 %5089, 7
  store i64 %5090, i64* %3, align 8
  %5091 = inttoptr i64 %5088 to i32*
  %5092 = load i32, i32* %5091, align 4
  %5093 = sext i32 %5092 to i64
  %5094 = mul nsw i64 %5093, 24
  store i64 %5094, i64* %RDX.i2117, align 8
  %5095 = lshr i64 %5094, 63
  %5096 = load i64, i64* %RAX.i2220, align 8
  %5097 = add i64 %5094, %5096
  store i64 %5097, i64* %RSI.i1919, align 8
  %5098 = icmp ult i64 %5097, %5096
  %5099 = icmp ult i64 %5097, %5094
  %5100 = or i1 %5098, %5099
  %5101 = zext i1 %5100 to i8
  store i8 %5101, i8* %14, align 1
  %5102 = trunc i64 %5097 to i32
  %5103 = and i32 %5102, 255
  %5104 = tail call i32 @llvm.ctpop.i32(i32 %5103)
  %5105 = trunc i32 %5104 to i8
  %5106 = and i8 %5105, 1
  %5107 = xor i8 %5106, 1
  store i8 %5107, i8* %21, align 1
  %5108 = xor i64 %5094, %5096
  %5109 = xor i64 %5108, %5097
  %5110 = lshr i64 %5109, 4
  %5111 = trunc i64 %5110 to i8
  %5112 = and i8 %5111, 1
  store i8 %5112, i8* %26, align 1
  %5113 = icmp eq i64 %5097, 0
  %5114 = zext i1 %5113 to i8
  store i8 %5114, i8* %29, align 1
  %5115 = lshr i64 %5097, 63
  %5116 = trunc i64 %5115 to i8
  store i8 %5116, i8* %32, align 1
  %5117 = lshr i64 %5096, 63
  %5118 = xor i64 %5115, %5117
  %5119 = xor i64 %5115, %5095
  %5120 = add nuw nsw i64 %5118, %5119
  %5121 = icmp eq i64 %5120, 2
  %5122 = zext i1 %5121 to i8
  store i8 %5122, i8* %38, align 1
  %5123 = inttoptr i64 %5097 to i64*
  %5124 = add i64 %5089, 20
  store i64 %5124, i64* %3, align 8
  %5125 = load i64, i64* %5123, align 8
  store i64 %5125, i64* %RDX.i2117, align 8
  %5126 = add i64 %5087, -12328
  %5127 = add i64 %5089, 27
  store i64 %5127, i64* %3, align 8
  %5128 = inttoptr i64 %5126 to i64*
  store i64 %5125, i64* %5128, align 8
  %5129 = load i64, i64* %RSI.i1919, align 8
  %5130 = add i64 %5129, 8
  %5131 = load i64, i64* %3, align 8
  %5132 = add i64 %5131, 4
  store i64 %5132, i64* %3, align 8
  %5133 = inttoptr i64 %5130 to i64*
  %5134 = load i64, i64* %5133, align 8
  store i64 %5134, i64* %RDX.i2117, align 8
  %5135 = load i64, i64* %RBP.i, align 8
  %5136 = add i64 %5135, -12320
  %5137 = add i64 %5131, 11
  store i64 %5137, i64* %3, align 8
  %5138 = inttoptr i64 %5136 to i64*
  store i64 %5134, i64* %5138, align 8
  %5139 = load i64, i64* %RSI.i1919, align 8
  %5140 = add i64 %5139, 16
  %5141 = load i64, i64* %3, align 8
  %5142 = add i64 %5141, 4
  store i64 %5142, i64* %3, align 8
  %5143 = inttoptr i64 %5140 to i64*
  %5144 = load i64, i64* %5143, align 8
  store i64 %5144, i64* %RDX.i2117, align 8
  %5145 = load i64, i64* %RBP.i, align 8
  %5146 = add i64 %5145, -12312
  %5147 = add i64 %5141, 11
  store i64 %5147, i64* %3, align 8
  %5148 = inttoptr i64 %5146 to i64*
  store i64 %5144, i64* %5148, align 8
  %5149 = load i64, i64* %RBP.i, align 8
  %5150 = add i64 %5149, -12336
  %5151 = load i64, i64* %3, align 8
  %5152 = add i64 %5151, 7
  store i64 %5152, i64* %3, align 8
  %5153 = inttoptr i64 %5150 to i32*
  %5154 = load i32, i32* %5153, align 4
  %5155 = zext i32 %5154 to i64
  store i64 %5155, i64* %R8.i2209, align 8
  store i32 %5154, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  %5156 = add i64 %5149, -16464
  %5157 = add i64 %5151, 22
  store i64 %5157, i64* %3, align 8
  %5158 = inttoptr i64 %5156 to i32*
  %5159 = load i32, i32* %5158, align 4
  %5160 = zext i32 %5159 to i64
  store i64 %5160, i64* %R8.i2209, align 8
  store i32 %5159, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %5161 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5162 = sext i32 %5161 to i64
  %5163 = sext i32 %5161 to i128
  %5164 = and i128 %5163, -18446744073709551616
  %5165 = zext i64 %5162 to i128
  %5166 = or i128 %5164, %5165
  %5167 = mul nsw i128 %5166, 7200
  %5168 = trunc i128 %5167 to i64
  %5169 = load i64, i64* %RCX.i2189, align 8
  %5170 = add i64 %5168, %5169
  %5171 = lshr i64 %5170, 63
  %5172 = mul nsw i128 %5166, 24
  %5173 = trunc i128 %5172 to i64
  store i64 %5173, i64* %RDX.i2117, align 8
  %5174 = lshr i64 %5173, 63
  %5175 = add i64 %5173, %5170
  store i64 %5175, i64* %RCX.i2189, align 8
  %5176 = icmp ult i64 %5175, %5170
  %5177 = icmp ult i64 %5175, %5173
  %5178 = or i1 %5176, %5177
  %5179 = zext i1 %5178 to i8
  store i8 %5179, i8* %14, align 1
  %5180 = trunc i64 %5175 to i32
  %5181 = and i32 %5180, 255
  %5182 = tail call i32 @llvm.ctpop.i32(i32 %5181)
  %5183 = trunc i32 %5182 to i8
  %5184 = and i8 %5183, 1
  %5185 = xor i8 %5184, 1
  store i8 %5185, i8* %21, align 1
  %5186 = xor i64 %5173, %5170
  %5187 = xor i64 %5186, %5175
  %5188 = lshr i64 %5187, 4
  %5189 = trunc i64 %5188 to i8
  %5190 = and i8 %5189, 1
  store i8 %5190, i8* %26, align 1
  %5191 = icmp eq i64 %5175, 0
  %5192 = zext i1 %5191 to i8
  store i8 %5192, i8* %29, align 1
  %5193 = lshr i64 %5175, 63
  %5194 = trunc i64 %5193 to i8
  store i8 %5194, i8* %32, align 1
  %5195 = xor i64 %5193, %5171
  %5196 = xor i64 %5193, %5174
  %5197 = add nuw nsw i64 %5195, %5196
  %5198 = icmp eq i64 %5197, 2
  %5199 = zext i1 %5198 to i8
  store i8 %5199, i8* %38, align 1
  %5200 = load i64, i64* %RBP.i, align 8
  %5201 = add i64 %5200, -12336
  %5202 = add i64 %5151, 70
  store i64 %5202, i64* %3, align 8
  %5203 = inttoptr i64 %5201 to i32*
  %5204 = load i32, i32* %5203, align 4
  %5205 = sext i32 %5204 to i64
  %5206 = mul nsw i64 %5205, 24
  store i64 %5206, i64* %RDX.i2117, align 8
  %5207 = lshr i64 %5206, 63
  %5208 = load i64, i64* %RAX.i2220, align 8
  %5209 = add i64 %5206, %5208
  store i64 %5209, i64* %RAX.i2220, align 8
  %5210 = icmp ult i64 %5209, %5208
  %5211 = icmp ult i64 %5209, %5206
  %5212 = or i1 %5210, %5211
  %5213 = zext i1 %5212 to i8
  store i8 %5213, i8* %14, align 1
  %5214 = trunc i64 %5209 to i32
  %5215 = and i32 %5214, 255
  %5216 = tail call i32 @llvm.ctpop.i32(i32 %5215)
  %5217 = trunc i32 %5216 to i8
  %5218 = and i8 %5217, 1
  %5219 = xor i8 %5218, 1
  store i8 %5219, i8* %21, align 1
  %5220 = xor i64 %5206, %5208
  %5221 = xor i64 %5220, %5209
  %5222 = lshr i64 %5221, 4
  %5223 = trunc i64 %5222 to i8
  %5224 = and i8 %5223, 1
  store i8 %5224, i8* %26, align 1
  %5225 = icmp eq i64 %5209, 0
  %5226 = zext i1 %5225 to i8
  store i8 %5226, i8* %29, align 1
  %5227 = lshr i64 %5209, 63
  %5228 = trunc i64 %5227 to i8
  store i8 %5228, i8* %32, align 1
  %5229 = lshr i64 %5208, 63
  %5230 = xor i64 %5227, %5229
  %5231 = xor i64 %5227, %5207
  %5232 = add nuw nsw i64 %5230, %5231
  %5233 = icmp eq i64 %5232, 2
  %5234 = zext i1 %5233 to i8
  store i8 %5234, i8* %38, align 1
  %5235 = inttoptr i64 %5209 to i64*
  %5236 = add i64 %5151, 80
  store i64 %5236, i64* %3, align 8
  %5237 = load i64, i64* %5235, align 8
  store i64 %5237, i64* %RDX.i2117, align 8
  %5238 = load i64*, i64** %771, align 8
  %5239 = add i64 %5151, 83
  store i64 %5239, i64* %3, align 8
  store i64 %5237, i64* %5238, align 8
  %5240 = load i64, i64* %RAX.i2220, align 8
  %5241 = add i64 %5240, 8
  %5242 = load i64, i64* %3, align 8
  %5243 = add i64 %5242, 4
  store i64 %5243, i64* %3, align 8
  %5244 = inttoptr i64 %5241 to i64*
  %5245 = load i64, i64* %5244, align 8
  store i64 %5245, i64* %RDX.i2117, align 8
  %5246 = load i64, i64* %RCX.i2189, align 8
  %5247 = add i64 %5246, 8
  %5248 = add i64 %5242, 8
  store i64 %5248, i64* %3, align 8
  %5249 = inttoptr i64 %5247 to i64*
  store i64 %5245, i64* %5249, align 8
  %5250 = load i64, i64* %RAX.i2220, align 8
  %5251 = add i64 %5250, 16
  %5252 = load i64, i64* %3, align 8
  %5253 = add i64 %5252, 4
  store i64 %5253, i64* %3, align 8
  %5254 = inttoptr i64 %5251 to i64*
  %5255 = load i64, i64* %5254, align 8
  store i64 %5255, i64* %RAX.i2220, align 8
  %5256 = load i64, i64* %RCX.i2189, align 8
  %5257 = add i64 %5256, 16
  %5258 = add i64 %5252, 8
  store i64 %5258, i64* %3, align 8
  %5259 = inttoptr i64 %5257 to i64*
  store i64 %5255, i64* %5259, align 8
  %5260 = load i64, i64* %3, align 8
  %5261 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5262 = add i32 %5261, 1
  %5263 = zext i32 %5262 to i64
  store i64 %5263, i64* %R8.i2209, align 8
  %5264 = icmp eq i32 %5261, -1
  %5265 = icmp eq i32 %5262, 0
  %5266 = or i1 %5264, %5265
  %5267 = zext i1 %5266 to i8
  store i8 %5267, i8* %14, align 1
  %5268 = and i32 %5262, 255
  %5269 = tail call i32 @llvm.ctpop.i32(i32 %5268)
  %5270 = trunc i32 %5269 to i8
  %5271 = and i8 %5270, 1
  %5272 = xor i8 %5271, 1
  store i8 %5272, i8* %21, align 1
  %5273 = xor i32 %5262, %5261
  %5274 = lshr i32 %5273, 4
  %5275 = trunc i32 %5274 to i8
  %5276 = and i8 %5275, 1
  store i8 %5276, i8* %26, align 1
  %5277 = zext i1 %5265 to i8
  store i8 %5277, i8* %29, align 1
  %5278 = lshr i32 %5262, 31
  %5279 = trunc i32 %5278 to i8
  store i8 %5279, i8* %32, align 1
  %5280 = lshr i32 %5261, 31
  %5281 = xor i32 %5278, %5280
  %5282 = add nuw nsw i32 %5281, %5278
  %5283 = icmp eq i32 %5282, 2
  %5284 = zext i1 %5283 to i8
  store i8 %5284, i8* %38, align 1
  %5285 = load i64, i64* %RBP.i, align 8
  %5286 = add i64 %5285, -12340
  %5287 = add i64 %5260, 19
  store i64 %5287, i64* %3, align 8
  %5288 = inttoptr i64 %5286 to i32*
  store i32 %5262, i32* %5288, align 4
  %.pre125 = load i64, i64* %3, align 8
  br label %block_.L_41a672

block_.L_41a672:                                  ; preds = %block_41a692, %block_.L_41a563
  %5289 = phi i64 [ %5506, %block_41a692 ], [ %.pre125, %block_.L_41a563 ]
  %5290 = load i64, i64* %RBP.i, align 8
  %5291 = add i64 %5290, -12340
  %5292 = add i64 %5289, 6
  store i64 %5292, i64* %3, align 8
  %5293 = inttoptr i64 %5291 to i32*
  %5294 = load i32, i32* %5293, align 4
  %5295 = zext i32 %5294 to i64
  store i64 %5295, i64* %RAX.i2220, align 8
  %5296 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5297 = add i32 %5296, 1
  %5298 = zext i32 %5297 to i64
  store i64 %5298, i64* %RCX.i2189, align 8
  %5299 = icmp eq i32 %5296, -1
  %5300 = icmp eq i32 %5297, 0
  %5301 = or i1 %5299, %5300
  %5302 = zext i1 %5301 to i8
  store i8 %5302, i8* %14, align 1
  %5303 = and i32 %5297, 255
  %5304 = tail call i32 @llvm.ctpop.i32(i32 %5303)
  %5305 = trunc i32 %5304 to i8
  %5306 = and i8 %5305, 1
  %5307 = xor i8 %5306, 1
  store i8 %5307, i8* %21, align 1
  %5308 = xor i32 %5297, %5296
  %5309 = lshr i32 %5308, 4
  %5310 = trunc i32 %5309 to i8
  %5311 = and i8 %5310, 1
  store i8 %5311, i8* %26, align 1
  %5312 = zext i1 %5300 to i8
  store i8 %5312, i8* %29, align 1
  %5313 = lshr i32 %5297, 31
  %5314 = trunc i32 %5313 to i8
  store i8 %5314, i8* %32, align 1
  %5315 = lshr i32 %5296, 31
  %5316 = xor i32 %5313, %5315
  %5317 = add nuw nsw i32 %5316, %5313
  %5318 = icmp eq i32 %5317, 2
  %5319 = zext i1 %5318 to i8
  store i8 %5319, i8* %38, align 1
  %5320 = sext i32 %5297 to i64
  store i64 %5320, i64* %RDX.i2117, align 8
  %5321 = shl nsw i64 %5320, 2
  %5322 = add nsw i64 %5321, 8829104
  %5323 = add i64 %5289, 26
  store i64 %5323, i64* %3, align 8
  %5324 = inttoptr i64 %5322 to i32*
  %5325 = load i32, i32* %5324, align 4
  %5326 = sub i32 %5294, %5325
  %5327 = icmp ult i32 %5294, %5325
  %5328 = zext i1 %5327 to i8
  store i8 %5328, i8* %14, align 1
  %5329 = and i32 %5326, 255
  %5330 = tail call i32 @llvm.ctpop.i32(i32 %5329)
  %5331 = trunc i32 %5330 to i8
  %5332 = and i8 %5331, 1
  %5333 = xor i8 %5332, 1
  store i8 %5333, i8* %21, align 1
  %5334 = xor i32 %5325, %5294
  %5335 = xor i32 %5334, %5326
  %5336 = lshr i32 %5335, 4
  %5337 = trunc i32 %5336 to i8
  %5338 = and i8 %5337, 1
  store i8 %5338, i8* %26, align 1
  %5339 = icmp eq i32 %5326, 0
  %5340 = zext i1 %5339 to i8
  store i8 %5340, i8* %29, align 1
  %5341 = lshr i32 %5326, 31
  %5342 = trunc i32 %5341 to i8
  store i8 %5342, i8* %32, align 1
  %5343 = lshr i32 %5294, 31
  %5344 = lshr i32 %5325, 31
  %5345 = xor i32 %5344, %5343
  %5346 = xor i32 %5341, %5343
  %5347 = add nuw nsw i32 %5346, %5345
  %5348 = icmp eq i32 %5347, 2
  %5349 = zext i1 %5348 to i8
  store i8 %5349, i8* %38, align 1
  %5350 = icmp ne i8 %5342, 0
  %5351 = xor i1 %5350, %5348
  %.v162 = select i1 %5351, i64 32, i64 156
  %5352 = add i64 %5289, %.v162
  store i64 %5352, i64* %3, align 8
  br i1 %5351, label %block_41a692, label %block_.L_41a70e

block_41a692:                                     ; preds = %block_.L_41a672
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX.i2220, align 8
  %5353 = sext i32 %5296 to i64
  %5354 = mul nsw i64 %5353, 7200
  store i64 %5354, i64* %RCX.i2189, align 8
  %5355 = lshr i64 %5354, 63
  %5356 = add i64 %5354, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  store i64 %5356, i64* %RDX.i2117, align 8
  %5357 = icmp ult i64 %5356, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %5358 = icmp ult i64 %5356, %5354
  %5359 = or i1 %5357, %5358
  %5360 = zext i1 %5359 to i8
  store i8 %5360, i8* %14, align 1
  %5361 = trunc i64 %5356 to i32
  %5362 = and i32 %5361, 248
  %5363 = tail call i32 @llvm.ctpop.i32(i32 %5362)
  %5364 = trunc i32 %5363 to i8
  %5365 = and i8 %5364, 1
  %5366 = xor i8 %5365, 1
  store i8 %5366, i8* %21, align 1
  %5367 = xor i64 %5356, ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64)
  %5368 = lshr i64 %5367, 4
  %5369 = trunc i64 %5368 to i8
  %5370 = and i8 %5369, 1
  store i8 %5370, i8* %26, align 1
  %5371 = icmp eq i64 %5356, 0
  %5372 = zext i1 %5371 to i8
  store i8 %5372, i8* %29, align 1
  %5373 = lshr i64 %5356, 63
  %5374 = trunc i64 %5373 to i8
  store i8 %5374, i8* %32, align 1
  %5375 = xor i64 %5373, lshr (i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64 63)
  %5376 = xor i64 %5373, %5355
  %5377 = add nuw nsw i64 %5375, %5376
  %5378 = icmp eq i64 %5377, 2
  %5379 = zext i1 %5378 to i8
  store i8 %5379, i8* %38, align 1
  %5380 = add i64 %5352, 38
  store i64 %5380, i64* %3, align 8
  %5381 = load i32, i32* %5293, align 4
  %5382 = sext i32 %5381 to i64
  %5383 = mul nsw i64 %5382, 24
  %5384 = add i64 %5383, %5356
  store i64 %5384, i64* %RDX.i2117, align 8
  %5385 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5386 = add i32 %5385, 1
  %5387 = zext i32 %5386 to i64
  store i64 %5387, i64* %RSI.i1919, align 8
  %5388 = sext i32 %5386 to i64
  %5389 = mul nsw i64 %5388, 7200
  store i64 %5389, i64* %RCX.i2189, align 8
  %5390 = lshr i64 %5389, 63
  %5391 = load i64, i64* %RAX.i2220, align 8
  %5392 = add i64 %5389, %5391
  store i64 %5392, i64* %RAX.i2220, align 8
  %5393 = icmp ult i64 %5392, %5391
  %5394 = icmp ult i64 %5392, %5389
  %5395 = or i1 %5393, %5394
  %5396 = zext i1 %5395 to i8
  store i8 %5396, i8* %14, align 1
  %5397 = trunc i64 %5392 to i32
  %5398 = and i32 %5397, 255
  %5399 = tail call i32 @llvm.ctpop.i32(i32 %5398)
  %5400 = trunc i32 %5399 to i8
  %5401 = and i8 %5400, 1
  %5402 = xor i8 %5401, 1
  store i8 %5402, i8* %21, align 1
  %5403 = xor i64 %5391, %5392
  %5404 = lshr i64 %5403, 4
  %5405 = trunc i64 %5404 to i8
  %5406 = and i8 %5405, 1
  store i8 %5406, i8* %26, align 1
  %5407 = icmp eq i64 %5392, 0
  %5408 = zext i1 %5407 to i8
  store i8 %5408, i8* %29, align 1
  %5409 = lshr i64 %5392, 63
  %5410 = trunc i64 %5409 to i8
  store i8 %5410, i8* %32, align 1
  %5411 = lshr i64 %5391, 63
  %5412 = xor i64 %5409, %5411
  %5413 = xor i64 %5409, %5390
  %5414 = add nuw nsw i64 %5412, %5413
  %5415 = icmp eq i64 %5414, 2
  %5416 = zext i1 %5415 to i8
  store i8 %5416, i8* %38, align 1
  %5417 = load i64, i64* %RBP.i, align 8
  %5418 = add i64 %5417, -12340
  %5419 = add i64 %5352, 75
  store i64 %5419, i64* %3, align 8
  %5420 = inttoptr i64 %5418 to i32*
  %5421 = load i32, i32* %5420, align 4
  %5422 = sext i32 %5421 to i64
  %5423 = mul nsw i64 %5422, 24
  store i64 %5423, i64* %RCX.i2189, align 8
  %5424 = lshr i64 %5423, 63
  %5425 = add i64 %5423, %5392
  store i64 %5425, i64* %RAX.i2220, align 8
  %5426 = icmp ult i64 %5425, %5392
  %5427 = icmp ult i64 %5425, %5423
  %5428 = or i1 %5426, %5427
  %5429 = zext i1 %5428 to i8
  store i8 %5429, i8* %14, align 1
  %5430 = trunc i64 %5425 to i32
  %5431 = and i32 %5430, 255
  %5432 = tail call i32 @llvm.ctpop.i32(i32 %5431)
  %5433 = trunc i32 %5432 to i8
  %5434 = and i8 %5433, 1
  %5435 = xor i8 %5434, 1
  store i8 %5435, i8* %21, align 1
  %5436 = xor i64 %5423, %5392
  %5437 = xor i64 %5436, %5425
  %5438 = lshr i64 %5437, 4
  %5439 = trunc i64 %5438 to i8
  %5440 = and i8 %5439, 1
  store i8 %5440, i8* %26, align 1
  %5441 = icmp eq i64 %5425, 0
  %5442 = zext i1 %5441 to i8
  store i8 %5442, i8* %29, align 1
  %5443 = lshr i64 %5425, 63
  %5444 = trunc i64 %5443 to i8
  store i8 %5444, i8* %32, align 1
  %5445 = xor i64 %5443, %5409
  %5446 = xor i64 %5443, %5424
  %5447 = add nuw nsw i64 %5445, %5446
  %5448 = icmp eq i64 %5447, 2
  %5449 = zext i1 %5448 to i8
  store i8 %5449, i8* %38, align 1
  %5450 = inttoptr i64 %5425 to i64*
  %5451 = add i64 %5352, 85
  store i64 %5451, i64* %3, align 8
  %5452 = load i64, i64* %5450, align 8
  store i64 %5452, i64* %RCX.i2189, align 8
  %5453 = load i64*, i64** %773, align 8
  %5454 = add i64 %5352, 88
  store i64 %5454, i64* %3, align 8
  store i64 %5452, i64* %5453, align 8
  %5455 = load i64, i64* %RAX.i2220, align 8
  %5456 = add i64 %5455, 8
  %5457 = load i64, i64* %3, align 8
  %5458 = add i64 %5457, 4
  store i64 %5458, i64* %3, align 8
  %5459 = inttoptr i64 %5456 to i64*
  %5460 = load i64, i64* %5459, align 8
  store i64 %5460, i64* %RCX.i2189, align 8
  %5461 = load i64, i64* %RDX.i2117, align 8
  %5462 = add i64 %5461, 8
  %5463 = add i64 %5457, 8
  store i64 %5463, i64* %3, align 8
  %5464 = inttoptr i64 %5462 to i64*
  store i64 %5460, i64* %5464, align 8
  %5465 = load i64, i64* %RAX.i2220, align 8
  %5466 = add i64 %5465, 16
  %5467 = load i64, i64* %3, align 8
  %5468 = add i64 %5467, 4
  store i64 %5468, i64* %3, align 8
  %5469 = inttoptr i64 %5466 to i64*
  %5470 = load i64, i64* %5469, align 8
  store i64 %5470, i64* %RAX.i2220, align 8
  %5471 = load i64, i64* %RDX.i2117, align 8
  %5472 = add i64 %5471, 16
  %5473 = add i64 %5467, 8
  store i64 %5473, i64* %3, align 8
  %5474 = inttoptr i64 %5472 to i64*
  store i64 %5470, i64* %5474, align 8
  %5475 = load i64, i64* %RBP.i, align 8
  %5476 = add i64 %5475, -12340
  %5477 = load i64, i64* %3, align 8
  %5478 = add i64 %5477, 6
  store i64 %5478, i64* %3, align 8
  %5479 = inttoptr i64 %5476 to i32*
  %5480 = load i32, i32* %5479, align 4
  %5481 = add i32 %5480, 1
  %5482 = zext i32 %5481 to i64
  store i64 %5482, i64* %RAX.i2220, align 8
  %5483 = icmp eq i32 %5480, -1
  %5484 = icmp eq i32 %5481, 0
  %5485 = or i1 %5483, %5484
  %5486 = zext i1 %5485 to i8
  store i8 %5486, i8* %14, align 1
  %5487 = and i32 %5481, 255
  %5488 = tail call i32 @llvm.ctpop.i32(i32 %5487)
  %5489 = trunc i32 %5488 to i8
  %5490 = and i8 %5489, 1
  %5491 = xor i8 %5490, 1
  store i8 %5491, i8* %21, align 1
  %5492 = xor i32 %5481, %5480
  %5493 = lshr i32 %5492, 4
  %5494 = trunc i32 %5493 to i8
  %5495 = and i8 %5494, 1
  store i8 %5495, i8* %26, align 1
  %5496 = zext i1 %5484 to i8
  store i8 %5496, i8* %29, align 1
  %5497 = lshr i32 %5481, 31
  %5498 = trunc i32 %5497 to i8
  store i8 %5498, i8* %32, align 1
  %5499 = lshr i32 %5480, 31
  %5500 = xor i32 %5497, %5499
  %5501 = add nuw nsw i32 %5500, %5497
  %5502 = icmp eq i32 %5501, 2
  %5503 = zext i1 %5502 to i8
  store i8 %5503, i8* %38, align 1
  %5504 = add i64 %5477, 15
  store i64 %5504, i64* %3, align 8
  store i32 %5481, i32* %5479, align 4
  %5505 = load i64, i64* %3, align 8
  %5506 = add i64 %5505, -151
  store i64 %5506, i64* %3, align 8
  br label %block_.L_41a672

block_.L_41a70e:                                  ; preds = %block_.L_41a672
  store i64 %5298, i64* %RAX.i2220, align 8
  store i8 %5302, i8* %14, align 1
  store i8 %5307, i8* %21, align 1
  store i8 %5311, i8* %26, align 1
  store i8 %5312, i8* %29, align 1
  store i8 %5314, i8* %32, align 1
  store i8 %5319, i8* %38, align 1
  store i64 %5320, i64* %RCX.i2189, align 8
  %5507 = add i64 %5352, 20
  store i64 %5507, i64* %3, align 8
  %5508 = load i32, i32* %5324, align 4
  %5509 = sext i32 %5296 to i64
  store i64 %5509, i64* %RCX.i2189, align 8
  %5510 = shl nsw i64 %5509, 2
  %5511 = add nsw i64 %5510, 8829104
  %5512 = add i64 %5352, 35
  store i64 %5512, i64* %3, align 8
  %5513 = inttoptr i64 %5511 to i32*
  store i32 %5508, i32* %5513, align 4
  %5514 = load i64, i64* %3, align 8
  %5515 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %5516 = zext i32 %5515 to i64
  store i64 %5516, i64* %RAX.i2220, align 8
  %5517 = load i64, i64* %RBP.i, align 8
  %5518 = add i64 %5517, -16468
  %5519 = add i64 %5514, 13
  store i64 %5519, i64* %3, align 8
  %5520 = inttoptr i64 %5518 to i32*
  %5521 = load i32, i32* %5520, align 4
  %5522 = sub i32 %5515, %5521
  %5523 = icmp ult i32 %5515, %5521
  %5524 = zext i1 %5523 to i8
  store i8 %5524, i8* %14, align 1
  %5525 = and i32 %5522, 255
  %5526 = tail call i32 @llvm.ctpop.i32(i32 %5525)
  %5527 = trunc i32 %5526 to i8
  %5528 = and i8 %5527, 1
  %5529 = xor i8 %5528, 1
  store i8 %5529, i8* %21, align 1
  %5530 = xor i32 %5521, %5515
  %5531 = xor i32 %5530, %5522
  %5532 = lshr i32 %5531, 4
  %5533 = trunc i32 %5532 to i8
  %5534 = and i8 %5533, 1
  store i8 %5534, i8* %26, align 1
  %5535 = icmp eq i32 %5522, 0
  %5536 = zext i1 %5535 to i8
  store i8 %5536, i8* %29, align 1
  %5537 = lshr i32 %5522, 31
  %5538 = trunc i32 %5537 to i8
  store i8 %5538, i8* %32, align 1
  %5539 = lshr i32 %5515, 31
  %5540 = lshr i32 %5521, 31
  %5541 = xor i32 %5540, %5539
  %5542 = xor i32 %5537, %5539
  %5543 = add nuw nsw i32 %5542, %5541
  %5544 = icmp eq i32 %5543, 2
  %5545 = zext i1 %5544 to i8
  store i8 %5545, i8* %38, align 1
  %5546 = icmp ne i8 %5538, 0
  %5547 = xor i1 %5546, %5544
  %.v163 = select i1 %5547, i64 63, i64 19
  %5548 = add i64 %5514, %.v163
  store i64 %5548, i64* %3, align 8
  br i1 %5547, label %block_.L_41a770, label %block_41a744

block_41a744:                                     ; preds = %block_.L_41a70e
  %5549 = add i64 %5517, -12328
  %5550 = add i64 %5548, 7
  store i64 %5550, i64* %3, align 8
  %5551 = inttoptr i64 %5549 to i64*
  %5552 = load i64, i64* %5551, align 8
  store i64 %5552, i64* %RAX.i2220, align 8
  %5553 = add i64 %5517, -16528
  %5554 = add i64 %5548, 14
  store i64 %5554, i64* %3, align 8
  %5555 = inttoptr i64 %5553 to i64*
  %5556 = load i64, i64* %5555, align 8
  store i64 %5556, i64* %RCX.i2189, align 8
  %5557 = add i64 %5548, 17
  store i64 %5557, i64* %3, align 8
  %5558 = inttoptr i64 %5556 to i64*
  store i64 %5552, i64* %5558, align 8
  %5559 = load i64, i64* %RBP.i, align 8
  %5560 = add i64 %5559, -12320
  %5561 = load i64, i64* %3, align 8
  %5562 = add i64 %5561, 7
  store i64 %5562, i64* %3, align 8
  %5563 = inttoptr i64 %5560 to i64*
  %5564 = load i64, i64* %5563, align 8
  store i64 %5564, i64* %RAX.i2220, align 8
  %5565 = load i64, i64* %RCX.i2189, align 8
  %5566 = add i64 %5565, 8
  %5567 = add i64 %5561, 11
  store i64 %5567, i64* %3, align 8
  %5568 = inttoptr i64 %5566 to i64*
  store i64 %5564, i64* %5568, align 8
  %5569 = load i64, i64* %RBP.i, align 8
  %5570 = add i64 %5569, -12312
  %5571 = load i64, i64* %3, align 8
  %5572 = add i64 %5571, 7
  store i64 %5572, i64* %3, align 8
  %5573 = inttoptr i64 %5570 to i64*
  %5574 = load i64, i64* %5573, align 8
  store i64 %5574, i64* %RAX.i2220, align 8
  %5575 = load i64, i64* %RCX.i2189, align 8
  %5576 = add i64 %5575, 16
  %5577 = add i64 %5571, 11
  store i64 %5577, i64* %3, align 8
  %5578 = inttoptr i64 %5576 to i64*
  store i64 %5574, i64* %5578, align 8
  %5579 = load i64, i64* %3, align 8
  %5580 = add i64 %5579, 451
  store i64 %5580, i64* %3, align 8
  br label %block_.L_41a92e

block_.L_41a770:                                  ; preds = %block_.L_41a70e
  %5581 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
  store i8 0, i8* %14, align 1
  %5582 = and i32 %5581, 255
  %5583 = tail call i32 @llvm.ctpop.i32(i32 %5582)
  %5584 = trunc i32 %5583 to i8
  %5585 = and i8 %5584, 1
  %5586 = xor i8 %5585, 1
  store i8 %5586, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5587 = icmp eq i32 %5581, 0
  %5588 = zext i1 %5587 to i8
  store i8 %5588, i8* %29, align 1
  %5589 = lshr i32 %5581, 31
  %5590 = trunc i32 %5589 to i8
  store i8 %5590, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v164 = select i1 %5587, i64 39, i64 14
  %5591 = add i64 %5548, %.v164
  store i64 %5591, i64* %3, align 8
  br i1 %5587, label %block_.L_41a797, label %block_41a77e

block_41a77e:                                     ; preds = %block_.L_41a770
  %5592 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %5593 = add i32 %5592, -2
  %5594 = icmp ult i32 %5592, 2
  %5595 = zext i1 %5594 to i8
  store i8 %5595, i8* %14, align 1
  %5596 = and i32 %5593, 255
  %5597 = tail call i32 @llvm.ctpop.i32(i32 %5596)
  %5598 = trunc i32 %5597 to i8
  %5599 = and i8 %5598, 1
  %5600 = xor i8 %5599, 1
  store i8 %5600, i8* %21, align 1
  %5601 = xor i32 %5593, %5592
  %5602 = lshr i32 %5601, 4
  %5603 = trunc i32 %5602 to i8
  %5604 = and i8 %5603, 1
  store i8 %5604, i8* %26, align 1
  %5605 = icmp eq i32 %5593, 0
  %5606 = zext i1 %5605 to i8
  store i8 %5606, i8* %29, align 1
  %5607 = lshr i32 %5593, 31
  %5608 = trunc i32 %5607 to i8
  store i8 %5608, i8* %32, align 1
  %5609 = lshr i32 %5592, 31
  %5610 = xor i32 %5607, %5609
  %5611 = add nuw nsw i32 %5610, %5609
  %5612 = icmp eq i32 %5611, 2
  %5613 = zext i1 %5612 to i8
  store i8 %5613, i8* %38, align 1
  %5614 = icmp ne i8 %5608, 0
  %5615 = xor i1 %5614, %5612
  %.v165 = select i1 %5615, i64 25, i64 14
  %5616 = add i64 %5591, %.v165
  store i64 %5616, i64* %3, align 8
  br i1 %5615, label %block_.L_41a797, label %block_41a78c

block_41a78c:                                     ; preds = %block_41a77e
  %5617 = add i64 %5517, -16464
  %5618 = add i64 %5616, 6
  store i64 %5618, i64* %3, align 8
  %5619 = inttoptr i64 %5617 to i32*
  %5620 = load i32, i32* %5619, align 4
  %5621 = zext i32 %5620 to i64
  store i64 %5621, i64* %RDI.i2221, align 8
  %5622 = add i64 %5616, 35972
  %5623 = add i64 %5616, 11
  %5624 = load i64, i64* %6, align 8
  %5625 = add i64 %5624, -8
  %5626 = inttoptr i64 %5625 to i64*
  store i64 %5623, i64* %5626, align 8
  store i64 %5625, i64* %6, align 8
  store i64 %5622, i64* %3, align 8
  %call2_41a792 = tail call %struct.Memory* @sub_423410.post_thinking(%struct.State* nonnull %0, i64 %5622, %struct.Memory* %call2_41a016)
  %.pre126 = load i64, i64* %3, align 8
  %.pre127.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a797

block_.L_41a797:                                  ; preds = %block_41a78c, %block_41a77e, %block_.L_41a770
  %.pre127 = phi i64 [ %5517, %block_.L_41a770 ], [ %5517, %block_41a77e ], [ %.pre127.pre, %block_41a78c ]
  %5627 = phi i64 [ %5591, %block_.L_41a770 ], [ %5616, %block_41a77e ], [ %.pre126, %block_41a78c ]
  %MEMORY.37 = phi %struct.Memory* [ %call2_41a016, %block_.L_41a770 ], [ %call2_41a016, %block_41a77e ], [ %call2_41a792, %block_41a78c ]
  %5628 = add i64 %5627, 5
  store i64 %5628, i64* %3, align 8
  br label %block_.L_41a79c

block_.L_41a79c:                                  ; preds = %block_.L_41a797, %block_41a067, %block_.L_41a055
  %5629 = phi i64 [ %3325, %block_.L_41a055 ], [ %3339, %block_41a067 ], [ %5628, %block_.L_41a797 ]
  %5630 = phi i64 [ %3256, %block_.L_41a055 ], [ %3256, %block_41a067 ], [ %.pre127, %block_.L_41a797 ]
  %MEMORY.38 = phi %struct.Memory* [ %call2_41a016, %block_.L_41a055 ], [ %call2_41a016, %block_41a067 ], [ %MEMORY.37, %block_.L_41a797 ]
  %5631 = add i64 %5630, -16456
  %5632 = add i64 %5629, 7
  store i64 %5632, i64* %3, align 8
  %5633 = inttoptr i64 %5631 to i32*
  %5634 = load i32, i32* %5633, align 4
  store i8 0, i8* %14, align 1
  %5635 = and i32 %5634, 255
  %5636 = tail call i32 @llvm.ctpop.i32(i32 %5635)
  %5637 = trunc i32 %5636 to i8
  %5638 = and i8 %5637, 1
  %5639 = xor i8 %5638, 1
  store i8 %5639, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5640 = icmp eq i32 %5634, 0
  %5641 = zext i1 %5640 to i8
  store i8 %5641, i8* %29, align 1
  %5642 = lshr i32 %5634, 31
  %5643 = trunc i32 %5642 to i8
  store i8 %5643, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v166 = select i1 %5640, i64 23, i64 13
  %5644 = add i64 %5629, %.v166
  store i64 %5644, i64* %3, align 8
  br i1 %5640, label %block_.L_41a7b3, label %block_41a7a9

block_41a7a9:                                     ; preds = %block_.L_41a79c
  %5645 = add i64 %5630, -16460
  %5646 = add i64 %5644, 10
  store i64 %5646, i64* %3, align 8
  %5647 = inttoptr i64 %5645 to i32*
  store i32 0, i32* %5647, align 4
  %.pre128 = load i64, i64* %3, align 8
  %.pre129 = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a7b3

block_.L_41a7b3:                                  ; preds = %block_41a7a9, %block_.L_41a79c
  %5648 = phi i64 [ %.pre129, %block_41a7a9 ], [ %5630, %block_.L_41a79c ]
  %5649 = phi i64 [ %.pre128, %block_41a7a9 ], [ %5644, %block_.L_41a79c ]
  %5650 = load i32, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  %5651 = zext i32 %5650 to i64
  store i64 %5651, i64* %RAX.i2220, align 8
  %5652 = add i64 %5648, -16512
  %5653 = add i64 %5649, 13
  store i64 %5653, i64* %3, align 8
  %5654 = inttoptr i64 %5652 to i32*
  %5655 = load i32, i32* %5654, align 4
  %5656 = sub i32 %5650, %5655
  %5657 = zext i32 %5656 to i64
  store i64 %5657, i64* %RAX.i2220, align 8
  %5658 = icmp ult i32 %5650, %5655
  %5659 = zext i1 %5658 to i8
  store i8 %5659, i8* %14, align 1
  %5660 = and i32 %5656, 255
  %5661 = tail call i32 @llvm.ctpop.i32(i32 %5660)
  %5662 = trunc i32 %5661 to i8
  %5663 = and i8 %5662, 1
  %5664 = xor i8 %5663, 1
  store i8 %5664, i8* %21, align 1
  %5665 = xor i32 %5655, %5650
  %5666 = xor i32 %5665, %5656
  %5667 = lshr i32 %5666, 4
  %5668 = trunc i32 %5667 to i8
  %5669 = and i8 %5668, 1
  store i8 %5669, i8* %26, align 1
  %5670 = icmp eq i32 %5656, 0
  %5671 = zext i1 %5670 to i8
  store i8 %5671, i8* %29, align 1
  %5672 = lshr i32 %5656, 31
  %5673 = trunc i32 %5672 to i8
  store i8 %5673, i8* %32, align 1
  %5674 = lshr i32 %5650, 31
  %5675 = lshr i32 %5655, 31
  %5676 = xor i32 %5675, %5674
  %5677 = xor i32 %5672, %5674
  %5678 = add nuw nsw i32 %5677, %5676
  %5679 = icmp eq i32 %5678, 2
  %5680 = zext i1 %5679 to i8
  store i8 %5680, i8* %38, align 1
  %5681 = add i64 %5648, -12336
  %5682 = add i64 %5649, 20
  store i64 %5682, i64* %3, align 8
  %5683 = inttoptr i64 %5681 to i32*
  %5684 = load i32, i32* %5683, align 4
  %5685 = sext i32 %5684 to i64
  store i64 %5685, i64* %RCX.i2189, align 8
  %5686 = shl nsw i64 %5685, 2
  %5687 = add nsw i64 %5686, 8930080
  %5688 = add i64 %5649, 27
  store i64 %5688, i64* %3, align 8
  %5689 = inttoptr i64 %5687 to i32*
  store i32 %5656, i32* %5689, align 4
  %.pre130 = load i64, i64* %3, align 8
  br label %block_.L_4197c8.backedge

block_.L_41a7d3:                                  ; preds = %block_.L_4197c8
  %5690 = load i64, i64* %RBP.i, align 8
  %5691 = add i64 %5690, -16452
  %5692 = add i64 %802, 7
  store i64 %5692, i64* %3, align 8
  %5693 = inttoptr i64 %5691 to i32*
  %5694 = load i32, i32* %5693, align 4
  store i8 0, i8* %14, align 1
  %5695 = and i32 %5694, 255
  %5696 = tail call i32 @llvm.ctpop.i32(i32 %5695)
  %5697 = trunc i32 %5696 to i8
  %5698 = and i8 %5697, 1
  %5699 = xor i8 %5698, 1
  store i8 %5699, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5700 = icmp eq i32 %5694, 0
  %5701 = zext i1 %5700 to i8
  store i8 %5701, i8* %29, align 1
  %5702 = lshr i32 %5694, 31
  %5703 = trunc i32 %5702 to i8
  store i8 %5703, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v191 = select i1 %5700, i64 182, i64 13
  %5704 = add i64 %802, %.v191
  store i64 %5704, i64* %3, align 8
  %.pre131 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
  br i1 %5700, label %block_.L_41a889, label %block_41a7e0

block_41a7e0:                                     ; preds = %block_.L_41a7d3
  store i8 0, i8* %14, align 1
  %5705 = and i32 %.pre131, 255
  %5706 = tail call i32 @llvm.ctpop.i32(i32 %5705)
  %5707 = trunc i32 %5706 to i8
  %5708 = and i8 %5707, 1
  %5709 = xor i8 %5708, 1
  store i8 %5709, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5710 = icmp eq i32 %.pre131, 0
  %5711 = zext i1 %5710 to i8
  store i8 %5711, i8* %29, align 1
  %5712 = lshr i32 %.pre131, 31
  %5713 = trunc i32 %5712 to i8
  store i8 %5713, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v192 = select i1 %5710, i64 14, i64 169
  %5714 = add i64 %5704, %.v192
  store i64 %5714, i64* %3, align 8
  br i1 %5710, label %block_41a7ee, label %block_.L_41a889

block_41a7ee:                                     ; preds = %block_41a7e0
  %5715 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %5716 = add i32 %5715, -3
  %5717 = icmp ult i32 %5715, 3
  %5718 = zext i1 %5717 to i8
  store i8 %5718, i8* %14, align 1
  %5719 = and i32 %5716, 255
  %5720 = tail call i32 @llvm.ctpop.i32(i32 %5719)
  %5721 = trunc i32 %5720 to i8
  %5722 = and i8 %5721, 1
  %5723 = xor i8 %5722, 1
  store i8 %5723, i8* %21, align 1
  %5724 = xor i32 %5716, %5715
  %5725 = lshr i32 %5724, 4
  %5726 = trunc i32 %5725 to i8
  %5727 = and i8 %5726, 1
  store i8 %5727, i8* %26, align 1
  %5728 = icmp eq i32 %5716, 0
  %5729 = zext i1 %5728 to i8
  store i8 %5729, i8* %29, align 1
  %5730 = lshr i32 %5716, 31
  %5731 = trunc i32 %5730 to i8
  store i8 %5731, i8* %32, align 1
  %5732 = lshr i32 %5715, 31
  %5733 = xor i32 %5730, %5732
  %5734 = add nuw nsw i32 %5733, %5732
  %5735 = icmp eq i32 %5734, 2
  %5736 = zext i1 %5735 to i8
  store i8 %5736, i8* %38, align 1
  %.v195 = select i1 %5728, i64 104, i64 14
  %5737 = add i64 %5714, %.v195
  store i64 %5737, i64* %3, align 8
  br i1 %5728, label %block_.L_41a856, label %block_41a7fc

block_41a7fc:                                     ; preds = %block_41a7ee
  %5738 = add i32 %5715, -4
  %5739 = icmp ult i32 %5715, 4
  %5740 = zext i1 %5739 to i8
  store i8 %5740, i8* %14, align 1
  %5741 = and i32 %5738, 255
  %5742 = tail call i32 @llvm.ctpop.i32(i32 %5741)
  %5743 = trunc i32 %5742 to i8
  %5744 = and i8 %5743, 1
  %5745 = xor i8 %5744, 1
  store i8 %5745, i8* %21, align 1
  %5746 = xor i32 %5738, %5715
  %5747 = lshr i32 %5746, 4
  %5748 = trunc i32 %5747 to i8
  %5749 = and i8 %5748, 1
  store i8 %5749, i8* %26, align 1
  %5750 = icmp eq i32 %5738, 0
  %5751 = zext i1 %5750 to i8
  store i8 %5751, i8* %29, align 1
  %5752 = lshr i32 %5738, 31
  %5753 = trunc i32 %5752 to i8
  store i8 %5753, i8* %32, align 1
  %5754 = xor i32 %5752, %5732
  %5755 = add nuw nsw i32 %5754, %5732
  %5756 = icmp eq i32 %5755, 2
  %5757 = zext i1 %5756 to i8
  store i8 %5757, i8* %38, align 1
  %.v196 = select i1 %5750, i64 90, i64 14
  %5758 = add i64 %5737, %.v196
  store i64 %5758, i64* %3, align 8
  br i1 %5750, label %block_.L_41a856, label %block_41a80a

block_41a80a:                                     ; preds = %block_41a7fc
  %5759 = add i64 %5758, -69418
  %5760 = add i64 %5758, 5
  %5761 = load i64, i64* %6, align 8
  %5762 = add i64 %5761, -8
  %5763 = inttoptr i64 %5762 to i64*
  store i64 %5760, i64* %5763, align 8
  store i64 %5762, i64* %6, align 8
  store i64 %5759, i64* %3, align 8
  %call2_41a80a = tail call %struct.Memory* @sub_4098e0.in_check(%struct.State* nonnull %0, i64 %5759, %struct.Memory* %MEMORY.8)
  %5764 = load i32, i32* %EAX.i2154, align 4
  %5765 = load i64, i64* %3, align 8
  store i8 0, i8* %14, align 1
  %5766 = and i32 %5764, 255
  %5767 = tail call i32 @llvm.ctpop.i32(i32 %5766)
  %5768 = trunc i32 %5767 to i8
  %5769 = and i8 %5768, 1
  %5770 = xor i8 %5769, 1
  store i8 %5770, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5771 = icmp eq i32 %5764, 0
  %5772 = zext i1 %5771 to i8
  store i8 %5772, i8* %29, align 1
  %5773 = lshr i32 %5764, 31
  %5774 = trunc i32 %5773 to i8
  store i8 %5774, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v197 = select i1 %5771, i64 55, i64 9
  %5775 = add i64 %5765, %.v197
  store i64 %5775, i64* %3, align 8
  br i1 %5771, label %block_.L_41a846, label %block_41a818

block_41a818:                                     ; preds = %block_41a80a
  %5776 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %5777 = add i32 %5776, -1
  %5778 = icmp eq i32 %5776, 0
  %5779 = zext i1 %5778 to i8
  store i8 %5779, i8* %14, align 1
  %5780 = and i32 %5777, 255
  %5781 = tail call i32 @llvm.ctpop.i32(i32 %5780)
  %5782 = trunc i32 %5781 to i8
  %5783 = and i8 %5782, 1
  %5784 = xor i8 %5783, 1
  store i8 %5784, i8* %21, align 1
  %5785 = xor i32 %5777, %5776
  %5786 = lshr i32 %5785, 4
  %5787 = trunc i32 %5786 to i8
  %5788 = and i8 %5787, 1
  store i8 %5788, i8* %26, align 1
  %5789 = icmp eq i32 %5777, 0
  %5790 = zext i1 %5789 to i8
  store i8 %5790, i8* %29, align 1
  %5791 = lshr i32 %5777, 31
  %5792 = trunc i32 %5791 to i8
  store i8 %5792, i8* %32, align 1
  %5793 = lshr i32 %5776, 31
  %5794 = xor i32 %5791, %5793
  %5795 = add nuw nsw i32 %5794, %5793
  %5796 = icmp eq i32 %5795, 2
  %5797 = zext i1 %5796 to i8
  store i8 %5797, i8* %38, align 1
  %.v198 = select i1 %5789, i64 14, i64 30
  %5798 = add i64 %5775, %.v198
  %5799 = add i64 %5798, 11
  store i64 %5799, i64* %3, align 8
  br i1 %5789, label %block_41a826, label %block_.L_41a836

block_41a826:                                     ; preds = %block_41a818
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %5800 = add i64 %5798, 27
  store i64 %5800, i64* %3, align 8
  br label %block_.L_41a841

block_.L_41a836:                                  ; preds = %block_41a818
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  br label %block_.L_41a841

block_.L_41a841:                                  ; preds = %block_.L_41a836, %block_41a826
  %5801 = phi i64 [ %5799, %block_.L_41a836 ], [ %5800, %block_41a826 ]
  %5802 = add i64 %5801, 16
  store i64 %5802, i64* %3, align 8
  br label %block_.L_41a851

block_.L_41a846:                                  ; preds = %block_41a80a
  %5803 = add i64 %5775, 11
  store i64 %5803, i64* %3, align 8
  store i32 1, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  br label %block_.L_41a851

block_.L_41a851:                                  ; preds = %block_.L_41a846, %block_.L_41a841
  %5804 = phi i64 [ %5803, %block_.L_41a846 ], [ %5802, %block_.L_41a841 ]
  %5805 = add i64 %5804, 51
  %.pre132.pre = load i64, i64* %RBP.i, align 8
  br label %block_.L_41a884

block_.L_41a856:                                  ; preds = %block_41a7fc, %block_41a7ee
  %5806 = phi i64 [ %5758, %block_41a7fc ], [ %5737, %block_41a7ee ]
  %5807 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
  %5808 = add i32 %5807, -1
  %5809 = icmp eq i32 %5807, 0
  %5810 = zext i1 %5809 to i8
  store i8 %5810, i8* %14, align 1
  %5811 = and i32 %5808, 255
  %5812 = tail call i32 @llvm.ctpop.i32(i32 %5811)
  %5813 = trunc i32 %5812 to i8
  %5814 = and i8 %5813, 1
  %5815 = xor i8 %5814, 1
  store i8 %5815, i8* %21, align 1
  %5816 = xor i32 %5808, %5807
  %5817 = lshr i32 %5816, 4
  %5818 = trunc i32 %5817 to i8
  %5819 = and i8 %5818, 1
  store i8 %5819, i8* %26, align 1
  %5820 = icmp eq i32 %5808, 0
  %5821 = zext i1 %5820 to i8
  store i8 %5821, i8* %29, align 1
  %5822 = lshr i32 %5808, 31
  %5823 = trunc i32 %5822 to i8
  store i8 %5823, i8* %32, align 1
  %5824 = lshr i32 %5807, 31
  %5825 = xor i32 %5822, %5824
  %5826 = add nuw nsw i32 %5825, %5824
  %5827 = icmp eq i32 %5826, 2
  %5828 = zext i1 %5827 to i8
  store i8 %5828, i8* %38, align 1
  %.v199 = select i1 %5820, i64 14, i64 30
  %5829 = add i64 %5806, %.v199
  %5830 = add i64 %5829, 11
  store i64 %5830, i64* %3, align 8
  br i1 %5820, label %block_41a864, label %block_.L_41a874

block_41a864:                                     ; preds = %block_.L_41a856
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  %5831 = add i64 %5829, 27
  store i64 %5831, i64* %3, align 8
  br label %block_.L_41a87f

block_.L_41a874:                                  ; preds = %block_.L_41a856
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  br label %block_.L_41a87f

block_.L_41a87f:                                  ; preds = %block_.L_41a874, %block_41a864
  %5832 = phi i64 [ %5830, %block_.L_41a874 ], [ %5831, %block_41a864 ]
  %5833 = add i64 %5832, 5
  store i64 %5833, i64* %3, align 8
  br label %block_.L_41a884

block_.L_41a884:                                  ; preds = %block_.L_41a87f, %block_.L_41a851
  %.pre132 = phi i64 [ %.pre132.pre, %block_.L_41a851 ], [ %5690, %block_.L_41a87f ]
  %storemerge72 = phi i64 [ %5805, %block_.L_41a851 ], [ %5833, %block_.L_41a87f ]
  %MEMORY.44 = phi %struct.Memory* [ %call2_41a80a, %block_.L_41a851 ], [ %MEMORY.8, %block_.L_41a87f ]
  %5834 = add i64 %storemerge72, 131
  br label %block_.L_41a907

block_.L_41a889:                                  ; preds = %block_.L_41a7d3, %block_41a7e0
  %5835 = phi i64 [ %5714, %block_41a7e0 ], [ %5704, %block_.L_41a7d3 ]
  store i8 0, i8* %14, align 1
  %5836 = and i32 %.pre131, 255
  %5837 = tail call i32 @llvm.ctpop.i32(i32 %5836)
  %5838 = trunc i32 %5837 to i8
  %5839 = and i8 %5838, 1
  %5840 = xor i8 %5839, 1
  store i8 %5840, i8* %21, align 1
  store i8 0, i8* %26, align 1
  %5841 = icmp eq i32 %.pre131, 0
  %5842 = zext i1 %5841 to i8
  store i8 %5842, i8* %29, align 1
  %5843 = lshr i32 %.pre131, 31
  %5844 = trunc i32 %5843 to i8
  store i8 %5844, i8* %32, align 1
  store i8 0, i8* %38, align 1
  %.v193 = select i1 %5841, i64 14, i64 121
  %5845 = add i64 %5835, %.v193
  store i64 %5845, i64* %3, align 8
  br i1 %5841, label %block_41a897, label %block_.L_41a902

block_41a897:                                     ; preds = %block_.L_41a889
  %5846 = load i32, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %5847 = add i32 %5846, -100
  %5848 = icmp ult i32 %5846, 100
  %5849 = zext i1 %5848 to i8
  store i8 %5849, i8* %14, align 1
  %5850 = and i32 %5847, 255
  %5851 = tail call i32 @llvm.ctpop.i32(i32 %5850)
  %5852 = trunc i32 %5851 to i8
  %5853 = and i8 %5852, 1
  %5854 = xor i8 %5853, 1
  store i8 %5854, i8* %21, align 1
  %5855 = xor i32 %5847, %5846
  %5856 = lshr i32 %5855, 4
  %5857 = trunc i32 %5856 to i8
  %5858 = and i8 %5857, 1
  store i8 %5858, i8* %26, align 1
  %5859 = icmp eq i32 %5847, 0
  %5860 = zext i1 %5859 to i8
  store i8 %5860, i8* %29, align 1
  %5861 = lshr i32 %5847, 31
  %5862 = trunc i32 %5861 to i8
  store i8 %5862, i8* %32, align 1
  %5863 = lshr i32 %5846, 31
  %5864 = xor i32 %5861, %5863
  %5865 = add nuw nsw i32 %5864, %5863
  %5866 = icmp eq i32 %5865, 2
  %5867 = zext i1 %5866 to i8
  store i8 %5867, i8* %38, align 1
  %5868 = icmp ne i8 %5862, 0
  %5869 = xor i1 %5868, %5866
  %5870 = or i1 %5859, %5869
  %.v194 = select i1 %5870, i64 102, i64 14
  %5871 = add i64 %5845, %.v194
  store i64 %5871, i64* %3, align 8
  br i1 %5870, label %block_.L_41a8fd, label %block_41a8a5

block_41a8a5:                                     ; preds = %block_41a897
  store i32 4, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  store i32 0, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %5872 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %5873 = sext i32 %5872 to i64
  %5874 = shl nsw i64 %5873, 2
  %5875 = add nsw i64 %5874, 8829104
  %5876 = add i64 %5871, 41
  store i64 %5876, i64* %3, align 8
  %5877 = inttoptr i64 %5875 to i32*
  store i32 0, i32* %5877, align 4
  %5878 = load i64, i64* %3, align 8
  %5879 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5879, i64* %RAX.i2220, align 8
  %5880 = load i64, i64* %RBP.i, align 8
  %5881 = add i64 %5880, -16528
  %5882 = add i64 %5878, 15
  store i64 %5882, i64* %3, align 8
  %5883 = inttoptr i64 %5881 to i64*
  %5884 = load i64, i64* %5883, align 8
  store i64 %5884, i64* %RCX.i2189, align 8
  %5885 = add i64 %5878, 18
  store i64 %5885, i64* %3, align 8
  %5886 = inttoptr i64 %5884 to i64*
  store i64 %5879, i64* %5886, align 8
  %5887 = load i64, i64* %3, align 8
  %5888 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  %5889 = load i64, i64* %RCX.i2189, align 8
  %5890 = add i64 %5889, 8
  %5891 = add i64 %5887, 12
  store i64 %5891, i64* %3, align 8
  %5892 = inttoptr i64 %5890 to i64*
  store i64 %5888, i64* %5892, align 8
  %5893 = load i64, i64* %3, align 8
  %5894 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5894, i64* %RAX.i2220, align 8
  %5895 = load i64, i64* %RCX.i2189, align 8
  %5896 = add i64 %5895, 16
  %5897 = add i64 %5893, 12
  store i64 %5897, i64* %3, align 8
  %5898 = inttoptr i64 %5896 to i64*
  store i64 %5894, i64* %5898, align 8
  %5899 = load i64, i64* %3, align 8
  %5900 = add i64 %5899, 54
  store i64 %5900, i64* %3, align 8
  br label %block_.L_41a92e

block_.L_41a8fd:                                  ; preds = %block_41a897
  %5901 = add i64 %5871, 5
  store i64 %5901, i64* %3, align 8
  br label %block_.L_41a902

block_.L_41a902:                                  ; preds = %block_.L_41a889, %block_.L_41a8fd
  %5902 = phi i64 [ %5901, %block_.L_41a8fd ], [ %5845, %block_.L_41a889 ]
  %5903 = add i64 %5902, 5
  store i64 %5903, i64* %3, align 8
  br label %block_.L_41a907

block_.L_41a907:                                  ; preds = %block_.L_41a902, %block_.L_41a884
  %5904 = phi i64 [ %.pre132, %block_.L_41a884 ], [ %5690, %block_.L_41a902 ]
  %storemerge73 = phi i64 [ %5834, %block_.L_41a884 ], [ %5903, %block_.L_41a902 ]
  %MEMORY.47 = phi %struct.Memory* [ %MEMORY.44, %block_.L_41a884 ], [ %MEMORY.8, %block_.L_41a902 ]
  %5905 = add i64 %5904, -12328
  %5906 = add i64 %storemerge73, 7
  store i64 %5906, i64* %3, align 8
  %5907 = inttoptr i64 %5905 to i64*
  %5908 = load i64, i64* %5907, align 8
  store i64 %5908, i64* %RAX.i2220, align 8
  %5909 = add i64 %5904, -16528
  %5910 = add i64 %storemerge73, 14
  store i64 %5910, i64* %3, align 8
  %5911 = inttoptr i64 %5909 to i64*
  %5912 = load i64, i64* %5911, align 8
  store i64 %5912, i64* %RCX.i2189, align 8
  %5913 = add i64 %storemerge73, 17
  store i64 %5913, i64* %3, align 8
  %5914 = inttoptr i64 %5912 to i64*
  store i64 %5908, i64* %5914, align 8
  %5915 = load i64, i64* %RBP.i, align 8
  %5916 = add i64 %5915, -12320
  %5917 = load i64, i64* %3, align 8
  %5918 = add i64 %5917, 7
  store i64 %5918, i64* %3, align 8
  %5919 = inttoptr i64 %5916 to i64*
  %5920 = load i64, i64* %5919, align 8
  store i64 %5920, i64* %RAX.i2220, align 8
  %5921 = load i64, i64* %RCX.i2189, align 8
  %5922 = add i64 %5921, 8
  %5923 = add i64 %5917, 11
  store i64 %5923, i64* %3, align 8
  %5924 = inttoptr i64 %5922 to i64*
  store i64 %5920, i64* %5924, align 8
  %5925 = load i64, i64* %RBP.i, align 8
  %5926 = add i64 %5925, -12312
  %5927 = load i64, i64* %3, align 8
  %5928 = add i64 %5927, 7
  store i64 %5928, i64* %3, align 8
  %5929 = inttoptr i64 %5926 to i64*
  %5930 = load i64, i64* %5929, align 8
  store i64 %5930, i64* %RAX.i2220, align 8
  %5931 = load i64, i64* %RCX.i2189, align 8
  %5932 = add i64 %5931, 16
  %5933 = add i64 %5927, 11
  store i64 %5933, i64* %3, align 8
  %5934 = inttoptr i64 %5932 to i64*
  store i64 %5930, i64* %5934, align 8
  %.pre133 = load i64, i64* %3, align 8
  br label %block_.L_41a92e

block_.L_41a92e:                                  ; preds = %block_.L_41a907, %block_41a8a5, %block_41a744, %block_41a029, %block_4194dc
  %5935 = phi i64 [ %.pre133, %block_.L_41a907 ], [ %5900, %block_41a8a5 ], [ %5580, %block_41a744 ], [ %3288, %block_41a029 ], [ %206, %block_4194dc ]
  %MEMORY.48 = phi %struct.Memory* [ %MEMORY.47, %block_.L_41a907 ], [ %MEMORY.8, %block_41a8a5 ], [ %call2_41a016, %block_41a744 ], [ %call2_41a016, %block_41a029 ], [ %call2_4194ce, %block_4194dc ]
  %5936 = load i64, i64* %RBP.i, align 8
  %5937 = add i64 %5936, -16520
  %5938 = add i64 %5935, 7
  store i64 %5938, i64* %3, align 8
  %5939 = inttoptr i64 %5937 to i64*
  %5940 = load i64, i64* %5939, align 8
  store i64 %5940, i64* %RAX.i2220, align 8
  %5941 = load i64, i64* %6, align 8
  %5942 = add i64 %5941, 16576
  store i64 %5942, i64* %6, align 8
  %5943 = icmp ugt i64 %5941, -16577
  %5944 = zext i1 %5943 to i8
  store i8 %5944, i8* %14, align 1
  %5945 = trunc i64 %5942 to i32
  %5946 = and i32 %5945, 255
  %5947 = tail call i32 @llvm.ctpop.i32(i32 %5946)
  %5948 = trunc i32 %5947 to i8
  %5949 = and i8 %5948, 1
  %5950 = xor i8 %5949, 1
  store i8 %5950, i8* %21, align 1
  %5951 = xor i64 %5942, %5941
  %5952 = lshr i64 %5951, 4
  %5953 = trunc i64 %5952 to i8
  %5954 = and i8 %5953, 1
  store i8 %5954, i8* %26, align 1
  %5955 = icmp eq i64 %5942, 0
  %5956 = zext i1 %5955 to i8
  store i8 %5956, i8* %29, align 1
  %5957 = lshr i64 %5942, 63
  %5958 = trunc i64 %5957 to i8
  store i8 %5958, i8* %32, align 1
  %5959 = lshr i64 %5941, 63
  %5960 = xor i64 %5957, %5959
  %5961 = add nuw nsw i64 %5960, %5957
  %5962 = icmp eq i64 %5961, 2
  %5963 = zext i1 %5962 to i8
  store i8 %5963, i8* %38, align 1
  %5964 = add i64 %5935, 15
  store i64 %5964, i64* %3, align 8
  %5965 = add i64 %5941, 16584
  %5966 = inttoptr i64 %5942 to i64*
  %5967 = load i64, i64* %5966, align 8
  store i64 %5967, i64* %RBP.i, align 8
  store i64 %5965, i64* %6, align 8
  %5968 = add i64 %5935, 16
  store i64 %5968, i64* %3, align 8
  %5969 = inttoptr i64 %5965 to i64*
  %5970 = load i64, i64* %5969, align 8
  store i64 %5970, i64* %3, align 8
  %5971 = add i64 %5941, 16592
  store i64 %5971, i64* %6, align 8
  ret %struct.Memory* %MEMORY.48
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
define %struct.Memory* @routine_subq__0x40c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -16576
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 16576
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
define %struct.Memory* @routine_movq__rdi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -4
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db08___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x3028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12328
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x3020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12320
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x3018__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12312
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfff0bdc0__MINUS0x3038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12344
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 -1000000, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x407c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16464
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
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
define %struct.Memory* @routine_movl__ecx__MINUS0x4054__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16468
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x302c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12332
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16452
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x886bc0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x639110(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x639110_type* @G_0x639110 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x866788(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8661dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8661dc_type* @G_0x8661dc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x404c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xfff0bdc0__0x86450c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 -1000000, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x864500___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
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
define %struct.Memory* @routine_movl__ecx__0x864500(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x4088__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16520
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x4090__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16528
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.is_draw(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_419534(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x5__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 5, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86450c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x886bc0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x86b8b0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8829104
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db08___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db08_type* @G_0x62db08 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4090__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16528
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db10___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db10_type* @G_0x62db10 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x62db18___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x62db18_type* @G_0x62db18 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a92e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x86b8b0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8829104
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b40___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62ea38___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x886bc0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
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
define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x84a3d0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8692688
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.in_check(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x4078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16504
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4078__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16504
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
define %struct.Memory* @routine_je_.L_41959e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62e9f8___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e9f8_type* @G_0x62e9f8 to i32*), align 8
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
define %struct.Memory* @routine_movl__eax__0x62e9f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62e9f8_type* @G_0x62e9f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4078__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16504
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
define %struct.Memory* @routine_movl__eax__0x880660___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8914528
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8a05c0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 9045440
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x8801a0___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8913312
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 0, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %5, 4
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
define %struct.Memory* @routine_jne_.L_41977b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x62e9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x85f164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gen(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x85f150___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f150_type* @G_0x85f150 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x302c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0x85f164(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x85f164_type* @G_0x85f164 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x302c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12332
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
define %struct.Memory* @routine_je_.L_4196b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x3030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3030__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
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
define %struct.Memory* @routine_cmpl_MINUS0x302c__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -12332
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
define %struct.Memory* @routine_jge_.L_4196b4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3030__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
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
define %struct.Memory* @routine_callq_.make(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4078__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16504
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
define %struct.Memory* @routine_callq_.check_legal(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41968e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x62e9e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62e9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.unmake(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x3030__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12336
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419638(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_4196b9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x62e9e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e9e0_type* @G_0x62e9e0 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_419776(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_419771(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41974b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_4196f5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419776(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419794(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 4294967295, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x4040__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16448
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3840__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -14400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__0x62ea0c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x62ea0c_type* @G_0x62ea0c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x302c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12332
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
define %struct.Memory* @routine_leaq_MINUS0x3030__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x302c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12332
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
define %struct.Memory* @routine_callq_.remove_one(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41a7d3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x62e51c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62e51c_type* @G_0x62e51c to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_41982e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
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
define %struct.Memory* @routine_cmpl__0x0__0x886bf0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8940528
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
define %struct.Memory* @routine_je_.L_41982e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_419829(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*), align 8
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %5, 3
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
define %struct.Memory* @routine_jmpq_.L_4197c8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x864510___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x864510_type* @G__0x864510 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x633b40___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b40_type* @G_0x633b40 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62ea38___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea38_type* @G_0x62ea38 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl_0x886bc0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
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
define %struct.Memory* @routine_movl__esi__0x84a3d0___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8692688
  %7 = load i32, i32* %ESI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
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
define %struct.Memory* @routine_movq__rdi___r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
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
define %struct.Memory* @routine_movq___r8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = bitcast i64* %R8 to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__r8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__r8____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %R8, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x4080__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16512
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41a009(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x886bd0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x886bd0_type* @G__0x886bd0 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x407c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16508
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__MINUS0x407c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16508
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62ea0c___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x62ea0c_type* @G_0x62ea0c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x407c__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16508
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
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
define %struct.Memory* @routine_movl__esi__0x886a5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x886a5c_type* @G_0x886a5c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_movq___rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.comp_to_san(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.f_in_check(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__MINUS0x404c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
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
define %struct.Memory* @routine_je_.L_4199c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2__0x633b50(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x633b50_type* @G_0x633b50 to i32*), align 8
  %6 = add i32 %5, -2
  %7 = icmp ult i32 %5, 2
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
define %struct.Memory* @routine_jge_.L_419c66(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4054__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16468
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

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4050__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16464
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
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
define %struct.Memory* @routine_subl__0x1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
define %struct.Memory* @routine_movl__ecx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__esi__MINUS0x4094__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16532
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4094__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16532
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
define %struct.Memory* @routine_callq_.search(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__ecx__MINUS0x3038__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12344
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__0x866788(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866788_type* @G_0x866788 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_419c61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x86679c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86679c_type* @G_0x86679c to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_419a28(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x8a2a04(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8a2a04_type* @G_0x8a2a04 to i32*), align 8
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
define %struct.Memory* @routine_jl_.L_419c61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3038__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12344
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
define %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16468
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
define %struct.Memory* @routine_jl_.L_419a70(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3038__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12344
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.post_fh_thinking(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419bec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4050__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16464
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
define %struct.Memory* @routine_jg_.L_419ab5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x8644f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.post_fl_thinking(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419be7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x63ae50___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x886bc0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1c20___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 7200
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
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
define %struct.Memory* @routine_addq__rsi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RSI, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x18___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 24
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x3030__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  store i64 %9, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq___rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x3034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12340
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3034__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12340
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
define %struct.Memory* @routine_cmpl_0x86b8b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 8829104
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jge_.L_419bb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x63ae50___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x63ae50_type* @G__0x63ae50 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x1c20___rdx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 7200
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RDX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
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
define %struct.Memory* @routine_addq__rdx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12340
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rax____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x8__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rsi_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x3034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12340
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419b22(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x86b8b0___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8829104
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
define %struct.Memory* @routine_movslq__edx___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__0x86b8b0___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8829104
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.post_thinking(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl_0x86450c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_419c5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419c5c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x3038__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12344
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
define %struct.Memory* @routine_movl__ecx__0x86450c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3030__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12336
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
define %struct.Memory* @routine_movl__ecx__0x8825f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x3028__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12328
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x3020__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12320
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x3018__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12312
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419c61(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419f49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4050__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16464
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
define %struct.Memory* @routine_movl__esi__MINUS0x4098__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16536
  %6 = load i32, i32* %ESI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4098__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16536
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
define %struct.Memory* @routine_jle_.L_419f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_419f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.post_fail_thinking(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__edi___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EDI, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4054__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16468
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = trunc i64 %3 to i32
  %9 = inttoptr i64 %5 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = sub i32 %8, %10
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edi___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %5 = load i32, i32* %EDI, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4050__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %RBP, align 8
  %7 = add i64 %6, -16464
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
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
define %struct.Memory* @routine_movl_MINUS0xc__rbp____r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = zext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__0x1___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R9D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, -1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, 0
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %8, 255
  %14 = tail call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, %5
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
  %30 = lshr i32 %5, 31
  %31 = xor i32 %27, %30
  %32 = add nuw nsw i32 %31, %30
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edi__MINUS0x409c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16540
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx___edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %EDX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i32, i32* %R8D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r9d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0
  %R9D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %R9D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x409c__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16540
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
define %struct.Memory* @routine_jle_.L_419efc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419efc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__0x8644f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0x8644f4_type* @G_0x8644f4 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x4054__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -16468
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
define %struct.Memory* @routine_jge_.L_419ef7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_419ef7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_419ed4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_419e3d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419efc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419f01(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_419f44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419f44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_419fb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_419fb9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_419ff5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0xfff0bdc0__0x86450c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %6 = add i32 %5, 1000000
  %7 = icmp ult i32 %5, -1000000
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
  %28 = xor i32 %27, 1
  %29 = xor i32 %24, %27
  %30 = add nuw nsw i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_419ff5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16452
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
define %struct.Memory* @routine_je_.L_419ff0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x1__0x8661dc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x8661dc_type* @G_0x8661dc to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_419ff5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x4044__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16452
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x4048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16456
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41a055(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x3028__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12328
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x3020__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x3018__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12312
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_41a79c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x4048__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16456
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
define %struct.Memory* @routine_je_.L_41a79c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x884b20___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x3010__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12304
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = bitcast i64* %RAX to i32**
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  %9 = load i32, i32* %6, align 4
  %10 = sub i32 %4, %9
  %11 = icmp ult i32 %4, %9
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
  %20 = xor i32 %9, %4
  %21 = xor i32 %20, %10
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %10, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %10, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %4, 31
  %33 = lshr i32 %9, 31
  %34 = xor i32 %33, %32
  %35 = xor i32 %29, %32
  %36 = add nuw nsw i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a13e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x4__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xc__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 12
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
define %struct.Memory* @routine_movl_0x62e530___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6481200
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
define %struct.Memory* @routine_movl__ecx__0x62e530___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6481200
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a563(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x639220___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a320(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x638c60___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6524000
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
define %struct.Memory* @routine_movl__ecx__0x638c60___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6524000
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x62e530___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6481200
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jle_.L_41a31b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x884b20___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x884b20_type* @G__0x884b20 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rsi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RSI to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x4070__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16496
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x8__rsi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x4068__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16488
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rsi____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x4060__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16480
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x8__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__0x10__rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4070__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4068__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x8__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4060__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16480
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x10__rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x62e530___rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6481200
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
define %struct.Memory* @routine_movl__edi__MINUS0x4074__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16500
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x638c60___rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 6524000
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
define %struct.Memory* @routine_movl__edi__0x62e530___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6481200
  %7 = load i32, i32* %EDI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4074__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16500
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
define %struct.Memory* @routine_movl__edi__0x638c60___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 6524000
  %7 = load i32, i32* %EDI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a55e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x882600___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a502(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0x881e00___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8920576
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
define %struct.Memory* @routine_movl__ecx__0x881e00___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8920576
  %7 = load i32, i32* %ECX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x638c60___rax_4____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 6524000
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jle_.L_41a4fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x639220___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x639220_type* @G__0x639220 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x881e00___rax_4____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8920576
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
define %struct.Memory* @routine_movl__edi__0x881e00___rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8920576
  %7 = load i32, i32* %EDI, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a559(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x882600___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x882600_type* @G__0x882600 to i64), i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x881e00___rdx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8920576
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 11
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i32*
  store i32 1, i32* %8, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x86bda0___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x86bda0_type* @G__0x86bda0 to i64), i64* %RDX, align 8
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__rsi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = load i64, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq___rdi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RDI to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_imulq__0x240___rsi___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RSI, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = sext i64 %3 to i128
  %7 = and i128 %6, -18446744073709551616
  %8 = zext i64 %3 to i128
  %9 = or i128 %7, %8
  %10 = mul nsw i128 %9, 576
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RSI, align 8
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
define %struct.Memory* @routine_movslq_0x4__rdi____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDI, align 8
  %4 = add i64 %3, 4
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
define %struct.Memory* @routine_movl___rdx__rsi_4____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R8D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 1
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp eq i32 %5, -1
  %11 = icmp eq i32 %8, 0
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
  %21 = xor i32 %8, %5
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = zext i1 %11 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %8, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %5, 31
  %32 = xor i32 %28, %31
  %33 = add nuw nsw i32 %32, %28
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d____rdx__rsi_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i64, i64* %RSI, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %R8D, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 4
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3038__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12344
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
define %struct.Memory* @routine_movl__r8d__MINUS0x4050__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16464
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x3018__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12312
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x3030__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12336
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
define %struct.Memory* @routine_movl__r8d__0x8825f8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x8825f8_type* @G_0x8825f8 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4050__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16464
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
define %struct.Memory* @routine_movl__r8d__0x86450c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %R8D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x886bc0___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  %6 = load i32, i32* bitcast (%G_0x886bc0_type* @G_0x886bc0 to i32*), align 8
  %7 = zext i32 %6 to i64
  store i64 %7, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__r8d__MINUS0x3034__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -12340
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x86b8b0___rdx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RDX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, 8829104
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %7 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %4, %11
  %13 = icmp ult i32 %4, %11
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = and i32 %12, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = xor i32 %11, %4
  %23 = xor i32 %22, %12
  %24 = lshr i32 %23, 4
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i32 %12, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %12, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %4, 31
  %35 = lshr i32 %11, 31
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
define %struct.Memory* @routine_jge_.L_41a70e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_imulq__0x1c20___rcx___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
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
  %10 = mul nsw i128 %9, 7200
  %11 = trunc i128 %10 to i64
  store i64 %11, i64* %RCX, align 8
  %12 = sext i64 %11 to i128
  %13 = icmp ne i128 %12, %10
  %14 = zext i1 %13 to i8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %14, i8* %15, align 1
  %16 = trunc i128 %10 to i32
  %17 = and i32 %16, 224
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
define %struct.Memory* @routine_movslq_MINUS0x3034__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12340
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
define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx____rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RDX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__0x8__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x10__rdx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a672(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movl_0x86b8b0___rcx_4____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = shl i64 %3, 2
  %5 = add i64 %4, 8829104
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
define %struct.Memory* @routine_movl_0x86450c___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x86450c_type* @G_0x86450c to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jl_.L_41a770(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41a797(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_41a797(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x4050__rbp____edi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16464
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
define %struct.Memory* @routine_jmpq_.L_41a79c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41a7b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x404c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16460
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x864500___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x864500_type* @G_0x864500 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_MINUS0x4080__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -16512
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
define %struct.Memory* @routine_movl__eax__0x884320___rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, 8930080
  %7 = load i32, i32* %EAX, align 4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 7
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i32*
  store i32 %7, i32* %10, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_41a889(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0x886bbc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x886bbc_type* @G_0x886bbc to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_41a889(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41a856(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_41a846(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_41a836(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 2, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a841(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 3, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a851(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 1, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a884(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a874(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_41a87f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a907(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_41a902(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x64__0x866790(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x866790_type* @G_0x866790 to i32*), align 8
  %6 = add i32 %5, -100
  %7 = icmp ult i32 %5, 100
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
define %struct.Memory* @routine_jle_.L_41a8fd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x4__0x866530(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 4, i32* bitcast (%G_0x866530_type* @G_0x866530 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_41a902(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x4088__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x40c0___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 16576
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -16577
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
