; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x288a4__rip__type = type <{ [4 x i8] }>
%G_0x28c77__rip__type = type <{ [8 x i8] }>
%G_0x28c98__rip__type = type <{ [8 x i8] }>
%G_0x28cda__rip__type = type <{ [8 x i8] }>
%G_0x28cfb__rip__type = type <{ [8 x i8] }>
%G_0x28d4b__rip__type = type <{ [8 x i8] }>
%G_0x28d6c__rip__type = type <{ [8 x i8] }>
%G_0x28dbc__rip__type = type <{ [8 x i8] }>
%G_0x28ddd__rip__type = type <{ [8 x i8] }>
%G_0x28e2d__rip__type = type <{ [8 x i8] }>
%G_0x28e4e__rip__type = type <{ [8 x i8] }>
%G_0x28e90__rip__type = type <{ [8 x i8] }>
%G_0x28e9c__rip__type = type <{ [4 x i8] }>
%G_0x28eb1__rip__type = type <{ [8 x i8] }>
%G_0x28f01__rip__type = type <{ [8 x i8] }>
%G_0x28f22__rip__type = type <{ [8 x i8] }>
%G_0x29099__rip__type = type <{ [8 x i8] }>
%G_0x290ba__rip__type = type <{ [8 x i8] }>
%G_0x292f8__rip__type = type <{ [4 x i8] }>
%G_0x29426__rip__type = type <{ [4 x i8] }>
%G_0x294c1__rip__type = type <{ [8 x i8] }>
%G_0x294e2__rip__type = type <{ [8 x i8] }>
%G_0x294f2__rip__type = type <{ [8 x i8] }>
%G_0x29532__rip__type = type <{ [8 x i8] }>
%G_0x29553__rip__type = type <{ [8 x i8] }>
%G_0x29622__rip__type = type <{ [8 x i8] }>
%G_0x29643__rip__type = type <{ [8 x i8] }>
%G_0x29710__rip__type = type <{ [8 x i8] }>
%G_0x29731__rip__type = type <{ [8 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
%G__0x45863c_type = type <{ [8 x i8] }>
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
@G_0x288a4__rip_ = global %G_0x288a4__rip__type zeroinitializer
@G_0x28c77__rip_ = global %G_0x28c77__rip__type zeroinitializer
@G_0x28c98__rip_ = global %G_0x28c98__rip__type zeroinitializer
@G_0x28cda__rip_ = global %G_0x28cda__rip__type zeroinitializer
@G_0x28cfb__rip_ = global %G_0x28cfb__rip__type zeroinitializer
@G_0x28d4b__rip_ = global %G_0x28d4b__rip__type zeroinitializer
@G_0x28d6c__rip_ = global %G_0x28d6c__rip__type zeroinitializer
@G_0x28dbc__rip_ = global %G_0x28dbc__rip__type zeroinitializer
@G_0x28ddd__rip_ = global %G_0x28ddd__rip__type zeroinitializer
@G_0x28e2d__rip_ = global %G_0x28e2d__rip__type zeroinitializer
@G_0x28e4e__rip_ = global %G_0x28e4e__rip__type zeroinitializer
@G_0x28e90__rip_ = global %G_0x28e90__rip__type zeroinitializer
@G_0x28e9c__rip_ = global %G_0x28e9c__rip__type zeroinitializer
@G_0x28eb1__rip_ = global %G_0x28eb1__rip__type zeroinitializer
@G_0x28f01__rip_ = global %G_0x28f01__rip__type zeroinitializer
@G_0x28f22__rip_ = global %G_0x28f22__rip__type zeroinitializer
@G_0x29099__rip_ = global %G_0x29099__rip__type zeroinitializer
@G_0x290ba__rip_ = global %G_0x290ba__rip__type zeroinitializer
@G_0x292f8__rip_ = global %G_0x292f8__rip__type zeroinitializer
@G_0x29426__rip_ = global %G_0x29426__rip__type zeroinitializer
@G_0x294c1__rip_ = global %G_0x294c1__rip__type zeroinitializer
@G_0x294e2__rip_ = global %G_0x294e2__rip__type zeroinitializer
@G_0x294f2__rip_ = global %G_0x294f2__rip__type zeroinitializer
@G_0x29532__rip_ = global %G_0x29532__rip__type zeroinitializer
@G_0x29553__rip_ = global %G_0x29553__rip__type zeroinitializer
@G_0x29622__rip_ = global %G_0x29622__rip__type zeroinitializer
@G_0x29643__rip_ = global %G_0x29643__rip__type zeroinitializer
@G_0x29710__rip_ = global %G_0x29710__rip__type zeroinitializer
@G_0x29731__rip_ = global %G_0x29731__rip__type zeroinitializer
@G_0x677060 = local_unnamed_addr global %G_0x677060_type zeroinitializer
@G__0x45863c = global %G__0x45863c_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @free(i64)

declare extern_weak x86_64_sysvcc i64 @log(i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451f40.FSet(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_405100.SymbolIndex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452200.FCopy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4527a0.FNorm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.FSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42c1a0.estimate_model_length(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_439650.P7PriorifyEmissionVector(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42c250.build_cij(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_439180.P7PriorifyTransitionVector(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_4522c0.FDot(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452150.FAdd(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_429240.matassign2hmm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @P7Maxmodelmaker(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %11 = add i64 %7, -632
  store i64 %11, i64* %6, align 8
  %12 = icmp ult i64 %8, 624
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
  %22 = xor i64 %8, 16
  %23 = xor i64 %22, %11
  %24 = lshr i64 %23, 4
  %25 = trunc i64 %24 to i8
  %26 = and i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %26, i8* %27, align 1
  %28 = icmp eq i64 %11, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i64 %11, 63
  %32 = trunc i64 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i64 %8, 63
  %35 = xor i64 %31, %34
  %36 = add nuw nsw i64 %35, %34
  %37 = icmp eq i64 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i23 = getelementptr inbounds %union.anon, %union.anon* %40, i64 0, i32 0
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RAX.i23, align 8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D.i = bitcast %union.anon* %41 to i32*
  %42 = getelementptr inbounds %union.anon, %union.anon* %41, i64 0, i32 0
  store i64 255, i64* %42, align 8
  %RDI.i40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %43 = add i64 %7, -16
  %44 = load i64, i64* %RDI.i40, align 8
  %45 = add i64 %10, 30
  store i64 %45, i64* %3, align 8
  %46 = inttoptr i64 %43 to i64*
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %RSI.i = getelementptr inbounds %union.anon, %union.anon* %47, i64 0, i32 0
  %48 = load i64, i64* %RBP.i, align 8
  %49 = add i64 %48, -16
  %50 = load i64, i64* %RSI.i, align 8
  %51 = load i64, i64* %3, align 8
  %52 = add i64 %51, 4
  store i64 %52, i64* %3, align 8
  %53 = inttoptr i64 %49 to i64*
  store i64 %50, i64* %53, align 8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %55 = load i64, i64* %RBP.i, align 8
  %56 = add i64 %55, -20
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 5
  store i64 %58, i64* %3, align 8
  %59 = bitcast [32 x %union.VectorReg]* %54 to <2 x float>*
  %60 = load <2 x float>, <2 x float>* %59, align 1
  %61 = extractelement <2 x float> %60, i32 0
  %62 = inttoptr i64 %56 to float*
  store float %61, float* %62, align 4
  %RDX.i689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %63 = load i64, i64* %RBP.i, align 8
  %64 = add i64 %63, -32
  %65 = load i64, i64* %RDX.i689, align 8
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 4
  store i64 %67, i64* %3, align 8
  %68 = inttoptr i64 %64 to i64*
  store i64 %65, i64* %68, align 8
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %RCX.i774 = getelementptr inbounds %union.anon, %union.anon* %69, i64 0, i32 0
  %70 = load i64, i64* %RBP.i, align 8
  %71 = add i64 %70, -40
  %72 = load i64, i64* %RCX.i774, align 8
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 4
  store i64 %74, i64* %3, align 8
  %75 = inttoptr i64 %71 to i64*
  store i64 %72, i64* %75, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %77 = load i64, i64* %RBP.i, align 8
  %78 = add i64 %77, -44
  %79 = load i64, i64* %3, align 8
  %80 = add i64 %79, 5
  store i64 %80, i64* %3, align 8
  %81 = bitcast %union.VectorReg* %76 to <2 x float>*
  %82 = load <2 x float>, <2 x float>* %81, align 1
  %83 = extractelement <2 x float> %82, i32 0
  %84 = inttoptr i64 %78 to float*
  store float %83, float* %84, align 4
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -48
  %88 = load i64, i64* %3, align 8
  %89 = add i64 %88, 5
  store i64 %89, i64* %3, align 8
  %90 = bitcast %union.VectorReg* %85 to <2 x float>*
  %91 = load <2 x float>, <2 x float>* %90, align 1
  %92 = extractelement <2 x float> %91, i32 0
  %93 = inttoptr i64 %87 to float*
  store float %92, float* %93, align 4
  %R8.i836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %94 = load i64, i64* %RBP.i, align 8
  %95 = add i64 %94, -56
  %96 = load i64, i64* %R8.i836, align 8
  %97 = load i64, i64* %3, align 8
  %98 = add i64 %97, 4
  store i64 %98, i64* %3, align 8
  %99 = inttoptr i64 %95 to i64*
  store i64 %96, i64* %99, align 8
  %R9.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -64
  %102 = load i64, i64* %R9.i, align 8
  %103 = load i64, i64* %3, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %3, align 8
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105, align 8
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -8
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 4
  store i64 %109, i64* %3, align 8
  %110 = inttoptr i64 %107 to i64*
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %RCX.i774, align 8
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %113 = add i64 %111, 24
  %114 = add i64 %108, 8
  store i64 %114, i64* %3, align 8
  %115 = inttoptr i64 %113 to i32*
  %116 = load i32, i32* %115, align 4
  %117 = add i32 %116, 1
  %118 = zext i32 %117 to i64
  store i64 %118, i64* %112, align 8
  %119 = icmp eq i32 %117, 0
  %120 = zext i1 %119 to i8
  %121 = lshr i32 %117, 31
  %122 = trunc i32 %121 to i8
  %123 = sext i32 %117 to i64
  %124 = shl nsw i64 %123, 3
  store i64 %124, i64* %RCX.i774, align 8
  store i8 %122, i8* %14, align 1
  %125 = trunc i64 %124 to i32
  %126 = and i32 %125, 248
  %127 = tail call i32 @llvm.ctpop.i32(i32 %126)
  %128 = trunc i32 %127 to i8
  %129 = and i8 %128, 1
  %130 = xor i8 %129, 1
  store i8 %130, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %120, i8* %30, align 1
  %131 = lshr i64 %123, 60
  %132 = trunc i64 %131 to i8
  %133 = and i8 %132, 1
  store i8 %133, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %134 = load i64, i64* %RAX.i23, align 8
  store i64 %134, i64* %RDI.i40, align 8
  %135 = load i32, i32* %R10D.i, align 4
  %136 = zext i32 %135 to i64
  store i64 %136, i64* %RSI.i, align 8
  store i64 %124, i64* %RDX.i689, align 8
  %137 = add i64 %108, 110974
  %138 = add i64 %108, 33
  %139 = load i64, i64* %6, align 8
  %140 = add i64 %139, -8
  %141 = inttoptr i64 %140 to i64*
  store i64 %138, i64* %141, align 8
  store i64 %140, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  %call2_42aefe = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %137, %struct.Memory* %2)
  %142 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i40, align 8
  store i64 256, i64* %RSI.i, align 8
  %143 = load i64, i64* %RBP.i, align 8
  %144 = add i64 %143, -88
  %145 = load i64, i64* %RAX.i23, align 8
  %146 = add i64 %142, 19
  store i64 %146, i64* %3, align 8
  %147 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %147, align 8
  %148 = load i64, i64* %RBP.i, align 8
  %149 = add i64 %148, -8
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 4
  store i64 %151, i64* %3, align 8
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %RAX.i23, align 8
  %154 = add i64 %153, 24
  %155 = add i64 %150, 8
  store i64 %155, i64* %3, align 8
  %156 = inttoptr i64 %154 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = add i32 %157, 2
  %159 = zext i32 %158 to i64
  store i64 %159, i64* %42, align 8
  %160 = icmp eq i32 %158, 0
  %161 = zext i1 %160 to i8
  %162 = lshr i32 %158, 31
  %163 = trunc i32 %162 to i8
  %164 = sext i32 %158 to i64
  %165 = shl nsw i64 %164, 2
  store i64 %165, i64* %RAX.i23, align 8
  store i8 %163, i8* %14, align 1
  %166 = trunc i64 %165 to i32
  %167 = and i32 %166, 252
  %168 = tail call i32 @llvm.ctpop.i32(i32 %167)
  %169 = trunc i32 %168 to i8
  %170 = and i8 %169, 1
  %171 = xor i8 %170, 1
  store i8 %171, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %161, i8* %30, align 1
  %172 = lshr i64 %164, 61
  %173 = trunc i64 %172 to i8
  %174 = and i8 %173, 1
  store i8 %174, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %165, i64* %RDX.i689, align 8
  %175 = add i64 %150, 110922
  %176 = add i64 %150, 27
  %177 = load i64, i64* %6, align 8
  %178 = add i64 %177, -8
  %179 = inttoptr i64 %178 to i64*
  store i64 %176, i64* %179, align 8
  store i64 %178, i64* %6, align 8
  store i64 %175, i64* %3, align 8
  %call2_42af2c = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %175, %struct.Memory* %call2_42aefe)
  %180 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i40, align 8
  store i64 257, i64* %RSI.i, align 8
  %181 = load i64, i64* %RBP.i, align 8
  %182 = add i64 %181, -408
  %183 = load i64, i64* %RAX.i23, align 8
  %184 = add i64 %180, 22
  store i64 %184, i64* %3, align 8
  %185 = inttoptr i64 %182 to i64*
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %RBP.i, align 8
  %187 = add i64 %186, -8
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 4
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %187 to i64*
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %RAX.i23, align 8
  %192 = add i64 %191, 24
  %193 = add i64 %188, 8
  store i64 %193, i64* %3, align 8
  %194 = inttoptr i64 %192 to i32*
  %195 = load i32, i32* %194, align 4
  %196 = add i32 %195, 2
  %197 = zext i32 %196 to i64
  store i64 %197, i64* %42, align 8
  %198 = icmp eq i32 %196, 0
  %199 = zext i1 %198 to i8
  %200 = lshr i32 %196, 31
  %201 = trunc i32 %200 to i8
  %202 = sext i32 %196 to i64
  %203 = shl nsw i64 %202, 2
  store i64 %203, i64* %RAX.i23, align 8
  store i8 %201, i8* %14, align 1
  %204 = trunc i64 %203 to i32
  %205 = and i32 %204, 252
  %206 = tail call i32 @llvm.ctpop.i32(i32 %205)
  %207 = trunc i32 %206 to i8
  %208 = and i8 %207, 1
  %209 = xor i8 %208, 1
  store i8 %209, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %199, i8* %30, align 1
  %210 = lshr i64 %202, 61
  %211 = trunc i64 %210 to i8
  %212 = and i8 %211, 1
  store i8 %212, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %203, i64* %RDX.i689, align 8
  %213 = add i64 %188, 110873
  %214 = add i64 %188, 27
  %215 = load i64, i64* %6, align 8
  %216 = add i64 %215, -8
  %217 = inttoptr i64 %216 to i64*
  store i64 %214, i64* %217, align 8
  store i64 %216, i64* %6, align 8
  store i64 %213, i64* %3, align 8
  %call2_42af5d = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %213, %struct.Memory* %call2_42af2c)
  %218 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i40, align 8
  store i64 258, i64* %RSI.i, align 8
  %219 = load i64, i64* %RBP.i, align 8
  %220 = add i64 %219, -416
  %221 = load i64, i64* %RAX.i23, align 8
  %222 = add i64 %218, 22
  store i64 %222, i64* %3, align 8
  %223 = inttoptr i64 %220 to i64*
  store i64 %221, i64* %223, align 8
  %224 = load i64, i64* %RBP.i, align 8
  %225 = add i64 %224, -8
  %226 = load i64, i64* %3, align 8
  %227 = add i64 %226, 4
  store i64 %227, i64* %3, align 8
  %228 = inttoptr i64 %225 to i64*
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %RAX.i23, align 8
  %230 = add i64 %229, 24
  %231 = add i64 %226, 8
  store i64 %231, i64* %3, align 8
  %232 = inttoptr i64 %230 to i32*
  %233 = load i32, i32* %232, align 4
  %234 = add i32 %233, 1
  %235 = zext i32 %234 to i64
  store i64 %235, i64* %42, align 8
  %236 = icmp eq i32 %234, 0
  %237 = zext i1 %236 to i8
  %238 = lshr i32 %234, 31
  %239 = trunc i32 %238 to i8
  %240 = sext i32 %234 to i64
  %241 = shl nsw i64 %240, 2
  store i64 %241, i64* %RAX.i23, align 8
  store i8 %239, i8* %14, align 1
  %242 = trunc i64 %241 to i32
  %243 = and i32 %242, 252
  %244 = tail call i32 @llvm.ctpop.i32(i32 %243)
  %245 = trunc i32 %244 to i8
  %246 = and i8 %245, 1
  %247 = xor i8 %246, 1
  store i8 %247, i8* %21, align 1
  store i8 0, i8* %27, align 1
  store i8 %237, i8* %30, align 1
  %248 = lshr i64 %240, 61
  %249 = trunc i64 %248 to i8
  %250 = and i8 %249, 1
  store i8 %250, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %241, i64* %RDX.i689, align 8
  %251 = add i64 %226, 110824
  %252 = add i64 %226, 27
  %253 = load i64, i64* %6, align 8
  %254 = add i64 %253, -8
  %255 = inttoptr i64 %254 to i64*
  store i64 %252, i64* %255, align 8
  store i64 %254, i64* %6, align 8
  store i64 %251, i64* %3, align 8
  %call2_42af8e = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %251, %struct.Memory* %call2_42af5d)
  %256 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i40, align 8
  store i64 259, i64* %RSI.i, align 8
  %257 = load i64, i64* %RBP.i, align 8
  %258 = add i64 %257, -424
  %259 = load i64, i64* %RAX.i23, align 8
  %260 = add i64 %256, 22
  store i64 %260, i64* %3, align 8
  %261 = inttoptr i64 %258 to i64*
  store i64 %259, i64* %261, align 8
  %262 = load i64, i64* %RBP.i, align 8
  %263 = add i64 %262, -8
  %264 = load i64, i64* %3, align 8
  %265 = add i64 %264, 4
  store i64 %265, i64* %3, align 8
  %266 = inttoptr i64 %263 to i64*
  %267 = load i64, i64* %266, align 8
  store i64 %267, i64* %RAX.i23, align 8
  %268 = add i64 %267, 28
  %269 = add i64 %264, 8
  store i64 %269, i64* %3, align 8
  %270 = inttoptr i64 %268 to i32*
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = shl nsw i64 %272, 2
  store i64 %273, i64* %RAX.i23, align 8
  %.lobit63 = lshr i32 %271, 31
  %274 = trunc i32 %.lobit63 to i8
  store i8 %274, i8* %14, align 1
  %275 = trunc i64 %273 to i32
  %276 = and i32 %275, 252
  %277 = tail call i32 @llvm.ctpop.i32(i32 %276)
  %278 = trunc i32 %277 to i8
  %279 = and i8 %278, 1
  %280 = xor i8 %279, 1
  store i8 %280, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %281 = icmp eq i32 %271, 0
  %282 = zext i1 %281 to i8
  store i8 %282, i8* %30, align 1
  %283 = lshr i64 %272, 61
  %284 = trunc i64 %283 to i8
  %285 = and i8 %284, 1
  store i8 %285, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %273, i64* %RDX.i689, align 8
  %286 = add i64 %264, 110775
  %287 = add i64 %264, 20
  %288 = load i64, i64* %6, align 8
  %289 = add i64 %288, -8
  %290 = inttoptr i64 %289 to i64*
  store i64 %287, i64* %290, align 8
  store i64 %289, i64* %6, align 8
  store i64 %286, i64* %3, align 8
  %call2_42afb8 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %286, %struct.Memory* %call2_42af8e)
  %291 = load i64, i64* %RBP.i, align 8
  %292 = add i64 %291, -432
  %293 = load i64, i64* %RAX.i23, align 8
  %294 = load i64, i64* %3, align 8
  %295 = add i64 %294, 7
  store i64 %295, i64* %3, align 8
  %296 = inttoptr i64 %292 to i64*
  store i64 %293, i64* %296, align 8
  %297 = load i64, i64* %RBP.i, align 8
  %298 = add i64 %297, -72
  %299 = load i64, i64* %3, align 8
  %300 = add i64 %299, 7
  store i64 %300, i64* %3, align 8
  %301 = inttoptr i64 %298 to i32*
  store i32 0, i32* %301, align 4
  %EAX.i2468 = bitcast %union.anon* %40 to i32*
  %302 = bitcast [32 x %union.VectorReg]* %54 to i8*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %304 = bitcast [32 x %union.VectorReg]* %54 to i32*
  %305 = getelementptr inbounds i8, i8* %302, i64 4
  %306 = bitcast i8* %305 to i32*
  %307 = bitcast i64* %303 to i32*
  %308 = getelementptr inbounds i8, i8* %302, i64 12
  %309 = bitcast i8* %308 to i32*
  %.pre = load i64, i64* %3, align 8
  %310 = bitcast [32 x %union.VectorReg]* %54 to <4 x i32>*
  br label %block_.L_42afcb

block_.L_42afcb:                                  ; preds = %block_42afdb, %entry
  %311 = phi i64 [ %489, %block_42afdb ], [ %.pre, %entry ]
  %312 = load i64, i64* %RBP.i, align 8
  %313 = add i64 %312, -72
  %314 = add i64 %311, 3
  store i64 %314, i64* %3, align 8
  %315 = inttoptr i64 %313 to i32*
  %316 = load i32, i32* %315, align 4
  %317 = zext i32 %316 to i64
  store i64 %317, i64* %RAX.i23, align 8
  %318 = add i64 %312, -8
  %319 = add i64 %311, 7
  store i64 %319, i64* %3, align 8
  %320 = inttoptr i64 %318 to i64*
  %321 = load i64, i64* %320, align 8
  store i64 %321, i64* %RCX.i774, align 8
  %322 = add i64 %321, 24
  %323 = add i64 %311, 10
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = sub i32 %316, %325
  %327 = icmp ult i32 %316, %325
  %328 = zext i1 %327 to i8
  store i8 %328, i8* %14, align 1
  %329 = and i32 %326, 255
  %330 = tail call i32 @llvm.ctpop.i32(i32 %329)
  %331 = trunc i32 %330 to i8
  %332 = and i8 %331, 1
  %333 = xor i8 %332, 1
  store i8 %333, i8* %21, align 1
  %334 = xor i32 %325, %316
  %335 = xor i32 %334, %326
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  store i8 %338, i8* %27, align 1
  %339 = icmp eq i32 %326, 0
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %30, align 1
  %341 = lshr i32 %326, 31
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %33, align 1
  %343 = lshr i32 %316, 31
  %344 = lshr i32 %325, 31
  %345 = xor i32 %344, %343
  %346 = xor i32 %341, %343
  %347 = add nuw nsw i32 %346, %345
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  store i8 %349, i8* %39, align 1
  %350 = icmp ne i8 %342, 0
  %351 = xor i1 %350, %348
  %.v220 = select i1 %351, i64 16, i64 114
  %352 = add i64 %311, %.v220
  store i64 %352, i64* %3, align 8
  br i1 %351, label %block_42afdb, label %block_.L_42b03d

block_42afdb:                                     ; preds = %block_.L_42afcb
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI.i40, align 8
  store i64 261, i64* %RSI.i, align 8
  %353 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %354 = sext i32 %353 to i64
  %355 = shl nsw i64 %354, 2
  store i64 %355, i64* %RAX.i23, align 8
  %.lobit64 = lshr i32 %353, 31
  %356 = trunc i32 %.lobit64 to i8
  store i8 %356, i8* %14, align 1
  %357 = trunc i64 %355 to i32
  %358 = and i32 %357, 252
  %359 = tail call i32 @llvm.ctpop.i32(i32 %358)
  %360 = trunc i32 %359 to i8
  %361 = and i8 %360, 1
  %362 = xor i8 %361, 1
  store i8 %362, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %363 = icmp eq i32 %353, 0
  %364 = zext i1 %363 to i8
  store i8 %364, i8* %30, align 1
  %365 = lshr i64 %354, 61
  %366 = trunc i64 %365 to i8
  %367 = and i8 %366, 1
  store i8 %367, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i64 %355, i64* %RDX.i689, align 8
  %368 = add i64 %352, 110725
  %369 = add i64 %352, 35
  %370 = load i64, i64* %6, align 8
  %371 = add i64 %370, -8
  %372 = inttoptr i64 %371 to i64*
  store i64 %369, i64* %372, align 8
  store i64 %371, i64* %6, align 8
  store i64 %368, i64* %3, align 8
  %call2_42aff9 = tail call %struct.Memory* @sub_446060.sre_malloc(%struct.State* nonnull %0, i64 %368, %struct.Memory* %call2_42afb8)
  %373 = load i64, i64* %3, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %310, align 1
  %374 = load i64, i64* %RBP.i, align 8
  %375 = add i64 %374, -88
  %376 = add i64 %373, 7
  store i64 %376, i64* %3, align 8
  %377 = inttoptr i64 %375 to i64*
  %378 = load i64, i64* %377, align 8
  store i64 %378, i64* %RDX.i689, align 8
  %379 = add i64 %374, -72
  %380 = add i64 %373, 10
  store i64 %380, i64* %3, align 8
  %381 = inttoptr i64 %379 to i32*
  %382 = load i32, i32* %381, align 4
  %383 = add i32 %382, 1
  %384 = zext i32 %383 to i64
  store i64 %384, i64* %RSI.i, align 8
  %385 = icmp eq i32 %382, -1
  %386 = icmp eq i32 %383, 0
  %387 = or i1 %385, %386
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %14, align 1
  %389 = and i32 %383, 255
  %390 = tail call i32 @llvm.ctpop.i32(i32 %389)
  %391 = trunc i32 %390 to i8
  %392 = and i8 %391, 1
  %393 = xor i8 %392, 1
  store i8 %393, i8* %21, align 1
  %394 = xor i32 %383, %382
  %395 = lshr i32 %394, 4
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  store i8 %397, i8* %27, align 1
  %398 = zext i1 %386 to i8
  store i8 %398, i8* %30, align 1
  %399 = lshr i32 %383, 31
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %33, align 1
  %401 = lshr i32 %382, 31
  %402 = xor i32 %399, %401
  %403 = add nuw nsw i32 %402, %399
  %404 = icmp eq i32 %403, 2
  %405 = zext i1 %404 to i8
  store i8 %405, i8* %39, align 1
  %406 = sext i32 %383 to i64
  store i64 %406, i64* %RDI.i40, align 8
  %407 = shl nsw i64 %406, 3
  %408 = add i64 %378, %407
  %409 = load i64, i64* %RAX.i23, align 8
  %410 = add i64 %373, 20
  store i64 %410, i64* %3, align 8
  %411 = inttoptr i64 %408 to i64*
  store i64 %409, i64* %411, align 8
  %412 = load i64, i64* %RBP.i, align 8
  %413 = add i64 %412, -88
  %414 = load i64, i64* %3, align 8
  %415 = add i64 %414, 4
  store i64 %415, i64* %3, align 8
  %416 = inttoptr i64 %413 to i64*
  %417 = load i64, i64* %416, align 8
  store i64 %417, i64* %RAX.i23, align 8
  %418 = add i64 %412, -72
  %419 = add i64 %414, 7
  store i64 %419, i64* %3, align 8
  %420 = inttoptr i64 %418 to i32*
  %421 = load i32, i32* %420, align 4
  %422 = add i32 %421, 1
  %423 = zext i32 %422 to i64
  store i64 %423, i64* %RSI.i, align 8
  %424 = icmp eq i32 %421, -1
  %425 = icmp eq i32 %422, 0
  %426 = or i1 %424, %425
  %427 = zext i1 %426 to i8
  store i8 %427, i8* %14, align 1
  %428 = and i32 %422, 255
  %429 = tail call i32 @llvm.ctpop.i32(i32 %428)
  %430 = trunc i32 %429 to i8
  %431 = and i8 %430, 1
  %432 = xor i8 %431, 1
  store i8 %432, i8* %21, align 1
  %433 = xor i32 %422, %421
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  store i8 %436, i8* %27, align 1
  %437 = zext i1 %425 to i8
  store i8 %437, i8* %30, align 1
  %438 = lshr i32 %422, 31
  %439 = trunc i32 %438 to i8
  store i8 %439, i8* %33, align 1
  %440 = lshr i32 %421, 31
  %441 = xor i32 %438, %440
  %442 = add nuw nsw i32 %441, %438
  %443 = icmp eq i32 %442, 2
  %444 = zext i1 %443 to i8
  store i8 %444, i8* %39, align 1
  %445 = sext i32 %422 to i64
  store i64 %445, i64* %RDX.i689, align 8
  %446 = shl nsw i64 %445, 3
  %447 = add i64 %417, %446
  %448 = add i64 %414, 17
  store i64 %448, i64* %3, align 8
  %449 = inttoptr i64 %447 to i64*
  %450 = load i64, i64* %449, align 8
  store i64 %450, i64* %RDI.i40, align 8
  %451 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %452 = zext i32 %451 to i64
  store i64 %452, i64* %RSI.i, align 8
  %453 = add i64 %414, 159534
  %454 = add i64 %414, 29
  %455 = load i64, i64* %6, align 8
  %456 = add i64 %455, -8
  %457 = inttoptr i64 %456 to i64*
  store i64 %454, i64* %457, align 8
  store i64 %456, i64* %6, align 8
  store i64 %453, i64* %3, align 8
  %call2_42b02a = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* nonnull %0, i64 %453, %struct.Memory* %call2_42afb8)
  %458 = load i64, i64* %RBP.i, align 8
  %459 = add i64 %458, -72
  %460 = load i64, i64* %3, align 8
  %461 = add i64 %460, 3
  store i64 %461, i64* %3, align 8
  %462 = inttoptr i64 %459 to i32*
  %463 = load i32, i32* %462, align 4
  %464 = add i32 %463, 1
  %465 = zext i32 %464 to i64
  store i64 %465, i64* %RAX.i23, align 8
  %466 = icmp eq i32 %463, -1
  %467 = icmp eq i32 %464, 0
  %468 = or i1 %466, %467
  %469 = zext i1 %468 to i8
  store i8 %469, i8* %14, align 1
  %470 = and i32 %464, 255
  %471 = tail call i32 @llvm.ctpop.i32(i32 %470)
  %472 = trunc i32 %471 to i8
  %473 = and i8 %472, 1
  %474 = xor i8 %473, 1
  store i8 %474, i8* %21, align 1
  %475 = xor i32 %464, %463
  %476 = lshr i32 %475, 4
  %477 = trunc i32 %476 to i8
  %478 = and i8 %477, 1
  store i8 %478, i8* %27, align 1
  %479 = zext i1 %467 to i8
  store i8 %479, i8* %30, align 1
  %480 = lshr i32 %464, 31
  %481 = trunc i32 %480 to i8
  store i8 %481, i8* %33, align 1
  %482 = lshr i32 %463, 31
  %483 = xor i32 %480, %482
  %484 = add nuw nsw i32 %483, %480
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  store i8 %486, i8* %39, align 1
  %487 = add i64 %460, 9
  store i64 %487, i64* %3, align 8
  store i32 %464, i32* %462, align 4
  %488 = load i64, i64* %3, align 8
  %489 = add i64 %488, -109
  store i64 %489, i64* %3, align 8
  br label %block_.L_42afcb

block_.L_42b03d:                                  ; preds = %block_.L_42afcb
  %490 = add i64 %352, 7
  store i64 %490, i64* %3, align 8
  store i32 0, i32* %315, align 4
  %ECX.i2270 = bitcast %union.anon* %69 to i32*
  %AL.i2238 = bitcast %union.anon* %40 to i8*
  %SIL.i2239 = bitcast %union.anon* %47 to i8*
  %491 = bitcast i8* %305 to float*
  %492 = bitcast i64* %303 to float*
  %493 = bitcast i8* %308 to float*
  %.pre153 = load i64, i64* %3, align 8
  br label %block_.L_42b044

block_.L_42b044:                                  ; preds = %block_.L_42b179, %block_.L_42b03d
  %494 = phi i64 [ %.pre153, %block_.L_42b03d ], [ %971, %block_.L_42b179 ]
  %495 = load i64, i64* %RBP.i, align 8
  %496 = add i64 %495, -72
  %497 = add i64 %494, 3
  store i64 %497, i64* %3, align 8
  %498 = inttoptr i64 %496 to i32*
  %499 = load i32, i32* %498, align 4
  %500 = zext i32 %499 to i64
  store i64 %500, i64* %RAX.i23, align 8
  %501 = add i64 %495, -8
  %502 = add i64 %494, 7
  store i64 %502, i64* %3, align 8
  %503 = inttoptr i64 %501 to i64*
  %504 = load i64, i64* %503, align 8
  store i64 %504, i64* %RCX.i774, align 8
  %505 = add i64 %504, 24
  %506 = add i64 %494, 10
  store i64 %506, i64* %3, align 8
  %507 = inttoptr i64 %505 to i32*
  %508 = load i32, i32* %507, align 4
  %509 = sub i32 %499, %508
  %510 = icmp ult i32 %499, %508
  %511 = zext i1 %510 to i8
  store i8 %511, i8* %14, align 1
  %512 = and i32 %509, 255
  %513 = tail call i32 @llvm.ctpop.i32(i32 %512)
  %514 = trunc i32 %513 to i8
  %515 = and i8 %514, 1
  %516 = xor i8 %515, 1
  store i8 %516, i8* %21, align 1
  %517 = xor i32 %508, %499
  %518 = xor i32 %517, %509
  %519 = lshr i32 %518, 4
  %520 = trunc i32 %519 to i8
  %521 = and i8 %520, 1
  store i8 %521, i8* %27, align 1
  %522 = icmp eq i32 %509, 0
  %523 = zext i1 %522 to i8
  store i8 %523, i8* %30, align 1
  %524 = lshr i32 %509, 31
  %525 = trunc i32 %524 to i8
  store i8 %525, i8* %33, align 1
  %526 = lshr i32 %499, 31
  %527 = lshr i32 %508, 31
  %528 = xor i32 %527, %526
  %529 = xor i32 %524, %526
  %530 = add nuw nsw i32 %529, %528
  %531 = icmp eq i32 %530, 2
  %532 = zext i1 %531 to i8
  store i8 %532, i8* %39, align 1
  %533 = icmp ne i8 %525, 0
  %534 = xor i1 %533, %531
  %.v221 = select i1 %534, i64 16, i64 328
  %535 = add i64 %494, %.v221
  store i64 %535, i64* %3, align 8
  br i1 %534, label %block_42b054, label %block_.L_42b18c

block_42b054:                                     ; preds = %block_.L_42b044
  %536 = add i64 %495, -68
  %537 = add i64 %535, 7
  store i64 %537, i64* %3, align 8
  %538 = inttoptr i64 %536 to i32*
  store i32 0, i32* %538, align 4
  %.pre202 = load i64, i64* %3, align 8
  br label %block_.L_42b05b

block_.L_42b05b:                                  ; preds = %block_.L_42b166, %block_42b054
  %539 = phi i64 [ %.pre202, %block_42b054 ], [ %941, %block_.L_42b166 ]
  %540 = load i64, i64* %RBP.i, align 8
  %541 = add i64 %540, -68
  %542 = add i64 %539, 3
  store i64 %542, i64* %3, align 8
  %543 = inttoptr i64 %541 to i32*
  %544 = load i32, i32* %543, align 4
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RAX.i23, align 8
  %546 = add i64 %540, -8
  %547 = add i64 %539, 7
  store i64 %547, i64* %3, align 8
  %548 = inttoptr i64 %546 to i64*
  %549 = load i64, i64* %548, align 8
  store i64 %549, i64* %RCX.i774, align 8
  %550 = add i64 %549, 28
  %551 = add i64 %539, 10
  store i64 %551, i64* %3, align 8
  %552 = inttoptr i64 %550 to i32*
  %553 = load i32, i32* %552, align 4
  %554 = sub i32 %544, %553
  %555 = icmp ult i32 %544, %553
  %556 = zext i1 %555 to i8
  store i8 %556, i8* %14, align 1
  %557 = and i32 %554, 255
  %558 = tail call i32 @llvm.ctpop.i32(i32 %557)
  %559 = trunc i32 %558 to i8
  %560 = and i8 %559, 1
  %561 = xor i8 %560, 1
  store i8 %561, i8* %21, align 1
  %562 = xor i32 %553, %544
  %563 = xor i32 %562, %554
  %564 = lshr i32 %563, 4
  %565 = trunc i32 %564 to i8
  %566 = and i8 %565, 1
  store i8 %566, i8* %27, align 1
  %567 = icmp eq i32 %554, 0
  %568 = zext i1 %567 to i8
  store i8 %568, i8* %30, align 1
  %569 = lshr i32 %554, 31
  %570 = trunc i32 %569 to i8
  store i8 %570, i8* %33, align 1
  %571 = lshr i32 %544, 31
  %572 = lshr i32 %553, 31
  %573 = xor i32 %572, %571
  %574 = xor i32 %569, %571
  %575 = add nuw nsw i32 %574, %573
  %576 = icmp eq i32 %575, 2
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %39, align 1
  %578 = icmp ne i8 %570, 0
  %579 = xor i1 %578, %576
  %.v219 = select i1 %579, i64 16, i64 286
  %580 = add i64 %539, %.v219
  store i64 %580, i64* %3, align 8
  br i1 %579, label %block_42b06b, label %block_.L_42b179

block_42b06b:                                     ; preds = %block_.L_42b05b
  %581 = add i64 %580, 4
  store i64 %581, i64* %3, align 8
  %582 = load i64, i64* %548, align 8
  store i64 %582, i64* %RAX.i23, align 8
  %583 = add i64 %580, 7
  store i64 %583, i64* %3, align 8
  %584 = inttoptr i64 %582 to i64*
  %585 = load i64, i64* %584, align 8
  store i64 %585, i64* %RAX.i23, align 8
  %586 = add i64 %580, 11
  store i64 %586, i64* %3, align 8
  %587 = load i32, i32* %543, align 4
  %588 = sext i32 %587 to i64
  store i64 %588, i64* %RCX.i774, align 8
  %589 = shl nsw i64 %588, 3
  %590 = add i64 %589, %585
  %591 = add i64 %580, 15
  store i64 %591, i64* %3, align 8
  %592 = inttoptr i64 %590 to i64*
  %593 = load i64, i64* %592, align 8
  store i64 %593, i64* %RAX.i23, align 8
  %594 = add i64 %540, -72
  %595 = add i64 %580, 19
  store i64 %595, i64* %3, align 8
  %596 = inttoptr i64 %594 to i32*
  %597 = load i32, i32* %596, align 4
  %598 = sext i32 %597 to i64
  store i64 %598, i64* %RCX.i774, align 8
  %599 = add i64 %593, %598
  %600 = add i64 %580, 23
  store i64 %600, i64* %3, align 8
  %601 = inttoptr i64 %599 to i8*
  %602 = load i8, i8* %601, align 1
  %603 = sext i8 %602 to i64
  %604 = and i64 %603, 4294967295
  store i64 %604, i64* %RDX.i689, align 8
  %605 = sext i8 %602 to i32
  %606 = add nsw i32 %605, -32
  %607 = icmp ult i8 %602, 32
  %608 = zext i1 %607 to i8
  store i8 %608, i8* %14, align 1
  %609 = and i32 %606, 255
  %610 = tail call i32 @llvm.ctpop.i32(i32 %609)
  %611 = trunc i32 %610 to i8
  %612 = and i8 %611, 1
  %613 = xor i8 %612, 1
  store i8 %613, i8* %21, align 1
  %614 = xor i32 %606, %605
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  store i8 %617, i8* %27, align 1
  %618 = icmp eq i32 %606, 0
  %619 = zext i1 %618 to i8
  store i8 %619, i8* %30, align 1
  %620 = lshr i32 %606, 31
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %33, align 1
  %622 = lshr i32 %605, 31
  %623 = xor i32 %620, %622
  %624 = add nuw nsw i32 %623, %622
  %625 = icmp eq i32 %624, 2
  %626 = zext i1 %625 to i8
  store i8 %626, i8* %39, align 1
  %.v255 = select i1 %618, i64 251, i64 32
  %627 = add i64 %580, %.v255
  store i64 %627, i64* %3, align 8
  br i1 %618, label %block_.L_42b166, label %block_42b08b

block_42b08b:                                     ; preds = %block_42b06b
  %628 = add i64 %627, 4
  store i64 %628, i64* %3, align 8
  %629 = load i64, i64* %548, align 8
  store i64 %629, i64* %RAX.i23, align 8
  %630 = add i64 %627, 7
  store i64 %630, i64* %3, align 8
  %631 = inttoptr i64 %629 to i64*
  %632 = load i64, i64* %631, align 8
  store i64 %632, i64* %RAX.i23, align 8
  %633 = add i64 %627, 11
  store i64 %633, i64* %3, align 8
  %634 = load i32, i32* %543, align 4
  %635 = sext i32 %634 to i64
  store i64 %635, i64* %RCX.i774, align 8
  %636 = shl nsw i64 %635, 3
  %637 = add i64 %636, %632
  %638 = add i64 %627, 15
  store i64 %638, i64* %3, align 8
  %639 = inttoptr i64 %637 to i64*
  %640 = load i64, i64* %639, align 8
  store i64 %640, i64* %RAX.i23, align 8
  %641 = add i64 %627, 19
  store i64 %641, i64* %3, align 8
  %642 = load i32, i32* %596, align 4
  %643 = sext i32 %642 to i64
  store i64 %643, i64* %RCX.i774, align 8
  %644 = add i64 %640, %643
  %645 = add i64 %627, 23
  store i64 %645, i64* %3, align 8
  %646 = inttoptr i64 %644 to i8*
  %647 = load i8, i8* %646, align 1
  %648 = sext i8 %647 to i64
  %649 = and i64 %648, 4294967295
  store i64 %649, i64* %RDX.i689, align 8
  %650 = sext i8 %647 to i32
  %651 = add nsw i32 %650, -46
  %652 = icmp ult i8 %647, 46
  %653 = zext i1 %652 to i8
  store i8 %653, i8* %14, align 1
  %654 = and i32 %651, 255
  %655 = tail call i32 @llvm.ctpop.i32(i32 %654)
  %656 = trunc i32 %655 to i8
  %657 = and i8 %656, 1
  %658 = xor i8 %657, 1
  store i8 %658, i8* %21, align 1
  %659 = xor i32 %651, %650
  %660 = lshr i32 %659, 4
  %661 = trunc i32 %660 to i8
  %662 = and i8 %661, 1
  store i8 %662, i8* %27, align 1
  %663 = icmp eq i32 %651, 0
  %664 = zext i1 %663 to i8
  store i8 %664, i8* %30, align 1
  %665 = lshr i32 %651, 31
  %666 = trunc i32 %665 to i8
  store i8 %666, i8* %33, align 1
  %667 = lshr i32 %650, 31
  %668 = xor i32 %665, %667
  %669 = add nuw nsw i32 %668, %667
  %670 = icmp eq i32 %669, 2
  %671 = zext i1 %670 to i8
  store i8 %671, i8* %39, align 1
  %.v256 = select i1 %663, i64 219, i64 32
  %672 = add i64 %627, %.v256
  store i64 %672, i64* %3, align 8
  br i1 %663, label %block_.L_42b166, label %block_42b0ab

block_42b0ab:                                     ; preds = %block_42b08b
  %673 = add i64 %672, 4
  store i64 %673, i64* %3, align 8
  %674 = load i64, i64* %548, align 8
  store i64 %674, i64* %RAX.i23, align 8
  %675 = add i64 %672, 7
  store i64 %675, i64* %3, align 8
  %676 = inttoptr i64 %674 to i64*
  %677 = load i64, i64* %676, align 8
  store i64 %677, i64* %RAX.i23, align 8
  %678 = add i64 %672, 11
  store i64 %678, i64* %3, align 8
  %679 = load i32, i32* %543, align 4
  %680 = sext i32 %679 to i64
  store i64 %680, i64* %RCX.i774, align 8
  %681 = shl nsw i64 %680, 3
  %682 = add i64 %681, %677
  %683 = add i64 %672, 15
  store i64 %683, i64* %3, align 8
  %684 = inttoptr i64 %682 to i64*
  %685 = load i64, i64* %684, align 8
  store i64 %685, i64* %RAX.i23, align 8
  %686 = add i64 %672, 19
  store i64 %686, i64* %3, align 8
  %687 = load i32, i32* %596, align 4
  %688 = sext i32 %687 to i64
  store i64 %688, i64* %RCX.i774, align 8
  %689 = add i64 %685, %688
  %690 = add i64 %672, 23
  store i64 %690, i64* %3, align 8
  %691 = inttoptr i64 %689 to i8*
  %692 = load i8, i8* %691, align 1
  %693 = sext i8 %692 to i64
  %694 = and i64 %693, 4294967295
  store i64 %694, i64* %RDX.i689, align 8
  %695 = sext i8 %692 to i32
  %696 = add nsw i32 %695, -95
  %697 = icmp ult i8 %692, 95
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %14, align 1
  %699 = and i32 %696, 255
  %700 = tail call i32 @llvm.ctpop.i32(i32 %699)
  %701 = trunc i32 %700 to i8
  %702 = and i8 %701, 1
  %703 = xor i8 %702, 1
  store i8 %703, i8* %21, align 1
  %704 = xor i32 %695, 16
  %705 = xor i32 %704, %696
  %706 = lshr i32 %705, 4
  %707 = trunc i32 %706 to i8
  %708 = and i8 %707, 1
  store i8 %708, i8* %27, align 1
  %709 = icmp eq i32 %696, 0
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %30, align 1
  %711 = lshr i32 %696, 31
  %712 = trunc i32 %711 to i8
  store i8 %712, i8* %33, align 1
  %713 = lshr i32 %695, 31
  %714 = xor i32 %711, %713
  %715 = add nuw nsw i32 %714, %713
  %716 = icmp eq i32 %715, 2
  %717 = zext i1 %716 to i8
  store i8 %717, i8* %39, align 1
  %.v257 = select i1 %709, i64 187, i64 32
  %718 = add i64 %672, %.v257
  store i64 %718, i64* %3, align 8
  br i1 %709, label %block_.L_42b166, label %block_42b0cb

block_42b0cb:                                     ; preds = %block_42b0ab
  %719 = add i64 %718, 4
  store i64 %719, i64* %3, align 8
  %720 = load i64, i64* %548, align 8
  store i64 %720, i64* %RAX.i23, align 8
  %721 = add i64 %718, 7
  store i64 %721, i64* %3, align 8
  %722 = inttoptr i64 %720 to i64*
  %723 = load i64, i64* %722, align 8
  store i64 %723, i64* %RAX.i23, align 8
  %724 = add i64 %718, 11
  store i64 %724, i64* %3, align 8
  %725 = load i32, i32* %543, align 4
  %726 = sext i32 %725 to i64
  store i64 %726, i64* %RCX.i774, align 8
  %727 = shl nsw i64 %726, 3
  %728 = add i64 %727, %723
  %729 = add i64 %718, 15
  store i64 %729, i64* %3, align 8
  %730 = inttoptr i64 %728 to i64*
  %731 = load i64, i64* %730, align 8
  store i64 %731, i64* %RAX.i23, align 8
  %732 = add i64 %718, 19
  store i64 %732, i64* %3, align 8
  %733 = load i32, i32* %596, align 4
  %734 = sext i32 %733 to i64
  store i64 %734, i64* %RCX.i774, align 8
  %735 = add i64 %731, %734
  %736 = add i64 %718, 23
  store i64 %736, i64* %3, align 8
  %737 = inttoptr i64 %735 to i8*
  %738 = load i8, i8* %737, align 1
  %739 = sext i8 %738 to i64
  %740 = and i64 %739, 4294967295
  store i64 %740, i64* %RDX.i689, align 8
  %741 = sext i8 %738 to i32
  %742 = add nsw i32 %741, -45
  %743 = icmp ult i8 %738, 45
  %744 = zext i1 %743 to i8
  store i8 %744, i8* %14, align 1
  %745 = and i32 %742, 255
  %746 = tail call i32 @llvm.ctpop.i32(i32 %745)
  %747 = trunc i32 %746 to i8
  %748 = and i8 %747, 1
  %749 = xor i8 %748, 1
  store i8 %749, i8* %21, align 1
  %750 = xor i32 %742, %741
  %751 = lshr i32 %750, 4
  %752 = trunc i32 %751 to i8
  %753 = and i8 %752, 1
  store i8 %753, i8* %27, align 1
  %754 = icmp eq i32 %742, 0
  %755 = zext i1 %754 to i8
  store i8 %755, i8* %30, align 1
  %756 = lshr i32 %742, 31
  %757 = trunc i32 %756 to i8
  store i8 %757, i8* %33, align 1
  %758 = lshr i32 %741, 31
  %759 = xor i32 %756, %758
  %760 = add nuw nsw i32 %759, %758
  %761 = icmp eq i32 %760, 2
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %39, align 1
  %.v258 = select i1 %754, i64 155, i64 32
  %763 = add i64 %718, %.v258
  store i64 %763, i64* %3, align 8
  br i1 %754, label %block_.L_42b166, label %block_42b0eb

block_42b0eb:                                     ; preds = %block_42b0cb
  %764 = add i64 %763, 4
  store i64 %764, i64* %3, align 8
  %765 = load i64, i64* %548, align 8
  store i64 %765, i64* %RAX.i23, align 8
  %766 = add i64 %763, 7
  store i64 %766, i64* %3, align 8
  %767 = inttoptr i64 %765 to i64*
  %768 = load i64, i64* %767, align 8
  store i64 %768, i64* %RAX.i23, align 8
  %769 = add i64 %763, 11
  store i64 %769, i64* %3, align 8
  %770 = load i32, i32* %543, align 4
  %771 = sext i32 %770 to i64
  store i64 %771, i64* %RCX.i774, align 8
  %772 = shl nsw i64 %771, 3
  %773 = add i64 %772, %768
  %774 = add i64 %763, 15
  store i64 %774, i64* %3, align 8
  %775 = inttoptr i64 %773 to i64*
  %776 = load i64, i64* %775, align 8
  store i64 %776, i64* %RAX.i23, align 8
  %777 = add i64 %763, 19
  store i64 %777, i64* %3, align 8
  %778 = load i32, i32* %596, align 4
  %779 = sext i32 %778 to i64
  store i64 %779, i64* %RCX.i774, align 8
  %780 = add i64 %776, %779
  %781 = add i64 %763, 23
  store i64 %781, i64* %3, align 8
  %782 = inttoptr i64 %780 to i8*
  %783 = load i8, i8* %782, align 1
  %784 = sext i8 %783 to i64
  %785 = and i64 %784, 4294967295
  store i64 %785, i64* %RDX.i689, align 8
  %786 = sext i8 %783 to i32
  %787 = add nsw i32 %786, -126
  %788 = icmp ult i8 %783, 126
  %789 = zext i1 %788 to i8
  store i8 %789, i8* %14, align 1
  %790 = and i32 %787, 255
  %791 = tail call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  store i8 %794, i8* %21, align 1
  %795 = xor i32 %786, 16
  %796 = xor i32 %795, %787
  %797 = lshr i32 %796, 4
  %798 = trunc i32 %797 to i8
  %799 = and i8 %798, 1
  store i8 %799, i8* %27, align 1
  %800 = icmp eq i32 %787, 0
  %801 = zext i1 %800 to i8
  store i8 %801, i8* %30, align 1
  %802 = lshr i32 %787, 31
  %803 = trunc i32 %802 to i8
  store i8 %803, i8* %33, align 1
  %804 = lshr i32 %786, 31
  %805 = xor i32 %802, %804
  %806 = add nuw nsw i32 %805, %804
  %807 = icmp eq i32 %806, 2
  %808 = zext i1 %807 to i8
  store i8 %808, i8* %39, align 1
  %.v259 = select i1 %800, i64 123, i64 32
  %809 = add i64 %763, %.v259
  store i64 %809, i64* %3, align 8
  br i1 %800, label %block_.L_42b166, label %block_42b10b

block_42b10b:                                     ; preds = %block_42b0eb
  %810 = add i64 %540, -88
  %811 = add i64 %809, 4
  store i64 %811, i64* %3, align 8
  %812 = inttoptr i64 %810 to i64*
  %813 = load i64, i64* %812, align 8
  store i64 %813, i64* %RAX.i23, align 8
  %814 = add i64 %809, 7
  store i64 %814, i64* %3, align 8
  %815 = load i32, i32* %596, align 4
  %816 = add i32 %815, 1
  %817 = zext i32 %816 to i64
  store i64 %817, i64* %RCX.i774, align 8
  %818 = icmp eq i32 %815, -1
  %819 = icmp eq i32 %816, 0
  %820 = or i1 %818, %819
  %821 = zext i1 %820 to i8
  store i8 %821, i8* %14, align 1
  %822 = and i32 %816, 255
  %823 = tail call i32 @llvm.ctpop.i32(i32 %822)
  %824 = trunc i32 %823 to i8
  %825 = and i8 %824, 1
  %826 = xor i8 %825, 1
  store i8 %826, i8* %21, align 1
  %827 = xor i32 %816, %815
  %828 = lshr i32 %827, 4
  %829 = trunc i32 %828 to i8
  %830 = and i8 %829, 1
  store i8 %830, i8* %27, align 1
  %831 = zext i1 %819 to i8
  store i8 %831, i8* %30, align 1
  %832 = lshr i32 %816, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %33, align 1
  %834 = lshr i32 %815, 31
  %835 = xor i32 %832, %834
  %836 = add nuw nsw i32 %835, %832
  %837 = icmp eq i32 %836, 2
  %838 = zext i1 %837 to i8
  store i8 %838, i8* %39, align 1
  %839 = sext i32 %816 to i64
  store i64 %839, i64* %RDX.i689, align 8
  %840 = shl nsw i64 %839, 3
  %841 = add i64 %813, %840
  %842 = add i64 %809, 17
  store i64 %842, i64* %3, align 8
  %843 = inttoptr i64 %841 to i64*
  %844 = load i64, i64* %843, align 8
  store i64 %844, i64* %RDI.i40, align 8
  %845 = add i64 %809, 21
  store i64 %845, i64* %3, align 8
  %846 = load i64, i64* %548, align 8
  store i64 %846, i64* %RAX.i23, align 8
  %847 = add i64 %809, 24
  store i64 %847, i64* %3, align 8
  %848 = inttoptr i64 %846 to i64*
  %849 = load i64, i64* %848, align 8
  store i64 %849, i64* %RAX.i23, align 8
  %850 = add i64 %809, 28
  store i64 %850, i64* %3, align 8
  %851 = load i32, i32* %543, align 4
  %852 = sext i32 %851 to i64
  store i64 %852, i64* %RDX.i689, align 8
  %853 = shl nsw i64 %852, 3
  %854 = add i64 %853, %849
  %855 = add i64 %809, 32
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i64*
  %857 = load i64, i64* %856, align 8
  store i64 %857, i64* %RAX.i23, align 8
  %858 = add i64 %809, 36
  store i64 %858, i64* %3, align 8
  %859 = load i32, i32* %596, align 4
  %860 = sext i32 %859 to i64
  store i64 %860, i64* %RDX.i689, align 8
  %861 = add i64 %857, %860
  %862 = add i64 %809, 40
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i8*
  %864 = load i8, i8* %863, align 1
  %865 = sext i8 %864 to i64
  %866 = and i64 %865, 4294967295
  store i64 %866, i64* %RCX.i774, align 8
  %867 = add i64 %540, -488
  %868 = add i64 %809, 47
  store i64 %868, i64* %3, align 8
  %869 = inttoptr i64 %867 to i64*
  store i64 %844, i64* %869, align 8
  %870 = load i32, i32* %ECX.i2270, align 4
  %871 = zext i32 %870 to i64
  %872 = load i64, i64* %3, align 8
  store i64 %871, i64* %RDI.i40, align 8
  %873 = add i64 %872, -155706
  %874 = add i64 %872, 7
  %875 = load i64, i64* %6, align 8
  %876 = add i64 %875, -8
  %877 = inttoptr i64 %876 to i64*
  store i64 %874, i64* %877, align 8
  store i64 %876, i64* %6, align 8
  store i64 %873, i64* %3, align 8
  %call2_42b13c = tail call %struct.Memory* @sub_405100.SymbolIndex(%struct.State* nonnull %0, i64 %873, %struct.Memory* %call2_42afb8)
  %878 = load i8, i8* %AL.i2238, align 1
  %879 = load i64, i64* %3, align 8
  store i8 %878, i8* %SIL.i2239, align 1
  %880 = load i64, i64* %RBP.i, align 8
  %881 = add i64 %880, -8
  %882 = add i64 %879, 7
  store i64 %882, i64* %3, align 8
  %883 = inttoptr i64 %881 to i64*
  %884 = load i64, i64* %883, align 8
  store i64 %884, i64* %RDX.i689, align 8
  %885 = add i64 %884, 16
  %886 = add i64 %879, 11
  store i64 %886, i64* %3, align 8
  %887 = inttoptr i64 %885 to i64*
  %888 = load i64, i64* %887, align 8
  store i64 %888, i64* %RDX.i689, align 8
  %889 = add i64 %880, -68
  %890 = add i64 %879, 15
  store i64 %890, i64* %3, align 8
  %891 = inttoptr i64 %889 to i32*
  %892 = load i32, i32* %891, align 4
  %893 = sext i32 %892 to i64
  store i64 %893, i64* %R8.i836, align 8
  %894 = shl nsw i64 %893, 2
  %895 = add i64 %894, %888
  %896 = add i64 %879, 21
  store i64 %896, i64* %3, align 8
  %897 = inttoptr i64 %895 to i32*
  %898 = load i32, i32* %897, align 4
  store i32 %898, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %899 = add i64 %880, -488
  %900 = add i64 %879, 28
  store i64 %900, i64* %3, align 8
  %901 = inttoptr i64 %899 to i64*
  %902 = load i64, i64* %901, align 8
  store i64 %902, i64* %RDI.i40, align 8
  %903 = sext i8 %878 to i64
  %904 = and i64 %903, 4294967295
  store i64 %904, i64* %RSI.i, align 8
  %905 = add i64 %879, -154737
  %906 = add i64 %879, 37
  %907 = load i64, i64* %6, align 8
  %908 = add i64 %907, -8
  %909 = inttoptr i64 %908 to i64*
  store i64 %906, i64* %909, align 8
  store i64 %908, i64* %6, align 8
  store i64 %905, i64* %3, align 8
  %call2_42b161 = tail call %struct.Memory* @sub_4054d0.P7CountSymbol(%struct.State* nonnull %0, i64 %905, %struct.Memory* %call2_42afb8)
  %.pre203 = load i64, i64* %3, align 8
  %.pre204 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42b166

block_.L_42b166:                                  ; preds = %block_42b10b, %block_42b0eb, %block_42b0cb, %block_42b0ab, %block_42b08b, %block_42b06b
  %910 = phi i64 [ %.pre204, %block_42b10b ], [ %540, %block_42b0eb ], [ %540, %block_42b0cb ], [ %540, %block_42b0ab ], [ %540, %block_42b08b ], [ %540, %block_42b06b ]
  %911 = phi i64 [ %.pre203, %block_42b10b ], [ %809, %block_42b0eb ], [ %763, %block_42b0cb ], [ %718, %block_42b0ab ], [ %672, %block_42b08b ], [ %627, %block_42b06b ]
  %912 = add i64 %910, -68
  %913 = add i64 %911, 8
  store i64 %913, i64* %3, align 8
  %914 = inttoptr i64 %912 to i32*
  %915 = load i32, i32* %914, align 4
  %916 = add i32 %915, 1
  %917 = zext i32 %916 to i64
  store i64 %917, i64* %RAX.i23, align 8
  %918 = icmp eq i32 %915, -1
  %919 = icmp eq i32 %916, 0
  %920 = or i1 %918, %919
  %921 = zext i1 %920 to i8
  store i8 %921, i8* %14, align 1
  %922 = and i32 %916, 255
  %923 = tail call i32 @llvm.ctpop.i32(i32 %922)
  %924 = trunc i32 %923 to i8
  %925 = and i8 %924, 1
  %926 = xor i8 %925, 1
  store i8 %926, i8* %21, align 1
  %927 = xor i32 %916, %915
  %928 = lshr i32 %927, 4
  %929 = trunc i32 %928 to i8
  %930 = and i8 %929, 1
  store i8 %930, i8* %27, align 1
  %931 = zext i1 %919 to i8
  store i8 %931, i8* %30, align 1
  %932 = lshr i32 %916, 31
  %933 = trunc i32 %932 to i8
  store i8 %933, i8* %33, align 1
  %934 = lshr i32 %915, 31
  %935 = xor i32 %932, %934
  %936 = add nuw nsw i32 %935, %932
  %937 = icmp eq i32 %936, 2
  %938 = zext i1 %937 to i8
  store i8 %938, i8* %39, align 1
  %939 = add i64 %911, 14
  store i64 %939, i64* %3, align 8
  store i32 %916, i32* %914, align 4
  %940 = load i64, i64* %3, align 8
  %941 = add i64 %940, -281
  store i64 %941, i64* %3, align 8
  br label %block_.L_42b05b

block_.L_42b179:                                  ; preds = %block_.L_42b05b
  %942 = add i64 %540, -72
  %943 = add i64 %580, 8
  store i64 %943, i64* %3, align 8
  %944 = inttoptr i64 %942 to i32*
  %945 = load i32, i32* %944, align 4
  %946 = add i32 %945, 1
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RAX.i23, align 8
  %948 = icmp eq i32 %945, -1
  %949 = icmp eq i32 %946, 0
  %950 = or i1 %948, %949
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %14, align 1
  %952 = and i32 %946, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %21, align 1
  %957 = xor i32 %946, %945
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %27, align 1
  %961 = zext i1 %949 to i8
  store i8 %961, i8* %30, align 1
  %962 = lshr i32 %946, 31
  %963 = trunc i32 %962 to i8
  store i8 %963, i8* %33, align 1
  %964 = lshr i32 %945, 31
  %965 = xor i32 %962, %964
  %966 = add nuw nsw i32 %965, %962
  %967 = icmp eq i32 %966, 2
  %968 = zext i1 %967 to i8
  store i8 %968, i8* %39, align 1
  %969 = add i64 %580, 14
  store i64 %969, i64* %3, align 8
  store i32 %946, i32* %944, align 4
  %970 = load i64, i64* %3, align 8
  %971 = add i64 %970, -323
  store i64 %971, i64* %3, align 8
  br label %block_.L_42b044

block_.L_42b18c:                                  ; preds = %block_.L_42b044
  %972 = bitcast [32 x %union.VectorReg]* %54 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %972, align 1
  %973 = bitcast %union.VectorReg* %76 to i8*
  %974 = add i64 %495, -48
  %975 = add i64 %535, 8
  store i64 %975, i64* %3, align 8
  %976 = inttoptr i64 %974 to i32*
  %977 = load i32, i32* %976, align 4
  %978 = bitcast %union.VectorReg* %76 to float*
  %979 = bitcast %union.VectorReg* %76 to i32*
  store i32 %977, i32* %979, align 1
  %980 = getelementptr inbounds i8, i8* %973, i64 4
  %981 = bitcast i8* %980 to float*
  store float 0.000000e+00, float* %981, align 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %983 = bitcast i64* %982 to float*
  store float 0.000000e+00, float* %983, align 1
  %984 = getelementptr inbounds i8, i8* %973, i64 12
  %985 = bitcast i8* %984 to float*
  store float 0.000000e+00, float* %985, align 1
  %986 = add i64 %535, 11
  store i64 %986, i64* %3, align 8
  %987 = load <2 x float>, <2 x float>* %81, align 1
  %988 = extractelement <2 x float> %987, i32 0
  %989 = load <2 x float>, <2 x float>* %59, align 1
  %990 = extractelement <2 x float> %989, i32 0
  %991 = fcmp uno float %988, %990
  br i1 %991, label %992, label %1002

; <label>:992:                                    ; preds = %block_.L_42b18c
  %993 = fadd float %988, %990
  %994 = bitcast float %993 to i32
  %995 = and i32 %994, 2143289344
  %996 = icmp eq i32 %995, 2139095040
  %997 = and i32 %994, 4194303
  %998 = icmp ne i32 %997, 0
  %999 = and i1 %996, %998
  br i1 %999, label %1000, label %1008

; <label>:1000:                                   ; preds = %992
  %1001 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %986, %struct.Memory* %call2_42afb8)
  %.pre154 = load i64, i64* %3, align 8
  %.pre155 = load i8, i8* %14, align 1
  %.pre156 = load i8, i8* %30, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit2189

; <label>:1002:                                   ; preds = %block_.L_42b18c
  %1003 = fcmp ogt float %988, %990
  br i1 %1003, label %1008, label %1004

; <label>:1004:                                   ; preds = %1002
  %1005 = fcmp olt float %988, %990
  br i1 %1005, label %1008, label %1006

; <label>:1006:                                   ; preds = %1004
  %1007 = fcmp oeq float %988, %990
  br i1 %1007, label %1008, label %1012

; <label>:1008:                                   ; preds = %1006, %1004, %1002, %992
  %1009 = phi i8 [ 0, %1002 ], [ 0, %1004 ], [ 1, %1006 ], [ 1, %992 ]
  %1010 = phi i8 [ 0, %1002 ], [ 0, %1004 ], [ 0, %1006 ], [ 1, %992 ]
  %1011 = phi i8 [ 0, %1002 ], [ 1, %1004 ], [ 0, %1006 ], [ 1, %992 ]
  store i8 %1009, i8* %30, align 1
  store i8 %1010, i8* %21, align 1
  store i8 %1011, i8* %14, align 1
  br label %1012

; <label>:1012:                                   ; preds = %1008, %1006
  %1013 = phi i8 [ %1009, %1008 ], [ %523, %1006 ]
  %1014 = phi i8 [ %1011, %1008 ], [ %511, %1006 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit2189

routine_ucomiss__xmm0___xmm1.exit2189:            ; preds = %1012, %1000
  %1015 = phi i8 [ %.pre156, %1000 ], [ %1013, %1012 ]
  %1016 = phi i8 [ %.pre155, %1000 ], [ %1014, %1012 ]
  %1017 = phi i64 [ %.pre154, %1000 ], [ %986, %1012 ]
  %1018 = phi %struct.Memory* [ %1001, %1000 ], [ %call2_42afb8, %1012 ]
  %1019 = or i8 %1015, %1016
  %1020 = icmp ne i8 %1019, 0
  %.v222 = select i1 %1020, i64 41, i64 6
  %1021 = add i64 %1017, %.v222
  store i64 %1021, i64* %3, align 8
  br i1 %1020, label %block_.L_42b1c0, label %block_42b19d

block_42b19d:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit2189
  %1022 = load i64, i64* %RBP.i, align 8
  %1023 = add i64 %1022, -48
  %1024 = add i64 %1021, 5
  store i64 %1024, i64* %3, align 8
  %1025 = inttoptr i64 %1023 to float*
  %1026 = load float, float* %1025, align 4
  %1027 = fpext float %1026 to double
  %1028 = bitcast [32 x %union.VectorReg]* %54 to double*
  store double %1027, double* %1028, align 1
  %1029 = add i64 %1021, -171181
  %1030 = add i64 %1021, 10
  %1031 = load i64, i64* %6, align 8
  %1032 = add i64 %1031, -8
  %1033 = inttoptr i64 %1032 to i64*
  store i64 %1030, i64* %1033, align 8
  store i64 %1032, i64* %6, align 8
  store i64 %1029, i64* %3, align 8
  %1034 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1018)
  %1035 = load i64, i64* %3, align 8
  %1036 = add i64 %1035, ptrtoint (%G_0x29731__rip__type* @G_0x29731__rip_ to i64)
  %1037 = add i64 %1035, 8
  store i64 %1037, i64* %3, align 8
  %1038 = inttoptr i64 %1036 to i64*
  %1039 = load i64, i64* %1038, align 8
  %1040 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %76, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1039, i64* %1040, align 1
  %1041 = bitcast i64* %982 to double*
  store double 0.000000e+00, double* %1041, align 1
  %1042 = load double, double* %1028, align 1
  %1043 = bitcast i64 %1039 to double
  %1044 = fmul double %1042, %1043
  store double %1044, double* %1028, align 1
  %1045 = load i64, i64* %RBP.i, align 8
  %1046 = add i64 %1045, -496
  %1047 = add i64 %1035, 20
  store i64 %1047, i64* %3, align 8
  %1048 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %54, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %1049 = inttoptr i64 %1046 to double*
  store double %1044, double* %1049, align 8
  %1050 = load i64, i64* %3, align 8
  %1051 = add i64 %1050, 26
  %.pre207 = bitcast i64* %303 to double*
  br label %block_.L_42b1d5

block_.L_42b1c0:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit2189
  %1052 = add i64 %1021, ptrtoint (%G_0x29710__rip__type* @G_0x29710__rip_ to i64)
  %1053 = add i64 %1021, 8
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i64*
  %1055 = load i64, i64* %1054, align 8
  %1056 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %54, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1055, i64* %1056, align 1
  %1057 = bitcast i64* %303 to double*
  store double 0.000000e+00, double* %1057, align 1
  %1058 = load i64, i64* %RBP.i, align 8
  %1059 = add i64 %1058, -496
  %1060 = add i64 %1021, 16
  store i64 %1060, i64* %3, align 8
  %1061 = inttoptr i64 %1059 to i64*
  store i64 %1055, i64* %1061, align 8
  %1062 = load i64, i64* %3, align 8
  %1063 = add i64 %1062, 5
  store i64 %1063, i64* %3, align 8
  %.pre205 = bitcast [32 x %union.VectorReg]* %54 to double*
  %.pre209 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %76, i64 0, i32 0, i32 0, i32 0, i64 0
  %.pre211 = bitcast i64* %982 to double*
  br label %block_.L_42b1d5

block_.L_42b1d5:                                  ; preds = %block_.L_42b1c0, %block_42b19d
  %.pre-phi212 = phi double* [ %.pre211, %block_.L_42b1c0 ], [ %1041, %block_42b19d ]
  %.pre-phi210 = phi i64* [ %.pre209, %block_.L_42b1c0 ], [ %1040, %block_42b19d ]
  %.pre-phi208 = phi double* [ %1057, %block_.L_42b1c0 ], [ %.pre207, %block_42b19d ]
  %.pre-phi206 = phi i64* [ %1056, %block_.L_42b1c0 ], [ %1048, %block_42b19d ]
  %.pre-phi = phi double* [ %.pre205, %block_.L_42b1c0 ], [ %1028, %block_42b19d ]
  %storemerge = phi i64 [ %1063, %block_.L_42b1c0 ], [ %1051, %block_42b19d ]
  %MEMORY.4 = phi %struct.Memory* [ %1018, %block_.L_42b1c0 ], [ %1034, %block_42b19d ]
  %1064 = load i64, i64* %RBP.i, align 8
  %1065 = add i64 %1064, -496
  %1066 = add i64 %storemerge, 8
  store i64 %1066, i64* %3, align 8
  %1067 = inttoptr i64 %1065 to i64*
  %1068 = load i64, i64* %1067, align 8
  store i64 %1068, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %1069 = add i64 %1064, -320
  store i64 %1069, i64* %RDI.i40, align 8
  %1070 = bitcast [32 x %union.VectorReg]* %54 to <2 x i32>*
  %1071 = bitcast i64 %1068 to <2 x i32>
  %1072 = bitcast i64* %303 to <2 x i32>*
  %.cast = bitcast i64 %1068 to double
  %1073 = fptrunc double %.cast to float
  %1074 = bitcast [32 x %union.VectorReg]* %54 to float*
  store float %1073, float* %1074, align 1
  %1075 = extractelement <2 x i32> %1071, i32 1
  store i32 %1075, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %1076 = add i64 %1064, -48
  %1077 = add i64 %storemerge, 24
  store i64 %1077, i64* %3, align 8
  %1078 = load <2 x float>, <2 x float>* %59, align 1
  %1079 = extractelement <2 x float> %1078, i32 0
  %1080 = inttoptr i64 %1076 to float*
  store float %1079, float* %1080, align 4
  %1081 = load i64, i64* %RBP.i, align 8
  %1082 = add i64 %1081, -32
  %1083 = load i64, i64* %3, align 8
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %3, align 8
  %1085 = inttoptr i64 %1082 to i64*
  %1086 = load i64, i64* %1085, align 8
  %1087 = add i64 %1086, 24016
  store i64 %1087, i64* %RAX.i23, align 8
  %1088 = icmp ugt i64 %1086, -24017
  %1089 = zext i1 %1088 to i8
  store i8 %1089, i8* %14, align 1
  %1090 = trunc i64 %1087 to i32
  %1091 = and i32 %1090, 255
  %1092 = tail call i32 @llvm.ctpop.i32(i32 %1091)
  %1093 = trunc i32 %1092 to i8
  %1094 = and i8 %1093, 1
  %1095 = xor i8 %1094, 1
  store i8 %1095, i8* %21, align 1
  %1096 = xor i64 %1086, 16
  %1097 = xor i64 %1096, %1087
  %1098 = lshr i64 %1097, 4
  %1099 = trunc i64 %1098 to i8
  %1100 = and i8 %1099, 1
  store i8 %1100, i8* %27, align 1
  %1101 = icmp eq i64 %1087, 0
  %1102 = zext i1 %1101 to i8
  store i8 %1102, i8* %30, align 1
  %1103 = lshr i64 %1087, 63
  %1104 = trunc i64 %1103 to i8
  store i8 %1104, i8* %33, align 1
  %1105 = lshr i64 %1086, 63
  %1106 = xor i64 %1103, %1105
  %1107 = add nuw nsw i64 %1106, %1103
  %1108 = icmp eq i64 %1107, 2
  %1109 = zext i1 %1108 to i8
  store i8 %1109, i8* %39, align 1
  %1110 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1111 = zext i32 %1110 to i64
  store i64 %1111, i64* %RDX.i689, align 8
  store i64 %1087, i64* %RSI.i, align 8
  %1112 = add i64 %1083, 159763
  %1113 = add i64 %1083, 25
  %1114 = load i64, i64* %6, align 8
  %1115 = add i64 %1114, -8
  %1116 = inttoptr i64 %1115 to i64*
  store i64 %1113, i64* %1116, align 8
  store i64 %1115, i64* %6, align 8
  store i64 %1112, i64* %3, align 8
  %call2_42b201 = tail call %struct.Memory* @sub_452200.FCopy(%struct.State* nonnull %0, i64 %1112, %struct.Memory* %MEMORY.4)
  %1117 = load i64, i64* %RBP.i, align 8
  %1118 = add i64 %1117, -320
  %1119 = load i64, i64* %3, align 8
  store i64 %1118, i64* %RDI.i40, align 8
  %1120 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1121 = zext i32 %1120 to i64
  store i64 %1121, i64* %RSI.i, align 8
  %1122 = add i64 %1119, 161178
  %1123 = add i64 %1119, 19
  %1124 = load i64, i64* %6, align 8
  %1125 = add i64 %1124, -8
  %1126 = inttoptr i64 %1125 to i64*
  store i64 %1123, i64* %1126, align 8
  store i64 %1125, i64* %6, align 8
  store i64 %1122, i64* %3, align 8
  %call2_42b214 = tail call %struct.Memory* @sub_4527a0.FNorm(%struct.State* nonnull %0, i64 %1122, %struct.Memory* %call2_42b201)
  %1127 = load i64, i64* %RBP.i, align 8
  %1128 = add i64 %1127, -8
  %1129 = load i64, i64* %3, align 8
  %1130 = add i64 %1129, 4
  store i64 %1130, i64* %3, align 8
  %1131 = inttoptr i64 %1128 to i64*
  %1132 = load i64, i64* %1131, align 8
  store i64 %1132, i64* %RAX.i23, align 8
  %1133 = add i64 %1132, 16
  %1134 = add i64 %1129, 8
  store i64 %1134, i64* %3, align 8
  %1135 = inttoptr i64 %1133 to i64*
  %1136 = load i64, i64* %1135, align 8
  store i64 %1136, i64* %RDI.i40, align 8
  %1137 = add i64 %1129, 12
  store i64 %1137, i64* %3, align 8
  %1138 = load i64, i64* %1131, align 8
  store i64 %1138, i64* %RAX.i23, align 8
  %1139 = add i64 %1138, 28
  %1140 = add i64 %1129, 15
  store i64 %1140, i64* %3, align 8
  %1141 = inttoptr i64 %1139 to i32*
  %1142 = load i32, i32* %1141, align 4
  %1143 = zext i32 %1142 to i64
  store i64 %1143, i64* %RSI.i, align 8
  %1144 = add i64 %1129, 159351
  %1145 = add i64 %1129, 20
  %1146 = load i64, i64* %6, align 8
  %1147 = add i64 %1146, -8
  %1148 = inttoptr i64 %1147 to i64*
  store i64 %1145, i64* %1148, align 8
  store i64 %1147, i64* %6, align 8
  store i64 %1144, i64* %3, align 8
  %call2_42b228 = tail call %struct.Memory* @sub_452090.FSum(%struct.State* nonnull %0, i64 %1144, %struct.Memory* %call2_42b214)
  %1149 = load i64, i64* %RBP.i, align 8
  %1150 = add i64 %1149, -476
  %1151 = load i64, i64* %3, align 8
  %1152 = add i64 %1151, 8
  store i64 %1152, i64* %3, align 8
  %1153 = load <2 x float>, <2 x float>* %59, align 1
  %1154 = extractelement <2 x float> %1153, i32 0
  %1155 = inttoptr i64 %1150 to float*
  store float %1154, float* %1155, align 4
  %1156 = load i64, i64* %RBP.i, align 8
  %1157 = add i64 %1156, -80
  %1158 = load i64, i64* %3, align 8
  %1159 = add i64 %1158, 7
  store i64 %1159, i64* %3, align 8
  %1160 = inttoptr i64 %1157 to i32*
  store i32 0, i32* %1160, align 4
  %1161 = bitcast i64* %982 to <2 x i32>*
  %1162 = bitcast i8* %980 to i32*
  %1163 = bitcast i64* %982 to i32*
  %1164 = bitcast i8* %984 to i32*
  %.pre157 = load i64, i64* %3, align 8
  %1165 = bitcast [32 x %union.VectorReg]* %54 to <4 x i32>*
  br label %block_.L_42b23c

block_.L_42b23c:                                  ; preds = %block_.L_42b2c3, %block_.L_42b1d5
  %1166 = phi i64 [ %.pre157, %block_.L_42b1d5 ], [ %1380, %block_.L_42b2c3 ]
  %MEMORY.5 = phi %struct.Memory* [ %call2_42b228, %block_.L_42b1d5 ], [ %MEMORY.6, %block_.L_42b2c3 ]
  %1167 = load i64, i64* %RBP.i, align 8
  %1168 = add i64 %1167, -80
  %1169 = add i64 %1166, 3
  store i64 %1169, i64* %3, align 8
  %1170 = inttoptr i64 %1168 to i32*
  %1171 = load i32, i32* %1170, align 4
  %1172 = zext i32 %1171 to i64
  store i64 %1172, i64* %RAX.i23, align 8
  %1173 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %1174 = sub i32 %1171, %1173
  %1175 = icmp ult i32 %1171, %1173
  %1176 = zext i1 %1175 to i8
  store i8 %1176, i8* %14, align 1
  %1177 = and i32 %1174, 255
  %1178 = tail call i32 @llvm.ctpop.i32(i32 %1177)
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = xor i8 %1180, 1
  store i8 %1181, i8* %21, align 1
  %1182 = xor i32 %1173, %1171
  %1183 = xor i32 %1182, %1174
  %1184 = lshr i32 %1183, 4
  %1185 = trunc i32 %1184 to i8
  %1186 = and i8 %1185, 1
  store i8 %1186, i8* %27, align 1
  %1187 = icmp eq i32 %1174, 0
  %1188 = zext i1 %1187 to i8
  store i8 %1188, i8* %30, align 1
  %1189 = lshr i32 %1174, 31
  %1190 = trunc i32 %1189 to i8
  store i8 %1190, i8* %33, align 1
  %1191 = lshr i32 %1171, 31
  %1192 = lshr i32 %1173, 31
  %1193 = xor i32 %1192, %1191
  %1194 = xor i32 %1189, %1191
  %1195 = add nuw nsw i32 %1194, %1193
  %1196 = icmp eq i32 %1195, 2
  %1197 = zext i1 %1196 to i8
  store i8 %1197, i8* %39, align 1
  %1198 = icmp ne i8 %1190, 0
  %1199 = xor i1 %1198, %1196
  %.v223 = select i1 %1199, i64 16, i64 174
  %1200 = add i64 %1166, %.v223
  store i64 %1200, i64* %3, align 8
  br i1 %1199, label %block_42b24c, label %block_.L_42b2ea

block_42b24c:                                     ; preds = %block_.L_42b23c
  store <4 x i32> zeroinitializer, <4 x i32>* %1165, align 1
  %1201 = add i64 %1200, 7
  store i64 %1201, i64* %3, align 8
  %1202 = load i32, i32* %1170, align 4
  %1203 = sext i32 %1202 to i64
  store i64 %1203, i64* %RAX.i23, align 8
  %1204 = shl nsw i64 %1203, 2
  %1205 = add i64 %1167, -320
  %1206 = add i64 %1205, %1204
  %1207 = add i64 %1200, 16
  store i64 %1207, i64* %3, align 8
  %1208 = inttoptr i64 %1206 to i32*
  %1209 = load i32, i32* %1208, align 4
  store i32 %1209, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %1210 = add i64 %1167, -40
  %1211 = add i64 %1200, 20
  store i64 %1211, i64* %3, align 8
  %1212 = inttoptr i64 %1210 to i64*
  %1213 = load i64, i64* %1212, align 8
  store i64 %1213, i64* %RAX.i23, align 8
  %1214 = add i64 %1200, 24
  store i64 %1214, i64* %3, align 8
  %1215 = load i32, i32* %1170, align 4
  %1216 = sext i32 %1215 to i64
  store i64 %1216, i64* %RCX.i774, align 8
  %1217 = shl nsw i64 %1216, 2
  %1218 = add i64 %1217, %1213
  %1219 = add i64 %1200, 29
  store i64 %1219, i64* %3, align 8
  %1220 = load <2 x float>, <2 x float>* %81, align 1
  %1221 = load <2 x i32>, <2 x i32>* %1161, align 1
  %1222 = inttoptr i64 %1218 to float*
  %1223 = load float, float* %1222, align 4
  %1224 = extractelement <2 x float> %1220, i32 0
  %1225 = fdiv float %1224, %1223
  store float %1225, float* %978, align 1
  %1226 = bitcast <2 x float> %1220 to <2 x i32>
  %1227 = extractelement <2 x i32> %1226, i32 1
  store i32 %1227, i32* %1162, align 1
  %1228 = extractelement <2 x i32> %1221, i32 0
  store i32 %1228, i32* %1163, align 1
  %1229 = extractelement <2 x i32> %1221, i32 1
  store i32 %1229, i32* %1164, align 1
  %1230 = add i64 %1200, 32
  store i64 %1230, i64* %3, align 8
  %1231 = load <2 x float>, <2 x float>* %81, align 1
  %1232 = extractelement <2 x float> %1231, i32 0
  %1233 = load <2 x float>, <2 x float>* %59, align 1
  %1234 = extractelement <2 x float> %1233, i32 0
  %1235 = fcmp uno float %1232, %1234
  br i1 %1235, label %1236, label %1246

; <label>:1236:                                   ; preds = %block_42b24c
  %1237 = fadd float %1232, %1234
  %1238 = bitcast float %1237 to i32
  %1239 = and i32 %1238, 2143289344
  %1240 = icmp eq i32 %1239, 2139095040
  %1241 = and i32 %1238, 4194303
  %1242 = icmp ne i32 %1241, 0
  %1243 = and i1 %1240, %1242
  br i1 %1243, label %1244, label %1252

; <label>:1244:                                   ; preds = %1236
  %1245 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1230, %struct.Memory* %MEMORY.5)
  %.pre199 = load i64, i64* %3, align 8
  %.pre200 = load i8, i8* %14, align 1
  %.pre201 = load i8, i8* %30, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit2088

; <label>:1246:                                   ; preds = %block_42b24c
  %1247 = fcmp ogt float %1232, %1234
  br i1 %1247, label %1252, label %1248

; <label>:1248:                                   ; preds = %1246
  %1249 = fcmp olt float %1232, %1234
  br i1 %1249, label %1252, label %1250

; <label>:1250:                                   ; preds = %1248
  %1251 = fcmp oeq float %1232, %1234
  br i1 %1251, label %1252, label %1256

; <label>:1252:                                   ; preds = %1250, %1248, %1246, %1236
  %1253 = phi i8 [ 0, %1246 ], [ 0, %1248 ], [ 1, %1250 ], [ 1, %1236 ]
  %1254 = phi i8 [ 0, %1246 ], [ 0, %1248 ], [ 0, %1250 ], [ 1, %1236 ]
  %1255 = phi i8 [ 0, %1246 ], [ 1, %1248 ], [ 0, %1250 ], [ 1, %1236 ]
  store i8 %1253, i8* %30, align 1
  store i8 %1254, i8* %21, align 1
  store i8 %1255, i8* %14, align 1
  br label %1256

; <label>:1256:                                   ; preds = %1252, %1250
  %1257 = phi i8 [ %1253, %1252 ], [ %1188, %1250 ]
  %1258 = phi i8 [ %1255, %1252 ], [ %1176, %1250 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit2088

routine_ucomiss__xmm0___xmm1.exit2088:            ; preds = %1256, %1244
  %1259 = phi i8 [ %.pre201, %1244 ], [ %1257, %1256 ]
  %1260 = phi i8 [ %.pre200, %1244 ], [ %1258, %1256 ]
  %1261 = phi i64 [ %.pre199, %1244 ], [ %1230, %1256 ]
  %1262 = phi %struct.Memory* [ %1245, %1244 ], [ %MEMORY.5, %1256 ]
  %1263 = or i8 %1259, %1260
  %1264 = icmp ne i8 %1263, 0
  %.v254 = select i1 %1264, i64 66, i64 6
  %1265 = add i64 %1261, %.v254
  store i64 %1265, i64* %3, align 8
  br i1 %1264, label %block_.L_42b2ae, label %block_42b272

block_42b272:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit2088
  %1266 = load i64, i64* %RBP.i, align 8
  %1267 = add i64 %1266, -80
  %1268 = add i64 %1265, 4
  store i64 %1268, i64* %3, align 8
  %1269 = inttoptr i64 %1267 to i32*
  %1270 = load i32, i32* %1269, align 4
  %1271 = sext i32 %1270 to i64
  store i64 %1271, i64* %RAX.i23, align 8
  %1272 = shl nsw i64 %1271, 2
  %1273 = add i64 %1266, -320
  %1274 = add i64 %1273, %1272
  %1275 = add i64 %1265, 13
  store i64 %1275, i64* %3, align 8
  %1276 = inttoptr i64 %1274 to i32*
  %1277 = load i32, i32* %1276, align 4
  store i32 %1277, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %1278 = add i64 %1266, -40
  %1279 = add i64 %1265, 17
  store i64 %1279, i64* %3, align 8
  %1280 = inttoptr i64 %1278 to i64*
  %1281 = load i64, i64* %1280, align 8
  store i64 %1281, i64* %RAX.i23, align 8
  %1282 = add i64 %1265, 21
  store i64 %1282, i64* %3, align 8
  %1283 = load i32, i32* %1269, align 4
  %1284 = sext i32 %1283 to i64
  store i64 %1284, i64* %RCX.i774, align 8
  %1285 = shl nsw i64 %1284, 2
  %1286 = add i64 %1285, %1281
  %1287 = add i64 %1265, 26
  store i64 %1287, i64* %3, align 8
  %1288 = load <2 x float>, <2 x float>* %59, align 1
  %1289 = load <2 x i32>, <2 x i32>* %1072, align 1
  %1290 = inttoptr i64 %1286 to float*
  %1291 = load float, float* %1290, align 4
  %1292 = extractelement <2 x float> %1288, i32 0
  %1293 = fdiv float %1292, %1291
  store float %1293, float* %1074, align 1
  %1294 = bitcast <2 x float> %1288 to <2 x i32>
  %1295 = extractelement <2 x i32> %1294, i32 1
  store i32 %1295, i32* %306, align 1
  %1296 = extractelement <2 x i32> %1289, i32 0
  store i32 %1296, i32* %307, align 1
  %1297 = extractelement <2 x i32> %1289, i32 1
  store i32 %1297, i32* %309, align 1
  %1298 = load <2 x float>, <2 x float>* %59, align 1
  %1299 = extractelement <2 x float> %1298, i32 0
  %1300 = fpext float %1299 to double
  store double %1300, double* %.pre-phi, align 1
  %1301 = add i64 %1265, -171394
  %1302 = add i64 %1265, 35
  %1303 = load i64, i64* %6, align 8
  %1304 = add i64 %1303, -8
  %1305 = inttoptr i64 %1304 to i64*
  store i64 %1302, i64* %1305, align 8
  store i64 %1304, i64* %6, align 8
  store i64 %1301, i64* %3, align 8
  %1306 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1262)
  %1307 = load i64, i64* %3, align 8
  %1308 = add i64 %1307, ptrtoint (%G_0x29643__rip__type* @G_0x29643__rip_ to i64)
  %1309 = add i64 %1307, 8
  store i64 %1309, i64* %3, align 8
  %1310 = inttoptr i64 %1308 to i64*
  %1311 = load i64, i64* %1310, align 8
  store i64 %1311, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %1312 = load double, double* %.pre-phi, align 1
  %.cast127 = bitcast i64 %1311 to double
  %1313 = fmul double %1312, %.cast127
  store double %1313, double* %.pre-phi, align 1
  %1314 = load i64, i64* %RBP.i, align 8
  %1315 = add i64 %1314, -504
  %1316 = add i64 %1307, 20
  store i64 %1316, i64* %3, align 8
  %1317 = inttoptr i64 %1315 to double*
  store double %1313, double* %1317, align 8
  %1318 = load i64, i64* %3, align 8
  %1319 = add i64 %1318, 26
  br label %block_.L_42b2c3

block_.L_42b2ae:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit2088
  %1320 = add i64 %1265, ptrtoint (%G_0x29622__rip__type* @G_0x29622__rip_ to i64)
  %1321 = add i64 %1265, 8
  store i64 %1321, i64* %3, align 8
  %1322 = inttoptr i64 %1320 to i64*
  %1323 = load i64, i64* %1322, align 8
  store i64 %1323, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %1324 = load i64, i64* %RBP.i, align 8
  %1325 = add i64 %1324, -504
  %1326 = add i64 %1265, 16
  store i64 %1326, i64* %3, align 8
  %1327 = inttoptr i64 %1325 to i64*
  store i64 %1323, i64* %1327, align 8
  %1328 = load i64, i64* %3, align 8
  %1329 = add i64 %1328, 5
  store i64 %1329, i64* %3, align 8
  br label %block_.L_42b2c3

block_.L_42b2c3:                                  ; preds = %block_.L_42b2ae, %block_42b272
  %storemerge65 = phi i64 [ %1319, %block_42b272 ], [ %1329, %block_.L_42b2ae ]
  %MEMORY.6 = phi %struct.Memory* [ %1306, %block_42b272 ], [ %1262, %block_.L_42b2ae ]
  %1330 = load i64, i64* %RBP.i, align 8
  %1331 = add i64 %1330, -504
  %1332 = add i64 %storemerge65, 8
  store i64 %1332, i64* %3, align 8
  %1333 = inttoptr i64 %1331 to i64*
  %1334 = load i64, i64* %1333, align 8
  store i64 %1334, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %.cast66 = bitcast i64 %1334 to <2 x i32>
  %.cast67 = bitcast i64 %1334 to double
  %1335 = fptrunc double %.cast67 to float
  store float %1335, float* %1074, align 1
  %1336 = extractelement <2 x i32> %.cast66, i32 1
  store i32 %1336, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %1337 = add i64 %1330, -80
  %1338 = add i64 %storemerge65, 16
  store i64 %1338, i64* %3, align 8
  %1339 = inttoptr i64 %1337 to i32*
  %1340 = load i32, i32* %1339, align 4
  %1341 = sext i32 %1340 to i64
  store i64 %1341, i64* %RAX.i23, align 8
  %1342 = shl nsw i64 %1341, 2
  %1343 = add i64 %1330, -320
  %1344 = add i64 %1343, %1342
  %1345 = add i64 %storemerge65, 25
  store i64 %1345, i64* %3, align 8
  %1346 = load <2 x float>, <2 x float>* %59, align 1
  %1347 = extractelement <2 x float> %1346, i32 0
  %1348 = inttoptr i64 %1344 to float*
  store float %1347, float* %1348, align 4
  %1349 = load i64, i64* %RBP.i, align 8
  %1350 = add i64 %1349, -80
  %1351 = load i64, i64* %3, align 8
  %1352 = add i64 %1351, 3
  store i64 %1352, i64* %3, align 8
  %1353 = inttoptr i64 %1350 to i32*
  %1354 = load i32, i32* %1353, align 4
  %1355 = add i32 %1354, 1
  %1356 = zext i32 %1355 to i64
  store i64 %1356, i64* %RAX.i23, align 8
  %1357 = icmp eq i32 %1354, -1
  %1358 = icmp eq i32 %1355, 0
  %1359 = or i1 %1357, %1358
  %1360 = zext i1 %1359 to i8
  store i8 %1360, i8* %14, align 1
  %1361 = and i32 %1355, 255
  %1362 = tail call i32 @llvm.ctpop.i32(i32 %1361)
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = xor i8 %1364, 1
  store i8 %1365, i8* %21, align 1
  %1366 = xor i32 %1355, %1354
  %1367 = lshr i32 %1366, 4
  %1368 = trunc i32 %1367 to i8
  %1369 = and i8 %1368, 1
  store i8 %1369, i8* %27, align 1
  %1370 = zext i1 %1358 to i8
  store i8 %1370, i8* %30, align 1
  %1371 = lshr i32 %1355, 31
  %1372 = trunc i32 %1371 to i8
  store i8 %1372, i8* %33, align 1
  %1373 = lshr i32 %1354, 31
  %1374 = xor i32 %1371, %1373
  %1375 = add nuw nsw i32 %1374, %1371
  %1376 = icmp eq i32 %1375, 2
  %1377 = zext i1 %1376 to i8
  store i8 %1377, i8* %39, align 1
  %1378 = add i64 %1351, 9
  store i64 %1378, i64* %3, align 8
  store i32 %1355, i32* %1353, align 4
  %1379 = load i64, i64* %3, align 8
  %1380 = add i64 %1379, -169
  store i64 %1380, i64* %3, align 8
  br label %block_.L_42b23c

block_.L_42b2ea:                                  ; preds = %block_.L_42b23c
  %1381 = add i64 %1167, -8
  %1382 = add i64 %1200, 4
  store i64 %1382, i64* %3, align 8
  %1383 = inttoptr i64 %1381 to i64*
  %1384 = load i64, i64* %1383, align 8
  store i64 %1384, i64* %RDI.i40, align 8
  %1385 = add i64 %1200, 3766
  %1386 = add i64 %1200, 9
  %1387 = load i64, i64* %6, align 8
  %1388 = add i64 %1387, -8
  %1389 = inttoptr i64 %1388 to i64*
  store i64 %1386, i64* %1389, align 8
  store i64 %1388, i64* %6, align 8
  store i64 %1385, i64* %3, align 8
  %call2_42b2ee = tail call %struct.Memory* @sub_42c1a0.estimate_model_length(%struct.State* nonnull %0, i64 %1385, %struct.Memory* %MEMORY.5)
  %1390 = load i64, i64* %3, align 8
  %1391 = bitcast [32 x %union.VectorReg]* %54 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1391, align 1
  %1392 = add i64 %1390, add (i64 ptrtoint (%G_0x294f2__rip__type* @G_0x294f2__rip_ to i64), i64 3)
  %1393 = add i64 %1390, 11
  store i64 %1393, i64* %3, align 8
  %1394 = inttoptr i64 %1392 to i64*
  %1395 = load i64, i64* %1394, align 8
  %1396 = bitcast %union.VectorReg* %76 to double*
  store i64 %1395, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %1397 = bitcast %union.VectorReg* %85 to i8*
  %1398 = add i64 %1390, add (i64 ptrtoint (%G_0x29426__rip__type* @G_0x29426__rip_ to i64), i64 11)
  %1399 = add i64 %1390, 19
  store i64 %1399, i64* %3, align 8
  %1400 = inttoptr i64 %1398 to i32*
  %1401 = load i32, i32* %1400, align 4
  %1402 = bitcast %union.VectorReg* %85 to float*
  %1403 = bitcast %union.VectorReg* %85 to i32*
  store i32 %1401, i32* %1403, align 1
  %1404 = getelementptr inbounds i8, i8* %1397, i64 4
  %1405 = bitcast i8* %1404 to float*
  store float 0.000000e+00, float* %1405, align 1
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %1407 = bitcast i64* %1406 to float*
  store float 0.000000e+00, float* %1407, align 1
  %1408 = getelementptr inbounds i8, i8* %1397, i64 12
  %1409 = bitcast i8* %1408 to float*
  store float 0.000000e+00, float* %1409, align 1
  %1410 = load i64, i64* %RBP.i, align 8
  %1411 = add i64 %1410, -452
  %1412 = load i32, i32* %EAX.i2468, align 4
  %1413 = add i64 %1390, 25
  store i64 %1413, i64* %3, align 8
  %1414 = inttoptr i64 %1411 to i32*
  store i32 %1412, i32* %1414, align 4
  %1415 = load i64, i64* %RBP.i, align 8
  %1416 = add i64 %1415, -452
  %1417 = load i64, i64* %3, align 8
  %1418 = add i64 %1417, 6
  store i64 %1418, i64* %3, align 8
  %1419 = inttoptr i64 %1416 to i32*
  %1420 = load i32, i32* %1419, align 4
  %1421 = add i32 %1420, -1
  %1422 = zext i32 %1421 to i64
  store i64 %1422, i64* %RAX.i23, align 8
  %1423 = icmp eq i32 %1420, 0
  %1424 = zext i1 %1423 to i8
  store i8 %1424, i8* %14, align 1
  %1425 = and i32 %1421, 255
  %1426 = tail call i32 @llvm.ctpop.i32(i32 %1425)
  %1427 = trunc i32 %1426 to i8
  %1428 = and i8 %1427, 1
  %1429 = xor i8 %1428, 1
  store i8 %1429, i8* %21, align 1
  %1430 = xor i32 %1421, %1420
  %1431 = lshr i32 %1430, 4
  %1432 = trunc i32 %1431 to i8
  %1433 = and i8 %1432, 1
  store i8 %1433, i8* %27, align 1
  %1434 = icmp eq i32 %1421, 0
  %1435 = zext i1 %1434 to i8
  store i8 %1435, i8* %30, align 1
  %1436 = lshr i32 %1421, 31
  %1437 = trunc i32 %1436 to i8
  store i8 %1437, i8* %33, align 1
  %1438 = lshr i32 %1420, 31
  %1439 = xor i32 %1436, %1438
  %1440 = add nuw nsw i32 %1439, %1438
  %1441 = icmp eq i32 %1440, 2
  %1442 = zext i1 %1441 to i8
  store i8 %1442, i8* %39, align 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %1444 = bitcast %union.VectorReg* %1443 to i8*
  %1445 = bitcast %union.VectorReg* %1443 to <2 x i32>*
  %1446 = load <2 x i32>, <2 x i32>* %1445, align 1
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %1448 = bitcast i64* %1447 to <2 x i32>*
  %1449 = load <2 x i32>, <2 x i32>* %1448, align 1
  %1450 = sitofp i32 %1421 to float
  %1451 = bitcast %union.VectorReg* %1443 to float*
  store float %1450, float* %1451, align 1
  %1452 = extractelement <2 x i32> %1446, i32 1
  %1453 = getelementptr inbounds i8, i8* %1444, i64 4
  %1454 = bitcast i8* %1453 to i32*
  store i32 %1452, i32* %1454, align 1
  %1455 = extractelement <2 x i32> %1449, i32 0
  %1456 = bitcast i64* %1447 to i32*
  store i32 %1455, i32* %1456, align 1
  %1457 = extractelement <2 x i32> %1449, i32 1
  %1458 = getelementptr inbounds i8, i8* %1444, i64 12
  %1459 = bitcast i8* %1458 to i32*
  store i32 %1457, i32* %1459, align 1
  %1460 = bitcast %union.VectorReg* %1443 to <2 x float>*
  %1461 = load <2 x float>, <2 x float>* %1460, align 1
  %1462 = extractelement <2 x float> %1461, i32 0
  %1463 = fpext float %1462 to double
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %1465 = bitcast %union.VectorReg* %1464 to i8*
  %1466 = bitcast %union.VectorReg* %76 to <2 x i32>*
  %1467 = load <2 x i32>, <2 x i32>* %1466, align 1
  %1468 = load <2 x i32>, <2 x i32>* %1161, align 1
  %1469 = extractelement <2 x i32> %1467, i32 0
  %1470 = bitcast %union.VectorReg* %1464 to i32*
  store i32 %1469, i32* %1470, align 1
  %1471 = extractelement <2 x i32> %1467, i32 1
  %1472 = getelementptr inbounds i8, i8* %1465, i64 4
  %1473 = bitcast i8* %1472 to i32*
  store i32 %1471, i32* %1473, align 1
  %1474 = extractelement <2 x i32> %1468, i32 0
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %1476 = bitcast i64* %1475 to i32*
  store i32 %1474, i32* %1476, align 1
  %1477 = extractelement <2 x i32> %1468, i32 1
  %1478 = getelementptr inbounds i8, i8* %1465, i64 12
  %1479 = bitcast i8* %1478 to i32*
  store i32 %1477, i32* %1479, align 1
  %1480 = bitcast %union.VectorReg* %1464 to double*
  %1481 = load double, double* %1480, align 1
  %1482 = fdiv double %1481, %1463
  store double %1482, double* %1480, align 1
  %1483 = bitcast double %1463 to <2 x i32>
  %1484 = load <2 x i32>, <2 x i32>* %1448, align 1
  %1485 = fptrunc double %1482 to float
  store float %1485, float* %1451, align 1
  %1486 = extractelement <2 x i32> %1483, i32 1
  store i32 %1486, i32* %1454, align 1
  %1487 = extractelement <2 x i32> %1484, i32 0
  store i32 %1487, i32* %1456, align 1
  %1488 = extractelement <2 x i32> %1484, i32 1
  store i32 %1488, i32* %1459, align 1
  %1489 = load i64, i64* %RBP.i, align 8
  %1490 = add i64 %1489, -456
  %1491 = add i64 %1417, 36
  store i64 %1491, i64* %3, align 8
  %1492 = load <2 x float>, <2 x float>* %1460, align 1
  %1493 = extractelement <2 x float> %1492, i32 0
  %1494 = inttoptr i64 %1490 to float*
  store float %1493, float* %1494, align 4
  %1495 = load i64, i64* %RBP.i, align 8
  %1496 = add i64 %1495, -444
  %1497 = load i64, i64* %3, align 8
  %1498 = add i64 %1497, 8
  store i64 %1498, i64* %3, align 8
  %1499 = load <2 x float>, <2 x float>* %90, align 1
  %1500 = extractelement <2 x float> %1499, i32 0
  %1501 = inttoptr i64 %1496 to float*
  store float %1500, float* %1501, align 4
  %1502 = load i64, i64* %RBP.i, align 8
  %1503 = add i64 %1502, -452
  %1504 = load i64, i64* %3, align 8
  %1505 = add i64 %1504, 6
  store i64 %1505, i64* %3, align 8
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506, align 4
  %1508 = add i32 %1507, -1
  %1509 = zext i32 %1508 to i64
  store i64 %1509, i64* %RAX.i23, align 8
  %1510 = icmp eq i32 %1507, 0
  %1511 = zext i1 %1510 to i8
  store i8 %1511, i8* %14, align 1
  %1512 = and i32 %1508, 255
  %1513 = tail call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  store i8 %1516, i8* %21, align 1
  %1517 = xor i32 %1508, %1507
  %1518 = lshr i32 %1517, 4
  %1519 = trunc i32 %1518 to i8
  %1520 = and i8 %1519, 1
  store i8 %1520, i8* %27, align 1
  %1521 = icmp eq i32 %1508, 0
  %1522 = zext i1 %1521 to i8
  store i8 %1522, i8* %30, align 1
  %1523 = lshr i32 %1508, 31
  %1524 = trunc i32 %1523 to i8
  store i8 %1524, i8* %33, align 1
  %1525 = lshr i32 %1507, 31
  %1526 = xor i32 %1523, %1525
  %1527 = add nuw nsw i32 %1526, %1525
  %1528 = icmp eq i32 %1527, 2
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %39, align 1
  %1530 = bitcast %union.VectorReg* %85 to <2 x i32>*
  %1531 = load <2 x i32>, <2 x i32>* %1530, align 1
  %1532 = bitcast i64* %1406 to <2 x i32>*
  %1533 = load <2 x i32>, <2 x i32>* %1532, align 1
  %1534 = sitofp i32 %1508 to float
  store float %1534, float* %1402, align 1
  %1535 = extractelement <2 x i32> %1531, i32 1
  %1536 = bitcast i8* %1404 to i32*
  store i32 %1535, i32* %1536, align 1
  %1537 = extractelement <2 x i32> %1533, i32 0
  %1538 = bitcast i64* %1406 to i32*
  store i32 %1537, i32* %1538, align 1
  %1539 = extractelement <2 x i32> %1533, i32 1
  %1540 = bitcast i8* %1408 to i32*
  store i32 %1539, i32* %1540, align 1
  %1541 = load <2 x float>, <2 x float>* %90, align 1
  %1542 = extractelement <2 x float> %1541, i32 0
  %1543 = fpext float %1542 to double
  %1544 = bitcast %union.VectorReg* %85 to double*
  store double %1543, double* %1544, align 1
  %1545 = load double, double* %1396, align 1
  %1546 = bitcast i64* %982 to <2 x i32>*
  %1547 = load <2 x i32>, <2 x i32>* %1546, align 1
  %1548 = fdiv double %1545, %1543
  %.cast68 = bitcast double %1548 to <2 x i32>
  %1549 = fptrunc double %1548 to float
  store float %1549, float* %978, align 1
  %1550 = extractelement <2 x i32> %.cast68, i32 1
  store i32 %1550, i32* %1162, align 1
  %1551 = extractelement <2 x i32> %1547, i32 0
  store i32 %1551, i32* %1163, align 1
  %1552 = extractelement <2 x i32> %1547, i32 1
  store i32 %1552, i32* %1164, align 1
  %1553 = add i64 %1502, -448
  %1554 = add i64 %1504, 33
  store i64 %1554, i64* %3, align 8
  %1555 = load <2 x float>, <2 x float>* %81, align 1
  %1556 = extractelement <2 x float> %1555, i32 0
  %1557 = inttoptr i64 %1553 to float*
  store float %1556, float* %1557, align 4
  %1558 = load i64, i64* %RBP.i, align 8
  %1559 = add i64 %1558, -444
  %1560 = load i64, i64* %3, align 8
  %1561 = add i64 %1560, 8
  store i64 %1561, i64* %3, align 8
  %1562 = inttoptr i64 %1559 to i32*
  %1563 = load i32, i32* %1562, align 4
  store i32 %1563, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %1564 = add i64 %1558, -44
  %1565 = add i64 %1560, 13
  store i64 %1565, i64* %3, align 8
  %1566 = load <2 x float>, <2 x float>* %81, align 1
  %1567 = load <2 x i32>, <2 x i32>* %1161, align 1
  %1568 = inttoptr i64 %1564 to float*
  %1569 = load float, float* %1568, align 4
  %1570 = extractelement <2 x float> %1566, i32 0
  %1571 = fdiv float %1570, %1569
  store float %1571, float* %978, align 1
  %1572 = bitcast <2 x float> %1566 to <2 x i32>
  %1573 = extractelement <2 x i32> %1572, i32 1
  store i32 %1573, i32* %1162, align 1
  %1574 = extractelement <2 x i32> %1567, i32 0
  store i32 %1574, i32* %1163, align 1
  %1575 = extractelement <2 x i32> %1567, i32 1
  store i32 %1575, i32* %1164, align 1
  %1576 = add i64 %1560, 16
  store i64 %1576, i64* %3, align 8
  %1577 = load <2 x float>, <2 x float>* %81, align 1
  %1578 = extractelement <2 x float> %1577, i32 0
  %1579 = load <2 x float>, <2 x float>* %59, align 1
  %1580 = extractelement <2 x float> %1579, i32 0
  %1581 = fcmp uno float %1578, %1580
  br i1 %1581, label %1582, label %1592

; <label>:1582:                                   ; preds = %block_.L_42b2ea
  %1583 = fadd float %1578, %1580
  %1584 = bitcast float %1583 to i32
  %1585 = and i32 %1584, 2143289344
  %1586 = icmp eq i32 %1585, 2139095040
  %1587 = and i32 %1584, 4194303
  %1588 = icmp ne i32 %1587, 0
  %1589 = and i1 %1586, %1588
  br i1 %1589, label %1590, label %1598

; <label>:1590:                                   ; preds = %1582
  %1591 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1576, %struct.Memory* %call2_42b2ee)
  %.pre158 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit1959

; <label>:1592:                                   ; preds = %block_.L_42b2ea
  %1593 = fcmp ogt float %1578, %1580
  br i1 %1593, label %1598, label %1594

; <label>:1594:                                   ; preds = %1592
  %1595 = fcmp olt float %1578, %1580
  br i1 %1595, label %1598, label %1596

; <label>:1596:                                   ; preds = %1594
  %1597 = fcmp oeq float %1578, %1580
  br i1 %1597, label %1598, label %1602

; <label>:1598:                                   ; preds = %1596, %1594, %1592, %1582
  %1599 = phi i8 [ 0, %1592 ], [ 0, %1594 ], [ 1, %1596 ], [ 1, %1582 ]
  %1600 = phi i8 [ 0, %1592 ], [ 0, %1594 ], [ 0, %1596 ], [ 1, %1582 ]
  %1601 = phi i8 [ 0, %1592 ], [ 1, %1594 ], [ 0, %1596 ], [ 1, %1582 ]
  store i8 %1599, i8* %30, align 1
  store i8 %1600, i8* %21, align 1
  store i8 %1601, i8* %14, align 1
  br label %1602

; <label>:1602:                                   ; preds = %1598, %1596
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1959

routine_ucomiss__xmm0___xmm1.exit1959:            ; preds = %1602, %1590
  %1603 = phi i64 [ %.pre158, %1590 ], [ %1576, %1602 ]
  %1604 = phi %struct.Memory* [ %1591, %1590 ], [ %call2_42b2ee, %1602 ]
  %1605 = load i8, i8* %14, align 1
  %1606 = load i8, i8* %30, align 1
  %1607 = or i8 %1606, %1605
  %1608 = icmp ne i8 %1607, 0
  %.v315 = select i1 %1608, i64 53, i64 6
  %1609 = add i64 %1603, %.v315
  store i64 %1609, i64* %3, align 8
  br i1 %1608, label %block_.L_42b39e, label %block_42b36f

block_42b36f:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1959
  %1610 = load i64, i64* %RBP.i, align 8
  %1611 = add i64 %1610, -444
  %1612 = add i64 %1609, 8
  store i64 %1612, i64* %3, align 8
  %1613 = inttoptr i64 %1611 to i32*
  %1614 = load i32, i32* %1613, align 4
  store i32 %1614, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %1615 = add i64 %1610, -44
  %1616 = add i64 %1609, 13
  store i64 %1616, i64* %3, align 8
  %1617 = load <2 x float>, <2 x float>* %59, align 1
  %1618 = load <2 x i32>, <2 x i32>* %1072, align 1
  %1619 = inttoptr i64 %1615 to float*
  %1620 = load float, float* %1619, align 4
  %1621 = extractelement <2 x float> %1617, i32 0
  %1622 = fdiv float %1621, %1620
  store float %1622, float* %1074, align 1
  %1623 = bitcast <2 x float> %1617 to <2 x i32>
  %1624 = extractelement <2 x i32> %1623, i32 1
  store i32 %1624, i32* %306, align 1
  %1625 = extractelement <2 x i32> %1618, i32 0
  store i32 %1625, i32* %307, align 1
  %1626 = extractelement <2 x i32> %1618, i32 1
  store i32 %1626, i32* %309, align 1
  %1627 = load <2 x float>, <2 x float>* %59, align 1
  %1628 = extractelement <2 x float> %1627, i32 0
  %1629 = fpext float %1628 to double
  store double %1629, double* %.pre-phi, align 1
  %1630 = add i64 %1609, -171647
  %1631 = add i64 %1609, 22
  %1632 = load i64, i64* %6, align 8
  %1633 = add i64 %1632, -8
  %1634 = inttoptr i64 %1633 to i64*
  store i64 %1631, i64* %1634, align 8
  store i64 %1633, i64* %6, align 8
  store i64 %1630, i64* %3, align 8
  %1635 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1604)
  %1636 = load i64, i64* %3, align 8
  %1637 = add i64 %1636, ptrtoint (%G_0x29553__rip__type* @G_0x29553__rip_ to i64)
  %1638 = add i64 %1636, 8
  store i64 %1638, i64* %3, align 8
  %1639 = inttoptr i64 %1637 to i64*
  %1640 = load i64, i64* %1639, align 8
  store i64 %1640, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %1641 = load double, double* %.pre-phi, align 1
  %.cast70 = bitcast i64 %1640 to double
  %1642 = fmul double %.cast70, %1641
  store double %1642, double* %.pre-phi, align 1
  %1643 = load i64, i64* %RBP.i, align 8
  %1644 = add i64 %1643, -512
  %1645 = add i64 %1636, 20
  store i64 %1645, i64* %3, align 8
  %1646 = inttoptr i64 %1644 to double*
  store double %1642, double* %1646, align 8
  %1647 = load i64, i64* %3, align 8
  %1648 = add i64 %1647, 26
  br label %block_.L_42b3b3

block_.L_42b39e:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit1959
  %1649 = add i64 %1609, ptrtoint (%G_0x29532__rip__type* @G_0x29532__rip_ to i64)
  %1650 = add i64 %1609, 8
  store i64 %1650, i64* %3, align 8
  %1651 = inttoptr i64 %1649 to i64*
  %1652 = load i64, i64* %1651, align 8
  store i64 %1652, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %1653 = load i64, i64* %RBP.i, align 8
  %1654 = add i64 %1653, -512
  %1655 = add i64 %1609, 16
  store i64 %1655, i64* %3, align 8
  %1656 = inttoptr i64 %1654 to i64*
  store i64 %1652, i64* %1656, align 8
  %1657 = load i64, i64* %3, align 8
  %1658 = add i64 %1657, 5
  store i64 %1658, i64* %3, align 8
  br label %block_.L_42b3b3

block_.L_42b3b3:                                  ; preds = %block_.L_42b39e, %block_42b36f
  %storemerge71 = phi i64 [ %1648, %block_42b36f ], [ %1658, %block_.L_42b39e ]
  %MEMORY.7 = phi %struct.Memory* [ %1635, %block_42b36f ], [ %1604, %block_.L_42b39e ]
  %1659 = load i64, i64* %RBP.i, align 8
  %1660 = add i64 %1659, -512
  %1661 = add i64 %storemerge71, 8
  store i64 %1661, i64* %3, align 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662, align 8
  store i64 %1663, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %1664 = bitcast %union.VectorReg* %76 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1664, align 1
  %1665 = bitcast i64 %1663 to <2 x i32>
  %.cast72 = bitcast i64 %1663 to double
  %1666 = fptrunc double %.cast72 to float
  store float %1666, float* %1074, align 1
  %1667 = extractelement <2 x i32> %1665, i32 1
  store i32 %1667, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %1668 = add i64 %1659, -444
  %1669 = add i64 %storemerge71, 23
  store i64 %1669, i64* %3, align 8
  %1670 = load <2 x float>, <2 x float>* %59, align 1
  %1671 = extractelement <2 x float> %1670, i32 0
  %1672 = inttoptr i64 %1668 to float*
  store float %1671, float* %1672, align 4
  %1673 = load i64, i64* %RBP.i, align 8
  %1674 = add i64 %1673, -448
  %1675 = load i64, i64* %3, align 8
  %1676 = add i64 %1675, 8
  store i64 %1676, i64* %3, align 8
  %1677 = inttoptr i64 %1674 to i32*
  %1678 = load i32, i32* %1677, align 4
  store i32 %1678, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %1679 = add i64 %1673, -44
  %1680 = add i64 %1675, 13
  store i64 %1680, i64* %3, align 8
  %1681 = load <2 x float>, <2 x float>* %59, align 1
  %1682 = load <2 x i32>, <2 x i32>* %1072, align 1
  %1683 = inttoptr i64 %1679 to float*
  %1684 = load float, float* %1683, align 4
  %1685 = extractelement <2 x float> %1681, i32 0
  %1686 = fdiv float %1685, %1684
  store float %1686, float* %1074, align 1
  %1687 = bitcast <2 x float> %1681 to <2 x i32>
  %1688 = extractelement <2 x i32> %1687, i32 1
  store i32 %1688, i32* %306, align 1
  %1689 = extractelement <2 x i32> %1682, i32 0
  store i32 %1689, i32* %307, align 1
  %1690 = extractelement <2 x i32> %1682, i32 1
  store i32 %1690, i32* %309, align 1
  %1691 = add i64 %1675, 16
  store i64 %1691, i64* %3, align 8
  %1692 = load <2 x float>, <2 x float>* %59, align 1
  %1693 = extractelement <2 x float> %1692, i32 0
  %1694 = load <2 x float>, <2 x float>* %81, align 1
  %1695 = extractelement <2 x float> %1694, i32 0
  %1696 = fcmp uno float %1693, %1695
  br i1 %1696, label %1697, label %1707

; <label>:1697:                                   ; preds = %block_.L_42b3b3
  %1698 = fadd float %1693, %1695
  %1699 = bitcast float %1698 to i32
  %1700 = and i32 %1699, 2143289344
  %1701 = icmp eq i32 %1700, 2139095040
  %1702 = and i32 %1699, 4194303
  %1703 = icmp ne i32 %1702, 0
  %1704 = and i1 %1701, %1703
  br i1 %1704, label %1705, label %1713

; <label>:1705:                                   ; preds = %1697
  %1706 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1691, %struct.Memory* %MEMORY.7)
  %.pre159 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit1906

; <label>:1707:                                   ; preds = %block_.L_42b3b3
  %1708 = fcmp ogt float %1693, %1695
  br i1 %1708, label %1713, label %1709

; <label>:1709:                                   ; preds = %1707
  %1710 = fcmp olt float %1693, %1695
  br i1 %1710, label %1713, label %1711

; <label>:1711:                                   ; preds = %1709
  %1712 = fcmp oeq float %1693, %1695
  br i1 %1712, label %1713, label %1717

; <label>:1713:                                   ; preds = %1711, %1709, %1707, %1697
  %1714 = phi i8 [ 0, %1707 ], [ 0, %1709 ], [ 1, %1711 ], [ 1, %1697 ]
  %1715 = phi i8 [ 0, %1707 ], [ 0, %1709 ], [ 0, %1711 ], [ 1, %1697 ]
  %1716 = phi i8 [ 0, %1707 ], [ 1, %1709 ], [ 0, %1711 ], [ 1, %1697 ]
  store i8 %1714, i8* %30, align 1
  store i8 %1715, i8* %21, align 1
  store i8 %1716, i8* %14, align 1
  br label %1717

; <label>:1717:                                   ; preds = %1713, %1711
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit1906

routine_ucomiss__xmm1___xmm0.exit1906:            ; preds = %1717, %1705
  %1718 = phi i64 [ %.pre159, %1705 ], [ %1691, %1717 ]
  %1719 = phi %struct.Memory* [ %1706, %1705 ], [ %MEMORY.7, %1717 ]
  %1720 = load i8, i8* %14, align 1
  %1721 = load i8, i8* %30, align 1
  %1722 = or i8 %1721, %1720
  %1723 = icmp ne i8 %1722, 0
  %.v316 = select i1 %1723, i64 53, i64 6
  %1724 = add i64 %1718, %.v316
  store i64 %1724, i64* %3, align 8
  br i1 %1723, label %block_.L_42b40f, label %block_42b3e0

block_42b3e0:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit1906
  %1725 = load i64, i64* %RBP.i, align 8
  %1726 = add i64 %1725, -448
  %1727 = add i64 %1724, 8
  store i64 %1727, i64* %3, align 8
  %1728 = inttoptr i64 %1726 to i32*
  %1729 = load i32, i32* %1728, align 4
  store i32 %1729, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %1730 = add i64 %1725, -44
  %1731 = add i64 %1724, 13
  store i64 %1731, i64* %3, align 8
  %1732 = load <2 x float>, <2 x float>* %59, align 1
  %1733 = load <2 x i32>, <2 x i32>* %1072, align 1
  %1734 = inttoptr i64 %1730 to float*
  %1735 = load float, float* %1734, align 4
  %1736 = extractelement <2 x float> %1732, i32 0
  %1737 = fdiv float %1736, %1735
  store float %1737, float* %1074, align 1
  %1738 = bitcast <2 x float> %1732 to <2 x i32>
  %1739 = extractelement <2 x i32> %1738, i32 1
  store i32 %1739, i32* %306, align 1
  %1740 = extractelement <2 x i32> %1733, i32 0
  store i32 %1740, i32* %307, align 1
  %1741 = extractelement <2 x i32> %1733, i32 1
  store i32 %1741, i32* %309, align 1
  %1742 = load <2 x float>, <2 x float>* %59, align 1
  %1743 = extractelement <2 x float> %1742, i32 0
  %1744 = fpext float %1743 to double
  store double %1744, double* %.pre-phi, align 1
  %1745 = add i64 %1724, -171760
  %1746 = add i64 %1724, 22
  %1747 = load i64, i64* %6, align 8
  %1748 = add i64 %1747, -8
  %1749 = inttoptr i64 %1748 to i64*
  store i64 %1746, i64* %1749, align 8
  store i64 %1748, i64* %6, align 8
  store i64 %1745, i64* %3, align 8
  %1750 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %1719)
  %1751 = load i64, i64* %3, align 8
  %1752 = add i64 %1751, ptrtoint (%G_0x294e2__rip__type* @G_0x294e2__rip_ to i64)
  %1753 = add i64 %1751, 8
  store i64 %1753, i64* %3, align 8
  %1754 = inttoptr i64 %1752 to i64*
  %1755 = load i64, i64* %1754, align 8
  store i64 %1755, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %1756 = load double, double* %.pre-phi, align 1
  %.cast73 = bitcast i64 %1755 to double
  %1757 = fmul double %.cast73, %1756
  store double %1757, double* %.pre-phi, align 1
  %1758 = load i64, i64* %RBP.i, align 8
  %1759 = add i64 %1758, -520
  %1760 = add i64 %1751, 20
  store i64 %1760, i64* %3, align 8
  %1761 = inttoptr i64 %1759 to double*
  store double %1757, double* %1761, align 8
  %1762 = load i64, i64* %3, align 8
  %1763 = add i64 %1762, 26
  br label %block_.L_42b424

block_.L_42b40f:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit1906
  %1764 = add i64 %1724, ptrtoint (%G_0x294c1__rip__type* @G_0x294c1__rip_ to i64)
  %1765 = add i64 %1724, 8
  store i64 %1765, i64* %3, align 8
  %1766 = inttoptr i64 %1764 to i64*
  %1767 = load i64, i64* %1766, align 8
  store i64 %1767, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %1768 = load i64, i64* %RBP.i, align 8
  %1769 = add i64 %1768, -520
  %1770 = add i64 %1724, 16
  store i64 %1770, i64* %3, align 8
  %1771 = inttoptr i64 %1769 to i64*
  store i64 %1767, i64* %1771, align 8
  %1772 = load i64, i64* %3, align 8
  %1773 = add i64 %1772, 5
  store i64 %1773, i64* %3, align 8
  br label %block_.L_42b424

block_.L_42b424:                                  ; preds = %block_.L_42b40f, %block_42b3e0
  %storemerge74 = phi i64 [ %1763, %block_42b3e0 ], [ %1773, %block_.L_42b40f ]
  %MEMORY.8 = phi %struct.Memory* [ %1750, %block_42b3e0 ], [ %1719, %block_.L_42b40f ]
  %1774 = load i64, i64* %RBP.i, align 8
  %1775 = add i64 %1774, -520
  %1776 = add i64 %storemerge74, 8
  store i64 %1776, i64* %3, align 8
  %1777 = inttoptr i64 %1775 to i64*
  %1778 = load i64, i64* %1777, align 8
  store i64 %1778, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %1779 = add i64 %storemerge74, add (i64 ptrtoint (%G_0x292f8__rip__type* @G_0x292f8__rip_ to i64), i64 8)
  %1780 = add i64 %storemerge74, 16
  store i64 %1780, i64* %3, align 8
  %1781 = inttoptr i64 %1779 to i32*
  %1782 = load i32, i32* %1781, align 4
  store i32 %1782, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %1783 = bitcast i64 %1778 to <2 x i32>
  %.cast75 = bitcast i64 %1778 to double
  %1784 = fptrunc double %.cast75 to float
  store float %1784, float* %1074, align 1
  %1785 = extractelement <2 x i32> %1783, i32 1
  store i32 %1785, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %1786 = add i64 %1774, -448
  %1787 = add i64 %storemerge74, 28
  store i64 %1787, i64* %3, align 8
  %1788 = load <2 x float>, <2 x float>* %59, align 1
  %1789 = extractelement <2 x float> %1788, i32 0
  %1790 = inttoptr i64 %1786 to float*
  store float %1789, float* %1790, align 4
  %1791 = load i64, i64* %RBP.i, align 8
  %1792 = add i64 %1791, -20
  %1793 = load i64, i64* %3, align 8
  %1794 = add i64 %1793, 5
  store i64 %1794, i64* %3, align 8
  %1795 = load <2 x float>, <2 x float>* %81, align 1
  %1796 = extractelement <2 x float> %1795, i32 0
  %1797 = inttoptr i64 %1792 to float*
  store float %1796, float* %1797, align 4
  %1798 = load i64, i64* %RBP.i, align 8
  %1799 = add i64 %1798, -8
  %1800 = load i64, i64* %3, align 8
  %1801 = add i64 %1800, 4
  store i64 %1801, i64* %3, align 8
  %1802 = inttoptr i64 %1799 to i64*
  %1803 = load i64, i64* %1802, align 8
  store i64 %1803, i64* %RAX.i23, align 8
  %1804 = add i64 %1803, 24
  %1805 = add i64 %1800, 7
  store i64 %1805, i64* %3, align 8
  %1806 = inttoptr i64 %1804 to i32*
  %1807 = load i32, i32* %1806, align 4
  %1808 = zext i32 %1807 to i64
  store i64 %1808, i64* %RCX.i774, align 8
  %1809 = add i64 %1798, -440
  %1810 = add i64 %1800, 13
  store i64 %1810, i64* %3, align 8
  %1811 = inttoptr i64 %1809 to i32*
  store i32 %1807, i32* %1811, align 4
  %.pre160 = load i64, i64* %3, align 8
  br label %block_.L_42b452

block_.L_42b452:                                  ; preds = %block_.L_42b592, %block_.L_42b424
  %1812 = phi i64 [ %.pre160, %block_.L_42b424 ], [ %2422, %block_.L_42b592 ]
  %MEMORY.9 = phi %struct.Memory* [ %MEMORY.8, %block_.L_42b424 ], [ %2387, %block_.L_42b592 ]
  %1813 = load i64, i64* %RBP.i, align 8
  %1814 = add i64 %1813, -440
  %1815 = add i64 %1812, 7
  store i64 %1815, i64* %3, align 8
  %1816 = inttoptr i64 %1814 to i32*
  %1817 = load i32, i32* %1816, align 4
  %1818 = add i32 %1817, -1
  %1819 = icmp eq i32 %1817, 0
  %1820 = zext i1 %1819 to i8
  store i8 %1820, i8* %14, align 1
  %1821 = and i32 %1818, 255
  %1822 = tail call i32 @llvm.ctpop.i32(i32 %1821)
  %1823 = trunc i32 %1822 to i8
  %1824 = and i8 %1823, 1
  %1825 = xor i8 %1824, 1
  store i8 %1825, i8* %21, align 1
  %1826 = xor i32 %1818, %1817
  %1827 = lshr i32 %1826, 4
  %1828 = trunc i32 %1827 to i8
  %1829 = and i8 %1828, 1
  store i8 %1829, i8* %27, align 1
  %1830 = icmp eq i32 %1818, 0
  %1831 = zext i1 %1830 to i8
  store i8 %1831, i8* %30, align 1
  %1832 = lshr i32 %1818, 31
  %1833 = trunc i32 %1832 to i8
  store i8 %1833, i8* %33, align 1
  %1834 = lshr i32 %1817, 31
  %1835 = xor i32 %1832, %1834
  %1836 = add nuw nsw i32 %1835, %1834
  %1837 = icmp eq i32 %1836, 2
  %1838 = zext i1 %1837 to i8
  store i8 %1838, i8* %39, align 1
  %1839 = icmp ne i8 %1833, 0
  %1840 = xor i1 %1839, %1837
  %.v224 = select i1 %1840, i64 345, i64 13
  %1841 = add i64 %1812, %.v224
  store i64 %1841, i64* %3, align 8
  br i1 %1840, label %block_.L_42b5ab.loopexit, label %block_42b45f

block_42b45f:                                     ; preds = %block_.L_42b452
  %1842 = add i64 %1813, -472
  %1843 = add i64 %1841, 10
  store i64 %1843, i64* %3, align 8
  %1844 = inttoptr i64 %1842 to i32*
  store i32 0, i32* %1844, align 4
  %1845 = load i64, i64* %RBP.i, align 8
  %1846 = add i64 %1845, -68
  %1847 = load i64, i64* %3, align 8
  %1848 = add i64 %1847, 7
  store i64 %1848, i64* %3, align 8
  %1849 = inttoptr i64 %1846 to i32*
  store i32 0, i32* %1849, align 4
  %.pre161 = load i64, i64* %3, align 8
  br label %block_.L_42b470

block_.L_42b470:                                  ; preds = %block_.L_42b557, %block_42b45f
  %1850 = phi i64 [ %2320, %block_.L_42b557 ], [ %.pre161, %block_42b45f ]
  %1851 = load i64, i64* %RBP.i, align 8
  %1852 = add i64 %1851, -68
  %1853 = add i64 %1850, 3
  store i64 %1853, i64* %3, align 8
  %1854 = inttoptr i64 %1852 to i32*
  %1855 = load i32, i32* %1854, align 4
  %1856 = zext i32 %1855 to i64
  store i64 %1856, i64* %RAX.i23, align 8
  %1857 = add i64 %1851, -8
  %1858 = add i64 %1850, 7
  store i64 %1858, i64* %3, align 8
  %1859 = inttoptr i64 %1857 to i64*
  %1860 = load i64, i64* %1859, align 8
  store i64 %1860, i64* %RCX.i774, align 8
  %1861 = add i64 %1860, 28
  %1862 = add i64 %1850, 10
  store i64 %1862, i64* %3, align 8
  %1863 = inttoptr i64 %1861 to i32*
  %1864 = load i32, i32* %1863, align 4
  %1865 = sub i32 %1855, %1864
  %1866 = icmp ult i32 %1855, %1864
  %1867 = zext i1 %1866 to i8
  store i8 %1867, i8* %14, align 1
  %1868 = and i32 %1865, 255
  %1869 = tail call i32 @llvm.ctpop.i32(i32 %1868)
  %1870 = trunc i32 %1869 to i8
  %1871 = and i8 %1870, 1
  %1872 = xor i8 %1871, 1
  store i8 %1872, i8* %21, align 1
  %1873 = xor i32 %1864, %1855
  %1874 = xor i32 %1873, %1865
  %1875 = lshr i32 %1874, 4
  %1876 = trunc i32 %1875 to i8
  %1877 = and i8 %1876, 1
  store i8 %1877, i8* %27, align 1
  %1878 = icmp eq i32 %1865, 0
  %1879 = zext i1 %1878 to i8
  store i8 %1879, i8* %30, align 1
  %1880 = lshr i32 %1865, 31
  %1881 = trunc i32 %1880 to i8
  store i8 %1881, i8* %33, align 1
  %1882 = lshr i32 %1855, 31
  %1883 = lshr i32 %1864, 31
  %1884 = xor i32 %1883, %1882
  %1885 = xor i32 %1880, %1882
  %1886 = add nuw nsw i32 %1885, %1884
  %1887 = icmp eq i32 %1886, 2
  %1888 = zext i1 %1887 to i8
  store i8 %1888, i8* %39, align 1
  %1889 = icmp ne i8 %1881, 0
  %1890 = xor i1 %1889, %1887
  %.v225 = select i1 %1890, i64 16, i64 250
  %1891 = add i64 %1850, %.v225
  store i64 %1891, i64* %3, align 8
  br i1 %1890, label %block_42b480, label %block_.L_42b56a

block_42b480:                                     ; preds = %block_.L_42b470
  %1892 = add i64 %1891, 4
  store i64 %1892, i64* %3, align 8
  %1893 = load i64, i64* %1859, align 8
  store i64 %1893, i64* %RAX.i23, align 8
  %1894 = add i64 %1891, 7
  store i64 %1894, i64* %3, align 8
  %1895 = inttoptr i64 %1893 to i64*
  %1896 = load i64, i64* %1895, align 8
  store i64 %1896, i64* %RAX.i23, align 8
  %1897 = add i64 %1891, 11
  store i64 %1897, i64* %3, align 8
  %1898 = load i32, i32* %1854, align 4
  %1899 = sext i32 %1898 to i64
  store i64 %1899, i64* %RCX.i774, align 8
  %1900 = shl nsw i64 %1899, 3
  %1901 = add i64 %1900, %1896
  %1902 = add i64 %1891, 15
  store i64 %1902, i64* %3, align 8
  %1903 = inttoptr i64 %1901 to i64*
  %1904 = load i64, i64* %1903, align 8
  store i64 %1904, i64* %RAX.i23, align 8
  %1905 = add i64 %1851, -440
  %1906 = add i64 %1891, 21
  store i64 %1906, i64* %3, align 8
  %1907 = inttoptr i64 %1905 to i32*
  %1908 = load i32, i32* %1907, align 4
  %1909 = add i32 %1908, -1
  %1910 = zext i32 %1909 to i64
  store i64 %1910, i64* %RDX.i689, align 8
  %1911 = icmp eq i32 %1908, 0
  %1912 = zext i1 %1911 to i8
  store i8 %1912, i8* %14, align 1
  %1913 = and i32 %1909, 255
  %1914 = tail call i32 @llvm.ctpop.i32(i32 %1913)
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = xor i8 %1916, 1
  store i8 %1917, i8* %21, align 1
  %1918 = xor i32 %1909, %1908
  %1919 = lshr i32 %1918, 4
  %1920 = trunc i32 %1919 to i8
  %1921 = and i8 %1920, 1
  store i8 %1921, i8* %27, align 1
  %1922 = icmp eq i32 %1909, 0
  %1923 = zext i1 %1922 to i8
  store i8 %1923, i8* %30, align 1
  %1924 = lshr i32 %1909, 31
  %1925 = trunc i32 %1924 to i8
  store i8 %1925, i8* %33, align 1
  %1926 = lshr i32 %1908, 31
  %1927 = xor i32 %1924, %1926
  %1928 = add nuw nsw i32 %1927, %1926
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  store i8 %1930, i8* %39, align 1
  %1931 = sext i32 %1909 to i64
  store i64 %1931, i64* %RCX.i774, align 8
  %1932 = add i64 %1904, %1931
  %1933 = add i64 %1891, 31
  store i64 %1933, i64* %3, align 8
  %1934 = inttoptr i64 %1932 to i8*
  %1935 = load i8, i8* %1934, align 1
  %1936 = sext i8 %1935 to i64
  %1937 = and i64 %1936, 4294967295
  store i64 %1937, i64* %RDX.i689, align 8
  %1938 = sext i8 %1935 to i32
  %1939 = add nsw i32 %1938, -32
  %1940 = icmp ult i8 %1935, 32
  %1941 = zext i1 %1940 to i8
  store i8 %1941, i8* %14, align 1
  %1942 = and i32 %1939, 255
  %1943 = tail call i32 @llvm.ctpop.i32(i32 %1942)
  %1944 = trunc i32 %1943 to i8
  %1945 = and i8 %1944, 1
  %1946 = xor i8 %1945, 1
  store i8 %1946, i8* %21, align 1
  %1947 = xor i32 %1939, %1938
  %1948 = lshr i32 %1947, 4
  %1949 = trunc i32 %1948 to i8
  %1950 = and i8 %1949, 1
  store i8 %1950, i8* %27, align 1
  %1951 = icmp eq i32 %1939, 0
  %1952 = zext i1 %1951 to i8
  store i8 %1952, i8* %30, align 1
  %1953 = lshr i32 %1939, 31
  %1954 = trunc i32 %1953 to i8
  store i8 %1954, i8* %33, align 1
  %1955 = lshr i32 %1938, 31
  %1956 = xor i32 %1953, %1955
  %1957 = add nuw nsw i32 %1956, %1955
  %1958 = icmp eq i32 %1957, 2
  %1959 = zext i1 %1958 to i8
  store i8 %1959, i8* %39, align 1
  %.v249 = select i1 %1951, i64 200, i64 40
  %1960 = add i64 %1891, %.v249
  store i64 %1960, i64* %3, align 8
  br i1 %1951, label %block_.L_42b548, label %block_42b4a8

block_42b4a8:                                     ; preds = %block_42b480
  %1961 = load i64, i64* %RBP.i, align 8
  %1962 = add i64 %1961, -8
  %1963 = add i64 %1960, 4
  store i64 %1963, i64* %3, align 8
  %1964 = inttoptr i64 %1962 to i64*
  %1965 = load i64, i64* %1964, align 8
  store i64 %1965, i64* %RAX.i23, align 8
  %1966 = add i64 %1960, 7
  store i64 %1966, i64* %3, align 8
  %1967 = inttoptr i64 %1965 to i64*
  %1968 = load i64, i64* %1967, align 8
  store i64 %1968, i64* %RAX.i23, align 8
  %1969 = add i64 %1961, -68
  %1970 = add i64 %1960, 11
  store i64 %1970, i64* %3, align 8
  %1971 = inttoptr i64 %1969 to i32*
  %1972 = load i32, i32* %1971, align 4
  %1973 = sext i32 %1972 to i64
  store i64 %1973, i64* %RCX.i774, align 8
  %1974 = shl nsw i64 %1973, 3
  %1975 = add i64 %1974, %1968
  %1976 = add i64 %1960, 15
  store i64 %1976, i64* %3, align 8
  %1977 = inttoptr i64 %1975 to i64*
  %1978 = load i64, i64* %1977, align 8
  store i64 %1978, i64* %RAX.i23, align 8
  %1979 = add i64 %1961, -440
  %1980 = add i64 %1960, 21
  store i64 %1980, i64* %3, align 8
  %1981 = inttoptr i64 %1979 to i32*
  %1982 = load i32, i32* %1981, align 4
  %1983 = add i32 %1982, -1
  %1984 = zext i32 %1983 to i64
  store i64 %1984, i64* %RDX.i689, align 8
  %1985 = icmp eq i32 %1982, 0
  %1986 = zext i1 %1985 to i8
  store i8 %1986, i8* %14, align 1
  %1987 = and i32 %1983, 255
  %1988 = tail call i32 @llvm.ctpop.i32(i32 %1987)
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = xor i8 %1990, 1
  store i8 %1991, i8* %21, align 1
  %1992 = xor i32 %1983, %1982
  %1993 = lshr i32 %1992, 4
  %1994 = trunc i32 %1993 to i8
  %1995 = and i8 %1994, 1
  store i8 %1995, i8* %27, align 1
  %1996 = icmp eq i32 %1983, 0
  %1997 = zext i1 %1996 to i8
  store i8 %1997, i8* %30, align 1
  %1998 = lshr i32 %1983, 31
  %1999 = trunc i32 %1998 to i8
  store i8 %1999, i8* %33, align 1
  %2000 = lshr i32 %1982, 31
  %2001 = xor i32 %1998, %2000
  %2002 = add nuw nsw i32 %2001, %2000
  %2003 = icmp eq i32 %2002, 2
  %2004 = zext i1 %2003 to i8
  store i8 %2004, i8* %39, align 1
  %2005 = sext i32 %1983 to i64
  store i64 %2005, i64* %RCX.i774, align 8
  %2006 = add i64 %1978, %2005
  %2007 = add i64 %1960, 31
  store i64 %2007, i64* %3, align 8
  %2008 = inttoptr i64 %2006 to i8*
  %2009 = load i8, i8* %2008, align 1
  %2010 = sext i8 %2009 to i64
  %2011 = and i64 %2010, 4294967295
  store i64 %2011, i64* %RDX.i689, align 8
  %2012 = sext i8 %2009 to i32
  %2013 = add nsw i32 %2012, -46
  %2014 = icmp ult i8 %2009, 46
  %2015 = zext i1 %2014 to i8
  store i8 %2015, i8* %14, align 1
  %2016 = and i32 %2013, 255
  %2017 = tail call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  store i8 %2020, i8* %21, align 1
  %2021 = xor i32 %2013, %2012
  %2022 = lshr i32 %2021, 4
  %2023 = trunc i32 %2022 to i8
  %2024 = and i8 %2023, 1
  store i8 %2024, i8* %27, align 1
  %2025 = icmp eq i32 %2013, 0
  %2026 = zext i1 %2025 to i8
  store i8 %2026, i8* %30, align 1
  %2027 = lshr i32 %2013, 31
  %2028 = trunc i32 %2027 to i8
  store i8 %2028, i8* %33, align 1
  %2029 = lshr i32 %2012, 31
  %2030 = xor i32 %2027, %2029
  %2031 = add nuw nsw i32 %2030, %2029
  %2032 = icmp eq i32 %2031, 2
  %2033 = zext i1 %2032 to i8
  store i8 %2033, i8* %39, align 1
  %.v250 = select i1 %2025, i64 160, i64 40
  %2034 = add i64 %1960, %.v250
  store i64 %2034, i64* %3, align 8
  br i1 %2025, label %block_.L_42b548, label %block_42b4d0

block_42b4d0:                                     ; preds = %block_42b4a8
  %2035 = load i64, i64* %RBP.i, align 8
  %2036 = add i64 %2035, -8
  %2037 = add i64 %2034, 4
  store i64 %2037, i64* %3, align 8
  %2038 = inttoptr i64 %2036 to i64*
  %2039 = load i64, i64* %2038, align 8
  store i64 %2039, i64* %RAX.i23, align 8
  %2040 = add i64 %2034, 7
  store i64 %2040, i64* %3, align 8
  %2041 = inttoptr i64 %2039 to i64*
  %2042 = load i64, i64* %2041, align 8
  store i64 %2042, i64* %RAX.i23, align 8
  %2043 = add i64 %2035, -68
  %2044 = add i64 %2034, 11
  store i64 %2044, i64* %3, align 8
  %2045 = inttoptr i64 %2043 to i32*
  %2046 = load i32, i32* %2045, align 4
  %2047 = sext i32 %2046 to i64
  store i64 %2047, i64* %RCX.i774, align 8
  %2048 = shl nsw i64 %2047, 3
  %2049 = add i64 %2048, %2042
  %2050 = add i64 %2034, 15
  store i64 %2050, i64* %3, align 8
  %2051 = inttoptr i64 %2049 to i64*
  %2052 = load i64, i64* %2051, align 8
  store i64 %2052, i64* %RAX.i23, align 8
  %2053 = add i64 %2035, -440
  %2054 = add i64 %2034, 21
  store i64 %2054, i64* %3, align 8
  %2055 = inttoptr i64 %2053 to i32*
  %2056 = load i32, i32* %2055, align 4
  %2057 = add i32 %2056, -1
  %2058 = zext i32 %2057 to i64
  store i64 %2058, i64* %RDX.i689, align 8
  %2059 = icmp eq i32 %2056, 0
  %2060 = zext i1 %2059 to i8
  store i8 %2060, i8* %14, align 1
  %2061 = and i32 %2057, 255
  %2062 = tail call i32 @llvm.ctpop.i32(i32 %2061)
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = xor i8 %2064, 1
  store i8 %2065, i8* %21, align 1
  %2066 = xor i32 %2057, %2056
  %2067 = lshr i32 %2066, 4
  %2068 = trunc i32 %2067 to i8
  %2069 = and i8 %2068, 1
  store i8 %2069, i8* %27, align 1
  %2070 = icmp eq i32 %2057, 0
  %2071 = zext i1 %2070 to i8
  store i8 %2071, i8* %30, align 1
  %2072 = lshr i32 %2057, 31
  %2073 = trunc i32 %2072 to i8
  store i8 %2073, i8* %33, align 1
  %2074 = lshr i32 %2056, 31
  %2075 = xor i32 %2072, %2074
  %2076 = add nuw nsw i32 %2075, %2074
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  store i8 %2078, i8* %39, align 1
  %2079 = sext i32 %2057 to i64
  store i64 %2079, i64* %RCX.i774, align 8
  %2080 = add i64 %2052, %2079
  %2081 = add i64 %2034, 31
  store i64 %2081, i64* %3, align 8
  %2082 = inttoptr i64 %2080 to i8*
  %2083 = load i8, i8* %2082, align 1
  %2084 = sext i8 %2083 to i64
  %2085 = and i64 %2084, 4294967295
  store i64 %2085, i64* %RDX.i689, align 8
  %2086 = sext i8 %2083 to i32
  %2087 = add nsw i32 %2086, -95
  %2088 = icmp ult i8 %2083, 95
  %2089 = zext i1 %2088 to i8
  store i8 %2089, i8* %14, align 1
  %2090 = and i32 %2087, 255
  %2091 = tail call i32 @llvm.ctpop.i32(i32 %2090)
  %2092 = trunc i32 %2091 to i8
  %2093 = and i8 %2092, 1
  %2094 = xor i8 %2093, 1
  store i8 %2094, i8* %21, align 1
  %2095 = xor i32 %2086, 16
  %2096 = xor i32 %2095, %2087
  %2097 = lshr i32 %2096, 4
  %2098 = trunc i32 %2097 to i8
  %2099 = and i8 %2098, 1
  store i8 %2099, i8* %27, align 1
  %2100 = icmp eq i32 %2087, 0
  %2101 = zext i1 %2100 to i8
  store i8 %2101, i8* %30, align 1
  %2102 = lshr i32 %2087, 31
  %2103 = trunc i32 %2102 to i8
  store i8 %2103, i8* %33, align 1
  %2104 = lshr i32 %2086, 31
  %2105 = xor i32 %2102, %2104
  %2106 = add nuw nsw i32 %2105, %2104
  %2107 = icmp eq i32 %2106, 2
  %2108 = zext i1 %2107 to i8
  store i8 %2108, i8* %39, align 1
  %.v251 = select i1 %2100, i64 120, i64 40
  %2109 = add i64 %2034, %.v251
  store i64 %2109, i64* %3, align 8
  br i1 %2100, label %block_.L_42b548, label %block_42b4f8

block_42b4f8:                                     ; preds = %block_42b4d0
  %2110 = load i64, i64* %RBP.i, align 8
  %2111 = add i64 %2110, -8
  %2112 = add i64 %2109, 4
  store i64 %2112, i64* %3, align 8
  %2113 = inttoptr i64 %2111 to i64*
  %2114 = load i64, i64* %2113, align 8
  store i64 %2114, i64* %RAX.i23, align 8
  %2115 = add i64 %2109, 7
  store i64 %2115, i64* %3, align 8
  %2116 = inttoptr i64 %2114 to i64*
  %2117 = load i64, i64* %2116, align 8
  store i64 %2117, i64* %RAX.i23, align 8
  %2118 = add i64 %2110, -68
  %2119 = add i64 %2109, 11
  store i64 %2119, i64* %3, align 8
  %2120 = inttoptr i64 %2118 to i32*
  %2121 = load i32, i32* %2120, align 4
  %2122 = sext i32 %2121 to i64
  store i64 %2122, i64* %RCX.i774, align 8
  %2123 = shl nsw i64 %2122, 3
  %2124 = add i64 %2123, %2117
  %2125 = add i64 %2109, 15
  store i64 %2125, i64* %3, align 8
  %2126 = inttoptr i64 %2124 to i64*
  %2127 = load i64, i64* %2126, align 8
  store i64 %2127, i64* %RAX.i23, align 8
  %2128 = add i64 %2110, -440
  %2129 = add i64 %2109, 21
  store i64 %2129, i64* %3, align 8
  %2130 = inttoptr i64 %2128 to i32*
  %2131 = load i32, i32* %2130, align 4
  %2132 = add i32 %2131, -1
  %2133 = zext i32 %2132 to i64
  store i64 %2133, i64* %RDX.i689, align 8
  %2134 = icmp eq i32 %2131, 0
  %2135 = zext i1 %2134 to i8
  store i8 %2135, i8* %14, align 1
  %2136 = and i32 %2132, 255
  %2137 = tail call i32 @llvm.ctpop.i32(i32 %2136)
  %2138 = trunc i32 %2137 to i8
  %2139 = and i8 %2138, 1
  %2140 = xor i8 %2139, 1
  store i8 %2140, i8* %21, align 1
  %2141 = xor i32 %2132, %2131
  %2142 = lshr i32 %2141, 4
  %2143 = trunc i32 %2142 to i8
  %2144 = and i8 %2143, 1
  store i8 %2144, i8* %27, align 1
  %2145 = icmp eq i32 %2132, 0
  %2146 = zext i1 %2145 to i8
  store i8 %2146, i8* %30, align 1
  %2147 = lshr i32 %2132, 31
  %2148 = trunc i32 %2147 to i8
  store i8 %2148, i8* %33, align 1
  %2149 = lshr i32 %2131, 31
  %2150 = xor i32 %2147, %2149
  %2151 = add nuw nsw i32 %2150, %2149
  %2152 = icmp eq i32 %2151, 2
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %39, align 1
  %2154 = sext i32 %2132 to i64
  store i64 %2154, i64* %RCX.i774, align 8
  %2155 = add i64 %2127, %2154
  %2156 = add i64 %2109, 31
  store i64 %2156, i64* %3, align 8
  %2157 = inttoptr i64 %2155 to i8*
  %2158 = load i8, i8* %2157, align 1
  %2159 = sext i8 %2158 to i64
  %2160 = and i64 %2159, 4294967295
  store i64 %2160, i64* %RDX.i689, align 8
  %2161 = sext i8 %2158 to i32
  %2162 = add nsw i32 %2161, -45
  %2163 = icmp ult i8 %2158, 45
  %2164 = zext i1 %2163 to i8
  store i8 %2164, i8* %14, align 1
  %2165 = and i32 %2162, 255
  %2166 = tail call i32 @llvm.ctpop.i32(i32 %2165)
  %2167 = trunc i32 %2166 to i8
  %2168 = and i8 %2167, 1
  %2169 = xor i8 %2168, 1
  store i8 %2169, i8* %21, align 1
  %2170 = xor i32 %2162, %2161
  %2171 = lshr i32 %2170, 4
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  store i8 %2173, i8* %27, align 1
  %2174 = icmp eq i32 %2162, 0
  %2175 = zext i1 %2174 to i8
  store i8 %2175, i8* %30, align 1
  %2176 = lshr i32 %2162, 31
  %2177 = trunc i32 %2176 to i8
  store i8 %2177, i8* %33, align 1
  %2178 = lshr i32 %2161, 31
  %2179 = xor i32 %2176, %2178
  %2180 = add nuw nsw i32 %2179, %2178
  %2181 = icmp eq i32 %2180, 2
  %2182 = zext i1 %2181 to i8
  store i8 %2182, i8* %39, align 1
  %.v252 = select i1 %2174, i64 80, i64 40
  %2183 = add i64 %2109, %.v252
  store i64 %2183, i64* %3, align 8
  br i1 %2174, label %block_.L_42b548, label %block_42b520

block_42b520:                                     ; preds = %block_42b4f8
  %2184 = load i64, i64* %RBP.i, align 8
  %2185 = add i64 %2184, -8
  %2186 = add i64 %2183, 4
  store i64 %2186, i64* %3, align 8
  %2187 = inttoptr i64 %2185 to i64*
  %2188 = load i64, i64* %2187, align 8
  store i64 %2188, i64* %RAX.i23, align 8
  %2189 = add i64 %2183, 7
  store i64 %2189, i64* %3, align 8
  %2190 = inttoptr i64 %2188 to i64*
  %2191 = load i64, i64* %2190, align 8
  store i64 %2191, i64* %RAX.i23, align 8
  %2192 = add i64 %2184, -68
  %2193 = add i64 %2183, 11
  store i64 %2193, i64* %3, align 8
  %2194 = inttoptr i64 %2192 to i32*
  %2195 = load i32, i32* %2194, align 4
  %2196 = sext i32 %2195 to i64
  store i64 %2196, i64* %RCX.i774, align 8
  %2197 = shl nsw i64 %2196, 3
  %2198 = add i64 %2197, %2191
  %2199 = add i64 %2183, 15
  store i64 %2199, i64* %3, align 8
  %2200 = inttoptr i64 %2198 to i64*
  %2201 = load i64, i64* %2200, align 8
  store i64 %2201, i64* %RAX.i23, align 8
  %2202 = add i64 %2184, -440
  %2203 = add i64 %2183, 21
  store i64 %2203, i64* %3, align 8
  %2204 = inttoptr i64 %2202 to i32*
  %2205 = load i32, i32* %2204, align 4
  %2206 = add i32 %2205, -1
  %2207 = zext i32 %2206 to i64
  store i64 %2207, i64* %RDX.i689, align 8
  %2208 = icmp eq i32 %2205, 0
  %2209 = zext i1 %2208 to i8
  store i8 %2209, i8* %14, align 1
  %2210 = and i32 %2206, 255
  %2211 = tail call i32 @llvm.ctpop.i32(i32 %2210)
  %2212 = trunc i32 %2211 to i8
  %2213 = and i8 %2212, 1
  %2214 = xor i8 %2213, 1
  store i8 %2214, i8* %21, align 1
  %2215 = xor i32 %2206, %2205
  %2216 = lshr i32 %2215, 4
  %2217 = trunc i32 %2216 to i8
  %2218 = and i8 %2217, 1
  store i8 %2218, i8* %27, align 1
  %2219 = icmp eq i32 %2206, 0
  %2220 = zext i1 %2219 to i8
  store i8 %2220, i8* %30, align 1
  %2221 = lshr i32 %2206, 31
  %2222 = trunc i32 %2221 to i8
  store i8 %2222, i8* %33, align 1
  %2223 = lshr i32 %2205, 31
  %2224 = xor i32 %2221, %2223
  %2225 = add nuw nsw i32 %2224, %2223
  %2226 = icmp eq i32 %2225, 2
  %2227 = zext i1 %2226 to i8
  store i8 %2227, i8* %39, align 1
  %2228 = sext i32 %2206 to i64
  store i64 %2228, i64* %RCX.i774, align 8
  %2229 = add i64 %2201, %2228
  %2230 = add i64 %2183, 31
  store i64 %2230, i64* %3, align 8
  %2231 = inttoptr i64 %2229 to i8*
  %2232 = load i8, i8* %2231, align 1
  %2233 = sext i8 %2232 to i64
  %2234 = and i64 %2233, 4294967295
  store i64 %2234, i64* %RDX.i689, align 8
  %2235 = sext i8 %2232 to i32
  %2236 = add nsw i32 %2235, -126
  %2237 = icmp ult i8 %2232, 126
  %2238 = zext i1 %2237 to i8
  store i8 %2238, i8* %14, align 1
  %2239 = and i32 %2236, 255
  %2240 = tail call i32 @llvm.ctpop.i32(i32 %2239)
  %2241 = trunc i32 %2240 to i8
  %2242 = and i8 %2241, 1
  %2243 = xor i8 %2242, 1
  store i8 %2243, i8* %21, align 1
  %2244 = xor i32 %2235, 16
  %2245 = xor i32 %2244, %2236
  %2246 = lshr i32 %2245, 4
  %2247 = trunc i32 %2246 to i8
  %2248 = and i8 %2247, 1
  store i8 %2248, i8* %27, align 1
  %2249 = icmp eq i32 %2236, 0
  %2250 = zext i1 %2249 to i8
  store i8 %2250, i8* %30, align 1
  %2251 = lshr i32 %2236, 31
  %2252 = trunc i32 %2251 to i8
  store i8 %2252, i8* %33, align 1
  %2253 = lshr i32 %2235, 31
  %2254 = xor i32 %2251, %2253
  %2255 = add nuw nsw i32 %2254, %2253
  %2256 = icmp eq i32 %2255, 2
  %2257 = zext i1 %2256 to i8
  store i8 %2257, i8* %39, align 1
  %.v253 = select i1 %2249, i64 40, i64 55
  %2258 = add i64 %2183, %.v253
  store i64 %2258, i64* %3, align 8
  br i1 %2249, label %block_.L_42b548, label %block_.L_42b557

block_.L_42b548:                                  ; preds = %block_42b520, %block_42b4f8, %block_42b4d0, %block_42b4a8, %block_42b480
  %2259 = phi i64 [ %2258, %block_42b520 ], [ %2183, %block_42b4f8 ], [ %2109, %block_42b4d0 ], [ %2034, %block_42b4a8 ], [ %1960, %block_42b480 ]
  %2260 = load i64, i64* %RBP.i, align 8
  %2261 = add i64 %2260, -472
  %2262 = add i64 %2259, 6
  store i64 %2262, i64* %3, align 8
  %2263 = inttoptr i64 %2261 to i32*
  %2264 = load i32, i32* %2263, align 4
  %2265 = add i32 %2264, 1
  %2266 = zext i32 %2265 to i64
  store i64 %2266, i64* %RAX.i23, align 8
  %2267 = icmp eq i32 %2264, -1
  %2268 = icmp eq i32 %2265, 0
  %2269 = or i1 %2267, %2268
  %2270 = zext i1 %2269 to i8
  store i8 %2270, i8* %14, align 1
  %2271 = and i32 %2265, 255
  %2272 = tail call i32 @llvm.ctpop.i32(i32 %2271)
  %2273 = trunc i32 %2272 to i8
  %2274 = and i8 %2273, 1
  %2275 = xor i8 %2274, 1
  store i8 %2275, i8* %21, align 1
  %2276 = xor i32 %2265, %2264
  %2277 = lshr i32 %2276, 4
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  store i8 %2279, i8* %27, align 1
  %2280 = zext i1 %2268 to i8
  store i8 %2280, i8* %30, align 1
  %2281 = lshr i32 %2265, 31
  %2282 = trunc i32 %2281 to i8
  store i8 %2282, i8* %33, align 1
  %2283 = lshr i32 %2264, 31
  %2284 = xor i32 %2281, %2283
  %2285 = add nuw nsw i32 %2284, %2281
  %2286 = icmp eq i32 %2285, 2
  %2287 = zext i1 %2286 to i8
  store i8 %2287, i8* %39, align 1
  %2288 = add i64 %2259, 15
  store i64 %2288, i64* %3, align 8
  store i32 %2265, i32* %2263, align 4
  %.pre164 = load i64, i64* %3, align 8
  br label %block_.L_42b557

block_.L_42b557:                                  ; preds = %block_42b520, %block_.L_42b548
  %2289 = phi i64 [ %.pre164, %block_.L_42b548 ], [ %2258, %block_42b520 ]
  %2290 = load i64, i64* %RBP.i, align 8
  %2291 = add i64 %2290, -68
  %2292 = add i64 %2289, 8
  store i64 %2292, i64* %3, align 8
  %2293 = inttoptr i64 %2291 to i32*
  %2294 = load i32, i32* %2293, align 4
  %2295 = add i32 %2294, 1
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RAX.i23, align 8
  %2297 = icmp eq i32 %2294, -1
  %2298 = icmp eq i32 %2295, 0
  %2299 = or i1 %2297, %2298
  %2300 = zext i1 %2299 to i8
  store i8 %2300, i8* %14, align 1
  %2301 = and i32 %2295, 255
  %2302 = tail call i32 @llvm.ctpop.i32(i32 %2301)
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = xor i8 %2304, 1
  store i8 %2305, i8* %21, align 1
  %2306 = xor i32 %2295, %2294
  %2307 = lshr i32 %2306, 4
  %2308 = trunc i32 %2307 to i8
  %2309 = and i8 %2308, 1
  store i8 %2309, i8* %27, align 1
  %2310 = zext i1 %2298 to i8
  store i8 %2310, i8* %30, align 1
  %2311 = lshr i32 %2295, 31
  %2312 = trunc i32 %2311 to i8
  store i8 %2312, i8* %33, align 1
  %2313 = lshr i32 %2294, 31
  %2314 = xor i32 %2311, %2313
  %2315 = add nuw nsw i32 %2314, %2311
  %2316 = icmp eq i32 %2315, 2
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %39, align 1
  %2318 = add i64 %2289, 14
  store i64 %2318, i64* %3, align 8
  store i32 %2295, i32* %2293, align 4
  %2319 = load i64, i64* %3, align 8
  %2320 = add i64 %2319, -245
  store i64 %2320, i64* %3, align 8
  br label %block_.L_42b470

block_.L_42b56a:                                  ; preds = %block_.L_42b470
  %2321 = add i64 %1851, -472
  %2322 = add i64 %1891, 8
  store i64 %2322, i64* %3, align 8
  %2323 = load <2 x i32>, <2 x i32>* %1070, align 1
  %2324 = load <2 x i32>, <2 x i32>* %1072, align 1
  %2325 = inttoptr i64 %2321 to i32*
  %2326 = load i32, i32* %2325, align 4
  %2327 = sitofp i32 %2326 to float
  store float %2327, float* %1074, align 1
  %2328 = extractelement <2 x i32> %2323, i32 1
  store i32 %2328, i32* %306, align 1
  %2329 = extractelement <2 x i32> %2324, i32 0
  store i32 %2329, i32* %307, align 1
  %2330 = extractelement <2 x i32> %2324, i32 1
  store i32 %2330, i32* %309, align 1
  %2331 = add i64 %1891, 12
  store i64 %2331, i64* %3, align 8
  %2332 = load i64, i64* %1859, align 8
  store i64 %2332, i64* %RAX.i23, align 8
  %2333 = add i64 %2332, 28
  %2334 = add i64 %1891, 17
  store i64 %2334, i64* %3, align 8
  %2335 = load <2 x i32>, <2 x i32>* %1466, align 1
  %2336 = load <2 x i32>, <2 x i32>* %1161, align 1
  %2337 = inttoptr i64 %2333 to i32*
  %2338 = load i32, i32* %2337, align 4
  %2339 = sitofp i32 %2338 to float
  store float %2339, float* %978, align 1
  %2340 = extractelement <2 x i32> %2335, i32 1
  store i32 %2340, i32* %1162, align 1
  %2341 = extractelement <2 x i32> %2336, i32 0
  store i32 %2341, i32* %1163, align 1
  %2342 = extractelement <2 x i32> %2336, i32 1
  store i32 %2342, i32* %1164, align 1
  %2343 = load <2 x float>, <2 x float>* %59, align 1
  %2344 = load <2 x i32>, <2 x i32>* %1072, align 1
  %2345 = load <2 x float>, <2 x float>* %81, align 1
  %2346 = extractelement <2 x float> %2343, i32 0
  %2347 = extractelement <2 x float> %2345, i32 0
  %2348 = fdiv float %2346, %2347
  store float %2348, float* %1074, align 1
  %2349 = bitcast <2 x float> %2343 to <2 x i32>
  %2350 = extractelement <2 x i32> %2349, i32 1
  store i32 %2350, i32* %306, align 1
  %2351 = extractelement <2 x i32> %2344, i32 0
  store i32 %2351, i32* %307, align 1
  %2352 = extractelement <2 x i32> %2344, i32 1
  store i32 %2352, i32* %309, align 1
  %2353 = add i64 %1851, -20
  %2354 = add i64 %1891, 26
  store i64 %2354, i64* %3, align 8
  %2355 = inttoptr i64 %2353 to i32*
  %2356 = load i32, i32* %2355, align 4
  store i32 %2356, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %2357 = add i64 %1891, 29
  store i64 %2357, i64* %3, align 8
  %2358 = load <2 x float>, <2 x float>* %81, align 1
  %2359 = extractelement <2 x float> %2358, i32 0
  %2360 = load <2 x float>, <2 x float>* %59, align 1
  %2361 = extractelement <2 x float> %2360, i32 0
  %2362 = fcmp uno float %2359, %2361
  br i1 %2362, label %2363, label %2373

; <label>:2363:                                   ; preds = %block_.L_42b56a
  %2364 = fadd float %2359, %2361
  %2365 = bitcast float %2364 to i32
  %2366 = and i32 %2365, 2143289344
  %2367 = icmp eq i32 %2366, 2139095040
  %2368 = and i32 %2365, 4194303
  %2369 = icmp ne i32 %2368, 0
  %2370 = and i1 %2367, %2369
  br i1 %2370, label %2371, label %2379

; <label>:2371:                                   ; preds = %2363
  %2372 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %2357, %struct.Memory* %MEMORY.9)
  %.pre162 = load i64, i64* %3, align 8
  %.pre163 = load i8, i8* %14, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1668

; <label>:2373:                                   ; preds = %block_.L_42b56a
  %2374 = fcmp ogt float %2359, %2361
  br i1 %2374, label %2379, label %2375

; <label>:2375:                                   ; preds = %2373
  %2376 = fcmp olt float %2359, %2361
  br i1 %2376, label %2379, label %2377

; <label>:2377:                                   ; preds = %2375
  %2378 = fcmp oeq float %2359, %2361
  br i1 %2378, label %2379, label %2383

; <label>:2379:                                   ; preds = %2377, %2375, %2373, %2363
  %2380 = phi i8 [ 0, %2373 ], [ 0, %2375 ], [ 1, %2377 ], [ 1, %2363 ]
  %2381 = phi i8 [ 0, %2373 ], [ 0, %2375 ], [ 0, %2377 ], [ 1, %2363 ]
  %2382 = phi i8 [ 0, %2373 ], [ 1, %2375 ], [ 0, %2377 ], [ 1, %2363 ]
  store i8 %2380, i8* %30, align 1
  store i8 %2381, i8* %21, align 1
  store i8 %2382, i8* %14, align 1
  br label %2383

; <label>:2383:                                   ; preds = %2379, %2377
  %2384 = phi i8 [ %2382, %2379 ], [ %1867, %2377 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1668

routine_ucomiss__xmm0___xmm1.exit1668:            ; preds = %2383, %2371
  %2385 = phi i8 [ %.pre163, %2371 ], [ %2384, %2383 ]
  %2386 = phi i64 [ %.pre162, %2371 ], [ %2357, %2383 ]
  %2387 = phi %struct.Memory* [ %2372, %2371 ], [ %MEMORY.9, %2383 ]
  %2388 = icmp ne i8 %2385, 0
  %.v226 = select i1 %2388, i64 11, i64 6
  %2389 = add i64 %2386, %.v226
  store i64 %2389, i64* %3, align 8
  %cmpBr_42b587 = icmp eq i8 %2385, 1
  br i1 %cmpBr_42b587, label %block_.L_42b592, label %block_42b58d

block_42b58d:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1668
  %2390 = add i64 %2389, 30
  store i64 %2390, i64* %3, align 8
  %.pre165 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42b5ab

block_.L_42b592:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit1668
  %2391 = load i64, i64* %RBP.i, align 8
  %2392 = add i64 %2391, -440
  %2393 = add i64 %2389, 11
  store i64 %2393, i64* %3, align 8
  %2394 = inttoptr i64 %2392 to i32*
  %2395 = load i32, i32* %2394, align 4
  %2396 = add i32 %2395, -1
  %2397 = zext i32 %2396 to i64
  store i64 %2397, i64* %RAX.i23, align 8
  %2398 = icmp ne i32 %2395, 0
  %2399 = zext i1 %2398 to i8
  store i8 %2399, i8* %14, align 1
  %2400 = and i32 %2396, 255
  %2401 = tail call i32 @llvm.ctpop.i32(i32 %2400)
  %2402 = trunc i32 %2401 to i8
  %2403 = and i8 %2402, 1
  %2404 = xor i8 %2403, 1
  store i8 %2404, i8* %21, align 1
  %2405 = xor i32 %2395, 16
  %2406 = xor i32 %2405, %2396
  %2407 = lshr i32 %2406, 4
  %2408 = trunc i32 %2407 to i8
  %2409 = and i8 %2408, 1
  store i8 %2409, i8* %27, align 1
  %2410 = icmp eq i32 %2396, 0
  %2411 = zext i1 %2410 to i8
  store i8 %2411, i8* %30, align 1
  %2412 = lshr i32 %2396, 31
  %2413 = trunc i32 %2412 to i8
  store i8 %2413, i8* %33, align 1
  %2414 = lshr i32 %2395, 31
  %2415 = xor i32 %2412, %2414
  %2416 = xor i32 %2412, 1
  %2417 = add nuw nsw i32 %2415, %2416
  %2418 = icmp eq i32 %2417, 2
  %2419 = zext i1 %2418 to i8
  store i8 %2419, i8* %39, align 1
  %2420 = add i64 %2389, 20
  store i64 %2420, i64* %3, align 8
  store i32 %2396, i32* %2394, align 4
  %2421 = load i64, i64* %3, align 8
  %2422 = add i64 %2421, -340
  store i64 %2422, i64* %3, align 8
  br label %block_.L_42b452

block_.L_42b5ab.loopexit:                         ; preds = %block_.L_42b452
  br label %block_.L_42b5ab

block_.L_42b5ab:                                  ; preds = %block_.L_42b5ab.loopexit, %block_42b58d
  %2423 = phi i64 [ %.pre165, %block_42b58d ], [ %1813, %block_.L_42b5ab.loopexit ]
  %2424 = phi i64 [ %2390, %block_42b58d ], [ %1841, %block_.L_42b5ab.loopexit ]
  %MEMORY.13 = phi %struct.Memory* [ %2387, %block_42b58d ], [ %MEMORY.9, %block_.L_42b5ab.loopexit ]
  %2425 = bitcast [32 x %union.VectorReg]* %54 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %2425, align 1
  %2426 = add i64 %2423, -408
  %2427 = add i64 %2424, 10
  store i64 %2427, i64* %3, align 8
  %2428 = inttoptr i64 %2426 to i64*
  %2429 = load i64, i64* %2428, align 8
  store i64 %2429, i64* %RAX.i23, align 8
  %2430 = add i64 %2423, -440
  %2431 = add i64 %2424, 17
  store i64 %2431, i64* %3, align 8
  %2432 = inttoptr i64 %2430 to i32*
  %2433 = load i32, i32* %2432, align 4
  %2434 = sext i32 %2433 to i64
  store i64 %2434, i64* %RCX.i774, align 8
  %2435 = shl nsw i64 %2434, 2
  %2436 = add i64 %2435, %2429
  %2437 = add i64 %2424, 22
  store i64 %2437, i64* %3, align 8
  %2438 = load <2 x float>, <2 x float>* %59, align 1
  %2439 = extractelement <2 x float> %2438, i32 0
  %2440 = inttoptr i64 %2436 to float*
  store float %2439, float* %2440, align 4
  %2441 = load i64, i64* %RBP.i, align 8
  %2442 = add i64 %2441, -416
  %2443 = load i64, i64* %3, align 8
  %2444 = add i64 %2443, 7
  store i64 %2444, i64* %3, align 8
  %2445 = inttoptr i64 %2442 to i64*
  %2446 = load i64, i64* %2445, align 8
  store i64 %2446, i64* %RAX.i23, align 8
  %2447 = add i64 %2441, -440
  %2448 = add i64 %2443, 14
  store i64 %2448, i64* %3, align 8
  %2449 = inttoptr i64 %2447 to i32*
  %2450 = load i32, i32* %2449, align 4
  %2451 = sext i32 %2450 to i64
  store i64 %2451, i64* %RCX.i774, align 8
  %2452 = shl nsw i64 %2451, 2
  %2453 = add i64 %2452, %2446
  %2454 = add i64 %2443, 21
  store i64 %2454, i64* %3, align 8
  %2455 = inttoptr i64 %2453 to i32*
  store i32 0, i32* %2455, align 4
  %2456 = load i64, i64* %RBP.i, align 8
  %2457 = add i64 %2456, -68
  %2458 = load i64, i64* %3, align 8
  %2459 = add i64 %2458, 7
  store i64 %2459, i64* %3, align 8
  %2460 = inttoptr i64 %2457 to i32*
  store i32 0, i32* %2460, align 4
  %CL.i1609 = bitcast %union.anon* %69 to i8*
  %.pre166 = load i64, i64* %3, align 8
  br label %block_.L_42b5dd

block_.L_42b5dd:                                  ; preds = %block_42b702, %block_.L_42b5ab
  %2461 = phi i64 [ %3000, %block_42b702 ], [ %.pre166, %block_.L_42b5ab ]
  %2462 = load i64, i64* %RBP.i, align 8
  %2463 = add i64 %2462, -68
  %2464 = add i64 %2461, 3
  store i64 %2464, i64* %3, align 8
  %2465 = inttoptr i64 %2463 to i32*
  %2466 = load i32, i32* %2465, align 4
  %2467 = zext i32 %2466 to i64
  store i64 %2467, i64* %RAX.i23, align 8
  %2468 = add i64 %2462, -8
  %2469 = add i64 %2461, 7
  store i64 %2469, i64* %3, align 8
  %2470 = inttoptr i64 %2468 to i64*
  %2471 = load i64, i64* %2470, align 8
  store i64 %2471, i64* %RCX.i774, align 8
  %2472 = add i64 %2471, 28
  %2473 = add i64 %2461, 10
  store i64 %2473, i64* %3, align 8
  %2474 = inttoptr i64 %2472 to i32*
  %2475 = load i32, i32* %2474, align 4
  %2476 = sub i32 %2466, %2475
  %2477 = icmp ult i32 %2466, %2475
  %2478 = zext i1 %2477 to i8
  store i8 %2478, i8* %14, align 1
  %2479 = and i32 %2476, 255
  %2480 = tail call i32 @llvm.ctpop.i32(i32 %2479)
  %2481 = trunc i32 %2480 to i8
  %2482 = and i8 %2481, 1
  %2483 = xor i8 %2482, 1
  store i8 %2483, i8* %21, align 1
  %2484 = xor i32 %2475, %2466
  %2485 = xor i32 %2484, %2476
  %2486 = lshr i32 %2485, 4
  %2487 = trunc i32 %2486 to i8
  %2488 = and i8 %2487, 1
  store i8 %2488, i8* %27, align 1
  %2489 = icmp eq i32 %2476, 0
  %2490 = zext i1 %2489 to i8
  store i8 %2490, i8* %30, align 1
  %2491 = lshr i32 %2476, 31
  %2492 = trunc i32 %2491 to i8
  store i8 %2492, i8* %33, align 1
  %2493 = lshr i32 %2466, 31
  %2494 = lshr i32 %2475, 31
  %2495 = xor i32 %2494, %2493
  %2496 = xor i32 %2491, %2493
  %2497 = add nuw nsw i32 %2496, %2495
  %2498 = icmp eq i32 %2497, 2
  %2499 = zext i1 %2498 to i8
  store i8 %2499, i8* %39, align 1
  %2500 = icmp ne i8 %2492, 0
  %2501 = xor i1 %2500, %2498
  %.v = select i1 %2501, i64 16, i64 359
  %2502 = add i64 %2461, %.v
  %2503 = add i64 %2462, -440
  %2504 = add i64 %2502, 6
  store i64 %2504, i64* %3, align 8
  %2505 = inttoptr i64 %2503 to i32*
  %2506 = load i32, i32* %2505, align 4
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RAX.i23, align 8
  br i1 %2501, label %block_42b5ed, label %block_.L_42b744

block_42b5ed:                                     ; preds = %block_.L_42b5dd
  %2508 = add i64 %2462, -72
  %2509 = add i64 %2502, 9
  store i64 %2509, i64* %3, align 8
  %2510 = inttoptr i64 %2508 to i32*
  store i32 %2506, i32* %2510, align 4
  %.pre196 = load i64, i64* %3, align 8
  br label %block_.L_42b5f6

block_.L_42b5f6:                                  ; preds = %block_.L_42b707, %block_42b5ed
  %2511 = phi i64 [ %3080, %block_.L_42b707 ], [ %.pre196, %block_42b5ed ]
  store i64 0, i64* %RAX.i23, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i8 0, i8* %CL.i1609, align 1
  %2512 = load i64, i64* %RBP.i, align 8
  %2513 = add i64 %2512, -72
  %2514 = add i64 %2511, 8
  store i64 %2514, i64* %3, align 8
  %2515 = inttoptr i64 %2513 to i32*
  %2516 = load i32, i32* %2515, align 4
  store i8 0, i8* %14, align 1
  %2517 = and i32 %2516, 255
  %2518 = tail call i32 @llvm.ctpop.i32(i32 %2517)
  %2519 = trunc i32 %2518 to i8
  %2520 = and i8 %2519, 1
  %2521 = xor i8 %2520, 1
  store i8 %2521, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %2522 = icmp eq i32 %2516, 0
  %2523 = zext i1 %2522 to i8
  store i8 %2523, i8* %30, align 1
  %2524 = lshr i32 %2516, 31
  %2525 = trunc i32 %2524 to i8
  store i8 %2525, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %2526 = add i64 %2512, -521
  %2527 = add i64 %2511, 14
  store i64 %2527, i64* %3, align 8
  %2528 = inttoptr i64 %2526 to i8*
  store i8 0, i8* %2528, align 1
  %2529 = load i64, i64* %3, align 8
  %2530 = add i64 %2529, 240
  %2531 = add i64 %2529, 6
  %2532 = load i8, i8* %30, align 1
  %2533 = icmp ne i8 %2532, 0
  %2534 = load i8, i8* %33, align 1
  %2535 = icmp ne i8 %2534, 0
  %2536 = load i8, i8* %39, align 1
  %2537 = icmp ne i8 %2536, 0
  %2538 = xor i1 %2535, %2537
  %2539 = or i1 %2533, %2538
  %2540 = select i1 %2539, i64 %2530, i64 %2531
  store i64 %2540, i64* %3, align 8
  br i1 %2539, label %block_.L_42b6f4, label %block_42b60a

block_42b60a:                                     ; preds = %block_.L_42b5f6
  store i8 1, i8* %AL.i2238, align 1
  %2541 = load i64, i64* %RBP.i, align 8
  %2542 = add i64 %2541, -8
  %2543 = add i64 %2540, 6
  store i64 %2543, i64* %3, align 8
  %2544 = inttoptr i64 %2542 to i64*
  %2545 = load i64, i64* %2544, align 8
  store i64 %2545, i64* %RCX.i774, align 8
  %2546 = add i64 %2540, 9
  store i64 %2546, i64* %3, align 8
  %2547 = inttoptr i64 %2545 to i64*
  %2548 = load i64, i64* %2547, align 8
  store i64 %2548, i64* %RCX.i774, align 8
  %2549 = add i64 %2541, -68
  %2550 = add i64 %2540, 13
  store i64 %2550, i64* %3, align 8
  %2551 = inttoptr i64 %2549 to i32*
  %2552 = load i32, i32* %2551, align 4
  %2553 = sext i32 %2552 to i64
  store i64 %2553, i64* %RDX.i689, align 8
  %2554 = shl nsw i64 %2553, 3
  %2555 = add i64 %2554, %2548
  %2556 = add i64 %2540, 17
  store i64 %2556, i64* %3, align 8
  %2557 = inttoptr i64 %2555 to i64*
  %2558 = load i64, i64* %2557, align 8
  store i64 %2558, i64* %RCX.i774, align 8
  %2559 = add i64 %2541, -72
  %2560 = add i64 %2540, 20
  store i64 %2560, i64* %3, align 8
  %2561 = inttoptr i64 %2559 to i32*
  %2562 = load i32, i32* %2561, align 4
  %2563 = add i32 %2562, -1
  %2564 = zext i32 %2563 to i64
  store i64 %2564, i64* %RSI.i, align 8
  %2565 = icmp eq i32 %2562, 0
  %2566 = zext i1 %2565 to i8
  store i8 %2566, i8* %14, align 1
  %2567 = and i32 %2563, 255
  %2568 = tail call i32 @llvm.ctpop.i32(i32 %2567)
  %2569 = trunc i32 %2568 to i8
  %2570 = and i8 %2569, 1
  %2571 = xor i8 %2570, 1
  store i8 %2571, i8* %21, align 1
  %2572 = xor i32 %2563, %2562
  %2573 = lshr i32 %2572, 4
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  store i8 %2575, i8* %27, align 1
  %2576 = icmp eq i32 %2563, 0
  %2577 = zext i1 %2576 to i8
  store i8 %2577, i8* %30, align 1
  %2578 = lshr i32 %2563, 31
  %2579 = trunc i32 %2578 to i8
  store i8 %2579, i8* %33, align 1
  %2580 = lshr i32 %2562, 31
  %2581 = xor i32 %2578, %2580
  %2582 = add nuw nsw i32 %2581, %2580
  %2583 = icmp eq i32 %2582, 2
  %2584 = zext i1 %2583 to i8
  store i8 %2584, i8* %39, align 1
  %2585 = sext i32 %2563 to i64
  store i64 %2585, i64* %RDX.i689, align 8
  %2586 = add i64 %2558, %2585
  %2587 = add i64 %2540, 30
  store i64 %2587, i64* %3, align 8
  %2588 = inttoptr i64 %2586 to i8*
  %2589 = load i8, i8* %2588, align 1
  %2590 = sext i8 %2589 to i64
  %2591 = and i64 %2590, 4294967295
  store i64 %2591, i64* %RSI.i, align 8
  %2592 = sext i8 %2589 to i32
  %2593 = add nsw i32 %2592, -32
  %2594 = icmp ult i8 %2589, 32
  %2595 = zext i1 %2594 to i8
  store i8 %2595, i8* %14, align 1
  %2596 = and i32 %2593, 255
  %2597 = tail call i32 @llvm.ctpop.i32(i32 %2596)
  %2598 = trunc i32 %2597 to i8
  %2599 = and i8 %2598, 1
  %2600 = xor i8 %2599, 1
  store i8 %2600, i8* %21, align 1
  %2601 = xor i32 %2593, %2592
  %2602 = lshr i32 %2601, 4
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  store i8 %2604, i8* %27, align 1
  %2605 = icmp eq i32 %2593, 0
  %2606 = zext i1 %2605 to i8
  store i8 %2606, i8* %30, align 1
  %2607 = lshr i32 %2593, 31
  %2608 = trunc i32 %2607 to i8
  store i8 %2608, i8* %33, align 1
  %2609 = lshr i32 %2592, 31
  %2610 = xor i32 %2607, %2609
  %2611 = add nuw nsw i32 %2610, %2609
  %2612 = icmp eq i32 %2611, 2
  %2613 = zext i1 %2612 to i8
  store i8 %2613, i8* %39, align 1
  %2614 = load i64, i64* %RBP.i, align 8
  %2615 = add i64 %2614, -522
  %2616 = load i8, i8* %AL.i2238, align 1
  %2617 = add i64 %2540, 39
  store i64 %2617, i64* %3, align 8
  %2618 = inttoptr i64 %2615 to i8*
  store i8 %2616, i8* %2618, align 1
  %2619 = load i64, i64* %3, align 8
  %2620 = load i8, i8* %30, align 1
  %2621 = icmp ne i8 %2620, 0
  %.v324 = select i1 %2621, i64 183, i64 6
  %2622 = add i64 %2619, %.v324
  store i64 %2622, i64* %3, align 8
  %cmpBr_42b631 = icmp eq i8 %2620, 1
  br i1 %cmpBr_42b631, label %block_.L_42b6e8, label %block_42b637

block_42b637:                                     ; preds = %block_42b60a
  store i8 1, i8* %AL.i2238, align 1
  %2623 = load i64, i64* %RBP.i, align 8
  %2624 = add i64 %2623, -8
  %2625 = add i64 %2622, 6
  store i64 %2625, i64* %3, align 8
  %2626 = inttoptr i64 %2624 to i64*
  %2627 = load i64, i64* %2626, align 8
  store i64 %2627, i64* %RCX.i774, align 8
  %2628 = add i64 %2622, 9
  store i64 %2628, i64* %3, align 8
  %2629 = inttoptr i64 %2627 to i64*
  %2630 = load i64, i64* %2629, align 8
  store i64 %2630, i64* %RCX.i774, align 8
  %2631 = add i64 %2623, -68
  %2632 = add i64 %2622, 13
  store i64 %2632, i64* %3, align 8
  %2633 = inttoptr i64 %2631 to i32*
  %2634 = load i32, i32* %2633, align 4
  %2635 = sext i32 %2634 to i64
  store i64 %2635, i64* %RDX.i689, align 8
  %2636 = shl nsw i64 %2635, 3
  %2637 = add i64 %2636, %2630
  %2638 = add i64 %2622, 17
  store i64 %2638, i64* %3, align 8
  %2639 = inttoptr i64 %2637 to i64*
  %2640 = load i64, i64* %2639, align 8
  store i64 %2640, i64* %RCX.i774, align 8
  %2641 = add i64 %2623, -72
  %2642 = add i64 %2622, 20
  store i64 %2642, i64* %3, align 8
  %2643 = inttoptr i64 %2641 to i32*
  %2644 = load i32, i32* %2643, align 4
  %2645 = add i32 %2644, -1
  %2646 = zext i32 %2645 to i64
  store i64 %2646, i64* %RSI.i, align 8
  %2647 = icmp eq i32 %2644, 0
  %2648 = zext i1 %2647 to i8
  store i8 %2648, i8* %14, align 1
  %2649 = and i32 %2645, 255
  %2650 = tail call i32 @llvm.ctpop.i32(i32 %2649)
  %2651 = trunc i32 %2650 to i8
  %2652 = and i8 %2651, 1
  %2653 = xor i8 %2652, 1
  store i8 %2653, i8* %21, align 1
  %2654 = xor i32 %2645, %2644
  %2655 = lshr i32 %2654, 4
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  store i8 %2657, i8* %27, align 1
  %2658 = icmp eq i32 %2645, 0
  %2659 = zext i1 %2658 to i8
  store i8 %2659, i8* %30, align 1
  %2660 = lshr i32 %2645, 31
  %2661 = trunc i32 %2660 to i8
  store i8 %2661, i8* %33, align 1
  %2662 = lshr i32 %2644, 31
  %2663 = xor i32 %2660, %2662
  %2664 = add nuw nsw i32 %2663, %2662
  %2665 = icmp eq i32 %2664, 2
  %2666 = zext i1 %2665 to i8
  store i8 %2666, i8* %39, align 1
  %2667 = sext i32 %2645 to i64
  store i64 %2667, i64* %RDX.i689, align 8
  %2668 = add i64 %2640, %2667
  %2669 = add i64 %2622, 30
  store i64 %2669, i64* %3, align 8
  %2670 = inttoptr i64 %2668 to i8*
  %2671 = load i8, i8* %2670, align 1
  %2672 = sext i8 %2671 to i64
  %2673 = and i64 %2672, 4294967295
  store i64 %2673, i64* %RSI.i, align 8
  %2674 = sext i8 %2671 to i32
  %2675 = add nsw i32 %2674, -46
  %2676 = icmp ult i8 %2671, 46
  %2677 = zext i1 %2676 to i8
  store i8 %2677, i8* %14, align 1
  %2678 = and i32 %2675, 255
  %2679 = tail call i32 @llvm.ctpop.i32(i32 %2678)
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = xor i8 %2681, 1
  store i8 %2682, i8* %21, align 1
  %2683 = xor i32 %2675, %2674
  %2684 = lshr i32 %2683, 4
  %2685 = trunc i32 %2684 to i8
  %2686 = and i8 %2685, 1
  store i8 %2686, i8* %27, align 1
  %2687 = icmp eq i32 %2675, 0
  %2688 = zext i1 %2687 to i8
  store i8 %2688, i8* %30, align 1
  %2689 = lshr i32 %2675, 31
  %2690 = trunc i32 %2689 to i8
  store i8 %2690, i8* %33, align 1
  %2691 = lshr i32 %2674, 31
  %2692 = xor i32 %2689, %2691
  %2693 = add nuw nsw i32 %2692, %2691
  %2694 = icmp eq i32 %2693, 2
  %2695 = zext i1 %2694 to i8
  store i8 %2695, i8* %39, align 1
  %2696 = load i64, i64* %RBP.i, align 8
  %2697 = add i64 %2696, -522
  %2698 = load i8, i8* %AL.i2238, align 1
  %2699 = add i64 %2622, 39
  store i64 %2699, i64* %3, align 8
  %2700 = inttoptr i64 %2697 to i8*
  store i8 %2698, i8* %2700, align 1
  %2701 = load i64, i64* %3, align 8
  %2702 = load i8, i8* %30, align 1
  %2703 = icmp ne i8 %2702, 0
  %.v325 = select i1 %2703, i64 138, i64 6
  %2704 = add i64 %2701, %.v325
  store i64 %2704, i64* %3, align 8
  %cmpBr_42b65e = icmp eq i8 %2702, 1
  br i1 %cmpBr_42b65e, label %block_.L_42b6e8, label %block_42b664

block_42b664:                                     ; preds = %block_42b637
  store i8 1, i8* %AL.i2238, align 1
  %2705 = load i64, i64* %RBP.i, align 8
  %2706 = add i64 %2705, -8
  %2707 = add i64 %2704, 6
  store i64 %2707, i64* %3, align 8
  %2708 = inttoptr i64 %2706 to i64*
  %2709 = load i64, i64* %2708, align 8
  store i64 %2709, i64* %RCX.i774, align 8
  %2710 = add i64 %2704, 9
  store i64 %2710, i64* %3, align 8
  %2711 = inttoptr i64 %2709 to i64*
  %2712 = load i64, i64* %2711, align 8
  store i64 %2712, i64* %RCX.i774, align 8
  %2713 = add i64 %2705, -68
  %2714 = add i64 %2704, 13
  store i64 %2714, i64* %3, align 8
  %2715 = inttoptr i64 %2713 to i32*
  %2716 = load i32, i32* %2715, align 4
  %2717 = sext i32 %2716 to i64
  store i64 %2717, i64* %RDX.i689, align 8
  %2718 = shl nsw i64 %2717, 3
  %2719 = add i64 %2718, %2712
  %2720 = add i64 %2704, 17
  store i64 %2720, i64* %3, align 8
  %2721 = inttoptr i64 %2719 to i64*
  %2722 = load i64, i64* %2721, align 8
  store i64 %2722, i64* %RCX.i774, align 8
  %2723 = add i64 %2705, -72
  %2724 = add i64 %2704, 20
  store i64 %2724, i64* %3, align 8
  %2725 = inttoptr i64 %2723 to i32*
  %2726 = load i32, i32* %2725, align 4
  %2727 = add i32 %2726, -1
  %2728 = zext i32 %2727 to i64
  store i64 %2728, i64* %RSI.i, align 8
  %2729 = icmp eq i32 %2726, 0
  %2730 = zext i1 %2729 to i8
  store i8 %2730, i8* %14, align 1
  %2731 = and i32 %2727, 255
  %2732 = tail call i32 @llvm.ctpop.i32(i32 %2731)
  %2733 = trunc i32 %2732 to i8
  %2734 = and i8 %2733, 1
  %2735 = xor i8 %2734, 1
  store i8 %2735, i8* %21, align 1
  %2736 = xor i32 %2727, %2726
  %2737 = lshr i32 %2736, 4
  %2738 = trunc i32 %2737 to i8
  %2739 = and i8 %2738, 1
  store i8 %2739, i8* %27, align 1
  %2740 = icmp eq i32 %2727, 0
  %2741 = zext i1 %2740 to i8
  store i8 %2741, i8* %30, align 1
  %2742 = lshr i32 %2727, 31
  %2743 = trunc i32 %2742 to i8
  store i8 %2743, i8* %33, align 1
  %2744 = lshr i32 %2726, 31
  %2745 = xor i32 %2742, %2744
  %2746 = add nuw nsw i32 %2745, %2744
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  store i8 %2748, i8* %39, align 1
  %2749 = sext i32 %2727 to i64
  store i64 %2749, i64* %RDX.i689, align 8
  %2750 = add i64 %2722, %2749
  %2751 = add i64 %2704, 30
  store i64 %2751, i64* %3, align 8
  %2752 = inttoptr i64 %2750 to i8*
  %2753 = load i8, i8* %2752, align 1
  %2754 = sext i8 %2753 to i64
  %2755 = and i64 %2754, 4294967295
  store i64 %2755, i64* %RSI.i, align 8
  %2756 = sext i8 %2753 to i32
  %2757 = add nsw i32 %2756, -95
  %2758 = icmp ult i8 %2753, 95
  %2759 = zext i1 %2758 to i8
  store i8 %2759, i8* %14, align 1
  %2760 = and i32 %2757, 255
  %2761 = tail call i32 @llvm.ctpop.i32(i32 %2760)
  %2762 = trunc i32 %2761 to i8
  %2763 = and i8 %2762, 1
  %2764 = xor i8 %2763, 1
  store i8 %2764, i8* %21, align 1
  %2765 = xor i32 %2756, 16
  %2766 = xor i32 %2765, %2757
  %2767 = lshr i32 %2766, 4
  %2768 = trunc i32 %2767 to i8
  %2769 = and i8 %2768, 1
  store i8 %2769, i8* %27, align 1
  %2770 = icmp eq i32 %2757, 0
  %2771 = zext i1 %2770 to i8
  store i8 %2771, i8* %30, align 1
  %2772 = lshr i32 %2757, 31
  %2773 = trunc i32 %2772 to i8
  store i8 %2773, i8* %33, align 1
  %2774 = lshr i32 %2756, 31
  %2775 = xor i32 %2772, %2774
  %2776 = add nuw nsw i32 %2775, %2774
  %2777 = icmp eq i32 %2776, 2
  %2778 = zext i1 %2777 to i8
  store i8 %2778, i8* %39, align 1
  %2779 = load i64, i64* %RBP.i, align 8
  %2780 = add i64 %2779, -522
  %2781 = load i8, i8* %AL.i2238, align 1
  %2782 = add i64 %2704, 39
  store i64 %2782, i64* %3, align 8
  %2783 = inttoptr i64 %2780 to i8*
  store i8 %2781, i8* %2783, align 1
  %2784 = load i64, i64* %3, align 8
  %2785 = load i8, i8* %30, align 1
  %2786 = icmp ne i8 %2785, 0
  %.v326 = select i1 %2786, i64 93, i64 6
  %2787 = add i64 %2784, %.v326
  store i64 %2787, i64* %3, align 8
  %cmpBr_42b68b = icmp eq i8 %2785, 1
  br i1 %cmpBr_42b68b, label %block_.L_42b6e8, label %block_42b691

block_42b691:                                     ; preds = %block_42b664
  store i8 1, i8* %AL.i2238, align 1
  %2788 = load i64, i64* %RBP.i, align 8
  %2789 = add i64 %2788, -8
  %2790 = add i64 %2787, 6
  store i64 %2790, i64* %3, align 8
  %2791 = inttoptr i64 %2789 to i64*
  %2792 = load i64, i64* %2791, align 8
  store i64 %2792, i64* %RCX.i774, align 8
  %2793 = add i64 %2787, 9
  store i64 %2793, i64* %3, align 8
  %2794 = inttoptr i64 %2792 to i64*
  %2795 = load i64, i64* %2794, align 8
  store i64 %2795, i64* %RCX.i774, align 8
  %2796 = add i64 %2788, -68
  %2797 = add i64 %2787, 13
  store i64 %2797, i64* %3, align 8
  %2798 = inttoptr i64 %2796 to i32*
  %2799 = load i32, i32* %2798, align 4
  %2800 = sext i32 %2799 to i64
  store i64 %2800, i64* %RDX.i689, align 8
  %2801 = shl nsw i64 %2800, 3
  %2802 = add i64 %2801, %2795
  %2803 = add i64 %2787, 17
  store i64 %2803, i64* %3, align 8
  %2804 = inttoptr i64 %2802 to i64*
  %2805 = load i64, i64* %2804, align 8
  store i64 %2805, i64* %RCX.i774, align 8
  %2806 = add i64 %2788, -72
  %2807 = add i64 %2787, 20
  store i64 %2807, i64* %3, align 8
  %2808 = inttoptr i64 %2806 to i32*
  %2809 = load i32, i32* %2808, align 4
  %2810 = add i32 %2809, -1
  %2811 = zext i32 %2810 to i64
  store i64 %2811, i64* %RSI.i, align 8
  %2812 = icmp eq i32 %2809, 0
  %2813 = zext i1 %2812 to i8
  store i8 %2813, i8* %14, align 1
  %2814 = and i32 %2810, 255
  %2815 = tail call i32 @llvm.ctpop.i32(i32 %2814)
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  %2818 = xor i8 %2817, 1
  store i8 %2818, i8* %21, align 1
  %2819 = xor i32 %2810, %2809
  %2820 = lshr i32 %2819, 4
  %2821 = trunc i32 %2820 to i8
  %2822 = and i8 %2821, 1
  store i8 %2822, i8* %27, align 1
  %2823 = icmp eq i32 %2810, 0
  %2824 = zext i1 %2823 to i8
  store i8 %2824, i8* %30, align 1
  %2825 = lshr i32 %2810, 31
  %2826 = trunc i32 %2825 to i8
  store i8 %2826, i8* %33, align 1
  %2827 = lshr i32 %2809, 31
  %2828 = xor i32 %2825, %2827
  %2829 = add nuw nsw i32 %2828, %2827
  %2830 = icmp eq i32 %2829, 2
  %2831 = zext i1 %2830 to i8
  store i8 %2831, i8* %39, align 1
  %2832 = sext i32 %2810 to i64
  store i64 %2832, i64* %RDX.i689, align 8
  %2833 = add i64 %2805, %2832
  %2834 = add i64 %2787, 30
  store i64 %2834, i64* %3, align 8
  %2835 = inttoptr i64 %2833 to i8*
  %2836 = load i8, i8* %2835, align 1
  %2837 = sext i8 %2836 to i64
  %2838 = and i64 %2837, 4294967295
  store i64 %2838, i64* %RSI.i, align 8
  %2839 = sext i8 %2836 to i32
  %2840 = add nsw i32 %2839, -45
  %2841 = icmp ult i8 %2836, 45
  %2842 = zext i1 %2841 to i8
  store i8 %2842, i8* %14, align 1
  %2843 = and i32 %2840, 255
  %2844 = tail call i32 @llvm.ctpop.i32(i32 %2843)
  %2845 = trunc i32 %2844 to i8
  %2846 = and i8 %2845, 1
  %2847 = xor i8 %2846, 1
  store i8 %2847, i8* %21, align 1
  %2848 = xor i32 %2840, %2839
  %2849 = lshr i32 %2848, 4
  %2850 = trunc i32 %2849 to i8
  %2851 = and i8 %2850, 1
  store i8 %2851, i8* %27, align 1
  %2852 = icmp eq i32 %2840, 0
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %30, align 1
  %2854 = lshr i32 %2840, 31
  %2855 = trunc i32 %2854 to i8
  store i8 %2855, i8* %33, align 1
  %2856 = lshr i32 %2839, 31
  %2857 = xor i32 %2854, %2856
  %2858 = add nuw nsw i32 %2857, %2856
  %2859 = icmp eq i32 %2858, 2
  %2860 = zext i1 %2859 to i8
  store i8 %2860, i8* %39, align 1
  %2861 = load i64, i64* %RBP.i, align 8
  %2862 = add i64 %2861, -522
  %2863 = load i8, i8* %AL.i2238, align 1
  %2864 = add i64 %2787, 39
  store i64 %2864, i64* %3, align 8
  %2865 = inttoptr i64 %2862 to i8*
  store i8 %2863, i8* %2865, align 1
  %2866 = load i64, i64* %3, align 8
  %2867 = load i8, i8* %30, align 1
  %2868 = icmp ne i8 %2867, 0
  %.v327 = select i1 %2868, i64 48, i64 6
  %2869 = add i64 %2866, %.v327
  store i64 %2869, i64* %3, align 8
  %cmpBr_42b6b8 = icmp eq i8 %2867, 1
  br i1 %cmpBr_42b6b8, label %block_.L_42b6e8, label %block_42b6be

block_42b6be:                                     ; preds = %block_42b691
  %2870 = load i64, i64* %RBP.i, align 8
  %2871 = add i64 %2870, -8
  %2872 = add i64 %2869, 4
  store i64 %2872, i64* %3, align 8
  %2873 = inttoptr i64 %2871 to i64*
  %2874 = load i64, i64* %2873, align 8
  store i64 %2874, i64* %RAX.i23, align 8
  %2875 = add i64 %2869, 7
  store i64 %2875, i64* %3, align 8
  %2876 = inttoptr i64 %2874 to i64*
  %2877 = load i64, i64* %2876, align 8
  store i64 %2877, i64* %RAX.i23, align 8
  %2878 = add i64 %2870, -68
  %2879 = add i64 %2869, 11
  store i64 %2879, i64* %3, align 8
  %2880 = inttoptr i64 %2878 to i32*
  %2881 = load i32, i32* %2880, align 4
  %2882 = sext i32 %2881 to i64
  store i64 %2882, i64* %RCX.i774, align 8
  %2883 = shl nsw i64 %2882, 3
  %2884 = add i64 %2883, %2877
  %2885 = add i64 %2869, 15
  store i64 %2885, i64* %3, align 8
  %2886 = inttoptr i64 %2884 to i64*
  %2887 = load i64, i64* %2886, align 8
  store i64 %2887, i64* %RAX.i23, align 8
  %2888 = add i64 %2870, -72
  %2889 = add i64 %2869, 18
  store i64 %2889, i64* %3, align 8
  %2890 = inttoptr i64 %2888 to i32*
  %2891 = load i32, i32* %2890, align 4
  %2892 = add i32 %2891, -1
  %2893 = zext i32 %2892 to i64
  store i64 %2893, i64* %RDX.i689, align 8
  %2894 = icmp eq i32 %2891, 0
  %2895 = zext i1 %2894 to i8
  store i8 %2895, i8* %14, align 1
  %2896 = and i32 %2892, 255
  %2897 = tail call i32 @llvm.ctpop.i32(i32 %2896)
  %2898 = trunc i32 %2897 to i8
  %2899 = and i8 %2898, 1
  %2900 = xor i8 %2899, 1
  store i8 %2900, i8* %21, align 1
  %2901 = xor i32 %2892, %2891
  %2902 = lshr i32 %2901, 4
  %2903 = trunc i32 %2902 to i8
  %2904 = and i8 %2903, 1
  store i8 %2904, i8* %27, align 1
  %2905 = icmp eq i32 %2892, 0
  %2906 = zext i1 %2905 to i8
  store i8 %2906, i8* %30, align 1
  %2907 = lshr i32 %2892, 31
  %2908 = trunc i32 %2907 to i8
  store i8 %2908, i8* %33, align 1
  %2909 = lshr i32 %2891, 31
  %2910 = xor i32 %2907, %2909
  %2911 = add nuw nsw i32 %2910, %2909
  %2912 = icmp eq i32 %2911, 2
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %39, align 1
  %2914 = sext i32 %2892 to i64
  store i64 %2914, i64* %RCX.i774, align 8
  %2915 = add i64 %2887, %2914
  %2916 = add i64 %2869, 28
  store i64 %2916, i64* %3, align 8
  %2917 = inttoptr i64 %2915 to i8*
  %2918 = load i8, i8* %2917, align 1
  %2919 = sext i8 %2918 to i64
  %2920 = and i64 %2919, 4294967295
  store i64 %2920, i64* %RDX.i689, align 8
  %2921 = sext i8 %2918 to i32
  %2922 = add nsw i32 %2921, -126
  %2923 = icmp ult i8 %2918, 126
  %2924 = zext i1 %2923 to i8
  store i8 %2924, i8* %14, align 1
  %2925 = and i32 %2922, 255
  %2926 = tail call i32 @llvm.ctpop.i32(i32 %2925)
  %2927 = trunc i32 %2926 to i8
  %2928 = and i8 %2927, 1
  %2929 = xor i8 %2928, 1
  store i8 %2929, i8* %21, align 1
  %2930 = xor i32 %2921, 16
  %2931 = xor i32 %2930, %2922
  %2932 = lshr i32 %2931, 4
  %2933 = trunc i32 %2932 to i8
  %2934 = and i8 %2933, 1
  store i8 %2934, i8* %27, align 1
  %2935 = icmp eq i32 %2922, 0
  %2936 = zext i1 %2935 to i8
  store i8 %2936, i8* %30, align 1
  %2937 = lshr i32 %2922, 31
  %2938 = trunc i32 %2937 to i8
  store i8 %2938, i8* %33, align 1
  %2939 = lshr i32 %2921, 31
  %2940 = xor i32 %2937, %2939
  %2941 = add nuw nsw i32 %2940, %2939
  %2942 = icmp eq i32 %2941, 2
  %2943 = zext i1 %2942 to i8
  store i8 %2943, i8* %39, align 1
  store i8 %2936, i8* %SIL.i2239, align 1
  %2944 = load i64, i64* %RBP.i, align 8
  %2945 = add i64 %2944, -522
  %2946 = add i64 %2869, 42
  store i64 %2946, i64* %3, align 8
  %2947 = inttoptr i64 %2945 to i8*
  store i8 %2936, i8* %2947, align 1
  %.pre197 = load i64, i64* %3, align 8
  br label %block_.L_42b6e8

block_.L_42b6e8:                                  ; preds = %block_42b6be, %block_42b691, %block_42b664, %block_42b637, %block_42b60a
  %2948 = phi i64 [ %.pre197, %block_42b6be ], [ %2869, %block_42b691 ], [ %2787, %block_42b664 ], [ %2704, %block_42b637 ], [ %2622, %block_42b60a ]
  %2949 = load i64, i64* %RBP.i, align 8
  %2950 = add i64 %2949, -522
  %2951 = add i64 %2948, 6
  store i64 %2951, i64* %3, align 8
  %2952 = inttoptr i64 %2950 to i8*
  %2953 = load i8, i8* %2952, align 1
  store i8 %2953, i8* %AL.i2238, align 1
  %2954 = add i64 %2949, -521
  %2955 = add i64 %2948, 12
  store i64 %2955, i64* %3, align 8
  %2956 = inttoptr i64 %2954 to i8*
  store i8 %2953, i8* %2956, align 1
  %.pre198 = load i64, i64* %3, align 8
  br label %block_.L_42b6f4

block_.L_42b6f4:                                  ; preds = %block_.L_42b6e8, %block_.L_42b5f6
  %2957 = phi i64 [ %.pre198, %block_.L_42b6e8 ], [ %2530, %block_.L_42b5f6 ]
  %2958 = load i64, i64* %RBP.i, align 8
  %2959 = add i64 %2958, -521
  %2960 = add i64 %2957, 6
  store i64 %2960, i64* %3, align 8
  %2961 = inttoptr i64 %2959 to i8*
  %2962 = load i8, i8* %2961, align 1
  store i8 %2962, i8* %AL.i2238, align 1
  %2963 = and i8 %2962, 1
  store i8 0, i8* %14, align 1
  %2964 = zext i8 %2963 to i32
  %2965 = tail call i32 @llvm.ctpop.i32(i32 %2964)
  %2966 = trunc i32 %2965 to i8
  %2967 = xor i8 %2966, 1
  store i8 %2967, i8* %21, align 1
  %2968 = xor i8 %2963, 1
  store i8 %2968, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %2969 = icmp eq i8 %2968, 0
  %.v218 = select i1 %2969, i64 19, i64 14
  %2970 = add i64 %2957, %.v218
  store i64 %2970, i64* %3, align 8
  br i1 %2969, label %block_.L_42b707, label %block_42b702

block_42b702:                                     ; preds = %block_.L_42b6f4
  %2971 = add i64 %2958, -68
  %2972 = add i64 %2970, 55
  store i64 %2972, i64* %3, align 8
  %2973 = inttoptr i64 %2971 to i32*
  %2974 = load i32, i32* %2973, align 4
  %2975 = add i32 %2974, 1
  %2976 = zext i32 %2975 to i64
  store i64 %2976, i64* %RAX.i23, align 8
  %2977 = icmp eq i32 %2974, -1
  %2978 = icmp eq i32 %2975, 0
  %2979 = or i1 %2977, %2978
  %2980 = zext i1 %2979 to i8
  store i8 %2980, i8* %14, align 1
  %2981 = and i32 %2975, 255
  %2982 = tail call i32 @llvm.ctpop.i32(i32 %2981)
  %2983 = trunc i32 %2982 to i8
  %2984 = and i8 %2983, 1
  %2985 = xor i8 %2984, 1
  store i8 %2985, i8* %21, align 1
  %2986 = xor i32 %2975, %2974
  %2987 = lshr i32 %2986, 4
  %2988 = trunc i32 %2987 to i8
  %2989 = and i8 %2988, 1
  store i8 %2989, i8* %27, align 1
  %2990 = zext i1 %2978 to i8
  store i8 %2990, i8* %30, align 1
  %2991 = lshr i32 %2975, 31
  %2992 = trunc i32 %2991 to i8
  store i8 %2992, i8* %33, align 1
  %2993 = lshr i32 %2974, 31
  %2994 = xor i32 %2991, %2993
  %2995 = add nuw nsw i32 %2994, %2991
  %2996 = icmp eq i32 %2995, 2
  %2997 = zext i1 %2996 to i8
  store i8 %2997, i8* %39, align 1
  %2998 = add i64 %2970, 61
  store i64 %2998, i64* %3, align 8
  store i32 %2975, i32* %2973, align 4
  %2999 = load i64, i64* %3, align 8
  %3000 = add i64 %2999, -354
  store i64 %3000, i64* %3, align 8
  br label %block_.L_42b5dd

block_.L_42b707:                                  ; preds = %block_.L_42b6f4
  %3001 = add i64 %2958, -8
  %3002 = add i64 %2970, 4
  store i64 %3002, i64* %3, align 8
  %3003 = inttoptr i64 %3001 to i64*
  %3004 = load i64, i64* %3003, align 8
  store i64 %3004, i64* %RAX.i23, align 8
  %3005 = add i64 %2970, 7
  store i64 %3005, i64* %3, align 8
  %3006 = inttoptr i64 %3004 to i64*
  %3007 = load i64, i64* %3006, align 8
  store i64 %3007, i64* %RAX.i23, align 8
  %3008 = add i64 %2958, -68
  %3009 = add i64 %2970, 11
  store i64 %3009, i64* %3, align 8
  %3010 = inttoptr i64 %3008 to i32*
  %3011 = load i32, i32* %3010, align 4
  %3012 = sext i32 %3011 to i64
  store i64 %3012, i64* %RCX.i774, align 8
  %3013 = shl nsw i64 %3012, 3
  %3014 = add i64 %3013, %3007
  %3015 = add i64 %2970, 15
  store i64 %3015, i64* %3, align 8
  %3016 = inttoptr i64 %3014 to i64*
  %3017 = load i64, i64* %3016, align 8
  store i64 %3017, i64* %RAX.i23, align 8
  %3018 = add i64 %2958, -72
  %3019 = add i64 %2970, 18
  store i64 %3019, i64* %3, align 8
  %3020 = inttoptr i64 %3018 to i32*
  %3021 = load i32, i32* %3020, align 4
  %3022 = add i32 %3021, -1
  %3023 = zext i32 %3022 to i64
  store i64 %3023, i64* %RDX.i689, align 8
  %3024 = icmp eq i32 %3021, 0
  %3025 = zext i1 %3024 to i8
  store i8 %3025, i8* %14, align 1
  %3026 = and i32 %3022, 255
  %3027 = tail call i32 @llvm.ctpop.i32(i32 %3026)
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  %3030 = xor i8 %3029, 1
  store i8 %3030, i8* %21, align 1
  %3031 = xor i32 %3022, %3021
  %3032 = lshr i32 %3031, 4
  %3033 = trunc i32 %3032 to i8
  %3034 = and i8 %3033, 1
  store i8 %3034, i8* %27, align 1
  %3035 = icmp eq i32 %3022, 0
  %3036 = zext i1 %3035 to i8
  store i8 %3036, i8* %30, align 1
  %3037 = lshr i32 %3022, 31
  %3038 = trunc i32 %3037 to i8
  store i8 %3038, i8* %33, align 1
  %3039 = lshr i32 %3021, 31
  %3040 = xor i32 %3037, %3039
  %3041 = add nuw nsw i32 %3040, %3039
  %3042 = icmp eq i32 %3041, 2
  %3043 = zext i1 %3042 to i8
  store i8 %3043, i8* %39, align 1
  %3044 = sext i32 %3022 to i64
  store i64 %3044, i64* %RCX.i774, align 8
  %3045 = add i64 %3017, %3044
  %3046 = add i64 %2970, 28
  store i64 %3046, i64* %3, align 8
  %3047 = inttoptr i64 %3045 to i8*
  store i8 95, i8* %3047, align 1
  %3048 = load i64, i64* %RBP.i, align 8
  %3049 = add i64 %3048, -72
  %3050 = load i64, i64* %3, align 8
  %3051 = add i64 %3050, 3
  store i64 %3051, i64* %3, align 8
  %3052 = inttoptr i64 %3049 to i32*
  %3053 = load i32, i32* %3052, align 4
  %3054 = add i32 %3053, -1
  %3055 = zext i32 %3054 to i64
  store i64 %3055, i64* %RAX.i23, align 8
  %3056 = icmp ne i32 %3053, 0
  %3057 = zext i1 %3056 to i8
  store i8 %3057, i8* %14, align 1
  %3058 = and i32 %3054, 255
  %3059 = tail call i32 @llvm.ctpop.i32(i32 %3058)
  %3060 = trunc i32 %3059 to i8
  %3061 = and i8 %3060, 1
  %3062 = xor i8 %3061, 1
  store i8 %3062, i8* %21, align 1
  %3063 = xor i32 %3053, 16
  %3064 = xor i32 %3063, %3054
  %3065 = lshr i32 %3064, 4
  %3066 = trunc i32 %3065 to i8
  %3067 = and i8 %3066, 1
  store i8 %3067, i8* %27, align 1
  %3068 = icmp eq i32 %3054, 0
  %3069 = zext i1 %3068 to i8
  store i8 %3069, i8* %30, align 1
  %3070 = lshr i32 %3054, 31
  %3071 = trunc i32 %3070 to i8
  store i8 %3071, i8* %33, align 1
  %3072 = lshr i32 %3053, 31
  %3073 = xor i32 %3070, %3072
  %3074 = xor i32 %3070, 1
  %3075 = add nuw nsw i32 %3073, %3074
  %3076 = icmp eq i32 %3075, 2
  %3077 = zext i1 %3076 to i8
  store i8 %3077, i8* %39, align 1
  %3078 = add i64 %3050, 9
  store i64 %3078, i64* %3, align 8
  store i32 %3054, i32* %3052, align 4
  %3079 = load i64, i64* %3, align 8
  %3080 = add i64 %3079, -310
  store i64 %3080, i64* %3, align 8
  br label %block_.L_42b5f6

block_.L_42b744:                                  ; preds = %block_.L_42b5dd
  %3081 = add i32 %2506, -1
  %3082 = zext i32 %3081 to i64
  store i64 %3082, i64* %RAX.i23, align 8
  %3083 = icmp eq i32 %2506, 0
  %3084 = zext i1 %3083 to i8
  store i8 %3084, i8* %14, align 1
  %3085 = and i32 %3081, 255
  %3086 = tail call i32 @llvm.ctpop.i32(i32 %3085)
  %3087 = trunc i32 %3086 to i8
  %3088 = and i8 %3087, 1
  %3089 = xor i8 %3088, 1
  store i8 %3089, i8* %21, align 1
  %3090 = xor i32 %3081, %2506
  %3091 = lshr i32 %3090, 4
  %3092 = trunc i32 %3091 to i8
  %3093 = and i8 %3092, 1
  store i8 %3093, i8* %27, align 1
  %3094 = icmp eq i32 %3081, 0
  %3095 = zext i1 %3094 to i8
  store i8 %3095, i8* %30, align 1
  %3096 = lshr i32 %3081, 31
  %3097 = trunc i32 %3096 to i8
  store i8 %3097, i8* %33, align 1
  %3098 = lshr i32 %2506, 31
  %3099 = xor i32 %3096, %3098
  %3100 = add nuw nsw i32 %3099, %3098
  %3101 = icmp eq i32 %3100, 2
  %3102 = zext i1 %3101 to i8
  store i8 %3102, i8* %39, align 1
  %3103 = add i64 %2462, -72
  %3104 = add i64 %2502, 12
  store i64 %3104, i64* %3, align 8
  %3105 = inttoptr i64 %3103 to i32*
  store i32 %3081, i32* %3105, align 4
  %3106 = bitcast i64* %6 to i64**
  %.pre167 = load i64, i64* %3, align 8
  %3107 = bitcast [32 x %union.VectorReg]* %54 to <4 x i32>*
  %3108 = bitcast [32 x %union.VectorReg]* %54 to <4 x i32>*
  %3109 = bitcast %union.VectorReg* %76 to <4 x i32>*
  %3110 = bitcast %union.VectorReg* %76 to <4 x i32>*
  %3111 = bitcast %union.VectorReg* %76 to <4 x i32>*
  %3112 = bitcast %union.VectorReg* %76 to <4 x i32>*
  %3113 = bitcast %union.VectorReg* %76 to <4 x i32>*
  %3114 = bitcast %union.VectorReg* %76 to <4 x i32>*
  br label %block_.L_42b750

block_.L_42b750:                                  ; preds = %block_.L_42be65, %block_.L_42b744
  %3115 = phi i64 [ %.pre167, %block_.L_42b744 ], [ %5360, %block_.L_42be65 ]
  %MEMORY.18 = phi %struct.Memory* [ %MEMORY.13, %block_.L_42b744 ], [ %call2_42be7f, %block_.L_42be65 ]
  %3116 = load i64, i64* %RBP.i, align 8
  %3117 = add i64 %3116, -72
  %3118 = add i64 %3115, 4
  store i64 %3118, i64* %3, align 8
  %3119 = inttoptr i64 %3117 to i32*
  %3120 = load i32, i32* %3119, align 4
  store i8 0, i8* %14, align 1
  %3121 = and i32 %3120, 255
  %3122 = tail call i32 @llvm.ctpop.i32(i32 %3121)
  %3123 = trunc i32 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = xor i8 %3124, 1
  store i8 %3125, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %3126 = icmp eq i32 %3120, 0
  %3127 = zext i1 %3126 to i8
  store i8 %3127, i8* %30, align 1
  %3128 = lshr i32 %3120, 31
  %3129 = trunc i32 %3128 to i8
  store i8 %3129, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %3130 = icmp ne i8 %3129, 0
  %3131 = or i1 %3126, %3130
  %.v227 = select i1 %3131, i64 1896, i64 10
  %3132 = add i64 %3115, %.v227
  store i64 %3132, i64* %3, align 8
  br i1 %3131, label %block_.L_42beb8, label %block_42b75a

block_42b75a:                                     ; preds = %block_.L_42b750
  %3133 = add i64 %3116, -240
  store i64 %3133, i64* %RDI.i40, align 8
  %3134 = add i64 %3116, -88
  %3135 = add i64 %3132, 11
  store i64 %3135, i64* %3, align 8
  %3136 = inttoptr i64 %3134 to i64*
  %3137 = load i64, i64* %3136, align 8
  store i64 %3137, i64* %RAX.i23, align 8
  %3138 = add i64 %3132, 15
  store i64 %3138, i64* %3, align 8
  %3139 = load i32, i32* %3119, align 4
  %3140 = sext i32 %3139 to i64
  store i64 %3140, i64* %RCX.i774, align 8
  %3141 = shl nsw i64 %3140, 3
  %3142 = add i64 %3141, %3137
  %3143 = add i64 %3132, 19
  store i64 %3143, i64* %3, align 8
  %3144 = inttoptr i64 %3142 to i64*
  %3145 = load i64, i64* %3144, align 8
  store i64 %3145, i64* %RSI.i, align 8
  %3146 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3147 = zext i32 %3146 to i64
  store i64 %3147, i64* %RDX.i689, align 8
  %3148 = add i64 %3132, 158374
  %3149 = add i64 %3132, 31
  %3150 = load i64, i64* %6, align 8
  %3151 = add i64 %3150, -8
  %3152 = inttoptr i64 %3151 to i64*
  store i64 %3149, i64* %3152, align 8
  store i64 %3151, i64* %6, align 8
  store i64 %3148, i64* %3, align 8
  %call2_42b774 = tail call %struct.Memory* @sub_452200.FCopy(%struct.State* nonnull %0, i64 %3148, %struct.Memory* %MEMORY.18)
  %3153 = load i64, i64* %3, align 8
  store i64 0, i64* %RDX.i689, align 8
  store i8 0, i8* %14, align 1
  store i8 1, i8* %21, align 1
  store i8 1, i8* %30, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  store i64 0, i64* %R9.i, align 8
  %3154 = load i64, i64* %RBP.i, align 8
  %3155 = add i64 %3154, -240
  store i64 %3155, i64* %RDI.i40, align 8
  %3156 = add i64 %3154, -32
  %3157 = add i64 %3153, 16
  store i64 %3157, i64* %3, align 8
  %3158 = inttoptr i64 %3156 to i64*
  %3159 = load i64, i64* %3158, align 8
  store i64 %3159, i64* %RSI.i, align 8
  %3160 = add i64 %3153, 20
  store i64 %3160, i64* %3, align 8
  %3161 = load i64, i64* %3158, align 8
  store i64 %3161, i64* %RAX.i23, align 8
  %3162 = add i64 %3161, 6408
  %3163 = add i64 %3153, 26
  store i64 %3163, i64* %3, align 8
  %3164 = inttoptr i64 %3162 to i32*
  %3165 = load i32, i32* %3164, align 4
  %3166 = zext i32 %3165 to i64
  store i64 %3166, i64* %RDX.i689, align 8
  %3167 = add i64 %3153, 30
  store i64 %3167, i64* %3, align 8
  %3168 = load i64, i64* %3158, align 8
  %3169 = add i64 %3168, 6412
  store i64 %3169, i64* %RAX.i23, align 8
  %3170 = icmp ugt i64 %3168, -6413
  %3171 = zext i1 %3170 to i8
  store i8 %3171, i8* %14, align 1
  %3172 = trunc i64 %3169 to i32
  %3173 = and i32 %3172, 255
  %3174 = tail call i32 @llvm.ctpop.i32(i32 %3173)
  %3175 = trunc i32 %3174 to i8
  %3176 = and i8 %3175, 1
  %3177 = xor i8 %3176, 1
  store i8 %3177, i8* %21, align 1
  %3178 = xor i64 %3169, %3168
  %3179 = lshr i64 %3178, 4
  %3180 = trunc i64 %3179 to i8
  %3181 = and i8 %3180, 1
  store i8 %3181, i8* %27, align 1
  %3182 = icmp eq i64 %3169, 0
  %3183 = zext i1 %3182 to i8
  store i8 %3183, i8* %30, align 1
  %3184 = lshr i64 %3169, 63
  %3185 = trunc i64 %3184 to i8
  store i8 %3185, i8* %33, align 1
  %3186 = lshr i64 %3168, 63
  %3187 = xor i64 %3184, %3186
  %3188 = add nuw nsw i64 %3187, %3184
  %3189 = icmp eq i64 %3188, 2
  %3190 = zext i1 %3189 to i8
  store i8 %3190, i8* %39, align 1
  %3191 = add i64 %3153, 40
  store i64 %3191, i64* %3, align 8
  %3192 = load i64, i64* %3158, align 8
  %3193 = add i64 %3192, 7212
  %3194 = icmp ugt i64 %3192, -7213
  %3195 = zext i1 %3194 to i8
  store i8 %3195, i8* %14, align 1
  %3196 = trunc i64 %3193 to i32
  %3197 = and i32 %3196, 255
  %3198 = tail call i32 @llvm.ctpop.i32(i32 %3197)
  %3199 = trunc i32 %3198 to i8
  %3200 = and i8 %3199, 1
  %3201 = xor i8 %3200, 1
  store i8 %3201, i8* %21, align 1
  %3202 = xor i64 %3193, %3192
  %3203 = lshr i64 %3202, 4
  %3204 = trunc i64 %3203 to i8
  %3205 = and i8 %3204, 1
  store i8 %3205, i8* %27, align 1
  %3206 = icmp eq i64 %3193, 0
  %3207 = zext i1 %3206 to i8
  store i8 %3207, i8* %30, align 1
  %3208 = lshr i64 %3193, 63
  %3209 = trunc i64 %3208 to i8
  store i8 %3209, i8* %33, align 1
  %3210 = lshr i64 %3192, 63
  %3211 = xor i64 %3208, %3210
  %3212 = add nuw nsw i64 %3211, %3208
  %3213 = icmp eq i64 %3212, 2
  %3214 = zext i1 %3213 to i8
  store i8 %3214, i8* %39, align 1
  %3215 = add i64 %3154, -536
  %3216 = add i64 %3153, 54
  store i64 %3216, i64* %3, align 8
  %3217 = inttoptr i64 %3215 to i64*
  store i64 %3193, i64* %3217, align 8
  %3218 = load i64, i64* %RAX.i23, align 8
  %3219 = load i64, i64* %3, align 8
  store i64 %3218, i64* %RCX.i774, align 8
  %3220 = load i64, i64* %RBP.i, align 8
  %3221 = add i64 %3220, -536
  %3222 = add i64 %3219, 10
  store i64 %3222, i64* %3, align 8
  %3223 = inttoptr i64 %3221 to i64*
  %3224 = load i64, i64* %3223, align 8
  store i64 %3224, i64* %R8.i836, align 8
  %3225 = add i64 %3219, 56993
  %3226 = add i64 %3219, 15
  %3227 = load i64, i64* %6, align 8
  %3228 = add i64 %3227, -8
  %3229 = inttoptr i64 %3228 to i64*
  store i64 %3226, i64* %3229, align 8
  store i64 %3228, i64* %6, align 8
  store i64 %3225, i64* %3, align 8
  %call2_42b7b9 = tail call %struct.Memory* @sub_439650.P7PriorifyEmissionVector(%struct.State* nonnull %0, i64 %3225, %struct.Memory* %MEMORY.18)
  %3230 = load i64, i64* %RBP.i, align 8
  %3231 = add i64 %3230, -80
  %3232 = load i64, i64* %3, align 8
  %3233 = add i64 %3232, 7
  store i64 %3233, i64* %3, align 8
  %3234 = inttoptr i64 %3231 to i32*
  store i32 0, i32* %3234, align 4
  %.pre168 = load i64, i64* %3, align 8
  br label %block_.L_42b7c5

block_.L_42b7c5:                                  ; preds = %block_.L_42b84c, %block_42b75a
  %3235 = phi i64 [ %.pre168, %block_42b75a ], [ %3450, %block_.L_42b84c ]
  %MEMORY.19 = phi %struct.Memory* [ %MEMORY.18, %block_42b75a ], [ %MEMORY.20, %block_.L_42b84c ]
  %3236 = load i64, i64* %RBP.i, align 8
  %3237 = add i64 %3236, -80
  %3238 = add i64 %3235, 3
  store i64 %3238, i64* %3, align 8
  %3239 = inttoptr i64 %3237 to i32*
  %3240 = load i32, i32* %3239, align 4
  %3241 = zext i32 %3240 to i64
  store i64 %3241, i64* %RAX.i23, align 8
  %3242 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %3243 = sub i32 %3240, %3242
  %3244 = icmp ult i32 %3240, %3242
  %3245 = zext i1 %3244 to i8
  store i8 %3245, i8* %14, align 1
  %3246 = and i32 %3243, 255
  %3247 = tail call i32 @llvm.ctpop.i32(i32 %3246)
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = xor i8 %3249, 1
  store i8 %3250, i8* %21, align 1
  %3251 = xor i32 %3242, %3240
  %3252 = xor i32 %3251, %3243
  %3253 = lshr i32 %3252, 4
  %3254 = trunc i32 %3253 to i8
  %3255 = and i8 %3254, 1
  store i8 %3255, i8* %27, align 1
  %3256 = icmp eq i32 %3243, 0
  %3257 = zext i1 %3256 to i8
  store i8 %3257, i8* %30, align 1
  %3258 = lshr i32 %3243, 31
  %3259 = trunc i32 %3258 to i8
  store i8 %3259, i8* %33, align 1
  %3260 = lshr i32 %3240, 31
  %3261 = lshr i32 %3242, 31
  %3262 = xor i32 %3261, %3260
  %3263 = xor i32 %3258, %3260
  %3264 = add nuw nsw i32 %3263, %3262
  %3265 = icmp eq i32 %3264, 2
  %3266 = zext i1 %3265 to i8
  store i8 %3266, i8* %39, align 1
  %3267 = icmp ne i8 %3259, 0
  %3268 = xor i1 %3267, %3265
  %.v228 = select i1 %3268, i64 16, i64 174
  %3269 = add i64 %3235, %.v228
  %3270 = add i64 %3269, 3
  store i64 %3270, i64* %3, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %3107, align 1
  br i1 %3268, label %block_42b7d5, label %block_.L_42b873

block_42b7d5:                                     ; preds = %block_.L_42b7c5
  %3271 = add i64 %3269, 7
  store i64 %3271, i64* %3, align 8
  %3272 = load i32, i32* %3239, align 4
  %3273 = sext i32 %3272 to i64
  store i64 %3273, i64* %RAX.i23, align 8
  %3274 = shl nsw i64 %3273, 2
  %3275 = add i64 %3236, -240
  %3276 = add i64 %3275, %3274
  %3277 = add i64 %3269, 16
  store i64 %3277, i64* %3, align 8
  %3278 = inttoptr i64 %3276 to i32*
  %3279 = load i32, i32* %3278, align 4
  store i32 %3279, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %3280 = add i64 %3236, -40
  %3281 = add i64 %3269, 20
  store i64 %3281, i64* %3, align 8
  %3282 = inttoptr i64 %3280 to i64*
  %3283 = load i64, i64* %3282, align 8
  store i64 %3283, i64* %RAX.i23, align 8
  %3284 = add i64 %3269, 24
  store i64 %3284, i64* %3, align 8
  %3285 = load i32, i32* %3239, align 4
  %3286 = sext i32 %3285 to i64
  store i64 %3286, i64* %RCX.i774, align 8
  %3287 = shl nsw i64 %3286, 2
  %3288 = add i64 %3287, %3283
  %3289 = add i64 %3269, 29
  store i64 %3289, i64* %3, align 8
  %3290 = load <2 x float>, <2 x float>* %81, align 1
  %3291 = load <2 x i32>, <2 x i32>* %1161, align 1
  %3292 = inttoptr i64 %3288 to float*
  %3293 = load float, float* %3292, align 4
  %3294 = extractelement <2 x float> %3290, i32 0
  %3295 = fdiv float %3294, %3293
  store float %3295, float* %978, align 1
  %3296 = bitcast <2 x float> %3290 to <2 x i32>
  %3297 = extractelement <2 x i32> %3296, i32 1
  store i32 %3297, i32* %1162, align 1
  %3298 = extractelement <2 x i32> %3291, i32 0
  store i32 %3298, i32* %1163, align 1
  %3299 = extractelement <2 x i32> %3291, i32 1
  store i32 %3299, i32* %1164, align 1
  %3300 = add i64 %3269, 32
  store i64 %3300, i64* %3, align 8
  %3301 = load <2 x float>, <2 x float>* %81, align 1
  %3302 = extractelement <2 x float> %3301, i32 0
  %3303 = load <2 x float>, <2 x float>* %59, align 1
  %3304 = extractelement <2 x float> %3303, i32 0
  %3305 = fcmp uno float %3302, %3304
  br i1 %3305, label %3306, label %3316

; <label>:3306:                                   ; preds = %block_42b7d5
  %3307 = fadd float %3302, %3304
  %3308 = bitcast float %3307 to i32
  %3309 = and i32 %3308, 2143289344
  %3310 = icmp eq i32 %3309, 2139095040
  %3311 = and i32 %3308, 4194303
  %3312 = icmp ne i32 %3311, 0
  %3313 = and i1 %3310, %3312
  br i1 %3313, label %3314, label %3322

; <label>:3314:                                   ; preds = %3306
  %3315 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3300, %struct.Memory* %MEMORY.19)
  %.pre183 = load i64, i64* %3, align 8
  %.pre184 = load i8, i8* %14, align 1
  %.pre185 = load i8, i8* %30, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1302

; <label>:3316:                                   ; preds = %block_42b7d5
  %3317 = fcmp ogt float %3302, %3304
  br i1 %3317, label %3322, label %3318

; <label>:3318:                                   ; preds = %3316
  %3319 = fcmp olt float %3302, %3304
  br i1 %3319, label %3322, label %3320

; <label>:3320:                                   ; preds = %3318
  %3321 = fcmp oeq float %3302, %3304
  br i1 %3321, label %3322, label %3326

; <label>:3322:                                   ; preds = %3320, %3318, %3316, %3306
  %3323 = phi i8 [ 0, %3316 ], [ 0, %3318 ], [ 1, %3320 ], [ 1, %3306 ]
  %3324 = phi i8 [ 0, %3316 ], [ 0, %3318 ], [ 0, %3320 ], [ 1, %3306 ]
  %3325 = phi i8 [ 0, %3316 ], [ 1, %3318 ], [ 0, %3320 ], [ 1, %3306 ]
  store i8 %3323, i8* %30, align 1
  store i8 %3324, i8* %21, align 1
  store i8 %3325, i8* %14, align 1
  br label %3326

; <label>:3326:                                   ; preds = %3322, %3320
  %3327 = phi i8 [ %3323, %3322 ], [ %3257, %3320 ]
  %3328 = phi i8 [ %3325, %3322 ], [ %3245, %3320 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit1302

routine_ucomiss__xmm0___xmm1.exit1302:            ; preds = %3326, %3314
  %3329 = phi i8 [ %.pre185, %3314 ], [ %3327, %3326 ]
  %3330 = phi i8 [ %.pre184, %3314 ], [ %3328, %3326 ]
  %3331 = phi i64 [ %.pre183, %3314 ], [ %3300, %3326 ]
  %3332 = phi %struct.Memory* [ %3315, %3314 ], [ %MEMORY.19, %3326 ]
  %3333 = or i8 %3329, %3330
  %3334 = icmp ne i8 %3333, 0
  %.v238 = select i1 %3334, i64 66, i64 6
  %3335 = add i64 %3331, %.v238
  store i64 %3335, i64* %3, align 8
  br i1 %3334, label %block_.L_42b837, label %block_42b7fb

block_42b7fb:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit1302
  %3336 = load i64, i64* %RBP.i, align 8
  %3337 = add i64 %3336, -80
  %3338 = add i64 %3335, 4
  store i64 %3338, i64* %3, align 8
  %3339 = inttoptr i64 %3337 to i32*
  %3340 = load i32, i32* %3339, align 4
  %3341 = sext i32 %3340 to i64
  store i64 %3341, i64* %RAX.i23, align 8
  %3342 = shl nsw i64 %3341, 2
  %3343 = add i64 %3336, -240
  %3344 = add i64 %3343, %3342
  %3345 = add i64 %3335, 13
  store i64 %3345, i64* %3, align 8
  %3346 = inttoptr i64 %3344 to i32*
  %3347 = load i32, i32* %3346, align 4
  store i32 %3347, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %3348 = add i64 %3336, -40
  %3349 = add i64 %3335, 17
  store i64 %3349, i64* %3, align 8
  %3350 = inttoptr i64 %3348 to i64*
  %3351 = load i64, i64* %3350, align 8
  store i64 %3351, i64* %RAX.i23, align 8
  %3352 = add i64 %3335, 21
  store i64 %3352, i64* %3, align 8
  %3353 = load i32, i32* %3339, align 4
  %3354 = sext i32 %3353 to i64
  store i64 %3354, i64* %RCX.i774, align 8
  %3355 = shl nsw i64 %3354, 2
  %3356 = add i64 %3355, %3351
  %3357 = add i64 %3335, 26
  store i64 %3357, i64* %3, align 8
  %3358 = load <2 x float>, <2 x float>* %59, align 1
  %3359 = load <2 x i32>, <2 x i32>* %1072, align 1
  %3360 = inttoptr i64 %3356 to float*
  %3361 = load float, float* %3360, align 4
  %3362 = extractelement <2 x float> %3358, i32 0
  %3363 = fdiv float %3362, %3361
  store float %3363, float* %1074, align 1
  %3364 = bitcast <2 x float> %3358 to <2 x i32>
  %3365 = extractelement <2 x i32> %3364, i32 1
  store i32 %3365, i32* %306, align 1
  %3366 = extractelement <2 x i32> %3359, i32 0
  store i32 %3366, i32* %307, align 1
  %3367 = extractelement <2 x i32> %3359, i32 1
  store i32 %3367, i32* %309, align 1
  %3368 = load <2 x float>, <2 x float>* %59, align 1
  %3369 = extractelement <2 x float> %3368, i32 0
  %3370 = fpext float %3369 to double
  store double %3370, double* %.pre-phi, align 1
  %3371 = add i64 %3335, -172811
  %3372 = add i64 %3335, 35
  %3373 = load i64, i64* %6, align 8
  %3374 = add i64 %3373, -8
  %3375 = inttoptr i64 %3374 to i64*
  store i64 %3372, i64* %3375, align 8
  store i64 %3374, i64* %6, align 8
  store i64 %3371, i64* %3, align 8
  %3376 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %3332)
  %3377 = load i64, i64* %3, align 8
  %3378 = add i64 %3377, ptrtoint (%G_0x290ba__rip__type* @G_0x290ba__rip_ to i64)
  %3379 = add i64 %3377, 8
  store i64 %3379, i64* %3, align 8
  %3380 = inttoptr i64 %3378 to i64*
  %3381 = load i64, i64* %3380, align 8
  store i64 %3381, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %3382 = load double, double* %.pre-phi, align 1
  %.cast76 = bitcast i64 %3381 to double
  %3383 = fmul double %.cast76, %3382
  store double %3383, double* %.pre-phi, align 1
  %3384 = load i64, i64* %RBP.i, align 8
  %3385 = add i64 %3384, -544
  %3386 = add i64 %3377, 20
  store i64 %3386, i64* %3, align 8
  %3387 = inttoptr i64 %3385 to double*
  store double %3383, double* %3387, align 8
  %3388 = load i64, i64* %3, align 8
  %3389 = add i64 %3388, 26
  br label %block_.L_42b84c

block_.L_42b837:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit1302
  %3390 = add i64 %3335, ptrtoint (%G_0x29099__rip__type* @G_0x29099__rip_ to i64)
  %3391 = add i64 %3335, 8
  store i64 %3391, i64* %3, align 8
  %3392 = inttoptr i64 %3390 to i64*
  %3393 = load i64, i64* %3392, align 8
  store i64 %3393, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %3394 = load i64, i64* %RBP.i, align 8
  %3395 = add i64 %3394, -544
  %3396 = add i64 %3335, 16
  store i64 %3396, i64* %3, align 8
  %3397 = inttoptr i64 %3395 to i64*
  store i64 %3393, i64* %3397, align 8
  %3398 = load i64, i64* %3, align 8
  %3399 = add i64 %3398, 5
  store i64 %3399, i64* %3, align 8
  br label %block_.L_42b84c

block_.L_42b84c:                                  ; preds = %block_.L_42b837, %block_42b7fb
  %storemerge77 = phi i64 [ %3389, %block_42b7fb ], [ %3399, %block_.L_42b837 ]
  %MEMORY.20 = phi %struct.Memory* [ %3376, %block_42b7fb ], [ %3332, %block_.L_42b837 ]
  %3400 = load i64, i64* %RBP.i, align 8
  %3401 = add i64 %3400, -544
  %3402 = add i64 %storemerge77, 8
  store i64 %3402, i64* %3, align 8
  %3403 = inttoptr i64 %3401 to i64*
  %3404 = load i64, i64* %3403, align 8
  store i64 %3404, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %.cast78 = bitcast i64 %3404 to <2 x i32>
  %.cast79 = bitcast i64 %3404 to double
  %3405 = fptrunc double %.cast79 to float
  store float %3405, float* %1074, align 1
  %3406 = extractelement <2 x i32> %.cast78, i32 1
  store i32 %3406, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %3407 = add i64 %3400, -80
  %3408 = add i64 %storemerge77, 16
  store i64 %3408, i64* %3, align 8
  %3409 = inttoptr i64 %3407 to i32*
  %3410 = load i32, i32* %3409, align 4
  %3411 = sext i32 %3410 to i64
  store i64 %3411, i64* %RAX.i23, align 8
  %3412 = shl nsw i64 %3411, 2
  %3413 = add i64 %3400, -240
  %3414 = add i64 %3413, %3412
  %3415 = add i64 %storemerge77, 25
  store i64 %3415, i64* %3, align 8
  %3416 = load <2 x float>, <2 x float>* %59, align 1
  %3417 = extractelement <2 x float> %3416, i32 0
  %3418 = inttoptr i64 %3414 to float*
  store float %3417, float* %3418, align 4
  %3419 = load i64, i64* %RBP.i, align 8
  %3420 = add i64 %3419, -80
  %3421 = load i64, i64* %3, align 8
  %3422 = add i64 %3421, 3
  store i64 %3422, i64* %3, align 8
  %3423 = inttoptr i64 %3420 to i32*
  %3424 = load i32, i32* %3423, align 4
  %3425 = add i32 %3424, 1
  %3426 = zext i32 %3425 to i64
  store i64 %3426, i64* %RAX.i23, align 8
  %3427 = icmp eq i32 %3424, -1
  %3428 = icmp eq i32 %3425, 0
  %3429 = or i1 %3427, %3428
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %14, align 1
  %3431 = and i32 %3425, 255
  %3432 = tail call i32 @llvm.ctpop.i32(i32 %3431)
  %3433 = trunc i32 %3432 to i8
  %3434 = and i8 %3433, 1
  %3435 = xor i8 %3434, 1
  store i8 %3435, i8* %21, align 1
  %3436 = xor i32 %3425, %3424
  %3437 = lshr i32 %3436, 4
  %3438 = trunc i32 %3437 to i8
  %3439 = and i8 %3438, 1
  store i8 %3439, i8* %27, align 1
  %3440 = zext i1 %3428 to i8
  store i8 %3440, i8* %30, align 1
  %3441 = lshr i32 %3425, 31
  %3442 = trunc i32 %3441 to i8
  store i8 %3442, i8* %33, align 1
  %3443 = lshr i32 %3424, 31
  %3444 = xor i32 %3441, %3443
  %3445 = add nuw nsw i32 %3444, %3441
  %3446 = icmp eq i32 %3445, 2
  %3447 = zext i1 %3446 to i8
  store i8 %3447, i8* %39, align 1
  %3448 = add i64 %3421, 9
  store i64 %3448, i64* %3, align 8
  store i32 %3425, i32* %3423, align 4
  %3449 = load i64, i64* %3, align 8
  %3450 = add i64 %3449, -169
  store i64 %3450, i64* %3, align 8
  br label %block_.L_42b7c5

block_.L_42b873:                                  ; preds = %block_.L_42b7c5
  %3451 = add i64 %3236, -400
  store i64 %3451, i64* %RDI.i40, align 8
  %3452 = zext i32 %3242 to i64
  store i64 %3452, i64* %RSI.i, align 8
  %3453 = add i64 %3269, 157389
  %3454 = add i64 %3269, 22
  %3455 = load i64, i64* %6, align 8
  %3456 = add i64 %3455, -8
  %3457 = inttoptr i64 %3456 to i64*
  store i64 %3454, i64* %3457, align 8
  store i64 %3456, i64* %6, align 8
  store i64 %3453, i64* %3, align 8
  %call2_42b884 = tail call %struct.Memory* @sub_451f40.FSet(%struct.State* nonnull %0, i64 %3453, %struct.Memory* %MEMORY.19)
  %3458 = load i64, i64* %RBP.i, align 8
  %3459 = add i64 %3458, -68
  %3460 = load i64, i64* %3, align 8
  %3461 = add i64 %3460, 7
  store i64 %3461, i64* %3, align 8
  %3462 = inttoptr i64 %3459 to i32*
  store i32 0, i32* %3462, align 4
  %.pre169 = load i64, i64* %3, align 8
  br label %block_.L_42b890

block_.L_42b890:                                  ; preds = %block_42b8a0, %block_.L_42b873
  %3463 = phi i64 [ %3547, %block_42b8a0 ], [ %.pre169, %block_.L_42b873 ]
  %3464 = load i64, i64* %RBP.i, align 8
  %3465 = add i64 %3464, -68
  %3466 = add i64 %3463, 3
  store i64 %3466, i64* %3, align 8
  %3467 = inttoptr i64 %3465 to i32*
  %3468 = load i32, i32* %3467, align 4
  %3469 = zext i32 %3468 to i64
  store i64 %3469, i64* %RAX.i23, align 8
  %3470 = add i64 %3464, -8
  %3471 = add i64 %3463, 7
  store i64 %3471, i64* %3, align 8
  %3472 = inttoptr i64 %3470 to i64*
  %3473 = load i64, i64* %3472, align 8
  store i64 %3473, i64* %RCX.i774, align 8
  %3474 = add i64 %3473, 28
  %3475 = add i64 %3463, 10
  store i64 %3475, i64* %3, align 8
  %3476 = inttoptr i64 %3474 to i32*
  %3477 = load i32, i32* %3476, align 4
  %3478 = sub i32 %3468, %3477
  %3479 = icmp ult i32 %3468, %3477
  %3480 = zext i1 %3479 to i8
  store i8 %3480, i8* %14, align 1
  %3481 = and i32 %3478, 255
  %3482 = tail call i32 @llvm.ctpop.i32(i32 %3481)
  %3483 = trunc i32 %3482 to i8
  %3484 = and i8 %3483, 1
  %3485 = xor i8 %3484, 1
  store i8 %3485, i8* %21, align 1
  %3486 = xor i32 %3477, %3468
  %3487 = xor i32 %3486, %3478
  %3488 = lshr i32 %3487, 4
  %3489 = trunc i32 %3488 to i8
  %3490 = and i8 %3489, 1
  store i8 %3490, i8* %27, align 1
  %3491 = icmp eq i32 %3478, 0
  %3492 = zext i1 %3491 to i8
  store i8 %3492, i8* %30, align 1
  %3493 = lshr i32 %3478, 31
  %3494 = trunc i32 %3493 to i8
  store i8 %3494, i8* %33, align 1
  %3495 = lshr i32 %3468, 31
  %3496 = lshr i32 %3477, 31
  %3497 = xor i32 %3496, %3495
  %3498 = xor i32 %3493, %3495
  %3499 = add nuw nsw i32 %3498, %3497
  %3500 = icmp eq i32 %3499, 2
  %3501 = zext i1 %3500 to i8
  store i8 %3501, i8* %39, align 1
  %3502 = icmp ne i8 %3494, 0
  %3503 = xor i1 %3502, %3500
  %.v229 = select i1 %3503, i64 16, i64 48
  %3504 = add i64 %3463, %.v229
  store i64 %3504, i64* %3, align 8
  br i1 %3503, label %block_42b8a0, label %block_.L_42b8c0

block_42b8a0:                                     ; preds = %block_.L_42b890
  %3505 = add i64 %3464, -432
  %3506 = add i64 %3504, 7
  store i64 %3506, i64* %3, align 8
  %3507 = inttoptr i64 %3505 to i64*
  %3508 = load i64, i64* %3507, align 8
  store i64 %3508, i64* %RAX.i23, align 8
  %3509 = add i64 %3504, 11
  store i64 %3509, i64* %3, align 8
  %3510 = load i32, i32* %3467, align 4
  %3511 = sext i32 %3510 to i64
  store i64 %3511, i64* %RCX.i774, align 8
  %3512 = shl nsw i64 %3511, 2
  %3513 = add i64 %3512, %3508
  %3514 = add i64 %3504, 18
  store i64 %3514, i64* %3, align 8
  %3515 = inttoptr i64 %3513 to i32*
  store i32 0, i32* %3515, align 4
  %3516 = load i64, i64* %RBP.i, align 8
  %3517 = add i64 %3516, -68
  %3518 = load i64, i64* %3, align 8
  %3519 = add i64 %3518, 3
  store i64 %3519, i64* %3, align 8
  %3520 = inttoptr i64 %3517 to i32*
  %3521 = load i32, i32* %3520, align 4
  %3522 = add i32 %3521, 1
  %3523 = zext i32 %3522 to i64
  store i64 %3523, i64* %RAX.i23, align 8
  %3524 = icmp eq i32 %3521, -1
  %3525 = icmp eq i32 %3522, 0
  %3526 = or i1 %3524, %3525
  %3527 = zext i1 %3526 to i8
  store i8 %3527, i8* %14, align 1
  %3528 = and i32 %3522, 255
  %3529 = tail call i32 @llvm.ctpop.i32(i32 %3528)
  %3530 = trunc i32 %3529 to i8
  %3531 = and i8 %3530, 1
  %3532 = xor i8 %3531, 1
  store i8 %3532, i8* %21, align 1
  %3533 = xor i32 %3522, %3521
  %3534 = lshr i32 %3533, 4
  %3535 = trunc i32 %3534 to i8
  %3536 = and i8 %3535, 1
  store i8 %3536, i8* %27, align 1
  %3537 = zext i1 %3525 to i8
  store i8 %3537, i8* %30, align 1
  %3538 = lshr i32 %3522, 31
  %3539 = trunc i32 %3538 to i8
  store i8 %3539, i8* %33, align 1
  %3540 = lshr i32 %3521, 31
  %3541 = xor i32 %3538, %3540
  %3542 = add nuw nsw i32 %3541, %3538
  %3543 = icmp eq i32 %3542, 2
  %3544 = zext i1 %3543 to i8
  store i8 %3544, i8* %39, align 1
  %3545 = add i64 %3518, 9
  store i64 %3545, i64* %3, align 8
  store i32 %3522, i32* %3520, align 4
  %3546 = load i64, i64* %3, align 8
  %3547 = add i64 %3546, -43
  store i64 %3547, i64* %3, align 8
  br label %block_.L_42b890

block_.L_42b8c0:                                  ; preds = %block_.L_42b890
  %3548 = add i64 %3504, ptrtoint (%G_0x28e9c__rip__type* @G_0x28e9c__rip_ to i64)
  %3549 = add i64 %3504, 8
  store i64 %3549, i64* %3, align 8
  %3550 = inttoptr i64 %3548 to i32*
  %3551 = load i32, i32* %3550, align 4
  store i32 %3551, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %3552 = add i64 %3464, -408
  %3553 = add i64 %3504, 15
  store i64 %3553, i64* %3, align 8
  %3554 = inttoptr i64 %3552 to i64*
  %3555 = load i64, i64* %3554, align 8
  store i64 %3555, i64* %RAX.i23, align 8
  %3556 = add i64 %3464, -72
  %3557 = add i64 %3504, 19
  store i64 %3557, i64* %3, align 8
  %3558 = inttoptr i64 %3556 to i32*
  %3559 = load i32, i32* %3558, align 4
  %3560 = sext i32 %3559 to i64
  store i64 %3560, i64* %RCX.i774, align 8
  %3561 = shl nsw i64 %3560, 2
  %3562 = add i64 %3561, %3555
  %3563 = add i64 %3504, 24
  store i64 %3563, i64* %3, align 8
  %3564 = load <2 x float>, <2 x float>* %59, align 1
  %3565 = extractelement <2 x float> %3564, i32 0
  %3566 = inttoptr i64 %3562 to float*
  store float %3565, float* %3566, align 4
  %3567 = load i64, i64* %RBP.i, align 8
  %3568 = add i64 %3567, -72
  %3569 = load i64, i64* %3, align 8
  %3570 = add i64 %3569, 3
  store i64 %3570, i64* %3, align 8
  %3571 = inttoptr i64 %3568 to i32*
  %3572 = load i32, i32* %3571, align 4
  %3573 = add i32 %3572, 1
  %3574 = zext i32 %3573 to i64
  store i64 %3574, i64* %RDX.i689, align 8
  %3575 = icmp eq i32 %3572, -1
  %3576 = icmp eq i32 %3573, 0
  %3577 = or i1 %3575, %3576
  %3578 = zext i1 %3577 to i8
  store i8 %3578, i8* %14, align 1
  %3579 = and i32 %3573, 255
  %3580 = tail call i32 @llvm.ctpop.i32(i32 %3579)
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  %3583 = xor i8 %3582, 1
  store i8 %3583, i8* %21, align 1
  %3584 = xor i32 %3573, %3572
  %3585 = lshr i32 %3584, 4
  %3586 = trunc i32 %3585 to i8
  %3587 = and i8 %3586, 1
  store i8 %3587, i8* %27, align 1
  %3588 = zext i1 %3576 to i8
  store i8 %3588, i8* %30, align 1
  %3589 = lshr i32 %3573, 31
  %3590 = trunc i32 %3589 to i8
  store i8 %3590, i8* %33, align 1
  %3591 = lshr i32 %3572, 31
  %3592 = xor i32 %3589, %3591
  %3593 = add nuw nsw i32 %3592, %3589
  %3594 = icmp eq i32 %3593, 2
  %3595 = zext i1 %3594 to i8
  store i8 %3595, i8* %39, align 1
  %3596 = add i64 %3567, -76
  %3597 = add i64 %3569, 9
  store i64 %3597, i64* %3, align 8
  %3598 = inttoptr i64 %3596 to i32*
  store i32 %3573, i32* %3598, align 4
  %.pre170 = load i64, i64* %3, align 8
  br label %block_.L_42b8e1

block_.L_42b8e1:                                  ; preds = %block_.L_42be52, %block_.L_42b8c0
  %3599 = phi i64 [ %.pre170, %block_.L_42b8c0 ], [ %5250, %block_.L_42be52 ]
  %MEMORY.22 = phi %struct.Memory* [ %call2_42b884, %block_.L_42b8c0 ], [ %call2_42bd56, %block_.L_42be52 ]
  %3600 = load i64, i64* %RBP.i, align 8
  %3601 = add i64 %3600, -76
  %3602 = add i64 %3599, 3
  store i64 %3602, i64* %3, align 8
  %3603 = inttoptr i64 %3601 to i32*
  %3604 = load i32, i32* %3603, align 4
  %3605 = zext i32 %3604 to i64
  store i64 %3605, i64* %RAX.i23, align 8
  %3606 = add i64 %3600, -440
  %3607 = add i64 %3599, 9
  store i64 %3607, i64* %3, align 8
  %3608 = inttoptr i64 %3606 to i32*
  %3609 = load i32, i32* %3608, align 4
  %3610 = sub i32 %3604, %3609
  %3611 = icmp ult i32 %3604, %3609
  %3612 = zext i1 %3611 to i8
  store i8 %3612, i8* %14, align 1
  %3613 = and i32 %3610, 255
  %3614 = tail call i32 @llvm.ctpop.i32(i32 %3613)
  %3615 = trunc i32 %3614 to i8
  %3616 = and i8 %3615, 1
  %3617 = xor i8 %3616, 1
  store i8 %3617, i8* %21, align 1
  %3618 = xor i32 %3609, %3604
  %3619 = xor i32 %3618, %3610
  %3620 = lshr i32 %3619, 4
  %3621 = trunc i32 %3620 to i8
  %3622 = and i8 %3621, 1
  store i8 %3622, i8* %27, align 1
  %3623 = icmp eq i32 %3610, 0
  %3624 = zext i1 %3623 to i8
  store i8 %3624, i8* %30, align 1
  %3625 = lshr i32 %3610, 31
  %3626 = trunc i32 %3625 to i8
  store i8 %3626, i8* %33, align 1
  %3627 = lshr i32 %3604, 31
  %3628 = lshr i32 %3609, 31
  %3629 = xor i32 %3628, %3627
  %3630 = xor i32 %3625, %3627
  %3631 = add nuw nsw i32 %3630, %3629
  %3632 = icmp eq i32 %3631, 2
  %3633 = zext i1 %3632 to i8
  store i8 %3633, i8* %39, align 1
  %3634 = icmp ne i8 %3626, 0
  %3635 = xor i1 %3634, %3632
  %.demorgan = or i1 %3623, %3635
  %.v230 = select i1 %.demorgan, i64 15, i64 1412
  %3636 = add i64 %3599, %.v230
  store i64 %3636, i64* %3, align 8
  br i1 %.demorgan, label %block_42b8f0, label %block_.L_42be65.loopexit

block_42b8f0:                                     ; preds = %block_.L_42b8e1
  %3637 = add i64 %3600, -128
  store i64 %3637, i64* %RAX.i23, align 8
  %3638 = add i64 %3600, -8
  %3639 = add i64 %3636, 8
  store i64 %3639, i64* %3, align 8
  %3640 = inttoptr i64 %3638 to i64*
  %3641 = load i64, i64* %3640, align 8
  store i64 %3641, i64* %RCX.i774, align 8
  %3642 = add i64 %3636, 11
  store i64 %3642, i64* %3, align 8
  %3643 = inttoptr i64 %3641 to i64*
  %3644 = load i64, i64* %3643, align 8
  store i64 %3644, i64* %RDI.i40, align 8
  %3645 = add i64 %3636, 15
  store i64 %3645, i64* %3, align 8
  %3646 = load i64, i64* %3640, align 8
  store i64 %3646, i64* %RCX.i774, align 8
  %3647 = add i64 %3646, 28
  %3648 = add i64 %3636, 18
  store i64 %3648, i64* %3, align 8
  %3649 = inttoptr i64 %3647 to i32*
  %3650 = load i32, i32* %3649, align 4
  %3651 = zext i32 %3650 to i64
  store i64 %3651, i64* %RSI.i, align 8
  %3652 = add i64 %3600, -432
  %3653 = add i64 %3636, 25
  store i64 %3653, i64* %3, align 8
  %3654 = inttoptr i64 %3652 to i64*
  %3655 = load i64, i64* %3654, align 8
  store i64 %3655, i64* %RDX.i689, align 8
  %3656 = add i64 %3600, -72
  %3657 = add i64 %3636, 28
  store i64 %3657, i64* %3, align 8
  %3658 = inttoptr i64 %3656 to i32*
  %3659 = load i32, i32* %3658, align 4
  %3660 = zext i32 %3659 to i64
  store i64 %3660, i64* %RCX.i774, align 8
  %3661 = add i64 %3636, 32
  store i64 %3661, i64* %3, align 8
  %3662 = load i32, i32* %3603, align 4
  %3663 = zext i32 %3662 to i64
  store i64 %3663, i64* %R8.i836, align 8
  %3664 = add i64 %3636, 36
  store i64 %3664, i64* %3, align 8
  %3665 = load i64, i64* %3640, align 8
  store i64 %3665, i64* %R9.i, align 8
  %3666 = add i64 %3665, 16
  %3667 = add i64 %3636, 40
  store i64 %3667, i64* %3, align 8
  %3668 = inttoptr i64 %3666 to i64*
  %3669 = load i64, i64* %3668, align 8
  store i64 %3669, i64* %R9.i, align 8
  %3670 = load i64*, i64** %3106, align 8
  %3671 = add i64 %3636, 44
  store i64 %3671, i64* %3, align 8
  store i64 %3637, i64* %3670, align 8
  %3672 = load i64, i64* %3, align 8
  %3673 = add i64 %3672, 2356
  %3674 = add i64 %3672, 5
  %3675 = load i64, i64* %6, align 8
  %3676 = add i64 %3675, -8
  %3677 = inttoptr i64 %3676 to i64*
  store i64 %3674, i64* %3677, align 8
  store i64 %3676, i64* %6, align 8
  store i64 %3673, i64* %3, align 8
  %call2_42b91c = tail call %struct.Memory* @sub_42c250.build_cij(%struct.State* nonnull %0, i64 %3673, %struct.Memory* %MEMORY.22)
  %3678 = load i64, i64* %RBP.i, align 8
  %3679 = add i64 %3678, -468
  %3680 = load i32, i32* %EAX.i2468, align 4
  %3681 = load i64, i64* %3, align 8
  %3682 = add i64 %3681, 6
  store i64 %3682, i64* %3, align 8
  %3683 = inttoptr i64 %3679 to i32*
  store i32 %3680, i32* %3683, align 4
  %3684 = load i64, i64* %RBP.i, align 8
  %3685 = add i64 %3684, -468
  %3686 = load i64, i64* %3, align 8
  %3687 = add i64 %3686, 7
  store i64 %3687, i64* %3, align 8
  %3688 = inttoptr i64 %3685 to i32*
  %3689 = load i32, i32* %3688, align 4
  %3690 = add i32 %3689, 1
  %3691 = icmp ne i32 %3689, -1
  %3692 = zext i1 %3691 to i8
  store i8 %3692, i8* %14, align 1
  %3693 = and i32 %3690, 255
  %3694 = tail call i32 @llvm.ctpop.i32(i32 %3693)
  %3695 = trunc i32 %3694 to i8
  %3696 = and i8 %3695, 1
  %3697 = xor i8 %3696, 1
  store i8 %3697, i8* %21, align 1
  %3698 = xor i32 %3689, 16
  %3699 = xor i32 %3698, %3690
  %3700 = lshr i32 %3699, 4
  %3701 = trunc i32 %3700 to i8
  %3702 = and i8 %3701, 1
  store i8 %3702, i8* %27, align 1
  %3703 = icmp eq i32 %3690, 0
  %3704 = zext i1 %3703 to i8
  store i8 %3704, i8* %30, align 1
  %3705 = lshr i32 %3690, 31
  %3706 = trunc i32 %3705 to i8
  store i8 %3706, i8* %33, align 1
  %3707 = lshr i32 %3689, 31
  %3708 = xor i32 %3707, 1
  %3709 = xor i32 %3705, %3707
  %3710 = add nuw nsw i32 %3709, %3708
  %3711 = icmp eq i32 %3710, 2
  %3712 = zext i1 %3711 to i8
  store i8 %3712, i8* %39, align 1
  %.v231 = select i1 %3703, i64 13, i64 18
  %3713 = add i64 %3686, %.v231
  store i64 %3713, i64* %3, align 8
  br i1 %3703, label %block_42b934, label %block_.L_42b939

block_42b934:                                     ; preds = %block_42b8f0
  %3714 = add i64 %3713, 1329
  store i64 %3714, i64* %3, align 8
  br label %block_.L_42be65

block_.L_42b939:                                  ; preds = %block_42b8f0
  %3715 = add i64 %3713, 7
  store i64 %3715, i64* %3, align 8
  %3716 = load i32, i32* %3688, align 4
  %3717 = add i32 %3716, -1
  %3718 = icmp eq i32 %3716, 0
  %3719 = zext i1 %3718 to i8
  store i8 %3719, i8* %14, align 1
  %3720 = and i32 %3717, 255
  %3721 = tail call i32 @llvm.ctpop.i32(i32 %3720)
  %3722 = trunc i32 %3721 to i8
  %3723 = and i8 %3722, 1
  %3724 = xor i8 %3723, 1
  store i8 %3724, i8* %21, align 1
  %3725 = xor i32 %3717, %3716
  %3726 = lshr i32 %3725, 4
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  store i8 %3728, i8* %27, align 1
  %3729 = icmp eq i32 %3717, 0
  %3730 = zext i1 %3729 to i8
  store i8 %3730, i8* %30, align 1
  %3731 = lshr i32 %3717, 31
  %3732 = trunc i32 %3731 to i8
  store i8 %3732, i8* %33, align 1
  %3733 = lshr i32 %3716, 31
  %3734 = xor i32 %3731, %3733
  %3735 = add nuw nsw i32 %3734, %3733
  %3736 = icmp eq i32 %3735, 2
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %39, align 1
  %.v232 = select i1 %3729, i64 13, i64 1027
  %3738 = add i64 %3713, %.v232
  store i64 %3738, i64* %3, align 8
  br i1 %3729, label %block_42b946, label %block_.L_42bd3c

block_42b946:                                     ; preds = %block_.L_42b939
  store i64 7, i64* %RDX.i689, align 8
  %3739 = add i64 %3684, -128
  store i64 %3739, i64* %RSI.i, align 8
  %3740 = add i64 %3684, -160
  store i64 %3740, i64* %RDI.i40, align 8
  %3741 = add i64 %3738, 157882
  %3742 = add i64 %3738, 21
  %3743 = load i64, i64* %6, align 8
  %3744 = add i64 %3743, -8
  %3745 = inttoptr i64 %3744 to i64*
  store i64 %3742, i64* %3745, align 8
  store i64 %3744, i64* %6, align 8
  store i64 %3741, i64* %3, align 8
  %call2_42b956 = tail call %struct.Memory* @sub_452200.FCopy(%struct.State* nonnull %0, i64 %3741, %struct.Memory* %MEMORY.22)
  %3746 = load i64, i64* %RBP.i, align 8
  %3747 = add i64 %3746, -160
  %3748 = load i64, i64* %3, align 8
  store i64 %3747, i64* %RDI.i40, align 8
  %3749 = add i64 %3746, -32
  %3750 = add i64 %3748, 11
  store i64 %3750, i64* %3, align 8
  %3751 = inttoptr i64 %3749 to i64*
  %3752 = load i64, i64* %3751, align 8
  store i64 %3752, i64* %RSI.i, align 8
  %3753 = add i64 %3748, 15
  store i64 %3753, i64* %3, align 8
  %3754 = load i64, i64* %3751, align 8
  %3755 = add i64 %3754, 8
  store i64 %3755, i64* %RAX.i23, align 8
  %3756 = icmp ugt i64 %3754, -9
  %3757 = zext i1 %3756 to i8
  store i8 %3757, i8* %14, align 1
  %3758 = trunc i64 %3755 to i32
  %3759 = and i32 %3758, 255
  %3760 = tail call i32 @llvm.ctpop.i32(i32 %3759)
  %3761 = trunc i32 %3760 to i8
  %3762 = and i8 %3761, 1
  %3763 = xor i8 %3762, 1
  store i8 %3763, i8* %21, align 1
  %3764 = xor i64 %3755, %3754
  %3765 = lshr i64 %3764, 4
  %3766 = trunc i64 %3765 to i8
  %3767 = and i8 %3766, 1
  store i8 %3767, i8* %27, align 1
  %3768 = icmp eq i64 %3755, 0
  %3769 = zext i1 %3768 to i8
  store i8 %3769, i8* %30, align 1
  %3770 = lshr i64 %3755, 63
  %3771 = trunc i64 %3770 to i8
  store i8 %3771, i8* %33, align 1
  %3772 = lshr i64 %3754, 63
  %3773 = xor i64 %3770, %3772
  %3774 = add nuw nsw i64 %3773, %3770
  %3775 = icmp eq i64 %3774, 2
  %3776 = zext i1 %3775 to i8
  store i8 %3776, i8* %39, align 1
  store i64 %3755, i64* %RDX.i689, align 8
  %3777 = add i64 %3748, 55333
  %3778 = add i64 %3748, 27
  %3779 = load i64, i64* %6, align 8
  %3780 = add i64 %3779, -8
  %3781 = inttoptr i64 %3780 to i64*
  store i64 %3778, i64* %3781, align 8
  store i64 %3780, i64* %6, align 8
  store i64 %3777, i64* %3, align 8
  %call2_42b971 = tail call %struct.Memory* @sub_439180.P7PriorifyTransitionVector(%struct.State* nonnull %0, i64 %3777, %struct.Memory* %MEMORY.22)
  %3782 = load i64, i64* %3, align 8
  store i64 3, i64* %RSI.i, align 8
  %3783 = load i64, i64* %RBP.i, align 8
  %3784 = add i64 %3783, -160
  store i64 %3784, i64* %RDI.i40, align 8
  %3785 = add i64 %3782, 159274
  %3786 = add i64 %3782, 17
  %3787 = load i64, i64* %6, align 8
  %3788 = add i64 %3787, -8
  %3789 = inttoptr i64 %3788 to i64*
  store i64 %3786, i64* %3789, align 8
  store i64 %3788, i64* %6, align 8
  store i64 %3785, i64* %3, align 8
  %call2_42b982 = tail call %struct.Memory* @sub_4527a0.FNorm(%struct.State* nonnull %0, i64 %3785, %struct.Memory* %MEMORY.22)
  %3790 = load i64, i64* %3, align 8
  store <4 x i32> zeroinitializer, <4 x i32>* %3108, align 1
  %3791 = load i64, i64* %RBP.i, align 8
  %3792 = add i64 %3791, -160
  %3793 = add i64 %3790, 11
  store i64 %3793, i64* %3, align 8
  %3794 = inttoptr i64 %3792 to i32*
  %3795 = load i32, i32* %3794, align 4
  store i32 %3795, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %3796 = add i64 %3791, -44
  %3797 = add i64 %3790, 16
  store i64 %3797, i64* %3, align 8
  %3798 = load <2 x float>, <2 x float>* %81, align 1
  %3799 = load <2 x i32>, <2 x i32>* %1161, align 1
  %3800 = inttoptr i64 %3796 to float*
  %3801 = load float, float* %3800, align 4
  %3802 = extractelement <2 x float> %3798, i32 0
  %3803 = fdiv float %3802, %3801
  store float %3803, float* %978, align 1
  %3804 = bitcast <2 x float> %3798 to <2 x i32>
  %3805 = extractelement <2 x i32> %3804, i32 1
  store i32 %3805, i32* %1162, align 1
  %3806 = extractelement <2 x i32> %3799, i32 0
  store i32 %3806, i32* %1163, align 1
  %3807 = extractelement <2 x i32> %3799, i32 1
  store i32 %3807, i32* %1164, align 1
  %3808 = add i64 %3790, 19
  store i64 %3808, i64* %3, align 8
  %3809 = load <2 x float>, <2 x float>* %81, align 1
  %3810 = extractelement <2 x float> %3809, i32 0
  %3811 = load <2 x float>, <2 x float>* %59, align 1
  %3812 = extractelement <2 x float> %3811, i32 0
  %3813 = fcmp uno float %3810, %3812
  br i1 %3813, label %3814, label %3824

; <label>:3814:                                   ; preds = %block_42b946
  %3815 = fadd float %3810, %3812
  %3816 = bitcast float %3815 to i32
  %3817 = and i32 %3816, 2143289344
  %3818 = icmp eq i32 %3817, 2139095040
  %3819 = and i32 %3816, 4194303
  %3820 = icmp ne i32 %3819, 0
  %3821 = and i1 %3818, %3820
  br i1 %3821, label %3822, label %3830

; <label>:3822:                                   ; preds = %3814
  %3823 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3808, %struct.Memory* %MEMORY.22)
  %.pre171 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm0___xmm1.exit

; <label>:3824:                                   ; preds = %block_42b946
  %3825 = fcmp ogt float %3810, %3812
  br i1 %3825, label %3830, label %3826

; <label>:3826:                                   ; preds = %3824
  %3827 = fcmp olt float %3810, %3812
  br i1 %3827, label %3830, label %3828

; <label>:3828:                                   ; preds = %3826
  %3829 = fcmp oeq float %3810, %3812
  br i1 %3829, label %3830, label %3834

; <label>:3830:                                   ; preds = %3828, %3826, %3824, %3814
  %3831 = phi i8 [ 0, %3824 ], [ 0, %3826 ], [ 1, %3828 ], [ 1, %3814 ]
  %3832 = phi i8 [ 0, %3824 ], [ 0, %3826 ], [ 0, %3828 ], [ 1, %3814 ]
  %3833 = phi i8 [ 0, %3824 ], [ 1, %3826 ], [ 0, %3828 ], [ 1, %3814 ]
  store i8 %3831, i8* %30, align 1
  store i8 %3832, i8* %21, align 1
  store i8 %3833, i8* %14, align 1
  br label %3834

; <label>:3834:                                   ; preds = %3830, %3828
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm0___xmm1.exit

routine_ucomiss__xmm0___xmm1.exit:                ; preds = %3834, %3822
  %3835 = phi i64 [ %.pre171, %3822 ], [ %3808, %3834 ]
  %3836 = phi %struct.Memory* [ %3823, %3822 ], [ %MEMORY.22, %3834 ]
  %3837 = load i8, i8* %14, align 1
  %3838 = load i8, i8* %30, align 1
  %3839 = or i8 %3838, %3837
  %3840 = icmp ne i8 %3839, 0
  %.v317 = select i1 %3840, i64 53, i64 6
  %3841 = add i64 %3835, %.v317
  store i64 %3841, i64* %3, align 8
  br i1 %3840, label %block_.L_42b9cf, label %block_42b9a0

block_42b9a0:                                     ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %3842 = load i64, i64* %RBP.i, align 8
  %3843 = add i64 %3842, -160
  %3844 = add i64 %3841, 8
  store i64 %3844, i64* %3, align 8
  %3845 = inttoptr i64 %3843 to i32*
  %3846 = load i32, i32* %3845, align 4
  store i32 %3846, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %3847 = add i64 %3842, -44
  %3848 = add i64 %3841, 13
  store i64 %3848, i64* %3, align 8
  %3849 = load <2 x float>, <2 x float>* %59, align 1
  %3850 = load <2 x i32>, <2 x i32>* %1072, align 1
  %3851 = inttoptr i64 %3847 to float*
  %3852 = load float, float* %3851, align 4
  %3853 = extractelement <2 x float> %3849, i32 0
  %3854 = fdiv float %3853, %3852
  store float %3854, float* %1074, align 1
  %3855 = bitcast <2 x float> %3849 to <2 x i32>
  %3856 = extractelement <2 x i32> %3855, i32 1
  store i32 %3856, i32* %306, align 1
  %3857 = extractelement <2 x i32> %3850, i32 0
  store i32 %3857, i32* %307, align 1
  %3858 = extractelement <2 x i32> %3850, i32 1
  store i32 %3858, i32* %309, align 1
  %3859 = load <2 x float>, <2 x float>* %59, align 1
  %3860 = extractelement <2 x float> %3859, i32 0
  %3861 = fpext float %3860 to double
  store double %3861, double* %.pre-phi, align 1
  %3862 = add i64 %3841, -173232
  %3863 = add i64 %3841, 22
  %3864 = load i64, i64* %6, align 8
  %3865 = add i64 %3864, -8
  %3866 = inttoptr i64 %3865 to i64*
  store i64 %3863, i64* %3866, align 8
  store i64 %3865, i64* %6, align 8
  store i64 %3862, i64* %3, align 8
  %3867 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %3836)
  %3868 = load i64, i64* %3, align 8
  %3869 = add i64 %3868, ptrtoint (%G_0x28f22__rip__type* @G_0x28f22__rip_ to i64)
  %3870 = add i64 %3868, 8
  store i64 %3870, i64* %3, align 8
  %3871 = inttoptr i64 %3869 to i64*
  %3872 = load i64, i64* %3871, align 8
  store i64 %3872, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %3873 = load double, double* %.pre-phi, align 1
  %.cast80 = bitcast i64 %3872 to double
  %3874 = fmul double %.cast80, %3873
  store double %3874, double* %.pre-phi, align 1
  %3875 = load i64, i64* %RBP.i, align 8
  %3876 = add i64 %3875, -552
  %3877 = add i64 %3868, 20
  store i64 %3877, i64* %3, align 8
  %3878 = inttoptr i64 %3876 to double*
  store double %3874, double* %3878, align 8
  %3879 = load i64, i64* %3, align 8
  %3880 = add i64 %3879, 26
  br label %block_.L_42b9e4

block_.L_42b9cf:                                  ; preds = %routine_ucomiss__xmm0___xmm1.exit
  %3881 = add i64 %3841, ptrtoint (%G_0x28f01__rip__type* @G_0x28f01__rip_ to i64)
  %3882 = add i64 %3841, 8
  store i64 %3882, i64* %3, align 8
  %3883 = inttoptr i64 %3881 to i64*
  %3884 = load i64, i64* %3883, align 8
  store i64 %3884, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %3885 = load i64, i64* %RBP.i, align 8
  %3886 = add i64 %3885, -552
  %3887 = add i64 %3841, 16
  store i64 %3887, i64* %3, align 8
  %3888 = inttoptr i64 %3886 to i64*
  store i64 %3884, i64* %3888, align 8
  %3889 = load i64, i64* %3, align 8
  %3890 = add i64 %3889, 5
  store i64 %3890, i64* %3, align 8
  br label %block_.L_42b9e4

block_.L_42b9e4:                                  ; preds = %block_.L_42b9cf, %block_42b9a0
  %storemerge81 = phi i64 [ %3880, %block_42b9a0 ], [ %3890, %block_.L_42b9cf ]
  %MEMORY.23 = phi %struct.Memory* [ %3867, %block_42b9a0 ], [ %3836, %block_.L_42b9cf ]
  %3891 = load i64, i64* %RBP.i, align 8
  %3892 = add i64 %3891, -552
  %3893 = add i64 %storemerge81, 8
  store i64 %3893, i64* %3, align 8
  %3894 = inttoptr i64 %3892 to i64*
  %3895 = load i64, i64* %3894, align 8
  store i64 %3895, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %3109, align 1
  %3896 = bitcast i64 %3895 to <2 x i32>
  %.cast82 = bitcast i64 %3895 to double
  %3897 = fptrunc double %.cast82 to float
  store float %3897, float* %1074, align 1
  %3898 = extractelement <2 x i32> %3896, i32 1
  store i32 %3898, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %3899 = add i64 %3891, -160
  %3900 = add i64 %storemerge81, 23
  store i64 %3900, i64* %3, align 8
  %3901 = load <2 x float>, <2 x float>* %59, align 1
  %3902 = extractelement <2 x float> %3901, i32 0
  %3903 = inttoptr i64 %3899 to float*
  store float %3902, float* %3903, align 4
  %3904 = load i64, i64* %RBP.i, align 8
  %3905 = add i64 %3904, -156
  %3906 = load i64, i64* %3, align 8
  %3907 = add i64 %3906, 8
  store i64 %3907, i64* %3, align 8
  %3908 = inttoptr i64 %3905 to i32*
  %3909 = load i32, i32* %3908, align 4
  store i32 %3909, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %3910 = add i64 %3904, -44
  %3911 = add i64 %3906, 13
  store i64 %3911, i64* %3, align 8
  %3912 = load <2 x float>, <2 x float>* %59, align 1
  %3913 = load <2 x i32>, <2 x i32>* %1072, align 1
  %3914 = inttoptr i64 %3910 to float*
  %3915 = load float, float* %3914, align 4
  %3916 = extractelement <2 x float> %3912, i32 0
  %3917 = fdiv float %3916, %3915
  store float %3917, float* %1074, align 1
  %3918 = bitcast <2 x float> %3912 to <2 x i32>
  %3919 = extractelement <2 x i32> %3918, i32 1
  store i32 %3919, i32* %306, align 1
  %3920 = extractelement <2 x i32> %3913, i32 0
  store i32 %3920, i32* %307, align 1
  %3921 = extractelement <2 x i32> %3913, i32 1
  store i32 %3921, i32* %309, align 1
  %3922 = add i64 %3906, 16
  store i64 %3922, i64* %3, align 8
  %3923 = load <2 x float>, <2 x float>* %59, align 1
  %3924 = extractelement <2 x float> %3923, i32 0
  %3925 = load <2 x float>, <2 x float>* %81, align 1
  %3926 = extractelement <2 x float> %3925, i32 0
  %3927 = fcmp uno float %3924, %3926
  br i1 %3927, label %3928, label %3938

; <label>:3928:                                   ; preds = %block_.L_42b9e4
  %3929 = fadd float %3924, %3926
  %3930 = bitcast float %3929 to i32
  %3931 = and i32 %3930, 2143289344
  %3932 = icmp eq i32 %3931, 2139095040
  %3933 = and i32 %3930, 4194303
  %3934 = icmp ne i32 %3933, 0
  %3935 = and i1 %3932, %3934
  br i1 %3935, label %3936, label %3944

; <label>:3936:                                   ; preds = %3928
  %3937 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3922, %struct.Memory* %MEMORY.23)
  %.pre172 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit1036

; <label>:3938:                                   ; preds = %block_.L_42b9e4
  %3939 = fcmp ogt float %3924, %3926
  br i1 %3939, label %3944, label %3940

; <label>:3940:                                   ; preds = %3938
  %3941 = fcmp olt float %3924, %3926
  br i1 %3941, label %3944, label %3942

; <label>:3942:                                   ; preds = %3940
  %3943 = fcmp oeq float %3924, %3926
  br i1 %3943, label %3944, label %3948

; <label>:3944:                                   ; preds = %3942, %3940, %3938, %3928
  %3945 = phi i8 [ 0, %3938 ], [ 0, %3940 ], [ 1, %3942 ], [ 1, %3928 ]
  %3946 = phi i8 [ 0, %3938 ], [ 0, %3940 ], [ 0, %3942 ], [ 1, %3928 ]
  %3947 = phi i8 [ 0, %3938 ], [ 1, %3940 ], [ 0, %3942 ], [ 1, %3928 ]
  store i8 %3945, i8* %30, align 1
  store i8 %3946, i8* %21, align 1
  store i8 %3947, i8* %14, align 1
  br label %3948

; <label>:3948:                                   ; preds = %3944, %3942
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit1036

routine_ucomiss__xmm1___xmm0.exit1036:            ; preds = %3948, %3936
  %3949 = phi i64 [ %.pre172, %3936 ], [ %3922, %3948 ]
  %3950 = phi %struct.Memory* [ %3937, %3936 ], [ %MEMORY.23, %3948 ]
  %3951 = load i8, i8* %14, align 1
  %3952 = load i8, i8* %30, align 1
  %3953 = or i8 %3952, %3951
  %3954 = icmp ne i8 %3953, 0
  %.v318 = select i1 %3954, i64 53, i64 6
  %3955 = add i64 %3949, %.v318
  store i64 %3955, i64* %3, align 8
  br i1 %3954, label %block_.L_42ba40, label %block_42ba11

block_42ba11:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit1036
  %3956 = load i64, i64* %RBP.i, align 8
  %3957 = add i64 %3956, -156
  %3958 = add i64 %3955, 8
  store i64 %3958, i64* %3, align 8
  %3959 = inttoptr i64 %3957 to i32*
  %3960 = load i32, i32* %3959, align 4
  store i32 %3960, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %3961 = add i64 %3956, -44
  %3962 = add i64 %3955, 13
  store i64 %3962, i64* %3, align 8
  %3963 = load <2 x float>, <2 x float>* %59, align 1
  %3964 = load <2 x i32>, <2 x i32>* %1072, align 1
  %3965 = inttoptr i64 %3961 to float*
  %3966 = load float, float* %3965, align 4
  %3967 = extractelement <2 x float> %3963, i32 0
  %3968 = fdiv float %3967, %3966
  store float %3968, float* %1074, align 1
  %3969 = bitcast <2 x float> %3963 to <2 x i32>
  %3970 = extractelement <2 x i32> %3969, i32 1
  store i32 %3970, i32* %306, align 1
  %3971 = extractelement <2 x i32> %3964, i32 0
  store i32 %3971, i32* %307, align 1
  %3972 = extractelement <2 x i32> %3964, i32 1
  store i32 %3972, i32* %309, align 1
  %3973 = load <2 x float>, <2 x float>* %59, align 1
  %3974 = extractelement <2 x float> %3973, i32 0
  %3975 = fpext float %3974 to double
  store double %3975, double* %.pre-phi, align 1
  %3976 = add i64 %3955, -173345
  %3977 = add i64 %3955, 22
  %3978 = load i64, i64* %6, align 8
  %3979 = add i64 %3978, -8
  %3980 = inttoptr i64 %3979 to i64*
  store i64 %3977, i64* %3980, align 8
  store i64 %3979, i64* %6, align 8
  store i64 %3976, i64* %3, align 8
  %3981 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %3950)
  %3982 = load i64, i64* %3, align 8
  %3983 = add i64 %3982, ptrtoint (%G_0x28eb1__rip__type* @G_0x28eb1__rip_ to i64)
  %3984 = add i64 %3982, 8
  store i64 %3984, i64* %3, align 8
  %3985 = inttoptr i64 %3983 to i64*
  %3986 = load i64, i64* %3985, align 8
  store i64 %3986, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %3987 = load double, double* %.pre-phi, align 1
  %.cast83 = bitcast i64 %3986 to double
  %3988 = fmul double %.cast83, %3987
  store double %3988, double* %.pre-phi, align 1
  %3989 = load i64, i64* %RBP.i, align 8
  %3990 = add i64 %3989, -560
  %3991 = add i64 %3982, 20
  store i64 %3991, i64* %3, align 8
  %3992 = inttoptr i64 %3990 to double*
  store double %3988, double* %3992, align 8
  %3993 = load i64, i64* %3, align 8
  %3994 = add i64 %3993, 26
  br label %block_.L_42ba55

block_.L_42ba40:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit1036
  %3995 = add i64 %3955, ptrtoint (%G_0x28e90__rip__type* @G_0x28e90__rip_ to i64)
  %3996 = add i64 %3955, 8
  store i64 %3996, i64* %3, align 8
  %3997 = inttoptr i64 %3995 to i64*
  %3998 = load i64, i64* %3997, align 8
  store i64 %3998, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %3999 = load i64, i64* %RBP.i, align 8
  %4000 = add i64 %3999, -560
  %4001 = add i64 %3955, 16
  store i64 %4001, i64* %3, align 8
  %4002 = inttoptr i64 %4000 to i64*
  store i64 %3998, i64* %4002, align 8
  %4003 = load i64, i64* %3, align 8
  %4004 = add i64 %4003, 5
  store i64 %4004, i64* %3, align 8
  br label %block_.L_42ba55

block_.L_42ba55:                                  ; preds = %block_.L_42ba40, %block_42ba11
  %storemerge84 = phi i64 [ %3994, %block_42ba11 ], [ %4004, %block_.L_42ba40 ]
  %MEMORY.24 = phi %struct.Memory* [ %3981, %block_42ba11 ], [ %3950, %block_.L_42ba40 ]
  %4005 = load i64, i64* %RBP.i, align 8
  %4006 = add i64 %4005, -560
  %4007 = add i64 %storemerge84, 8
  store i64 %4007, i64* %3, align 8
  %4008 = inttoptr i64 %4006 to i64*
  %4009 = load i64, i64* %4008, align 8
  store i64 %4009, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %3110, align 1
  %4010 = bitcast i64 %4009 to <2 x i32>
  %.cast85 = bitcast i64 %4009 to double
  %4011 = fptrunc double %.cast85 to float
  store float %4011, float* %1074, align 1
  %4012 = extractelement <2 x i32> %4010, i32 1
  store i32 %4012, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %4013 = add i64 %4005, -156
  %4014 = add i64 %storemerge84, 23
  store i64 %4014, i64* %3, align 8
  %4015 = load <2 x float>, <2 x float>* %59, align 1
  %4016 = extractelement <2 x float> %4015, i32 0
  %4017 = inttoptr i64 %4013 to float*
  store float %4016, float* %4017, align 4
  %4018 = load i64, i64* %RBP.i, align 8
  %4019 = add i64 %4018, -152
  %4020 = load i64, i64* %3, align 8
  %4021 = add i64 %4020, 8
  store i64 %4021, i64* %3, align 8
  %4022 = inttoptr i64 %4019 to i32*
  %4023 = load i32, i32* %4022, align 4
  store i32 %4023, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4024 = add i64 %4020, 11
  store i64 %4024, i64* %3, align 8
  %4025 = load <2 x float>, <2 x float>* %59, align 1
  %4026 = extractelement <2 x float> %4025, i32 0
  %4027 = load <2 x float>, <2 x float>* %81, align 1
  %4028 = extractelement <2 x float> %4027, i32 0
  %4029 = fcmp uno float %4026, %4028
  br i1 %4029, label %4030, label %4040

; <label>:4030:                                   ; preds = %block_.L_42ba55
  %4031 = fadd float %4026, %4028
  %4032 = bitcast float %4031 to i32
  %4033 = and i32 %4032, 2143289344
  %4034 = icmp eq i32 %4033, 2139095040
  %4035 = and i32 %4032, 4194303
  %4036 = icmp ne i32 %4035, 0
  %4037 = and i1 %4034, %4036
  br i1 %4037, label %4038, label %4046

; <label>:4038:                                   ; preds = %4030
  %4039 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4024, %struct.Memory* %MEMORY.24)
  %.pre173 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit986

; <label>:4040:                                   ; preds = %block_.L_42ba55
  %4041 = fcmp ogt float %4026, %4028
  br i1 %4041, label %4046, label %4042

; <label>:4042:                                   ; preds = %4040
  %4043 = fcmp olt float %4026, %4028
  br i1 %4043, label %4046, label %4044

; <label>:4044:                                   ; preds = %4042
  %4045 = fcmp oeq float %4026, %4028
  br i1 %4045, label %4046, label %4050

; <label>:4046:                                   ; preds = %4044, %4042, %4040, %4030
  %4047 = phi i8 [ 0, %4040 ], [ 0, %4042 ], [ 1, %4044 ], [ 1, %4030 ]
  %4048 = phi i8 [ 0, %4040 ], [ 0, %4042 ], [ 0, %4044 ], [ 1, %4030 ]
  %4049 = phi i8 [ 0, %4040 ], [ 1, %4042 ], [ 0, %4044 ], [ 1, %4030 ]
  store i8 %4047, i8* %30, align 1
  store i8 %4048, i8* %21, align 1
  store i8 %4049, i8* %14, align 1
  br label %4050

; <label>:4050:                                   ; preds = %4046, %4044
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit986

routine_ucomiss__xmm1___xmm0.exit986:             ; preds = %4050, %4038
  %4051 = phi i64 [ %.pre173, %4038 ], [ %4024, %4050 ]
  %4052 = phi %struct.Memory* [ %4039, %4038 ], [ %MEMORY.24, %4050 ]
  %4053 = load i8, i8* %14, align 1
  %4054 = load i8, i8* %30, align 1
  %4055 = or i8 %4054, %4053
  %4056 = icmp ne i8 %4055, 0
  %.v319 = select i1 %4056, i64 44, i64 6
  %4057 = add i64 %4051, %.v319
  store i64 %4057, i64* %3, align 8
  br i1 %4056, label %block_.L_42baa3, label %block_42ba7d

block_42ba7d:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit986
  %4058 = load i64, i64* %RBP.i, align 8
  %4059 = add i64 %4058, -152
  %4060 = add i64 %4057, 8
  store i64 %4060, i64* %3, align 8
  %4061 = inttoptr i64 %4059 to float*
  %4062 = load float, float* %4061, align 4
  %4063 = fpext float %4062 to double
  store double %4063, double* %.pre-phi, align 1
  %4064 = add i64 %4057, -173453
  %4065 = add i64 %4057, 13
  %4066 = load i64, i64* %6, align 8
  %4067 = add i64 %4066, -8
  %4068 = inttoptr i64 %4067 to i64*
  store i64 %4065, i64* %4068, align 8
  store i64 %4067, i64* %6, align 8
  store i64 %4064, i64* %3, align 8
  %4069 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %4052)
  %4070 = load i64, i64* %3, align 8
  %4071 = add i64 %4070, ptrtoint (%G_0x28e4e__rip__type* @G_0x28e4e__rip_ to i64)
  %4072 = add i64 %4070, 8
  store i64 %4072, i64* %3, align 8
  %4073 = inttoptr i64 %4071 to i64*
  %4074 = load i64, i64* %4073, align 8
  store i64 %4074, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %4075 = load double, double* %.pre-phi, align 1
  %.cast86 = bitcast i64 %4074 to double
  %4076 = fmul double %.cast86, %4075
  store double %4076, double* %.pre-phi, align 1
  %4077 = load i64, i64* %RBP.i, align 8
  %4078 = add i64 %4077, -568
  %4079 = add i64 %4070, 20
  store i64 %4079, i64* %3, align 8
  %4080 = inttoptr i64 %4078 to double*
  store double %4076, double* %4080, align 8
  %4081 = load i64, i64* %3, align 8
  %4082 = add i64 %4081, 26
  br label %block_.L_42bab8

block_.L_42baa3:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit986
  %4083 = add i64 %4057, ptrtoint (%G_0x28e2d__rip__type* @G_0x28e2d__rip_ to i64)
  %4084 = add i64 %4057, 8
  store i64 %4084, i64* %3, align 8
  %4085 = inttoptr i64 %4083 to i64*
  %4086 = load i64, i64* %4085, align 8
  store i64 %4086, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %4087 = load i64, i64* %RBP.i, align 8
  %4088 = add i64 %4087, -568
  %4089 = add i64 %4057, 16
  store i64 %4089, i64* %3, align 8
  %4090 = inttoptr i64 %4088 to i64*
  store i64 %4086, i64* %4090, align 8
  %4091 = load i64, i64* %3, align 8
  %4092 = add i64 %4091, 5
  store i64 %4092, i64* %3, align 8
  br label %block_.L_42bab8

block_.L_42bab8:                                  ; preds = %block_.L_42baa3, %block_42ba7d
  %storemerge87 = phi i64 [ %4082, %block_42ba7d ], [ %4092, %block_.L_42baa3 ]
  %MEMORY.25 = phi %struct.Memory* [ %4069, %block_42ba7d ], [ %4052, %block_.L_42baa3 ]
  %4093 = load i64, i64* %RBP.i, align 8
  %4094 = add i64 %4093, -568
  %4095 = add i64 %storemerge87, 8
  store i64 %4095, i64* %3, align 8
  %4096 = inttoptr i64 %4094 to i64*
  %4097 = load i64, i64* %4096, align 8
  store i64 %4097, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %3111, align 1
  %4098 = bitcast i64 %4097 to <2 x i32>
  %.cast88 = bitcast i64 %4097 to double
  %4099 = fptrunc double %.cast88 to float
  store float %4099, float* %1074, align 1
  %4100 = extractelement <2 x i32> %4098, i32 1
  store i32 %4100, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %4101 = add i64 %4093, -152
  %4102 = add i64 %storemerge87, 23
  store i64 %4102, i64* %3, align 8
  %4103 = load <2 x float>, <2 x float>* %59, align 1
  %4104 = extractelement <2 x float> %4103, i32 0
  %4105 = inttoptr i64 %4101 to float*
  store float %4104, float* %4105, align 4
  %4106 = load i64, i64* %RBP.i, align 8
  %4107 = add i64 %4106, -148
  %4108 = load i64, i64* %3, align 8
  %4109 = add i64 %4108, 8
  store i64 %4109, i64* %3, align 8
  %4110 = inttoptr i64 %4107 to i32*
  %4111 = load i32, i32* %4110, align 4
  store i32 %4111, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4112 = add i64 %4106, -44
  %4113 = add i64 %4108, 13
  store i64 %4113, i64* %3, align 8
  %4114 = load <2 x float>, <2 x float>* %59, align 1
  %4115 = load <2 x i32>, <2 x i32>* %1072, align 1
  %4116 = inttoptr i64 %4112 to float*
  %4117 = load float, float* %4116, align 4
  %4118 = extractelement <2 x float> %4114, i32 0
  %4119 = fdiv float %4118, %4117
  store float %4119, float* %1074, align 1
  %4120 = bitcast <2 x float> %4114 to <2 x i32>
  %4121 = extractelement <2 x i32> %4120, i32 1
  store i32 %4121, i32* %306, align 1
  %4122 = extractelement <2 x i32> %4115, i32 0
  store i32 %4122, i32* %307, align 1
  %4123 = extractelement <2 x i32> %4115, i32 1
  store i32 %4123, i32* %309, align 1
  %4124 = add i64 %4108, 16
  store i64 %4124, i64* %3, align 8
  %4125 = load <2 x float>, <2 x float>* %59, align 1
  %4126 = extractelement <2 x float> %4125, i32 0
  %4127 = load <2 x float>, <2 x float>* %81, align 1
  %4128 = extractelement <2 x float> %4127, i32 0
  %4129 = fcmp uno float %4126, %4128
  br i1 %4129, label %4130, label %4140

; <label>:4130:                                   ; preds = %block_.L_42bab8
  %4131 = fadd float %4126, %4128
  %4132 = bitcast float %4131 to i32
  %4133 = and i32 %4132, 2143289344
  %4134 = icmp eq i32 %4133, 2139095040
  %4135 = and i32 %4132, 4194303
  %4136 = icmp ne i32 %4135, 0
  %4137 = and i1 %4134, %4136
  br i1 %4137, label %4138, label %4146

; <label>:4138:                                   ; preds = %4130
  %4139 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4124, %struct.Memory* %MEMORY.25)
  %.pre174 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit939

; <label>:4140:                                   ; preds = %block_.L_42bab8
  %4141 = fcmp ogt float %4126, %4128
  br i1 %4141, label %4146, label %4142

; <label>:4142:                                   ; preds = %4140
  %4143 = fcmp olt float %4126, %4128
  br i1 %4143, label %4146, label %4144

; <label>:4144:                                   ; preds = %4142
  %4145 = fcmp oeq float %4126, %4128
  br i1 %4145, label %4146, label %4150

; <label>:4146:                                   ; preds = %4144, %4142, %4140, %4130
  %4147 = phi i8 [ 0, %4140 ], [ 0, %4142 ], [ 1, %4144 ], [ 1, %4130 ]
  %4148 = phi i8 [ 0, %4140 ], [ 0, %4142 ], [ 0, %4144 ], [ 1, %4130 ]
  %4149 = phi i8 [ 0, %4140 ], [ 1, %4142 ], [ 0, %4144 ], [ 1, %4130 ]
  store i8 %4147, i8* %30, align 1
  store i8 %4148, i8* %21, align 1
  store i8 %4149, i8* %14, align 1
  br label %4150

; <label>:4150:                                   ; preds = %4146, %4144
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit939

routine_ucomiss__xmm1___xmm0.exit939:             ; preds = %4150, %4138
  %4151 = phi i64 [ %.pre174, %4138 ], [ %4124, %4150 ]
  %4152 = phi %struct.Memory* [ %4139, %4138 ], [ %MEMORY.25, %4150 ]
  %4153 = load i8, i8* %14, align 1
  %4154 = load i8, i8* %30, align 1
  %4155 = or i8 %4154, %4153
  %4156 = icmp ne i8 %4155, 0
  %.v320 = select i1 %4156, i64 53, i64 6
  %4157 = add i64 %4151, %.v320
  store i64 %4157, i64* %3, align 8
  br i1 %4156, label %block_.L_42bb14, label %block_42bae5

block_42bae5:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit939
  %4158 = load i64, i64* %RBP.i, align 8
  %4159 = add i64 %4158, -148
  %4160 = add i64 %4157, 8
  store i64 %4160, i64* %3, align 8
  %4161 = inttoptr i64 %4159 to i32*
  %4162 = load i32, i32* %4161, align 4
  store i32 %4162, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4163 = add i64 %4158, -44
  %4164 = add i64 %4157, 13
  store i64 %4164, i64* %3, align 8
  %4165 = load <2 x float>, <2 x float>* %59, align 1
  %4166 = load <2 x i32>, <2 x i32>* %1072, align 1
  %4167 = inttoptr i64 %4163 to float*
  %4168 = load float, float* %4167, align 4
  %4169 = extractelement <2 x float> %4165, i32 0
  %4170 = fdiv float %4169, %4168
  store float %4170, float* %1074, align 1
  %4171 = bitcast <2 x float> %4165 to <2 x i32>
  %4172 = extractelement <2 x i32> %4171, i32 1
  store i32 %4172, i32* %306, align 1
  %4173 = extractelement <2 x i32> %4166, i32 0
  store i32 %4173, i32* %307, align 1
  %4174 = extractelement <2 x i32> %4166, i32 1
  store i32 %4174, i32* %309, align 1
  %4175 = load <2 x float>, <2 x float>* %59, align 1
  %4176 = extractelement <2 x float> %4175, i32 0
  %4177 = fpext float %4176 to double
  store double %4177, double* %.pre-phi, align 1
  %4178 = add i64 %4157, -173557
  %4179 = add i64 %4157, 22
  %4180 = load i64, i64* %6, align 8
  %4181 = add i64 %4180, -8
  %4182 = inttoptr i64 %4181 to i64*
  store i64 %4179, i64* %4182, align 8
  store i64 %4181, i64* %6, align 8
  store i64 %4178, i64* %3, align 8
  %4183 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %4152)
  %4184 = load i64, i64* %3, align 8
  %4185 = add i64 %4184, ptrtoint (%G_0x28ddd__rip__type* @G_0x28ddd__rip_ to i64)
  %4186 = add i64 %4184, 8
  store i64 %4186, i64* %3, align 8
  %4187 = inttoptr i64 %4185 to i64*
  %4188 = load i64, i64* %4187, align 8
  store i64 %4188, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %4189 = load double, double* %.pre-phi, align 1
  %.cast89 = bitcast i64 %4188 to double
  %4190 = fmul double %.cast89, %4189
  store double %4190, double* %.pre-phi, align 1
  %4191 = load i64, i64* %RBP.i, align 8
  %4192 = add i64 %4191, -576
  %4193 = add i64 %4184, 20
  store i64 %4193, i64* %3, align 8
  %4194 = inttoptr i64 %4192 to double*
  store double %4190, double* %4194, align 8
  %4195 = load i64, i64* %3, align 8
  %4196 = add i64 %4195, 26
  br label %block_.L_42bb29

block_.L_42bb14:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit939
  %4197 = add i64 %4157, ptrtoint (%G_0x28dbc__rip__type* @G_0x28dbc__rip_ to i64)
  %4198 = add i64 %4157, 8
  store i64 %4198, i64* %3, align 8
  %4199 = inttoptr i64 %4197 to i64*
  %4200 = load i64, i64* %4199, align 8
  store i64 %4200, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %4201 = load i64, i64* %RBP.i, align 8
  %4202 = add i64 %4201, -576
  %4203 = add i64 %4157, 16
  store i64 %4203, i64* %3, align 8
  %4204 = inttoptr i64 %4202 to i64*
  store i64 %4200, i64* %4204, align 8
  %4205 = load i64, i64* %3, align 8
  %4206 = add i64 %4205, 5
  store i64 %4206, i64* %3, align 8
  br label %block_.L_42bb29

block_.L_42bb29:                                  ; preds = %block_.L_42bb14, %block_42bae5
  %storemerge90 = phi i64 [ %4196, %block_42bae5 ], [ %4206, %block_.L_42bb14 ]
  %MEMORY.26 = phi %struct.Memory* [ %4183, %block_42bae5 ], [ %4152, %block_.L_42bb14 ]
  %4207 = load i64, i64* %RBP.i, align 8
  %4208 = add i64 %4207, -576
  %4209 = add i64 %storemerge90, 8
  store i64 %4209, i64* %3, align 8
  %4210 = inttoptr i64 %4208 to i64*
  %4211 = load i64, i64* %4210, align 8
  store i64 %4211, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %3112, align 1
  %4212 = bitcast i64 %4211 to <2 x i32>
  %.cast91 = bitcast i64 %4211 to double
  %4213 = fptrunc double %.cast91 to float
  store float %4213, float* %1074, align 1
  %4214 = extractelement <2 x i32> %4212, i32 1
  store i32 %4214, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %4215 = add i64 %4207, -148
  %4216 = add i64 %storemerge90, 23
  store i64 %4216, i64* %3, align 8
  %4217 = load <2 x float>, <2 x float>* %59, align 1
  %4218 = extractelement <2 x float> %4217, i32 0
  %4219 = inttoptr i64 %4215 to float*
  store float %4218, float* %4219, align 4
  %4220 = load i64, i64* %RBP.i, align 8
  %4221 = add i64 %4220, -144
  %4222 = load i64, i64* %3, align 8
  %4223 = add i64 %4222, 8
  store i64 %4223, i64* %3, align 8
  %4224 = inttoptr i64 %4221 to i32*
  %4225 = load i32, i32* %4224, align 4
  store i32 %4225, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4226 = add i64 %4220, -44
  %4227 = add i64 %4222, 13
  store i64 %4227, i64* %3, align 8
  %4228 = load <2 x float>, <2 x float>* %59, align 1
  %4229 = load <2 x i32>, <2 x i32>* %1072, align 1
  %4230 = inttoptr i64 %4226 to float*
  %4231 = load float, float* %4230, align 4
  %4232 = extractelement <2 x float> %4228, i32 0
  %4233 = fdiv float %4232, %4231
  store float %4233, float* %1074, align 1
  %4234 = bitcast <2 x float> %4228 to <2 x i32>
  %4235 = extractelement <2 x i32> %4234, i32 1
  store i32 %4235, i32* %306, align 1
  %4236 = extractelement <2 x i32> %4229, i32 0
  store i32 %4236, i32* %307, align 1
  %4237 = extractelement <2 x i32> %4229, i32 1
  store i32 %4237, i32* %309, align 1
  %4238 = add i64 %4222, 16
  store i64 %4238, i64* %3, align 8
  %4239 = load <2 x float>, <2 x float>* %59, align 1
  %4240 = extractelement <2 x float> %4239, i32 0
  %4241 = load <2 x float>, <2 x float>* %81, align 1
  %4242 = extractelement <2 x float> %4241, i32 0
  %4243 = fcmp uno float %4240, %4242
  br i1 %4243, label %4244, label %4254

; <label>:4244:                                   ; preds = %block_.L_42bb29
  %4245 = fadd float %4240, %4242
  %4246 = bitcast float %4245 to i32
  %4247 = and i32 %4246, 2143289344
  %4248 = icmp eq i32 %4247, 2139095040
  %4249 = and i32 %4246, 4194303
  %4250 = icmp ne i32 %4249, 0
  %4251 = and i1 %4248, %4250
  br i1 %4251, label %4252, label %4260

; <label>:4252:                                   ; preds = %4244
  %4253 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4238, %struct.Memory* %MEMORY.26)
  %.pre175 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit886

; <label>:4254:                                   ; preds = %block_.L_42bb29
  %4255 = fcmp ogt float %4240, %4242
  br i1 %4255, label %4260, label %4256

; <label>:4256:                                   ; preds = %4254
  %4257 = fcmp olt float %4240, %4242
  br i1 %4257, label %4260, label %4258

; <label>:4258:                                   ; preds = %4256
  %4259 = fcmp oeq float %4240, %4242
  br i1 %4259, label %4260, label %4264

; <label>:4260:                                   ; preds = %4258, %4256, %4254, %4244
  %4261 = phi i8 [ 0, %4254 ], [ 0, %4256 ], [ 1, %4258 ], [ 1, %4244 ]
  %4262 = phi i8 [ 0, %4254 ], [ 0, %4256 ], [ 0, %4258 ], [ 1, %4244 ]
  %4263 = phi i8 [ 0, %4254 ], [ 1, %4256 ], [ 0, %4258 ], [ 1, %4244 ]
  store i8 %4261, i8* %30, align 1
  store i8 %4262, i8* %21, align 1
  store i8 %4263, i8* %14, align 1
  br label %4264

; <label>:4264:                                   ; preds = %4260, %4258
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit886

routine_ucomiss__xmm1___xmm0.exit886:             ; preds = %4264, %4252
  %4265 = phi i64 [ %.pre175, %4252 ], [ %4238, %4264 ]
  %4266 = phi %struct.Memory* [ %4253, %4252 ], [ %MEMORY.26, %4264 ]
  %4267 = load i8, i8* %14, align 1
  %4268 = load i8, i8* %30, align 1
  %4269 = or i8 %4268, %4267
  %4270 = icmp ne i8 %4269, 0
  %.v321 = select i1 %4270, i64 53, i64 6
  %4271 = add i64 %4265, %.v321
  store i64 %4271, i64* %3, align 8
  br i1 %4270, label %block_.L_42bb85, label %block_42bb56

block_42bb56:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit886
  %4272 = load i64, i64* %RBP.i, align 8
  %4273 = add i64 %4272, -144
  %4274 = add i64 %4271, 8
  store i64 %4274, i64* %3, align 8
  %4275 = inttoptr i64 %4273 to i32*
  %4276 = load i32, i32* %4275, align 4
  store i32 %4276, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4277 = add i64 %4272, -44
  %4278 = add i64 %4271, 13
  store i64 %4278, i64* %3, align 8
  %4279 = load <2 x float>, <2 x float>* %59, align 1
  %4280 = load <2 x i32>, <2 x i32>* %1072, align 1
  %4281 = inttoptr i64 %4277 to float*
  %4282 = load float, float* %4281, align 4
  %4283 = extractelement <2 x float> %4279, i32 0
  %4284 = fdiv float %4283, %4282
  store float %4284, float* %1074, align 1
  %4285 = bitcast <2 x float> %4279 to <2 x i32>
  %4286 = extractelement <2 x i32> %4285, i32 1
  store i32 %4286, i32* %306, align 1
  %4287 = extractelement <2 x i32> %4280, i32 0
  store i32 %4287, i32* %307, align 1
  %4288 = extractelement <2 x i32> %4280, i32 1
  store i32 %4288, i32* %309, align 1
  %4289 = load <2 x float>, <2 x float>* %59, align 1
  %4290 = extractelement <2 x float> %4289, i32 0
  %4291 = fpext float %4290 to double
  store double %4291, double* %.pre-phi, align 1
  %4292 = add i64 %4271, -173670
  %4293 = add i64 %4271, 22
  %4294 = load i64, i64* %6, align 8
  %4295 = add i64 %4294, -8
  %4296 = inttoptr i64 %4295 to i64*
  store i64 %4293, i64* %4296, align 8
  store i64 %4295, i64* %6, align 8
  store i64 %4292, i64* %3, align 8
  %4297 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %4266)
  %4298 = load i64, i64* %3, align 8
  %4299 = add i64 %4298, ptrtoint (%G_0x28d6c__rip__type* @G_0x28d6c__rip_ to i64)
  %4300 = add i64 %4298, 8
  store i64 %4300, i64* %3, align 8
  %4301 = inttoptr i64 %4299 to i64*
  %4302 = load i64, i64* %4301, align 8
  store i64 %4302, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %4303 = load double, double* %.pre-phi, align 1
  %.cast92 = bitcast i64 %4302 to double
  %4304 = fmul double %.cast92, %4303
  store double %4304, double* %.pre-phi, align 1
  %4305 = load i64, i64* %RBP.i, align 8
  %4306 = add i64 %4305, -584
  %4307 = add i64 %4298, 20
  store i64 %4307, i64* %3, align 8
  %4308 = inttoptr i64 %4306 to double*
  store double %4304, double* %4308, align 8
  %4309 = load i64, i64* %3, align 8
  %4310 = add i64 %4309, 26
  br label %block_.L_42bb9a

block_.L_42bb85:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit886
  %4311 = add i64 %4271, ptrtoint (%G_0x28d4b__rip__type* @G_0x28d4b__rip_ to i64)
  %4312 = add i64 %4271, 8
  store i64 %4312, i64* %3, align 8
  %4313 = inttoptr i64 %4311 to i64*
  %4314 = load i64, i64* %4313, align 8
  store i64 %4314, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %4315 = load i64, i64* %RBP.i, align 8
  %4316 = add i64 %4315, -584
  %4317 = add i64 %4271, 16
  store i64 %4317, i64* %3, align 8
  %4318 = inttoptr i64 %4316 to i64*
  store i64 %4314, i64* %4318, align 8
  %4319 = load i64, i64* %3, align 8
  %4320 = add i64 %4319, 5
  store i64 %4320, i64* %3, align 8
  br label %block_.L_42bb9a

block_.L_42bb9a:                                  ; preds = %block_.L_42bb85, %block_42bb56
  %storemerge93 = phi i64 [ %4310, %block_42bb56 ], [ %4320, %block_.L_42bb85 ]
  %MEMORY.27 = phi %struct.Memory* [ %4297, %block_42bb56 ], [ %4266, %block_.L_42bb85 ]
  %4321 = load i64, i64* %RBP.i, align 8
  %4322 = add i64 %4321, -584
  %4323 = add i64 %storemerge93, 8
  store i64 %4323, i64* %3, align 8
  %4324 = inttoptr i64 %4322 to i64*
  %4325 = load i64, i64* %4324, align 8
  store i64 %4325, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %3113, align 1
  %4326 = bitcast i64 %4325 to <2 x i32>
  %.cast94 = bitcast i64 %4325 to double
  %4327 = fptrunc double %.cast94 to float
  store float %4327, float* %1074, align 1
  %4328 = extractelement <2 x i32> %4326, i32 1
  store i32 %4328, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %4329 = add i64 %4321, -144
  %4330 = add i64 %storemerge93, 23
  store i64 %4330, i64* %3, align 8
  %4331 = load <2 x float>, <2 x float>* %59, align 1
  %4332 = extractelement <2 x float> %4331, i32 0
  %4333 = inttoptr i64 %4329 to float*
  store float %4332, float* %4333, align 4
  %4334 = load i64, i64* %RBP.i, align 8
  %4335 = add i64 %4334, -140
  %4336 = load i64, i64* %3, align 8
  %4337 = add i64 %4336, 8
  store i64 %4337, i64* %3, align 8
  %4338 = inttoptr i64 %4335 to i32*
  %4339 = load i32, i32* %4338, align 4
  store i32 %4339, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4340 = add i64 %4334, -44
  %4341 = add i64 %4336, 13
  store i64 %4341, i64* %3, align 8
  %4342 = load <2 x float>, <2 x float>* %59, align 1
  %4343 = load <2 x i32>, <2 x i32>* %1072, align 1
  %4344 = inttoptr i64 %4340 to float*
  %4345 = load float, float* %4344, align 4
  %4346 = extractelement <2 x float> %4342, i32 0
  %4347 = fdiv float %4346, %4345
  store float %4347, float* %1074, align 1
  %4348 = bitcast <2 x float> %4342 to <2 x i32>
  %4349 = extractelement <2 x i32> %4348, i32 1
  store i32 %4349, i32* %306, align 1
  %4350 = extractelement <2 x i32> %4343, i32 0
  store i32 %4350, i32* %307, align 1
  %4351 = extractelement <2 x i32> %4343, i32 1
  store i32 %4351, i32* %309, align 1
  %4352 = add i64 %4336, 16
  store i64 %4352, i64* %3, align 8
  %4353 = load <2 x float>, <2 x float>* %59, align 1
  %4354 = extractelement <2 x float> %4353, i32 0
  %4355 = load <2 x float>, <2 x float>* %81, align 1
  %4356 = extractelement <2 x float> %4355, i32 0
  %4357 = fcmp uno float %4354, %4356
  br i1 %4357, label %4358, label %4368

; <label>:4358:                                   ; preds = %block_.L_42bb9a
  %4359 = fadd float %4354, %4356
  %4360 = bitcast float %4359 to i32
  %4361 = and i32 %4360, 2143289344
  %4362 = icmp eq i32 %4361, 2139095040
  %4363 = and i32 %4360, 4194303
  %4364 = icmp ne i32 %4363, 0
  %4365 = and i1 %4362, %4364
  br i1 %4365, label %4366, label %4374

; <label>:4366:                                   ; preds = %4358
  %4367 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4352, %struct.Memory* %MEMORY.27)
  %.pre176 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit833

; <label>:4368:                                   ; preds = %block_.L_42bb9a
  %4369 = fcmp ogt float %4354, %4356
  br i1 %4369, label %4374, label %4370

; <label>:4370:                                   ; preds = %4368
  %4371 = fcmp olt float %4354, %4356
  br i1 %4371, label %4374, label %4372

; <label>:4372:                                   ; preds = %4370
  %4373 = fcmp oeq float %4354, %4356
  br i1 %4373, label %4374, label %4378

; <label>:4374:                                   ; preds = %4372, %4370, %4368, %4358
  %4375 = phi i8 [ 0, %4368 ], [ 0, %4370 ], [ 1, %4372 ], [ 1, %4358 ]
  %4376 = phi i8 [ 0, %4368 ], [ 0, %4370 ], [ 0, %4372 ], [ 1, %4358 ]
  %4377 = phi i8 [ 0, %4368 ], [ 1, %4370 ], [ 0, %4372 ], [ 1, %4358 ]
  store i8 %4375, i8* %30, align 1
  store i8 %4376, i8* %21, align 1
  store i8 %4377, i8* %14, align 1
  br label %4378

; <label>:4378:                                   ; preds = %4374, %4372
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit833

routine_ucomiss__xmm1___xmm0.exit833:             ; preds = %4378, %4366
  %4379 = phi i64 [ %.pre176, %4366 ], [ %4352, %4378 ]
  %4380 = phi %struct.Memory* [ %4367, %4366 ], [ %MEMORY.27, %4378 ]
  %4381 = load i8, i8* %14, align 1
  %4382 = load i8, i8* %30, align 1
  %4383 = or i8 %4382, %4381
  %4384 = icmp ne i8 %4383, 0
  %.v322 = select i1 %4384, i64 53, i64 6
  %4385 = add i64 %4379, %.v322
  store i64 %4385, i64* %3, align 8
  br i1 %4384, label %block_.L_42bbf6, label %block_42bbc7

block_42bbc7:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit833
  %4386 = load i64, i64* %RBP.i, align 8
  %4387 = add i64 %4386, -140
  %4388 = add i64 %4385, 8
  store i64 %4388, i64* %3, align 8
  %4389 = inttoptr i64 %4387 to i32*
  %4390 = load i32, i32* %4389, align 4
  store i32 %4390, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4391 = add i64 %4386, -44
  %4392 = add i64 %4385, 13
  store i64 %4392, i64* %3, align 8
  %4393 = load <2 x float>, <2 x float>* %59, align 1
  %4394 = load <2 x i32>, <2 x i32>* %1072, align 1
  %4395 = inttoptr i64 %4391 to float*
  %4396 = load float, float* %4395, align 4
  %4397 = extractelement <2 x float> %4393, i32 0
  %4398 = fdiv float %4397, %4396
  store float %4398, float* %1074, align 1
  %4399 = bitcast <2 x float> %4393 to <2 x i32>
  %4400 = extractelement <2 x i32> %4399, i32 1
  store i32 %4400, i32* %306, align 1
  %4401 = extractelement <2 x i32> %4394, i32 0
  store i32 %4401, i32* %307, align 1
  %4402 = extractelement <2 x i32> %4394, i32 1
  store i32 %4402, i32* %309, align 1
  %4403 = load <2 x float>, <2 x float>* %59, align 1
  %4404 = extractelement <2 x float> %4403, i32 0
  %4405 = fpext float %4404 to double
  store double %4405, double* %.pre-phi, align 1
  %4406 = add i64 %4385, -173783
  %4407 = add i64 %4385, 22
  %4408 = load i64, i64* %6, align 8
  %4409 = add i64 %4408, -8
  %4410 = inttoptr i64 %4409 to i64*
  store i64 %4407, i64* %4410, align 8
  store i64 %4409, i64* %6, align 8
  store i64 %4406, i64* %3, align 8
  %4411 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %4380)
  %4412 = load i64, i64* %3, align 8
  %4413 = add i64 %4412, ptrtoint (%G_0x28cfb__rip__type* @G_0x28cfb__rip_ to i64)
  %4414 = add i64 %4412, 8
  store i64 %4414, i64* %3, align 8
  %4415 = inttoptr i64 %4413 to i64*
  %4416 = load i64, i64* %4415, align 8
  store i64 %4416, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %4417 = load double, double* %.pre-phi, align 1
  %.cast95 = bitcast i64 %4416 to double
  %4418 = fmul double %.cast95, %4417
  store double %4418, double* %.pre-phi, align 1
  %4419 = load i64, i64* %RBP.i, align 8
  %4420 = add i64 %4419, -592
  %4421 = add i64 %4412, 20
  store i64 %4421, i64* %3, align 8
  %4422 = inttoptr i64 %4420 to double*
  store double %4418, double* %4422, align 8
  %4423 = load i64, i64* %3, align 8
  %4424 = add i64 %4423, 26
  br label %block_.L_42bc0b

block_.L_42bbf6:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit833
  %4425 = add i64 %4385, ptrtoint (%G_0x28cda__rip__type* @G_0x28cda__rip_ to i64)
  %4426 = add i64 %4385, 8
  store i64 %4426, i64* %3, align 8
  %4427 = inttoptr i64 %4425 to i64*
  %4428 = load i64, i64* %4427, align 8
  store i64 %4428, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %4429 = load i64, i64* %RBP.i, align 8
  %4430 = add i64 %4429, -592
  %4431 = add i64 %4385, 16
  store i64 %4431, i64* %3, align 8
  %4432 = inttoptr i64 %4430 to i64*
  store i64 %4428, i64* %4432, align 8
  %4433 = load i64, i64* %3, align 8
  %4434 = add i64 %4433, 5
  store i64 %4434, i64* %3, align 8
  br label %block_.L_42bc0b

block_.L_42bc0b:                                  ; preds = %block_.L_42bbf6, %block_42bbc7
  %storemerge96 = phi i64 [ %4424, %block_42bbc7 ], [ %4434, %block_.L_42bbf6 ]
  %MEMORY.28 = phi %struct.Memory* [ %4411, %block_42bbc7 ], [ %4380, %block_.L_42bbf6 ]
  %4435 = load i64, i64* %RBP.i, align 8
  %4436 = add i64 %4435, -592
  %4437 = add i64 %storemerge96, 8
  store i64 %4437, i64* %3, align 8
  %4438 = inttoptr i64 %4436 to i64*
  %4439 = load i64, i64* %4438, align 8
  store i64 %4439, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  store <4 x i32> zeroinitializer, <4 x i32>* %3114, align 1
  %4440 = bitcast i64 %4439 to <2 x i32>
  %.cast97 = bitcast i64 %4439 to double
  %4441 = fptrunc double %.cast97 to float
  store float %4441, float* %1074, align 1
  %4442 = extractelement <2 x i32> %4440, i32 1
  store i32 %4442, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %4443 = add i64 %4435, -140
  %4444 = add i64 %storemerge96, 23
  store i64 %4444, i64* %3, align 8
  %4445 = load <2 x float>, <2 x float>* %59, align 1
  %4446 = extractelement <2 x float> %4445, i32 0
  %4447 = inttoptr i64 %4443 to float*
  store float %4446, float* %4447, align 4
  %4448 = load i64, i64* %RBP.i, align 8
  %4449 = add i64 %4448, -136
  %4450 = load i64, i64* %3, align 8
  %4451 = add i64 %4450, 8
  store i64 %4451, i64* %3, align 8
  %4452 = inttoptr i64 %4449 to i32*
  %4453 = load i32, i32* %4452, align 4
  store i32 %4453, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4454 = add i64 %4450, 11
  store i64 %4454, i64* %3, align 8
  %4455 = load <2 x float>, <2 x float>* %59, align 1
  %4456 = extractelement <2 x float> %4455, i32 0
  %4457 = load <2 x float>, <2 x float>* %81, align 1
  %4458 = extractelement <2 x float> %4457, i32 0
  %4459 = fcmp uno float %4456, %4458
  br i1 %4459, label %4460, label %4470

; <label>:4460:                                   ; preds = %block_.L_42bc0b
  %4461 = fadd float %4456, %4458
  %4462 = bitcast float %4461 to i32
  %4463 = and i32 %4462, 2143289344
  %4464 = icmp eq i32 %4463, 2139095040
  %4465 = and i32 %4462, 4194303
  %4466 = icmp ne i32 %4465, 0
  %4467 = and i1 %4464, %4466
  br i1 %4467, label %4468, label %4476

; <label>:4468:                                   ; preds = %4460
  %4469 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4454, %struct.Memory* %MEMORY.28)
  %.pre177 = load i64, i64* %3, align 8
  br label %routine_ucomiss__xmm1___xmm0.exit

; <label>:4470:                                   ; preds = %block_.L_42bc0b
  %4471 = fcmp ogt float %4456, %4458
  br i1 %4471, label %4476, label %4472

; <label>:4472:                                   ; preds = %4470
  %4473 = fcmp olt float %4456, %4458
  br i1 %4473, label %4476, label %4474

; <label>:4474:                                   ; preds = %4472
  %4475 = fcmp oeq float %4456, %4458
  br i1 %4475, label %4476, label %4480

; <label>:4476:                                   ; preds = %4474, %4472, %4470, %4460
  %4477 = phi i8 [ 0, %4470 ], [ 0, %4472 ], [ 1, %4474 ], [ 1, %4460 ]
  %4478 = phi i8 [ 0, %4470 ], [ 0, %4472 ], [ 0, %4474 ], [ 1, %4460 ]
  %4479 = phi i8 [ 0, %4470 ], [ 1, %4472 ], [ 0, %4474 ], [ 1, %4460 ]
  store i8 %4477, i8* %30, align 1
  store i8 %4478, i8* %21, align 1
  store i8 %4479, i8* %14, align 1
  br label %4480

; <label>:4480:                                   ; preds = %4476, %4474
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss__xmm1___xmm0.exit

routine_ucomiss__xmm1___xmm0.exit:                ; preds = %4480, %4468
  %4481 = phi i64 [ %.pre177, %4468 ], [ %4454, %4480 ]
  %4482 = phi %struct.Memory* [ %4469, %4468 ], [ %MEMORY.28, %4480 ]
  %4483 = load i8, i8* %14, align 1
  %4484 = load i8, i8* %30, align 1
  %4485 = or i8 %4484, %4483
  %4486 = icmp ne i8 %4485, 0
  %.v323 = select i1 %4486, i64 44, i64 6
  %4487 = add i64 %4481, %.v323
  store i64 %4487, i64* %3, align 8
  br i1 %4486, label %block_.L_42bc59, label %block_42bc33

block_42bc33:                                     ; preds = %routine_ucomiss__xmm1___xmm0.exit
  %4488 = load i64, i64* %RBP.i, align 8
  %4489 = add i64 %4488, -136
  %4490 = add i64 %4487, 8
  store i64 %4490, i64* %3, align 8
  %4491 = inttoptr i64 %4489 to float*
  %4492 = load float, float* %4491, align 4
  %4493 = fpext float %4492 to double
  store double %4493, double* %.pre-phi, align 1
  %4494 = add i64 %4487, -173891
  %4495 = add i64 %4487, 13
  %4496 = load i64, i64* %6, align 8
  %4497 = add i64 %4496, -8
  %4498 = inttoptr i64 %4497 to i64*
  store i64 %4495, i64* %4498, align 8
  store i64 %4497, i64* %6, align 8
  store i64 %4494, i64* %3, align 8
  %4499 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %4482)
  %4500 = load i64, i64* %3, align 8
  %4501 = add i64 %4500, ptrtoint (%G_0x28c98__rip__type* @G_0x28c98__rip_ to i64)
  %4502 = add i64 %4500, 8
  store i64 %4502, i64* %3, align 8
  %4503 = inttoptr i64 %4501 to i64*
  %4504 = load i64, i64* %4503, align 8
  store i64 %4504, i64* %.pre-phi210, align 1
  store double 0.000000e+00, double* %.pre-phi212, align 1
  %4505 = load double, double* %.pre-phi, align 1
  %.cast98 = bitcast i64 %4504 to double
  %4506 = fmul double %.cast98, %4505
  store double %4506, double* %.pre-phi, align 1
  %4507 = load i64, i64* %RBP.i, align 8
  %4508 = add i64 %4507, -600
  %4509 = add i64 %4500, 20
  store i64 %4509, i64* %3, align 8
  %4510 = inttoptr i64 %4508 to double*
  store double %4506, double* %4510, align 8
  %4511 = load i64, i64* %3, align 8
  %4512 = add i64 %4511, 26
  br label %block_.L_42bc6e

block_.L_42bc59:                                  ; preds = %routine_ucomiss__xmm1___xmm0.exit
  %4513 = add i64 %4487, ptrtoint (%G_0x28c77__rip__type* @G_0x28c77__rip_ to i64)
  %4514 = add i64 %4487, 8
  store i64 %4514, i64* %3, align 8
  %4515 = inttoptr i64 %4513 to i64*
  %4516 = load i64, i64* %4515, align 8
  store i64 %4516, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  %4517 = load i64, i64* %RBP.i, align 8
  %4518 = add i64 %4517, -600
  %4519 = add i64 %4487, 16
  store i64 %4519, i64* %3, align 8
  %4520 = inttoptr i64 %4518 to i64*
  store i64 %4516, i64* %4520, align 8
  %4521 = load i64, i64* %3, align 8
  %4522 = add i64 %4521, 5
  store i64 %4522, i64* %3, align 8
  br label %block_.L_42bc6e

block_.L_42bc6e:                                  ; preds = %block_.L_42bc59, %block_42bc33
  %storemerge99 = phi i64 [ %4512, %block_42bc33 ], [ %4522, %block_.L_42bc59 ]
  %MEMORY.29 = phi %struct.Memory* [ %4499, %block_42bc33 ], [ %4482, %block_.L_42bc59 ]
  %4523 = load i64, i64* %RBP.i, align 8
  %4524 = add i64 %4523, -600
  %4525 = add i64 %storemerge99, 8
  store i64 %4525, i64* %3, align 8
  %4526 = inttoptr i64 %4524 to i64*
  %4527 = load i64, i64* %4526, align 8
  store i64 %4527, i64* %.pre-phi206, align 1
  store double 0.000000e+00, double* %.pre-phi208, align 1
  store i64 7, i64* %RDX.i689, align 8
  %4528 = add i64 %4523, -128
  store i64 %4528, i64* %RSI.i, align 8
  %4529 = add i64 %4523, -160
  store i64 %4529, i64* %RDI.i40, align 8
  %4530 = bitcast i64 %4527 to <2 x i32>
  %.cast100 = bitcast i64 %4527 to double
  %4531 = fptrunc double %.cast100 to float
  store float %4531, float* %1074, align 1
  %4532 = extractelement <2 x i32> %4530, i32 1
  store i32 %4532, i32* %306, align 1
  store i32 0, i32* %307, align 1
  store i32 0, i32* %309, align 1
  %4533 = add i64 %4523, -136
  %4534 = add i64 %storemerge99, 36
  store i64 %4534, i64* %3, align 8
  %4535 = load <2 x float>, <2 x float>* %59, align 1
  %4536 = extractelement <2 x float> %4535, i32 0
  %4537 = inttoptr i64 %4533 to float*
  store float %4536, float* %4537, align 4
  %4538 = load i64, i64* %RBP.i, align 8
  %4539 = add i64 %4538, -408
  %4540 = load i64, i64* %3, align 8
  %4541 = add i64 %4540, 7
  store i64 %4541, i64* %3, align 8
  %4542 = inttoptr i64 %4539 to i64*
  %4543 = load i64, i64* %4542, align 8
  store i64 %4543, i64* %RAX.i23, align 8
  %4544 = add i64 %4538, -76
  %4545 = add i64 %4540, 11
  store i64 %4545, i64* %3, align 8
  %4546 = inttoptr i64 %4544 to i32*
  %4547 = load i32, i32* %4546, align 4
  %4548 = sext i32 %4547 to i64
  store i64 %4548, i64* %RCX.i774, align 8
  %4549 = shl nsw i64 %4548, 2
  %4550 = add i64 %4549, %4543
  %4551 = add i64 %4540, 16
  store i64 %4551, i64* %3, align 8
  %4552 = inttoptr i64 %4550 to i32*
  %4553 = load i32, i32* %4552, align 4
  store i32 %4553, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4554 = add i64 %4538, -604
  %4555 = add i64 %4540, 24
  store i64 %4555, i64* %3, align 8
  %4556 = load <2 x float>, <2 x float>* %59, align 1
  %4557 = extractelement <2 x float> %4556, i32 0
  %4558 = inttoptr i64 %4554 to float*
  store float %4557, float* %4558, align 4
  %4559 = load i64, i64* %3, align 8
  %4560 = add i64 %4559, 157206
  %4561 = add i64 %4559, 5
  %4562 = load i64, i64* %6, align 8
  %4563 = add i64 %4562, -8
  %4564 = inttoptr i64 %4563 to i64*
  store i64 %4561, i64* %4564, align 8
  store i64 %4563, i64* %6, align 8
  store i64 %4560, i64* %3, align 8
  %call2_42bcaa = tail call %struct.Memory* @sub_4522c0.FDot(%struct.State* nonnull %0, i64 %4560, %struct.Memory* %MEMORY.29)
  %4565 = load i64, i64* %RBP.i, align 8
  %4566 = add i64 %4565, -400
  %4567 = load i64, i64* %3, align 8
  store i64 %4566, i64* %RSI.i, align 8
  %4568 = add i64 %4565, -320
  store i64 %4568, i64* %RDI.i40, align 8
  %4569 = add i64 %4565, -604
  %4570 = add i64 %4567, 22
  store i64 %4570, i64* %3, align 8
  %4571 = inttoptr i64 %4569 to i32*
  %4572 = load i32, i32* %4571, align 4
  store i32 %4572, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %4573 = load <2 x float>, <2 x float>* %81, align 1
  %4574 = load <2 x i32>, <2 x i32>* %1161, align 1
  %4575 = load <2 x float>, <2 x float>* %59, align 1
  %4576 = extractelement <2 x float> %4573, i32 0
  %4577 = extractelement <2 x float> %4575, i32 0
  %4578 = fadd float %4576, %4577
  store float %4578, float* %978, align 1
  %4579 = bitcast <2 x float> %4573 to <2 x i32>
  %4580 = extractelement <2 x i32> %4579, i32 1
  store i32 %4580, i32* %1162, align 1
  %4581 = extractelement <2 x i32> %4574, i32 0
  store i32 %4581, i32* %1163, align 1
  %4582 = extractelement <2 x i32> %4574, i32 1
  store i32 %4582, i32* %1164, align 1
  %4583 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %4584 = zext i32 %4583 to i64
  store i64 %4584, i64* %RDX.i689, align 8
  %4585 = add i64 %4565, -608
  %4586 = add i64 %4567, 41
  store i64 %4586, i64* %3, align 8
  %4587 = load <2 x float>, <2 x float>* %81, align 1
  %4588 = extractelement <2 x float> %4587, i32 0
  %4589 = inttoptr i64 %4585 to float*
  store float %4588, float* %4589, align 4
  %4590 = load i64, i64* %3, align 8
  %4591 = add i64 %4590, 157160
  %4592 = add i64 %4590, 5
  %4593 = load i64, i64* %6, align 8
  %4594 = add i64 %4593, -8
  %4595 = inttoptr i64 %4594 to i64*
  store i64 %4592, i64* %4595, align 8
  store i64 %4594, i64* %6, align 8
  store i64 %4591, i64* %3, align 8
  %call2_42bcd8 = tail call %struct.Memory* @sub_4522c0.FDot(%struct.State* nonnull %0, i64 %4591, %struct.Memory* %call2_42bcaa)
  %4596 = load i64, i64* %RBP.i, align 8
  %4597 = add i64 %4596, -608
  %4598 = load i64, i64* %3, align 8
  %4599 = add i64 %4598, 8
  store i64 %4599, i64* %3, align 8
  %4600 = inttoptr i64 %4597 to i32*
  %4601 = load i32, i32* %4600, align 4
  store i32 %4601, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %4602 = load <2 x float>, <2 x float>* %81, align 1
  %4603 = load <2 x i32>, <2 x i32>* %1161, align 1
  %4604 = load <2 x float>, <2 x float>* %59, align 1
  %4605 = extractelement <2 x float> %4602, i32 0
  %4606 = extractelement <2 x float> %4604, i32 0
  %4607 = fadd float %4605, %4606
  store float %4607, float* %978, align 1
  %4608 = bitcast <2 x float> %4602 to <2 x i32>
  %4609 = extractelement <2 x i32> %4608, i32 1
  store i32 %4609, i32* %1162, align 1
  %4610 = extractelement <2 x i32> %4603, i32 0
  store i32 %4610, i32* %1163, align 1
  %4611 = extractelement <2 x i32> %4603, i32 1
  store i32 %4611, i32* %1164, align 1
  %4612 = add i64 %4596, -460
  %4613 = add i64 %4598, 20
  store i64 %4613, i64* %3, align 8
  %4614 = load <2 x float>, <2 x float>* %81, align 1
  %4615 = extractelement <2 x float> %4614, i32 0
  %4616 = inttoptr i64 %4612 to float*
  store float %4615, float* %4616, align 4
  %4617 = load i64, i64* %RBP.i, align 8
  %4618 = add i64 %4617, -460
  %4619 = load i64, i64* %3, align 8
  %4620 = add i64 %4619, 8
  store i64 %4620, i64* %3, align 8
  %4621 = inttoptr i64 %4618 to i32*
  %4622 = load i32, i32* %4621, align 4
  store i32 %4622, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4623 = add i64 %4617, -408
  %4624 = add i64 %4619, 15
  store i64 %4624, i64* %3, align 8
  %4625 = inttoptr i64 %4623 to i64*
  %4626 = load i64, i64* %4625, align 8
  store i64 %4626, i64* %RAX.i23, align 8
  %4627 = add i64 %4617, -72
  %4628 = add i64 %4619, 19
  store i64 %4628, i64* %3, align 8
  %4629 = inttoptr i64 %4627 to i32*
  %4630 = load i32, i32* %4629, align 4
  %4631 = sext i32 %4630 to i64
  store i64 %4631, i64* %RCX.i774, align 8
  %4632 = shl nsw i64 %4631, 2
  %4633 = add i64 %4632, %4626
  %4634 = add i64 %4619, 23
  store i64 %4634, i64* %3, align 8
  %4635 = load <2 x float>, <2 x float>* %59, align 1
  %4636 = extractelement <2 x float> %4635, i32 0
  %4637 = inttoptr i64 %4633 to float*
  %4638 = load float, float* %4637, align 4
  %4639 = fcmp uno float %4636, %4638
  br i1 %4639, label %4640, label %4650

; <label>:4640:                                   ; preds = %block_.L_42bc6e
  %4641 = fadd float %4636, %4638
  %4642 = bitcast float %4641 to i32
  %4643 = and i32 %4642, 2143289344
  %4644 = icmp eq i32 %4643, 2139095040
  %4645 = and i32 %4642, 4194303
  %4646 = icmp ne i32 %4645, 0
  %4647 = and i1 %4644, %4646
  br i1 %4647, label %4648, label %4656

; <label>:4648:                                   ; preds = %4640
  %4649 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4634, %struct.Memory* %call2_42bcd8)
  %.pre178 = load i64, i64* %3, align 8
  br label %routine_ucomiss___rax__rcx_4____xmm0.exit

; <label>:4650:                                   ; preds = %block_.L_42bc6e
  %4651 = fcmp ogt float %4636, %4638
  br i1 %4651, label %4656, label %4652

; <label>:4652:                                   ; preds = %4650
  %4653 = fcmp olt float %4636, %4638
  br i1 %4653, label %4656, label %4654

; <label>:4654:                                   ; preds = %4652
  %4655 = fcmp oeq float %4636, %4638
  br i1 %4655, label %4656, label %4660

; <label>:4656:                                   ; preds = %4654, %4652, %4650, %4640
  %4657 = phi i8 [ 0, %4650 ], [ 0, %4652 ], [ 1, %4654 ], [ 1, %4640 ]
  %4658 = phi i8 [ 0, %4650 ], [ 0, %4652 ], [ 0, %4654 ], [ 1, %4640 ]
  %4659 = phi i8 [ 0, %4650 ], [ 1, %4652 ], [ 0, %4654 ], [ 1, %4640 ]
  store i8 %4657, i8* %30, align 1
  store i8 %4658, i8* %21, align 1
  store i8 %4659, i8* %14, align 1
  br label %4660

; <label>:4660:                                   ; preds = %4656, %4654
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss___rax__rcx_4____xmm0.exit

routine_ucomiss___rax__rcx_4____xmm0.exit:        ; preds = %4660, %4648
  %4661 = phi i64 [ %.pre178, %4648 ], [ %4634, %4660 ]
  %4662 = phi %struct.Memory* [ %4649, %4648 ], [ %call2_42bcd8, %4660 ]
  %4663 = add i64 %4661, 47
  %4664 = add i64 %4661, 6
  %4665 = load i8, i8* %14, align 1
  %4666 = load i8, i8* %30, align 1
  %4667 = or i8 %4666, %4665
  %4668 = icmp ne i8 %4667, 0
  %4669 = select i1 %4668, i64 %4663, i64 %4664
  store i64 %4669, i64* %3, align 8
  br i1 %4668, label %block_.L_42bd37, label %block_42bd0e

block_42bd0e:                                     ; preds = %routine_ucomiss___rax__rcx_4____xmm0.exit
  %4670 = load i64, i64* %RBP.i, align 8
  %4671 = add i64 %4670, -460
  %4672 = add i64 %4669, 8
  store i64 %4672, i64* %3, align 8
  %4673 = inttoptr i64 %4671 to i32*
  %4674 = load i32, i32* %4673, align 4
  store i32 %4674, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %4675 = add i64 %4670, -408
  %4676 = add i64 %4669, 15
  store i64 %4676, i64* %3, align 8
  %4677 = inttoptr i64 %4675 to i64*
  %4678 = load i64, i64* %4677, align 8
  store i64 %4678, i64* %RAX.i23, align 8
  %4679 = add i64 %4670, -72
  %4680 = add i64 %4669, 19
  store i64 %4680, i64* %3, align 8
  %4681 = inttoptr i64 %4679 to i32*
  %4682 = load i32, i32* %4681, align 4
  %4683 = sext i32 %4682 to i64
  store i64 %4683, i64* %RCX.i774, align 8
  %4684 = shl nsw i64 %4683, 2
  %4685 = add i64 %4684, %4678
  %4686 = add i64 %4669, 24
  store i64 %4686, i64* %3, align 8
  %4687 = load <2 x float>, <2 x float>* %59, align 1
  %4688 = extractelement <2 x float> %4687, i32 0
  %4689 = inttoptr i64 %4685 to float*
  store float %4688, float* %4689, align 4
  %4690 = load i64, i64* %RBP.i, align 8
  %4691 = add i64 %4690, -76
  %4692 = load i64, i64* %3, align 8
  %4693 = add i64 %4692, 3
  store i64 %4693, i64* %3, align 8
  %4694 = inttoptr i64 %4691 to i32*
  %4695 = load i32, i32* %4694, align 4
  %4696 = zext i32 %4695 to i64
  store i64 %4696, i64* %RDX.i689, align 8
  %4697 = add i64 %4690, -416
  %4698 = add i64 %4692, 10
  store i64 %4698, i64* %3, align 8
  %4699 = inttoptr i64 %4697 to i64*
  %4700 = load i64, i64* %4699, align 8
  store i64 %4700, i64* %RAX.i23, align 8
  %4701 = add i64 %4690, -72
  %4702 = add i64 %4692, 14
  store i64 %4702, i64* %3, align 8
  %4703 = inttoptr i64 %4701 to i32*
  %4704 = load i32, i32* %4703, align 4
  %4705 = sext i32 %4704 to i64
  store i64 %4705, i64* %RCX.i774, align 8
  %4706 = shl nsw i64 %4705, 2
  %4707 = add i64 %4706, %4700
  %4708 = add i64 %4692, 17
  store i64 %4708, i64* %3, align 8
  %4709 = inttoptr i64 %4707 to i32*
  store i32 %4695, i32* %4709, align 4
  %.pre179 = load i64, i64* %3, align 8
  br label %block_.L_42bd37

block_.L_42bd37:                                  ; preds = %block_42bd0e, %routine_ucomiss___rax__rcx_4____xmm0.exit
  %4710 = phi i64 [ %.pre179, %block_42bd0e ], [ %4663, %routine_ucomiss___rax__rcx_4____xmm0.exit ]
  %4711 = add i64 %4710, 5
  store i64 %4711, i64* %3, align 8
  %.pre180 = load i64, i64* %RBP.i, align 8
  br label %block_.L_42bd3c

block_.L_42bd3c:                                  ; preds = %block_.L_42b939, %block_.L_42bd37
  %4712 = phi i64 [ %3738, %block_.L_42b939 ], [ %4711, %block_.L_42bd37 ]
  %4713 = phi i64 [ %3684, %block_.L_42b939 ], [ %.pre180, %block_.L_42bd37 ]
  %MEMORY.31 = phi %struct.Memory* [ %MEMORY.22, %block_.L_42b939 ], [ %4662, %block_.L_42bd37 ]
  %4714 = add i64 %4713, -400
  store i64 %4714, i64* %RDI.i40, align 8
  %4715 = add i64 %4713, -88
  %4716 = add i64 %4712, 11
  store i64 %4716, i64* %3, align 8
  %4717 = inttoptr i64 %4715 to i64*
  %4718 = load i64, i64* %4717, align 8
  store i64 %4718, i64* %RAX.i23, align 8
  %4719 = add i64 %4713, -76
  %4720 = add i64 %4712, 15
  store i64 %4720, i64* %3, align 8
  %4721 = inttoptr i64 %4719 to i32*
  %4722 = load i32, i32* %4721, align 4
  %4723 = sext i32 %4722 to i64
  store i64 %4723, i64* %RCX.i774, align 8
  %4724 = shl nsw i64 %4723, 3
  %4725 = add i64 %4724, %4718
  %4726 = add i64 %4712, 19
  store i64 %4726, i64* %3, align 8
  %4727 = inttoptr i64 %4725 to i64*
  %4728 = load i64, i64* %4727, align 8
  store i64 %4728, i64* %RSI.i, align 8
  %4729 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %4730 = zext i32 %4729 to i64
  store i64 %4730, i64* %RDX.i689, align 8
  %4731 = add i64 %4712, 156692
  %4732 = add i64 %4712, 31
  %4733 = load i64, i64* %6, align 8
  %4734 = add i64 %4733, -8
  %4735 = inttoptr i64 %4734 to i64*
  store i64 %4732, i64* %4735, align 8
  store i64 %4734, i64* %6, align 8
  store i64 %4731, i64* %3, align 8
  %call2_42bd56 = tail call %struct.Memory* @sub_452150.FAdd(%struct.State* nonnull %0, i64 %4731, %struct.Memory* %MEMORY.31)
  %4736 = load i64, i64* %RBP.i, align 8
  %4737 = add i64 %4736, -68
  %4738 = load i64, i64* %3, align 8
  %4739 = add i64 %4738, 7
  store i64 %4739, i64* %3, align 8
  %4740 = inttoptr i64 %4737 to i32*
  store i32 0, i32* %4740, align 4
  %.pre181 = load i64, i64* %3, align 8
  br label %block_.L_42bd62

block_.L_42bd62:                                  ; preds = %block_.L_42be3f, %block_.L_42bd3c
  %4741 = phi i64 [ %5220, %block_.L_42be3f ], [ %.pre181, %block_.L_42bd3c ]
  %4742 = load i64, i64* %RBP.i, align 8
  %4743 = add i64 %4742, -68
  %4744 = add i64 %4741, 3
  store i64 %4744, i64* %3, align 8
  %4745 = inttoptr i64 %4743 to i32*
  %4746 = load i32, i32* %4745, align 4
  %4747 = zext i32 %4746 to i64
  store i64 %4747, i64* %RAX.i23, align 8
  %4748 = add i64 %4742, -8
  %4749 = add i64 %4741, 7
  store i64 %4749, i64* %3, align 8
  %4750 = inttoptr i64 %4748 to i64*
  %4751 = load i64, i64* %4750, align 8
  store i64 %4751, i64* %RCX.i774, align 8
  %4752 = add i64 %4751, 28
  %4753 = add i64 %4741, 10
  store i64 %4753, i64* %3, align 8
  %4754 = inttoptr i64 %4752 to i32*
  %4755 = load i32, i32* %4754, align 4
  %4756 = sub i32 %4746, %4755
  %4757 = icmp ult i32 %4746, %4755
  %4758 = zext i1 %4757 to i8
  store i8 %4758, i8* %14, align 1
  %4759 = and i32 %4756, 255
  %4760 = tail call i32 @llvm.ctpop.i32(i32 %4759)
  %4761 = trunc i32 %4760 to i8
  %4762 = and i8 %4761, 1
  %4763 = xor i8 %4762, 1
  store i8 %4763, i8* %21, align 1
  %4764 = xor i32 %4755, %4746
  %4765 = xor i32 %4764, %4756
  %4766 = lshr i32 %4765, 4
  %4767 = trunc i32 %4766 to i8
  %4768 = and i8 %4767, 1
  store i8 %4768, i8* %27, align 1
  %4769 = icmp eq i32 %4756, 0
  %4770 = zext i1 %4769 to i8
  store i8 %4770, i8* %30, align 1
  %4771 = lshr i32 %4756, 31
  %4772 = trunc i32 %4771 to i8
  store i8 %4772, i8* %33, align 1
  %4773 = lshr i32 %4746, 31
  %4774 = lshr i32 %4755, 31
  %4775 = xor i32 %4774, %4773
  %4776 = xor i32 %4771, %4773
  %4777 = add nuw nsw i32 %4776, %4775
  %4778 = icmp eq i32 %4777, 2
  %4779 = zext i1 %4778 to i8
  store i8 %4779, i8* %39, align 1
  %4780 = icmp ne i8 %4772, 0
  %4781 = xor i1 %4780, %4778
  %.v213 = select i1 %4781, i64 16, i64 240
  %4782 = add i64 %4741, %.v213
  store i64 %4782, i64* %3, align 8
  br i1 %4781, label %block_42bd72, label %block_.L_42be52

block_42bd72:                                     ; preds = %block_.L_42bd62
  %4783 = add i64 %4782, 4
  store i64 %4783, i64* %3, align 8
  %4784 = load i64, i64* %4750, align 8
  store i64 %4784, i64* %RAX.i23, align 8
  %4785 = add i64 %4782, 7
  store i64 %4785, i64* %3, align 8
  %4786 = inttoptr i64 %4784 to i64*
  %4787 = load i64, i64* %4786, align 8
  store i64 %4787, i64* %RAX.i23, align 8
  %4788 = add i64 %4782, 11
  store i64 %4788, i64* %3, align 8
  %4789 = load i32, i32* %4745, align 4
  %4790 = sext i32 %4789 to i64
  store i64 %4790, i64* %RCX.i774, align 8
  %4791 = shl nsw i64 %4790, 3
  %4792 = add i64 %4791, %4787
  %4793 = add i64 %4782, 15
  store i64 %4793, i64* %3, align 8
  %4794 = inttoptr i64 %4792 to i64*
  %4795 = load i64, i64* %4794, align 8
  store i64 %4795, i64* %RAX.i23, align 8
  %4796 = add i64 %4742, -76
  %4797 = add i64 %4782, 18
  store i64 %4797, i64* %3, align 8
  %4798 = inttoptr i64 %4796 to i32*
  %4799 = load i32, i32* %4798, align 4
  %4800 = add i32 %4799, -1
  %4801 = zext i32 %4800 to i64
  store i64 %4801, i64* %RDX.i689, align 8
  %4802 = icmp eq i32 %4799, 0
  %4803 = zext i1 %4802 to i8
  store i8 %4803, i8* %14, align 1
  %4804 = and i32 %4800, 255
  %4805 = tail call i32 @llvm.ctpop.i32(i32 %4804)
  %4806 = trunc i32 %4805 to i8
  %4807 = and i8 %4806, 1
  %4808 = xor i8 %4807, 1
  store i8 %4808, i8* %21, align 1
  %4809 = xor i32 %4800, %4799
  %4810 = lshr i32 %4809, 4
  %4811 = trunc i32 %4810 to i8
  %4812 = and i8 %4811, 1
  store i8 %4812, i8* %27, align 1
  %4813 = icmp eq i32 %4800, 0
  %4814 = zext i1 %4813 to i8
  store i8 %4814, i8* %30, align 1
  %4815 = lshr i32 %4800, 31
  %4816 = trunc i32 %4815 to i8
  store i8 %4816, i8* %33, align 1
  %4817 = lshr i32 %4799, 31
  %4818 = xor i32 %4815, %4817
  %4819 = add nuw nsw i32 %4818, %4817
  %4820 = icmp eq i32 %4819, 2
  %4821 = zext i1 %4820 to i8
  store i8 %4821, i8* %39, align 1
  %4822 = sext i32 %4800 to i64
  store i64 %4822, i64* %RCX.i774, align 8
  %4823 = add i64 %4795, %4822
  %4824 = add i64 %4782, 28
  store i64 %4824, i64* %3, align 8
  %4825 = inttoptr i64 %4823 to i8*
  %4826 = load i8, i8* %4825, align 1
  %4827 = sext i8 %4826 to i64
  %4828 = and i64 %4827, 4294967295
  store i64 %4828, i64* %RDX.i689, align 8
  %4829 = sext i8 %4826 to i32
  %4830 = add nsw i32 %4829, -32
  %4831 = icmp ult i8 %4826, 32
  %4832 = zext i1 %4831 to i8
  store i8 %4832, i8* %14, align 1
  %4833 = and i32 %4830, 255
  %4834 = tail call i32 @llvm.ctpop.i32(i32 %4833)
  %4835 = trunc i32 %4834 to i8
  %4836 = and i8 %4835, 1
  %4837 = xor i8 %4836, 1
  store i8 %4837, i8* %21, align 1
  %4838 = xor i32 %4830, %4829
  %4839 = lshr i32 %4838, 4
  %4840 = trunc i32 %4839 to i8
  %4841 = and i8 %4840, 1
  store i8 %4841, i8* %27, align 1
  %4842 = icmp eq i32 %4830, 0
  %4843 = zext i1 %4842 to i8
  store i8 %4843, i8* %30, align 1
  %4844 = lshr i32 %4830, 31
  %4845 = trunc i32 %4844 to i8
  store i8 %4845, i8* %33, align 1
  %4846 = lshr i32 %4829, 31
  %4847 = xor i32 %4844, %4846
  %4848 = add nuw nsw i32 %4847, %4846
  %4849 = icmp eq i32 %4848, 2
  %4850 = zext i1 %4849 to i8
  store i8 %4850, i8* %39, align 1
  %.v233 = select i1 %4842, i64 205, i64 37
  %4851 = add i64 %4782, %.v233
  store i64 %4851, i64* %3, align 8
  br i1 %4842, label %block_.L_42be3f, label %block_42bd97

block_42bd97:                                     ; preds = %block_42bd72
  %4852 = load i64, i64* %RBP.i, align 8
  %4853 = add i64 %4852, -8
  %4854 = add i64 %4851, 4
  store i64 %4854, i64* %3, align 8
  %4855 = inttoptr i64 %4853 to i64*
  %4856 = load i64, i64* %4855, align 8
  store i64 %4856, i64* %RAX.i23, align 8
  %4857 = add i64 %4851, 7
  store i64 %4857, i64* %3, align 8
  %4858 = inttoptr i64 %4856 to i64*
  %4859 = load i64, i64* %4858, align 8
  store i64 %4859, i64* %RAX.i23, align 8
  %4860 = add i64 %4852, -68
  %4861 = add i64 %4851, 11
  store i64 %4861, i64* %3, align 8
  %4862 = inttoptr i64 %4860 to i32*
  %4863 = load i32, i32* %4862, align 4
  %4864 = sext i32 %4863 to i64
  store i64 %4864, i64* %RCX.i774, align 8
  %4865 = shl nsw i64 %4864, 3
  %4866 = add i64 %4865, %4859
  %4867 = add i64 %4851, 15
  store i64 %4867, i64* %3, align 8
  %4868 = inttoptr i64 %4866 to i64*
  %4869 = load i64, i64* %4868, align 8
  store i64 %4869, i64* %RAX.i23, align 8
  %4870 = add i64 %4852, -76
  %4871 = add i64 %4851, 18
  store i64 %4871, i64* %3, align 8
  %4872 = inttoptr i64 %4870 to i32*
  %4873 = load i32, i32* %4872, align 4
  %4874 = add i32 %4873, -1
  %4875 = zext i32 %4874 to i64
  store i64 %4875, i64* %RDX.i689, align 8
  %4876 = icmp eq i32 %4873, 0
  %4877 = zext i1 %4876 to i8
  store i8 %4877, i8* %14, align 1
  %4878 = and i32 %4874, 255
  %4879 = tail call i32 @llvm.ctpop.i32(i32 %4878)
  %4880 = trunc i32 %4879 to i8
  %4881 = and i8 %4880, 1
  %4882 = xor i8 %4881, 1
  store i8 %4882, i8* %21, align 1
  %4883 = xor i32 %4874, %4873
  %4884 = lshr i32 %4883, 4
  %4885 = trunc i32 %4884 to i8
  %4886 = and i8 %4885, 1
  store i8 %4886, i8* %27, align 1
  %4887 = icmp eq i32 %4874, 0
  %4888 = zext i1 %4887 to i8
  store i8 %4888, i8* %30, align 1
  %4889 = lshr i32 %4874, 31
  %4890 = trunc i32 %4889 to i8
  store i8 %4890, i8* %33, align 1
  %4891 = lshr i32 %4873, 31
  %4892 = xor i32 %4889, %4891
  %4893 = add nuw nsw i32 %4892, %4891
  %4894 = icmp eq i32 %4893, 2
  %4895 = zext i1 %4894 to i8
  store i8 %4895, i8* %39, align 1
  %4896 = sext i32 %4874 to i64
  store i64 %4896, i64* %RCX.i774, align 8
  %4897 = add i64 %4869, %4896
  %4898 = add i64 %4851, 28
  store i64 %4898, i64* %3, align 8
  %4899 = inttoptr i64 %4897 to i8*
  %4900 = load i8, i8* %4899, align 1
  %4901 = sext i8 %4900 to i64
  %4902 = and i64 %4901, 4294967295
  store i64 %4902, i64* %RDX.i689, align 8
  %4903 = sext i8 %4900 to i32
  %4904 = add nsw i32 %4903, -46
  %4905 = icmp ult i8 %4900, 46
  %4906 = zext i1 %4905 to i8
  store i8 %4906, i8* %14, align 1
  %4907 = and i32 %4904, 255
  %4908 = tail call i32 @llvm.ctpop.i32(i32 %4907)
  %4909 = trunc i32 %4908 to i8
  %4910 = and i8 %4909, 1
  %4911 = xor i8 %4910, 1
  store i8 %4911, i8* %21, align 1
  %4912 = xor i32 %4904, %4903
  %4913 = lshr i32 %4912, 4
  %4914 = trunc i32 %4913 to i8
  %4915 = and i8 %4914, 1
  store i8 %4915, i8* %27, align 1
  %4916 = icmp eq i32 %4904, 0
  %4917 = zext i1 %4916 to i8
  store i8 %4917, i8* %30, align 1
  %4918 = lshr i32 %4904, 31
  %4919 = trunc i32 %4918 to i8
  store i8 %4919, i8* %33, align 1
  %4920 = lshr i32 %4903, 31
  %4921 = xor i32 %4918, %4920
  %4922 = add nuw nsw i32 %4921, %4920
  %4923 = icmp eq i32 %4922, 2
  %4924 = zext i1 %4923 to i8
  store i8 %4924, i8* %39, align 1
  %.v234 = select i1 %4916, i64 168, i64 37
  %4925 = add i64 %4851, %.v234
  store i64 %4925, i64* %3, align 8
  br i1 %4916, label %block_.L_42be3f, label %block_42bdbc

block_42bdbc:                                     ; preds = %block_42bd97
  %4926 = load i64, i64* %RBP.i, align 8
  %4927 = add i64 %4926, -8
  %4928 = add i64 %4925, 4
  store i64 %4928, i64* %3, align 8
  %4929 = inttoptr i64 %4927 to i64*
  %4930 = load i64, i64* %4929, align 8
  store i64 %4930, i64* %RAX.i23, align 8
  %4931 = add i64 %4925, 7
  store i64 %4931, i64* %3, align 8
  %4932 = inttoptr i64 %4930 to i64*
  %4933 = load i64, i64* %4932, align 8
  store i64 %4933, i64* %RAX.i23, align 8
  %4934 = add i64 %4926, -68
  %4935 = add i64 %4925, 11
  store i64 %4935, i64* %3, align 8
  %4936 = inttoptr i64 %4934 to i32*
  %4937 = load i32, i32* %4936, align 4
  %4938 = sext i32 %4937 to i64
  store i64 %4938, i64* %RCX.i774, align 8
  %4939 = shl nsw i64 %4938, 3
  %4940 = add i64 %4939, %4933
  %4941 = add i64 %4925, 15
  store i64 %4941, i64* %3, align 8
  %4942 = inttoptr i64 %4940 to i64*
  %4943 = load i64, i64* %4942, align 8
  store i64 %4943, i64* %RAX.i23, align 8
  %4944 = add i64 %4926, -76
  %4945 = add i64 %4925, 18
  store i64 %4945, i64* %3, align 8
  %4946 = inttoptr i64 %4944 to i32*
  %4947 = load i32, i32* %4946, align 4
  %4948 = add i32 %4947, -1
  %4949 = zext i32 %4948 to i64
  store i64 %4949, i64* %RDX.i689, align 8
  %4950 = icmp eq i32 %4947, 0
  %4951 = zext i1 %4950 to i8
  store i8 %4951, i8* %14, align 1
  %4952 = and i32 %4948, 255
  %4953 = tail call i32 @llvm.ctpop.i32(i32 %4952)
  %4954 = trunc i32 %4953 to i8
  %4955 = and i8 %4954, 1
  %4956 = xor i8 %4955, 1
  store i8 %4956, i8* %21, align 1
  %4957 = xor i32 %4948, %4947
  %4958 = lshr i32 %4957, 4
  %4959 = trunc i32 %4958 to i8
  %4960 = and i8 %4959, 1
  store i8 %4960, i8* %27, align 1
  %4961 = icmp eq i32 %4948, 0
  %4962 = zext i1 %4961 to i8
  store i8 %4962, i8* %30, align 1
  %4963 = lshr i32 %4948, 31
  %4964 = trunc i32 %4963 to i8
  store i8 %4964, i8* %33, align 1
  %4965 = lshr i32 %4947, 31
  %4966 = xor i32 %4963, %4965
  %4967 = add nuw nsw i32 %4966, %4965
  %4968 = icmp eq i32 %4967, 2
  %4969 = zext i1 %4968 to i8
  store i8 %4969, i8* %39, align 1
  %4970 = sext i32 %4948 to i64
  store i64 %4970, i64* %RCX.i774, align 8
  %4971 = add i64 %4943, %4970
  %4972 = add i64 %4925, 28
  store i64 %4972, i64* %3, align 8
  %4973 = inttoptr i64 %4971 to i8*
  %4974 = load i8, i8* %4973, align 1
  %4975 = sext i8 %4974 to i64
  %4976 = and i64 %4975, 4294967295
  store i64 %4976, i64* %RDX.i689, align 8
  %4977 = sext i8 %4974 to i32
  %4978 = add nsw i32 %4977, -95
  %4979 = icmp ult i8 %4974, 95
  %4980 = zext i1 %4979 to i8
  store i8 %4980, i8* %14, align 1
  %4981 = and i32 %4978, 255
  %4982 = tail call i32 @llvm.ctpop.i32(i32 %4981)
  %4983 = trunc i32 %4982 to i8
  %4984 = and i8 %4983, 1
  %4985 = xor i8 %4984, 1
  store i8 %4985, i8* %21, align 1
  %4986 = xor i32 %4977, 16
  %4987 = xor i32 %4986, %4978
  %4988 = lshr i32 %4987, 4
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  store i8 %4990, i8* %27, align 1
  %4991 = icmp eq i32 %4978, 0
  %4992 = zext i1 %4991 to i8
  store i8 %4992, i8* %30, align 1
  %4993 = lshr i32 %4978, 31
  %4994 = trunc i32 %4993 to i8
  store i8 %4994, i8* %33, align 1
  %4995 = lshr i32 %4977, 31
  %4996 = xor i32 %4993, %4995
  %4997 = add nuw nsw i32 %4996, %4995
  %4998 = icmp eq i32 %4997, 2
  %4999 = zext i1 %4998 to i8
  store i8 %4999, i8* %39, align 1
  %.v235 = select i1 %4991, i64 131, i64 37
  %5000 = add i64 %4925, %.v235
  store i64 %5000, i64* %3, align 8
  br i1 %4991, label %block_.L_42be3f, label %block_42bde1

block_42bde1:                                     ; preds = %block_42bdbc
  %5001 = load i64, i64* %RBP.i, align 8
  %5002 = add i64 %5001, -8
  %5003 = add i64 %5000, 4
  store i64 %5003, i64* %3, align 8
  %5004 = inttoptr i64 %5002 to i64*
  %5005 = load i64, i64* %5004, align 8
  store i64 %5005, i64* %RAX.i23, align 8
  %5006 = add i64 %5000, 7
  store i64 %5006, i64* %3, align 8
  %5007 = inttoptr i64 %5005 to i64*
  %5008 = load i64, i64* %5007, align 8
  store i64 %5008, i64* %RAX.i23, align 8
  %5009 = add i64 %5001, -68
  %5010 = add i64 %5000, 11
  store i64 %5010, i64* %3, align 8
  %5011 = inttoptr i64 %5009 to i32*
  %5012 = load i32, i32* %5011, align 4
  %5013 = sext i32 %5012 to i64
  store i64 %5013, i64* %RCX.i774, align 8
  %5014 = shl nsw i64 %5013, 3
  %5015 = add i64 %5014, %5008
  %5016 = add i64 %5000, 15
  store i64 %5016, i64* %3, align 8
  %5017 = inttoptr i64 %5015 to i64*
  %5018 = load i64, i64* %5017, align 8
  store i64 %5018, i64* %RAX.i23, align 8
  %5019 = add i64 %5001, -76
  %5020 = add i64 %5000, 18
  store i64 %5020, i64* %3, align 8
  %5021 = inttoptr i64 %5019 to i32*
  %5022 = load i32, i32* %5021, align 4
  %5023 = add i32 %5022, -1
  %5024 = zext i32 %5023 to i64
  store i64 %5024, i64* %RDX.i689, align 8
  %5025 = icmp eq i32 %5022, 0
  %5026 = zext i1 %5025 to i8
  store i8 %5026, i8* %14, align 1
  %5027 = and i32 %5023, 255
  %5028 = tail call i32 @llvm.ctpop.i32(i32 %5027)
  %5029 = trunc i32 %5028 to i8
  %5030 = and i8 %5029, 1
  %5031 = xor i8 %5030, 1
  store i8 %5031, i8* %21, align 1
  %5032 = xor i32 %5023, %5022
  %5033 = lshr i32 %5032, 4
  %5034 = trunc i32 %5033 to i8
  %5035 = and i8 %5034, 1
  store i8 %5035, i8* %27, align 1
  %5036 = icmp eq i32 %5023, 0
  %5037 = zext i1 %5036 to i8
  store i8 %5037, i8* %30, align 1
  %5038 = lshr i32 %5023, 31
  %5039 = trunc i32 %5038 to i8
  store i8 %5039, i8* %33, align 1
  %5040 = lshr i32 %5022, 31
  %5041 = xor i32 %5038, %5040
  %5042 = add nuw nsw i32 %5041, %5040
  %5043 = icmp eq i32 %5042, 2
  %5044 = zext i1 %5043 to i8
  store i8 %5044, i8* %39, align 1
  %5045 = sext i32 %5023 to i64
  store i64 %5045, i64* %RCX.i774, align 8
  %5046 = add i64 %5018, %5045
  %5047 = add i64 %5000, 28
  store i64 %5047, i64* %3, align 8
  %5048 = inttoptr i64 %5046 to i8*
  %5049 = load i8, i8* %5048, align 1
  %5050 = sext i8 %5049 to i64
  %5051 = and i64 %5050, 4294967295
  store i64 %5051, i64* %RDX.i689, align 8
  %5052 = sext i8 %5049 to i32
  %5053 = add nsw i32 %5052, -45
  %5054 = icmp ult i8 %5049, 45
  %5055 = zext i1 %5054 to i8
  store i8 %5055, i8* %14, align 1
  %5056 = and i32 %5053, 255
  %5057 = tail call i32 @llvm.ctpop.i32(i32 %5056)
  %5058 = trunc i32 %5057 to i8
  %5059 = and i8 %5058, 1
  %5060 = xor i8 %5059, 1
  store i8 %5060, i8* %21, align 1
  %5061 = xor i32 %5053, %5052
  %5062 = lshr i32 %5061, 4
  %5063 = trunc i32 %5062 to i8
  %5064 = and i8 %5063, 1
  store i8 %5064, i8* %27, align 1
  %5065 = icmp eq i32 %5053, 0
  %5066 = zext i1 %5065 to i8
  store i8 %5066, i8* %30, align 1
  %5067 = lshr i32 %5053, 31
  %5068 = trunc i32 %5067 to i8
  store i8 %5068, i8* %33, align 1
  %5069 = lshr i32 %5052, 31
  %5070 = xor i32 %5067, %5069
  %5071 = add nuw nsw i32 %5070, %5069
  %5072 = icmp eq i32 %5071, 2
  %5073 = zext i1 %5072 to i8
  store i8 %5073, i8* %39, align 1
  %.v236 = select i1 %5065, i64 94, i64 37
  %5074 = add i64 %5000, %.v236
  store i64 %5074, i64* %3, align 8
  br i1 %5065, label %block_.L_42be3f, label %block_42be06

block_42be06:                                     ; preds = %block_42bde1
  %5075 = load i64, i64* %RBP.i, align 8
  %5076 = add i64 %5075, -8
  %5077 = add i64 %5074, 4
  store i64 %5077, i64* %3, align 8
  %5078 = inttoptr i64 %5076 to i64*
  %5079 = load i64, i64* %5078, align 8
  store i64 %5079, i64* %RAX.i23, align 8
  %5080 = add i64 %5074, 7
  store i64 %5080, i64* %3, align 8
  %5081 = inttoptr i64 %5079 to i64*
  %5082 = load i64, i64* %5081, align 8
  store i64 %5082, i64* %RAX.i23, align 8
  %5083 = add i64 %5075, -68
  %5084 = add i64 %5074, 11
  store i64 %5084, i64* %3, align 8
  %5085 = inttoptr i64 %5083 to i32*
  %5086 = load i32, i32* %5085, align 4
  %5087 = sext i32 %5086 to i64
  store i64 %5087, i64* %RCX.i774, align 8
  %5088 = shl nsw i64 %5087, 3
  %5089 = add i64 %5088, %5082
  %5090 = add i64 %5074, 15
  store i64 %5090, i64* %3, align 8
  %5091 = inttoptr i64 %5089 to i64*
  %5092 = load i64, i64* %5091, align 8
  store i64 %5092, i64* %RAX.i23, align 8
  %5093 = add i64 %5075, -76
  %5094 = add i64 %5074, 18
  store i64 %5094, i64* %3, align 8
  %5095 = inttoptr i64 %5093 to i32*
  %5096 = load i32, i32* %5095, align 4
  %5097 = add i32 %5096, -1
  %5098 = zext i32 %5097 to i64
  store i64 %5098, i64* %RDX.i689, align 8
  %5099 = icmp eq i32 %5096, 0
  %5100 = zext i1 %5099 to i8
  store i8 %5100, i8* %14, align 1
  %5101 = and i32 %5097, 255
  %5102 = tail call i32 @llvm.ctpop.i32(i32 %5101)
  %5103 = trunc i32 %5102 to i8
  %5104 = and i8 %5103, 1
  %5105 = xor i8 %5104, 1
  store i8 %5105, i8* %21, align 1
  %5106 = xor i32 %5097, %5096
  %5107 = lshr i32 %5106, 4
  %5108 = trunc i32 %5107 to i8
  %5109 = and i8 %5108, 1
  store i8 %5109, i8* %27, align 1
  %5110 = icmp eq i32 %5097, 0
  %5111 = zext i1 %5110 to i8
  store i8 %5111, i8* %30, align 1
  %5112 = lshr i32 %5097, 31
  %5113 = trunc i32 %5112 to i8
  store i8 %5113, i8* %33, align 1
  %5114 = lshr i32 %5096, 31
  %5115 = xor i32 %5112, %5114
  %5116 = add nuw nsw i32 %5115, %5114
  %5117 = icmp eq i32 %5116, 2
  %5118 = zext i1 %5117 to i8
  store i8 %5118, i8* %39, align 1
  %5119 = sext i32 %5097 to i64
  store i64 %5119, i64* %RCX.i774, align 8
  %5120 = add i64 %5092, %5119
  %5121 = add i64 %5074, 28
  store i64 %5121, i64* %3, align 8
  %5122 = inttoptr i64 %5120 to i8*
  %5123 = load i8, i8* %5122, align 1
  %5124 = sext i8 %5123 to i64
  %5125 = and i64 %5124, 4294967295
  store i64 %5125, i64* %RDX.i689, align 8
  %5126 = sext i8 %5123 to i32
  %5127 = add nsw i32 %5126, -126
  %5128 = icmp ult i8 %5123, 126
  %5129 = zext i1 %5128 to i8
  store i8 %5129, i8* %14, align 1
  %5130 = and i32 %5127, 255
  %5131 = tail call i32 @llvm.ctpop.i32(i32 %5130)
  %5132 = trunc i32 %5131 to i8
  %5133 = and i8 %5132, 1
  %5134 = xor i8 %5133, 1
  store i8 %5134, i8* %21, align 1
  %5135 = xor i32 %5126, 16
  %5136 = xor i32 %5135, %5127
  %5137 = lshr i32 %5136, 4
  %5138 = trunc i32 %5137 to i8
  %5139 = and i8 %5138, 1
  store i8 %5139, i8* %27, align 1
  %5140 = icmp eq i32 %5127, 0
  %5141 = zext i1 %5140 to i8
  store i8 %5141, i8* %30, align 1
  %5142 = lshr i32 %5127, 31
  %5143 = trunc i32 %5142 to i8
  store i8 %5143, i8* %33, align 1
  %5144 = lshr i32 %5126, 31
  %5145 = xor i32 %5142, %5144
  %5146 = add nuw nsw i32 %5145, %5144
  %5147 = icmp eq i32 %5146, 2
  %5148 = zext i1 %5147 to i8
  store i8 %5148, i8* %39, align 1
  %.v237 = select i1 %5140, i64 57, i64 37
  %5149 = add i64 %5074, %.v237
  store i64 %5149, i64* %3, align 8
  br i1 %5140, label %block_.L_42be3f, label %block_42be2b

block_42be2b:                                     ; preds = %block_42be06
  %5150 = load i64, i64* %RBP.i, align 8
  %5151 = add i64 %5150, -432
  %5152 = add i64 %5149, 7
  store i64 %5152, i64* %3, align 8
  %5153 = inttoptr i64 %5151 to i64*
  %5154 = load i64, i64* %5153, align 8
  store i64 %5154, i64* %RAX.i23, align 8
  %5155 = add i64 %5150, -68
  %5156 = add i64 %5149, 11
  store i64 %5156, i64* %3, align 8
  %5157 = inttoptr i64 %5155 to i32*
  %5158 = load i32, i32* %5157, align 4
  %5159 = sext i32 %5158 to i64
  store i64 %5159, i64* %RCX.i774, align 8
  %5160 = shl nsw i64 %5159, 2
  %5161 = add i64 %5160, %5154
  %5162 = add i64 %5149, 14
  store i64 %5162, i64* %3, align 8
  %5163 = inttoptr i64 %5161 to i32*
  %5164 = load i32, i32* %5163, align 4
  %5165 = add i32 %5164, 1
  %5166 = zext i32 %5165 to i64
  store i64 %5166, i64* %RDX.i689, align 8
  %5167 = icmp eq i32 %5164, -1
  %5168 = icmp eq i32 %5165, 0
  %5169 = or i1 %5167, %5168
  %5170 = zext i1 %5169 to i8
  store i8 %5170, i8* %14, align 1
  %5171 = and i32 %5165, 255
  %5172 = tail call i32 @llvm.ctpop.i32(i32 %5171)
  %5173 = trunc i32 %5172 to i8
  %5174 = and i8 %5173, 1
  %5175 = xor i8 %5174, 1
  store i8 %5175, i8* %21, align 1
  %5176 = xor i32 %5165, %5164
  %5177 = lshr i32 %5176, 4
  %5178 = trunc i32 %5177 to i8
  %5179 = and i8 %5178, 1
  store i8 %5179, i8* %27, align 1
  %5180 = zext i1 %5168 to i8
  store i8 %5180, i8* %30, align 1
  %5181 = lshr i32 %5165, 31
  %5182 = trunc i32 %5181 to i8
  store i8 %5182, i8* %33, align 1
  %5183 = lshr i32 %5164, 31
  %5184 = xor i32 %5181, %5183
  %5185 = add nuw nsw i32 %5184, %5181
  %5186 = icmp eq i32 %5185, 2
  %5187 = zext i1 %5186 to i8
  store i8 %5187, i8* %39, align 1
  %5188 = add i64 %5149, 20
  store i64 %5188, i64* %3, align 8
  store i32 %5165, i32* %5163, align 4
  %.pre182 = load i64, i64* %3, align 8
  br label %block_.L_42be3f

block_.L_42be3f:                                  ; preds = %block_42be2b, %block_42be06, %block_42bde1, %block_42bdbc, %block_42bd97, %block_42bd72
  %5189 = phi i64 [ %.pre182, %block_42be2b ], [ %5149, %block_42be06 ], [ %5074, %block_42bde1 ], [ %5000, %block_42bdbc ], [ %4925, %block_42bd97 ], [ %4851, %block_42bd72 ]
  %5190 = load i64, i64* %RBP.i, align 8
  %5191 = add i64 %5190, -68
  %5192 = add i64 %5189, 8
  store i64 %5192, i64* %3, align 8
  %5193 = inttoptr i64 %5191 to i32*
  %5194 = load i32, i32* %5193, align 4
  %5195 = add i32 %5194, 1
  %5196 = zext i32 %5195 to i64
  store i64 %5196, i64* %RAX.i23, align 8
  %5197 = icmp eq i32 %5194, -1
  %5198 = icmp eq i32 %5195, 0
  %5199 = or i1 %5197, %5198
  %5200 = zext i1 %5199 to i8
  store i8 %5200, i8* %14, align 1
  %5201 = and i32 %5195, 255
  %5202 = tail call i32 @llvm.ctpop.i32(i32 %5201)
  %5203 = trunc i32 %5202 to i8
  %5204 = and i8 %5203, 1
  %5205 = xor i8 %5204, 1
  store i8 %5205, i8* %21, align 1
  %5206 = xor i32 %5195, %5194
  %5207 = lshr i32 %5206, 4
  %5208 = trunc i32 %5207 to i8
  %5209 = and i8 %5208, 1
  store i8 %5209, i8* %27, align 1
  %5210 = zext i1 %5198 to i8
  store i8 %5210, i8* %30, align 1
  %5211 = lshr i32 %5195, 31
  %5212 = trunc i32 %5211 to i8
  store i8 %5212, i8* %33, align 1
  %5213 = lshr i32 %5194, 31
  %5214 = xor i32 %5211, %5213
  %5215 = add nuw nsw i32 %5214, %5211
  %5216 = icmp eq i32 %5215, 2
  %5217 = zext i1 %5216 to i8
  store i8 %5217, i8* %39, align 1
  %5218 = add i64 %5189, 14
  store i64 %5218, i64* %3, align 8
  store i32 %5195, i32* %5193, align 4
  %5219 = load i64, i64* %3, align 8
  %5220 = add i64 %5219, -235
  store i64 %5220, i64* %3, align 8
  br label %block_.L_42bd62

block_.L_42be52:                                  ; preds = %block_.L_42bd62
  %5221 = add i64 %4742, -76
  %5222 = add i64 %4782, 8
  store i64 %5222, i64* %3, align 8
  %5223 = inttoptr i64 %5221 to i32*
  %5224 = load i32, i32* %5223, align 4
  %5225 = add i32 %5224, 1
  %5226 = zext i32 %5225 to i64
  store i64 %5226, i64* %RAX.i23, align 8
  %5227 = icmp eq i32 %5224, -1
  %5228 = icmp eq i32 %5225, 0
  %5229 = or i1 %5227, %5228
  %5230 = zext i1 %5229 to i8
  store i8 %5230, i8* %14, align 1
  %5231 = and i32 %5225, 255
  %5232 = tail call i32 @llvm.ctpop.i32(i32 %5231)
  %5233 = trunc i32 %5232 to i8
  %5234 = and i8 %5233, 1
  %5235 = xor i8 %5234, 1
  store i8 %5235, i8* %21, align 1
  %5236 = xor i32 %5225, %5224
  %5237 = lshr i32 %5236, 4
  %5238 = trunc i32 %5237 to i8
  %5239 = and i8 %5238, 1
  store i8 %5239, i8* %27, align 1
  %5240 = zext i1 %5228 to i8
  store i8 %5240, i8* %30, align 1
  %5241 = lshr i32 %5225, 31
  %5242 = trunc i32 %5241 to i8
  store i8 %5242, i8* %33, align 1
  %5243 = lshr i32 %5224, 31
  %5244 = xor i32 %5241, %5243
  %5245 = add nuw nsw i32 %5244, %5241
  %5246 = icmp eq i32 %5245, 2
  %5247 = zext i1 %5246 to i8
  store i8 %5247, i8* %39, align 1
  %5248 = add i64 %4782, 14
  store i64 %5248, i64* %3, align 8
  store i32 %5225, i32* %5223, align 4
  %5249 = load i64, i64* %3, align 8
  %5250 = add i64 %5249, -1407
  store i64 %5250, i64* %3, align 8
  br label %block_.L_42b8e1

block_.L_42be65.loopexit:                         ; preds = %block_.L_42b8e1
  br label %block_.L_42be65

block_.L_42be65:                                  ; preds = %block_.L_42be65.loopexit, %block_42b934
  %5251 = phi i64 [ %3714, %block_42b934 ], [ %3636, %block_.L_42be65.loopexit ]
  %5252 = phi i64 [ %3684, %block_42b934 ], [ %3600, %block_.L_42be65.loopexit ]
  %5253 = add i64 %5252, -240
  store i64 %5253, i64* %RDI.i40, align 8
  %5254 = add i64 %5252, -88
  %5255 = add i64 %5251, 11
  store i64 %5255, i64* %3, align 8
  %5256 = inttoptr i64 %5254 to i64*
  %5257 = load i64, i64* %5256, align 8
  store i64 %5257, i64* %RAX.i23, align 8
  %5258 = add i64 %5252, -72
  %5259 = add i64 %5251, 15
  store i64 %5259, i64* %3, align 8
  %5260 = inttoptr i64 %5258 to i32*
  %5261 = load i32, i32* %5260, align 4
  %5262 = sext i32 %5261 to i64
  store i64 %5262, i64* %RCX.i774, align 8
  %5263 = shl nsw i64 %5262, 3
  %5264 = add i64 %5263, %5257
  %5265 = add i64 %5251, 19
  store i64 %5265, i64* %3, align 8
  %5266 = inttoptr i64 %5264 to i64*
  %5267 = load i64, i64* %5266, align 8
  store i64 %5267, i64* %RSI.i, align 8
  %5268 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %5269 = zext i32 %5268 to i64
  store i64 %5269, i64* %RDX.i689, align 8
  %5270 = add i64 %5251, 156763
  %5271 = add i64 %5251, 31
  %5272 = load i64, i64* %6, align 8
  %5273 = add i64 %5272, -8
  %5274 = inttoptr i64 %5273 to i64*
  store i64 %5271, i64* %5274, align 8
  store i64 %5273, i64* %6, align 8
  store i64 %5270, i64* %3, align 8
  %call2_42be7f = tail call %struct.Memory* @sub_4522c0.FDot(%struct.State* nonnull %0, i64 %5270, %struct.Memory* %MEMORY.22)
  %5275 = load i64, i64* %RBP.i, align 8
  %5276 = add i64 %5275, -48
  %5277 = load i64, i64* %3, align 8
  %5278 = add i64 %5277, 5
  store i64 %5278, i64* %3, align 8
  %5279 = inttoptr i64 %5276 to i32*
  %5280 = load i32, i32* %5279, align 4
  store i32 %5280, i32* %979, align 1
  store float 0.000000e+00, float* %981, align 1
  store float 0.000000e+00, float* %983, align 1
  store float 0.000000e+00, float* %985, align 1
  %5281 = add i64 %5275, -476
  %5282 = add i64 %5277, 13
  store i64 %5282, i64* %3, align 8
  %5283 = load <2 x float>, <2 x float>* %81, align 1
  %5284 = load <2 x i32>, <2 x i32>* %1161, align 1
  %5285 = inttoptr i64 %5281 to float*
  %5286 = load float, float* %5285, align 4
  %5287 = extractelement <2 x float> %5283, i32 0
  %5288 = fmul float %5287, %5286
  store float %5288, float* %978, align 1
  %5289 = bitcast <2 x float> %5283 to <2 x i32>
  %5290 = extractelement <2 x i32> %5289, i32 1
  store i32 %5290, i32* %1162, align 1
  %5291 = extractelement <2 x i32> %5284, i32 0
  store i32 %5291, i32* %1163, align 1
  %5292 = extractelement <2 x i32> %5284, i32 1
  store i32 %5292, i32* %1164, align 1
  %5293 = load <2 x float>, <2 x float>* %59, align 1
  %5294 = load <2 x i32>, <2 x i32>* %1072, align 1
  %5295 = load <2 x float>, <2 x float>* %81, align 1
  %5296 = extractelement <2 x float> %5293, i32 0
  %5297 = extractelement <2 x float> %5295, i32 0
  %5298 = fadd float %5296, %5297
  store float %5298, float* %1074, align 1
  %5299 = bitcast <2 x float> %5293 to <2 x i32>
  %5300 = extractelement <2 x i32> %5299, i32 1
  store i32 %5300, i32* %306, align 1
  %5301 = extractelement <2 x i32> %5294, i32 0
  store i32 %5301, i32* %307, align 1
  %5302 = extractelement <2 x i32> %5294, i32 1
  store i32 %5302, i32* %309, align 1
  %5303 = add i64 %5275, -408
  %5304 = add i64 %5277, 24
  store i64 %5304, i64* %3, align 8
  %5305 = inttoptr i64 %5303 to i64*
  %5306 = load i64, i64* %5305, align 8
  store i64 %5306, i64* %RAX.i23, align 8
  %5307 = add i64 %5275, -72
  %5308 = add i64 %5277, 28
  store i64 %5308, i64* %3, align 8
  %5309 = inttoptr i64 %5307 to i32*
  %5310 = load i32, i32* %5309, align 4
  %5311 = sext i32 %5310 to i64
  store i64 %5311, i64* %RCX.i774, align 8
  %5312 = shl nsw i64 %5311, 2
  %5313 = add i64 %5312, %5306
  %5314 = add i64 %5277, 33
  store i64 %5314, i64* %3, align 8
  %5315 = load <2 x float>, <2 x float>* %59, align 1
  %5316 = load <2 x i32>, <2 x i32>* %1072, align 1
  %5317 = inttoptr i64 %5313 to float*
  %5318 = load float, float* %5317, align 4
  %5319 = extractelement <2 x float> %5315, i32 0
  %5320 = fadd float %5319, %5318
  store float %5320, float* %1074, align 1
  %5321 = bitcast <2 x float> %5315 to <2 x i32>
  %5322 = extractelement <2 x i32> %5321, i32 1
  store i32 %5322, i32* %306, align 1
  %5323 = extractelement <2 x i32> %5316, i32 0
  store i32 %5323, i32* %307, align 1
  %5324 = extractelement <2 x i32> %5316, i32 1
  store i32 %5324, i32* %309, align 1
  %5325 = add i64 %5277, 38
  store i64 %5325, i64* %3, align 8
  %5326 = load <2 x float>, <2 x float>* %59, align 1
  %5327 = extractelement <2 x float> %5326, i32 0
  store float %5327, float* %5317, align 4
  %5328 = load i64, i64* %RBP.i, align 8
  %5329 = add i64 %5328, -72
  %5330 = load i64, i64* %3, align 8
  %5331 = add i64 %5330, 3
  store i64 %5331, i64* %3, align 8
  %5332 = inttoptr i64 %5329 to i32*
  %5333 = load i32, i32* %5332, align 4
  %5334 = add i32 %5333, -1
  %5335 = zext i32 %5334 to i64
  store i64 %5335, i64* %RAX.i23, align 8
  %5336 = icmp ne i32 %5333, 0
  %5337 = zext i1 %5336 to i8
  store i8 %5337, i8* %14, align 1
  %5338 = and i32 %5334, 255
  %5339 = tail call i32 @llvm.ctpop.i32(i32 %5338)
  %5340 = trunc i32 %5339 to i8
  %5341 = and i8 %5340, 1
  %5342 = xor i8 %5341, 1
  store i8 %5342, i8* %21, align 1
  %5343 = xor i32 %5333, 16
  %5344 = xor i32 %5343, %5334
  %5345 = lshr i32 %5344, 4
  %5346 = trunc i32 %5345 to i8
  %5347 = and i8 %5346, 1
  store i8 %5347, i8* %27, align 1
  %5348 = icmp eq i32 %5334, 0
  %5349 = zext i1 %5348 to i8
  store i8 %5349, i8* %30, align 1
  %5350 = lshr i32 %5334, 31
  %5351 = trunc i32 %5350 to i8
  store i8 %5351, i8* %33, align 1
  %5352 = lshr i32 %5333, 31
  %5353 = xor i32 %5350, %5352
  %5354 = xor i32 %5350, 1
  %5355 = add nuw nsw i32 %5353, %5354
  %5356 = icmp eq i32 %5355, 2
  %5357 = zext i1 %5356 to i8
  store i8 %5357, i8* %39, align 1
  %5358 = add i64 %5330, 9
  store i64 %5358, i64* %3, align 8
  store i32 %5334, i32* %5332, align 4
  %5359 = load i64, i64* %3, align 8
  %5360 = add i64 %5359, -1891
  store i64 %5360, i64* %3, align 8
  br label %block_.L_42b750

block_.L_42beb8:                                  ; preds = %block_.L_42b750
  %5361 = add i64 %3132, ptrtoint (%G_0x288a4__rip__type* @G_0x288a4__rip_ to i64)
  %5362 = add i64 %3132, 8
  store i64 %5362, i64* %3, align 8
  %5363 = inttoptr i64 %5361 to i32*
  %5364 = load i32, i32* %5363, align 4
  store i32 %5364, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %5365 = add i64 %3116, -464
  %5366 = add i64 %3132, 16
  store i64 %5366, i64* %3, align 8
  %5367 = load <2 x float>, <2 x float>* %59, align 1
  %5368 = extractelement <2 x float> %5367, i32 0
  %5369 = inttoptr i64 %5365 to float*
  store float %5368, float* %5369, align 4
  %5370 = load i64, i64* %RBP.i, align 8
  %5371 = add i64 %5370, -436
  %5372 = load i64, i64* %3, align 8
  %5373 = add i64 %5372, 10
  store i64 %5373, i64* %3, align 8
  %5374 = inttoptr i64 %5371 to i32*
  store i32 0, i32* %5374, align 4
  %5375 = load i64, i64* %RBP.i, align 8
  %5376 = add i64 %5375, -72
  %5377 = load i64, i64* %3, align 8
  %5378 = add i64 %5377, 7
  store i64 %5378, i64* %3, align 8
  %5379 = inttoptr i64 %5376 to i32*
  store i32 1, i32* %5379, align 4
  %.pre186 = load i64, i64* %3, align 8
  br label %block_.L_42bed9

block_.L_42bed9:                                  ; preds = %block_.L_42c046, %block_.L_42beb8
  %5380 = phi i64 [ %.pre186, %block_.L_42beb8 ], [ %6016, %block_.L_42c046 ]
  %MEMORY.35 = phi %struct.Memory* [ %MEMORY.18, %block_.L_42beb8 ], [ %5961, %block_.L_42c046 ]
  %5381 = load i64, i64* %RBP.i, align 8
  %5382 = add i64 %5381, -72
  %5383 = add i64 %5380, 3
  store i64 %5383, i64* %3, align 8
  %5384 = inttoptr i64 %5382 to i32*
  %5385 = load i32, i32* %5384, align 4
  %5386 = zext i32 %5385 to i64
  store i64 %5386, i64* %RAX.i23, align 8
  %5387 = add i64 %5381, -440
  %5388 = add i64 %5380, 9
  store i64 %5388, i64* %3, align 8
  %5389 = inttoptr i64 %5387 to i32*
  %5390 = load i32, i32* %5389, align 4
  %5391 = sub i32 %5385, %5390
  %5392 = icmp ult i32 %5385, %5390
  %5393 = zext i1 %5392 to i8
  store i8 %5393, i8* %14, align 1
  %5394 = and i32 %5391, 255
  %5395 = tail call i32 @llvm.ctpop.i32(i32 %5394)
  %5396 = trunc i32 %5395 to i8
  %5397 = and i8 %5396, 1
  %5398 = xor i8 %5397, 1
  store i8 %5398, i8* %21, align 1
  %5399 = xor i32 %5390, %5385
  %5400 = xor i32 %5399, %5391
  %5401 = lshr i32 %5400, 4
  %5402 = trunc i32 %5401 to i8
  %5403 = and i8 %5402, 1
  store i8 %5403, i8* %27, align 1
  %5404 = icmp eq i32 %5391, 0
  %5405 = zext i1 %5404 to i8
  store i8 %5405, i8* %30, align 1
  %5406 = lshr i32 %5391, 31
  %5407 = trunc i32 %5406 to i8
  store i8 %5407, i8* %33, align 1
  %5408 = lshr i32 %5385, 31
  %5409 = lshr i32 %5390, 31
  %5410 = xor i32 %5409, %5408
  %5411 = xor i32 %5406, %5408
  %5412 = add nuw nsw i32 %5411, %5410
  %5413 = icmp eq i32 %5412, 2
  %5414 = zext i1 %5413 to i8
  store i8 %5414, i8* %39, align 1
  %5415 = icmp ne i8 %5407, 0
  %5416 = xor i1 %5415, %5413
  %.demorgan214 = or i1 %5404, %5416
  %.v239 = select i1 %.demorgan214, i64 15, i64 384
  %5417 = add i64 %5380, %.v239
  store i64 %5417, i64* %3, align 8
  br i1 %.demorgan214, label %block_42bee8, label %block_.L_42c059

block_42bee8:                                     ; preds = %block_.L_42bed9
  %5418 = add i64 %5381, -408
  %5419 = add i64 %5417, 7
  store i64 %5419, i64* %3, align 8
  %5420 = inttoptr i64 %5418 to i64*
  %5421 = load i64, i64* %5420, align 8
  store i64 %5421, i64* %RAX.i23, align 8
  %5422 = add i64 %5417, 11
  store i64 %5422, i64* %3, align 8
  %5423 = load i32, i32* %5384, align 4
  %5424 = sext i32 %5423 to i64
  store i64 %5424, i64* %RCX.i774, align 8
  %5425 = shl nsw i64 %5424, 2
  %5426 = add i64 %5425, %5421
  %5427 = add i64 %5417, 16
  store i64 %5427, i64* %3, align 8
  %5428 = inttoptr i64 %5426 to i32*
  %5429 = load i32, i32* %5428, align 4
  store i32 %5429, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %5430 = add i64 %5381, -460
  %5431 = add i64 %5417, 24
  store i64 %5431, i64* %3, align 8
  %5432 = load <2 x float>, <2 x float>* %59, align 1
  %5433 = extractelement <2 x float> %5432, i32 0
  %5434 = inttoptr i64 %5430 to float*
  store float %5433, float* %5434, align 4
  %5435 = load i64, i64* %RBP.i, align 8
  %5436 = add i64 %5435, -68
  %5437 = load i64, i64* %3, align 8
  %5438 = add i64 %5437, 7
  store i64 %5438, i64* %3, align 8
  %5439 = inttoptr i64 %5436 to i32*
  store i32 0, i32* %5439, align 4
  %.pre187 = load i64, i64* %3, align 8
  br label %block_.L_42bf07

block_.L_42bf07:                                  ; preds = %block_.L_42c005, %block_42bee8
  %5440 = phi i64 [ %5923, %block_.L_42c005 ], [ %.pre187, %block_42bee8 ]
  %5441 = load i64, i64* %RBP.i, align 8
  %5442 = add i64 %5441, -68
  %5443 = add i64 %5440, 3
  store i64 %5443, i64* %3, align 8
  %5444 = inttoptr i64 %5442 to i32*
  %5445 = load i32, i32* %5444, align 4
  %5446 = zext i32 %5445 to i64
  store i64 %5446, i64* %RAX.i23, align 8
  %5447 = add i64 %5441, -8
  %5448 = add i64 %5440, 7
  store i64 %5448, i64* %3, align 8
  %5449 = inttoptr i64 %5447 to i64*
  %5450 = load i64, i64* %5449, align 8
  store i64 %5450, i64* %RCX.i774, align 8
  %5451 = add i64 %5450, 28
  %5452 = add i64 %5440, 10
  store i64 %5452, i64* %3, align 8
  %5453 = inttoptr i64 %5451 to i32*
  %5454 = load i32, i32* %5453, align 4
  %5455 = sub i32 %5445, %5454
  %5456 = icmp ult i32 %5445, %5454
  %5457 = zext i1 %5456 to i8
  store i8 %5457, i8* %14, align 1
  %5458 = and i32 %5455, 255
  %5459 = tail call i32 @llvm.ctpop.i32(i32 %5458)
  %5460 = trunc i32 %5459 to i8
  %5461 = and i8 %5460, 1
  %5462 = xor i8 %5461, 1
  store i8 %5462, i8* %21, align 1
  %5463 = xor i32 %5454, %5445
  %5464 = xor i32 %5463, %5455
  %5465 = lshr i32 %5464, 4
  %5466 = trunc i32 %5465 to i8
  %5467 = and i8 %5466, 1
  store i8 %5467, i8* %27, align 1
  %5468 = icmp eq i32 %5455, 0
  %5469 = zext i1 %5468 to i8
  store i8 %5469, i8* %30, align 1
  %5470 = lshr i32 %5455, 31
  %5471 = trunc i32 %5470 to i8
  store i8 %5471, i8* %33, align 1
  %5472 = lshr i32 %5445, 31
  %5473 = lshr i32 %5454, 31
  %5474 = xor i32 %5473, %5472
  %5475 = xor i32 %5470, %5472
  %5476 = add nuw nsw i32 %5475, %5474
  %5477 = icmp eq i32 %5476, 2
  %5478 = zext i1 %5477 to i8
  store i8 %5478, i8* %39, align 1
  %5479 = icmp ne i8 %5471, 0
  %5480 = xor i1 %5479, %5477
  %.v242 = select i1 %5480, i64 16, i64 273
  %5481 = add i64 %5440, %.v242
  store i64 %5481, i64* %3, align 8
  br i1 %5480, label %block_42bf17, label %block_.L_42c018

block_42bf17:                                     ; preds = %block_.L_42bf07
  %5482 = add i64 %5481, 4
  store i64 %5482, i64* %3, align 8
  %5483 = load i64, i64* %5449, align 8
  store i64 %5483, i64* %RAX.i23, align 8
  %5484 = add i64 %5481, 7
  store i64 %5484, i64* %3, align 8
  %5485 = inttoptr i64 %5483 to i64*
  %5486 = load i64, i64* %5485, align 8
  store i64 %5486, i64* %RAX.i23, align 8
  %5487 = add i64 %5481, 11
  store i64 %5487, i64* %3, align 8
  %5488 = load i32, i32* %5444, align 4
  %5489 = sext i32 %5488 to i64
  store i64 %5489, i64* %RCX.i774, align 8
  %5490 = shl nsw i64 %5489, 3
  %5491 = add i64 %5490, %5486
  %5492 = add i64 %5481, 15
  store i64 %5492, i64* %3, align 8
  %5493 = inttoptr i64 %5491 to i64*
  %5494 = load i64, i64* %5493, align 8
  store i64 %5494, i64* %RAX.i23, align 8
  %5495 = add i64 %5441, -72
  %5496 = add i64 %5481, 18
  store i64 %5496, i64* %3, align 8
  %5497 = inttoptr i64 %5495 to i32*
  %5498 = load i32, i32* %5497, align 4
  %5499 = add i32 %5498, -1
  %5500 = zext i32 %5499 to i64
  store i64 %5500, i64* %RDX.i689, align 8
  %5501 = icmp eq i32 %5498, 0
  %5502 = zext i1 %5501 to i8
  store i8 %5502, i8* %14, align 1
  %5503 = and i32 %5499, 255
  %5504 = tail call i32 @llvm.ctpop.i32(i32 %5503)
  %5505 = trunc i32 %5504 to i8
  %5506 = and i8 %5505, 1
  %5507 = xor i8 %5506, 1
  store i8 %5507, i8* %21, align 1
  %5508 = xor i32 %5499, %5498
  %5509 = lshr i32 %5508, 4
  %5510 = trunc i32 %5509 to i8
  %5511 = and i8 %5510, 1
  store i8 %5511, i8* %27, align 1
  %5512 = icmp eq i32 %5499, 0
  %5513 = zext i1 %5512 to i8
  store i8 %5513, i8* %30, align 1
  %5514 = lshr i32 %5499, 31
  %5515 = trunc i32 %5514 to i8
  store i8 %5515, i8* %33, align 1
  %5516 = lshr i32 %5498, 31
  %5517 = xor i32 %5514, %5516
  %5518 = add nuw nsw i32 %5517, %5516
  %5519 = icmp eq i32 %5518, 2
  %5520 = zext i1 %5519 to i8
  store i8 %5520, i8* %39, align 1
  %5521 = sext i32 %5499 to i64
  store i64 %5521, i64* %RCX.i774, align 8
  %5522 = add i64 %5494, %5521
  %5523 = add i64 %5481, 28
  store i64 %5523, i64* %3, align 8
  %5524 = inttoptr i64 %5522 to i8*
  %5525 = load i8, i8* %5524, align 1
  %5526 = sext i8 %5525 to i64
  %5527 = and i64 %5526, 4294967295
  store i64 %5527, i64* %RDX.i689, align 8
  %5528 = sext i8 %5525 to i32
  %5529 = add nsw i32 %5528, -32
  %5530 = icmp ult i8 %5525, 32
  %5531 = zext i1 %5530 to i8
  store i8 %5531, i8* %14, align 1
  %5532 = and i32 %5529, 255
  %5533 = tail call i32 @llvm.ctpop.i32(i32 %5532)
  %5534 = trunc i32 %5533 to i8
  %5535 = and i8 %5534, 1
  %5536 = xor i8 %5535, 1
  store i8 %5536, i8* %21, align 1
  %5537 = xor i32 %5529, %5528
  %5538 = lshr i32 %5537, 4
  %5539 = trunc i32 %5538 to i8
  %5540 = and i8 %5539, 1
  store i8 %5540, i8* %27, align 1
  %5541 = icmp eq i32 %5529, 0
  %5542 = zext i1 %5541 to i8
  store i8 %5542, i8* %30, align 1
  %5543 = lshr i32 %5529, 31
  %5544 = trunc i32 %5543 to i8
  store i8 %5544, i8* %33, align 1
  %5545 = lshr i32 %5528, 31
  %5546 = xor i32 %5543, %5545
  %5547 = add nuw nsw i32 %5546, %5545
  %5548 = icmp eq i32 %5547, 2
  %5549 = zext i1 %5548 to i8
  store i8 %5549, i8* %39, align 1
  %.v244 = select i1 %5541, i64 185, i64 37
  %5550 = add i64 %5481, %.v244
  store i64 %5550, i64* %3, align 8
  br i1 %5541, label %block_.L_42bfd0, label %block_42bf3c

block_42bf3c:                                     ; preds = %block_42bf17
  %5551 = load i64, i64* %RBP.i, align 8
  %5552 = add i64 %5551, -8
  %5553 = add i64 %5550, 4
  store i64 %5553, i64* %3, align 8
  %5554 = inttoptr i64 %5552 to i64*
  %5555 = load i64, i64* %5554, align 8
  store i64 %5555, i64* %RAX.i23, align 8
  %5556 = add i64 %5550, 7
  store i64 %5556, i64* %3, align 8
  %5557 = inttoptr i64 %5555 to i64*
  %5558 = load i64, i64* %5557, align 8
  store i64 %5558, i64* %RAX.i23, align 8
  %5559 = add i64 %5551, -68
  %5560 = add i64 %5550, 11
  store i64 %5560, i64* %3, align 8
  %5561 = inttoptr i64 %5559 to i32*
  %5562 = load i32, i32* %5561, align 4
  %5563 = sext i32 %5562 to i64
  store i64 %5563, i64* %RCX.i774, align 8
  %5564 = shl nsw i64 %5563, 3
  %5565 = add i64 %5564, %5558
  %5566 = add i64 %5550, 15
  store i64 %5566, i64* %3, align 8
  %5567 = inttoptr i64 %5565 to i64*
  %5568 = load i64, i64* %5567, align 8
  store i64 %5568, i64* %RAX.i23, align 8
  %5569 = add i64 %5551, -72
  %5570 = add i64 %5550, 18
  store i64 %5570, i64* %3, align 8
  %5571 = inttoptr i64 %5569 to i32*
  %5572 = load i32, i32* %5571, align 4
  %5573 = add i32 %5572, -1
  %5574 = zext i32 %5573 to i64
  store i64 %5574, i64* %RDX.i689, align 8
  %5575 = icmp eq i32 %5572, 0
  %5576 = zext i1 %5575 to i8
  store i8 %5576, i8* %14, align 1
  %5577 = and i32 %5573, 255
  %5578 = tail call i32 @llvm.ctpop.i32(i32 %5577)
  %5579 = trunc i32 %5578 to i8
  %5580 = and i8 %5579, 1
  %5581 = xor i8 %5580, 1
  store i8 %5581, i8* %21, align 1
  %5582 = xor i32 %5573, %5572
  %5583 = lshr i32 %5582, 4
  %5584 = trunc i32 %5583 to i8
  %5585 = and i8 %5584, 1
  store i8 %5585, i8* %27, align 1
  %5586 = icmp eq i32 %5573, 0
  %5587 = zext i1 %5586 to i8
  store i8 %5587, i8* %30, align 1
  %5588 = lshr i32 %5573, 31
  %5589 = trunc i32 %5588 to i8
  store i8 %5589, i8* %33, align 1
  %5590 = lshr i32 %5572, 31
  %5591 = xor i32 %5588, %5590
  %5592 = add nuw nsw i32 %5591, %5590
  %5593 = icmp eq i32 %5592, 2
  %5594 = zext i1 %5593 to i8
  store i8 %5594, i8* %39, align 1
  %5595 = sext i32 %5573 to i64
  store i64 %5595, i64* %RCX.i774, align 8
  %5596 = add i64 %5568, %5595
  %5597 = add i64 %5550, 28
  store i64 %5597, i64* %3, align 8
  %5598 = inttoptr i64 %5596 to i8*
  %5599 = load i8, i8* %5598, align 1
  %5600 = sext i8 %5599 to i64
  %5601 = and i64 %5600, 4294967295
  store i64 %5601, i64* %RDX.i689, align 8
  %5602 = sext i8 %5599 to i32
  %5603 = add nsw i32 %5602, -46
  %5604 = icmp ult i8 %5599, 46
  %5605 = zext i1 %5604 to i8
  store i8 %5605, i8* %14, align 1
  %5606 = and i32 %5603, 255
  %5607 = tail call i32 @llvm.ctpop.i32(i32 %5606)
  %5608 = trunc i32 %5607 to i8
  %5609 = and i8 %5608, 1
  %5610 = xor i8 %5609, 1
  store i8 %5610, i8* %21, align 1
  %5611 = xor i32 %5603, %5602
  %5612 = lshr i32 %5611, 4
  %5613 = trunc i32 %5612 to i8
  %5614 = and i8 %5613, 1
  store i8 %5614, i8* %27, align 1
  %5615 = icmp eq i32 %5603, 0
  %5616 = zext i1 %5615 to i8
  store i8 %5616, i8* %30, align 1
  %5617 = lshr i32 %5603, 31
  %5618 = trunc i32 %5617 to i8
  store i8 %5618, i8* %33, align 1
  %5619 = lshr i32 %5602, 31
  %5620 = xor i32 %5617, %5619
  %5621 = add nuw nsw i32 %5620, %5619
  %5622 = icmp eq i32 %5621, 2
  %5623 = zext i1 %5622 to i8
  store i8 %5623, i8* %39, align 1
  %.v245 = select i1 %5615, i64 148, i64 37
  %5624 = add i64 %5550, %.v245
  store i64 %5624, i64* %3, align 8
  br i1 %5615, label %block_.L_42bfd0, label %block_42bf61

block_42bf61:                                     ; preds = %block_42bf3c
  %5625 = load i64, i64* %RBP.i, align 8
  %5626 = add i64 %5625, -8
  %5627 = add i64 %5624, 4
  store i64 %5627, i64* %3, align 8
  %5628 = inttoptr i64 %5626 to i64*
  %5629 = load i64, i64* %5628, align 8
  store i64 %5629, i64* %RAX.i23, align 8
  %5630 = add i64 %5624, 7
  store i64 %5630, i64* %3, align 8
  %5631 = inttoptr i64 %5629 to i64*
  %5632 = load i64, i64* %5631, align 8
  store i64 %5632, i64* %RAX.i23, align 8
  %5633 = add i64 %5625, -68
  %5634 = add i64 %5624, 11
  store i64 %5634, i64* %3, align 8
  %5635 = inttoptr i64 %5633 to i32*
  %5636 = load i32, i32* %5635, align 4
  %5637 = sext i32 %5636 to i64
  store i64 %5637, i64* %RCX.i774, align 8
  %5638 = shl nsw i64 %5637, 3
  %5639 = add i64 %5638, %5632
  %5640 = add i64 %5624, 15
  store i64 %5640, i64* %3, align 8
  %5641 = inttoptr i64 %5639 to i64*
  %5642 = load i64, i64* %5641, align 8
  store i64 %5642, i64* %RAX.i23, align 8
  %5643 = add i64 %5625, -72
  %5644 = add i64 %5624, 18
  store i64 %5644, i64* %3, align 8
  %5645 = inttoptr i64 %5643 to i32*
  %5646 = load i32, i32* %5645, align 4
  %5647 = add i32 %5646, -1
  %5648 = zext i32 %5647 to i64
  store i64 %5648, i64* %RDX.i689, align 8
  %5649 = icmp eq i32 %5646, 0
  %5650 = zext i1 %5649 to i8
  store i8 %5650, i8* %14, align 1
  %5651 = and i32 %5647, 255
  %5652 = tail call i32 @llvm.ctpop.i32(i32 %5651)
  %5653 = trunc i32 %5652 to i8
  %5654 = and i8 %5653, 1
  %5655 = xor i8 %5654, 1
  store i8 %5655, i8* %21, align 1
  %5656 = xor i32 %5647, %5646
  %5657 = lshr i32 %5656, 4
  %5658 = trunc i32 %5657 to i8
  %5659 = and i8 %5658, 1
  store i8 %5659, i8* %27, align 1
  %5660 = icmp eq i32 %5647, 0
  %5661 = zext i1 %5660 to i8
  store i8 %5661, i8* %30, align 1
  %5662 = lshr i32 %5647, 31
  %5663 = trunc i32 %5662 to i8
  store i8 %5663, i8* %33, align 1
  %5664 = lshr i32 %5646, 31
  %5665 = xor i32 %5662, %5664
  %5666 = add nuw nsw i32 %5665, %5664
  %5667 = icmp eq i32 %5666, 2
  %5668 = zext i1 %5667 to i8
  store i8 %5668, i8* %39, align 1
  %5669 = sext i32 %5647 to i64
  store i64 %5669, i64* %RCX.i774, align 8
  %5670 = add i64 %5642, %5669
  %5671 = add i64 %5624, 28
  store i64 %5671, i64* %3, align 8
  %5672 = inttoptr i64 %5670 to i8*
  %5673 = load i8, i8* %5672, align 1
  %5674 = sext i8 %5673 to i64
  %5675 = and i64 %5674, 4294967295
  store i64 %5675, i64* %RDX.i689, align 8
  %5676 = sext i8 %5673 to i32
  %5677 = add nsw i32 %5676, -95
  %5678 = icmp ult i8 %5673, 95
  %5679 = zext i1 %5678 to i8
  store i8 %5679, i8* %14, align 1
  %5680 = and i32 %5677, 255
  %5681 = tail call i32 @llvm.ctpop.i32(i32 %5680)
  %5682 = trunc i32 %5681 to i8
  %5683 = and i8 %5682, 1
  %5684 = xor i8 %5683, 1
  store i8 %5684, i8* %21, align 1
  %5685 = xor i32 %5676, 16
  %5686 = xor i32 %5685, %5677
  %5687 = lshr i32 %5686, 4
  %5688 = trunc i32 %5687 to i8
  %5689 = and i8 %5688, 1
  store i8 %5689, i8* %27, align 1
  %5690 = icmp eq i32 %5677, 0
  %5691 = zext i1 %5690 to i8
  store i8 %5691, i8* %30, align 1
  %5692 = lshr i32 %5677, 31
  %5693 = trunc i32 %5692 to i8
  store i8 %5693, i8* %33, align 1
  %5694 = lshr i32 %5676, 31
  %5695 = xor i32 %5692, %5694
  %5696 = add nuw nsw i32 %5695, %5694
  %5697 = icmp eq i32 %5696, 2
  %5698 = zext i1 %5697 to i8
  store i8 %5698, i8* %39, align 1
  %.v246 = select i1 %5690, i64 111, i64 37
  %5699 = add i64 %5624, %.v246
  store i64 %5699, i64* %3, align 8
  br i1 %5690, label %block_.L_42bfd0, label %block_42bf86

block_42bf86:                                     ; preds = %block_42bf61
  %5700 = load i64, i64* %RBP.i, align 8
  %5701 = add i64 %5700, -8
  %5702 = add i64 %5699, 4
  store i64 %5702, i64* %3, align 8
  %5703 = inttoptr i64 %5701 to i64*
  %5704 = load i64, i64* %5703, align 8
  store i64 %5704, i64* %RAX.i23, align 8
  %5705 = add i64 %5699, 7
  store i64 %5705, i64* %3, align 8
  %5706 = inttoptr i64 %5704 to i64*
  %5707 = load i64, i64* %5706, align 8
  store i64 %5707, i64* %RAX.i23, align 8
  %5708 = add i64 %5700, -68
  %5709 = add i64 %5699, 11
  store i64 %5709, i64* %3, align 8
  %5710 = inttoptr i64 %5708 to i32*
  %5711 = load i32, i32* %5710, align 4
  %5712 = sext i32 %5711 to i64
  store i64 %5712, i64* %RCX.i774, align 8
  %5713 = shl nsw i64 %5712, 3
  %5714 = add i64 %5713, %5707
  %5715 = add i64 %5699, 15
  store i64 %5715, i64* %3, align 8
  %5716 = inttoptr i64 %5714 to i64*
  %5717 = load i64, i64* %5716, align 8
  store i64 %5717, i64* %RAX.i23, align 8
  %5718 = add i64 %5700, -72
  %5719 = add i64 %5699, 18
  store i64 %5719, i64* %3, align 8
  %5720 = inttoptr i64 %5718 to i32*
  %5721 = load i32, i32* %5720, align 4
  %5722 = add i32 %5721, -1
  %5723 = zext i32 %5722 to i64
  store i64 %5723, i64* %RDX.i689, align 8
  %5724 = icmp eq i32 %5721, 0
  %5725 = zext i1 %5724 to i8
  store i8 %5725, i8* %14, align 1
  %5726 = and i32 %5722, 255
  %5727 = tail call i32 @llvm.ctpop.i32(i32 %5726)
  %5728 = trunc i32 %5727 to i8
  %5729 = and i8 %5728, 1
  %5730 = xor i8 %5729, 1
  store i8 %5730, i8* %21, align 1
  %5731 = xor i32 %5722, %5721
  %5732 = lshr i32 %5731, 4
  %5733 = trunc i32 %5732 to i8
  %5734 = and i8 %5733, 1
  store i8 %5734, i8* %27, align 1
  %5735 = icmp eq i32 %5722, 0
  %5736 = zext i1 %5735 to i8
  store i8 %5736, i8* %30, align 1
  %5737 = lshr i32 %5722, 31
  %5738 = trunc i32 %5737 to i8
  store i8 %5738, i8* %33, align 1
  %5739 = lshr i32 %5721, 31
  %5740 = xor i32 %5737, %5739
  %5741 = add nuw nsw i32 %5740, %5739
  %5742 = icmp eq i32 %5741, 2
  %5743 = zext i1 %5742 to i8
  store i8 %5743, i8* %39, align 1
  %5744 = sext i32 %5722 to i64
  store i64 %5744, i64* %RCX.i774, align 8
  %5745 = add i64 %5717, %5744
  %5746 = add i64 %5699, 28
  store i64 %5746, i64* %3, align 8
  %5747 = inttoptr i64 %5745 to i8*
  %5748 = load i8, i8* %5747, align 1
  %5749 = sext i8 %5748 to i64
  %5750 = and i64 %5749, 4294967295
  store i64 %5750, i64* %RDX.i689, align 8
  %5751 = sext i8 %5748 to i32
  %5752 = add nsw i32 %5751, -45
  %5753 = icmp ult i8 %5748, 45
  %5754 = zext i1 %5753 to i8
  store i8 %5754, i8* %14, align 1
  %5755 = and i32 %5752, 255
  %5756 = tail call i32 @llvm.ctpop.i32(i32 %5755)
  %5757 = trunc i32 %5756 to i8
  %5758 = and i8 %5757, 1
  %5759 = xor i8 %5758, 1
  store i8 %5759, i8* %21, align 1
  %5760 = xor i32 %5752, %5751
  %5761 = lshr i32 %5760, 4
  %5762 = trunc i32 %5761 to i8
  %5763 = and i8 %5762, 1
  store i8 %5763, i8* %27, align 1
  %5764 = icmp eq i32 %5752, 0
  %5765 = zext i1 %5764 to i8
  store i8 %5765, i8* %30, align 1
  %5766 = lshr i32 %5752, 31
  %5767 = trunc i32 %5766 to i8
  store i8 %5767, i8* %33, align 1
  %5768 = lshr i32 %5751, 31
  %5769 = xor i32 %5766, %5768
  %5770 = add nuw nsw i32 %5769, %5768
  %5771 = icmp eq i32 %5770, 2
  %5772 = zext i1 %5771 to i8
  store i8 %5772, i8* %39, align 1
  %.v247 = select i1 %5764, i64 74, i64 37
  %5773 = add i64 %5699, %.v247
  store i64 %5773, i64* %3, align 8
  br i1 %5764, label %block_.L_42bfd0, label %block_42bfab

block_42bfab:                                     ; preds = %block_42bf86
  %5774 = load i64, i64* %RBP.i, align 8
  %5775 = add i64 %5774, -8
  %5776 = add i64 %5773, 4
  store i64 %5776, i64* %3, align 8
  %5777 = inttoptr i64 %5775 to i64*
  %5778 = load i64, i64* %5777, align 8
  store i64 %5778, i64* %RAX.i23, align 8
  %5779 = add i64 %5773, 7
  store i64 %5779, i64* %3, align 8
  %5780 = inttoptr i64 %5778 to i64*
  %5781 = load i64, i64* %5780, align 8
  store i64 %5781, i64* %RAX.i23, align 8
  %5782 = add i64 %5774, -68
  %5783 = add i64 %5773, 11
  store i64 %5783, i64* %3, align 8
  %5784 = inttoptr i64 %5782 to i32*
  %5785 = load i32, i32* %5784, align 4
  %5786 = sext i32 %5785 to i64
  store i64 %5786, i64* %RCX.i774, align 8
  %5787 = shl nsw i64 %5786, 3
  %5788 = add i64 %5787, %5781
  %5789 = add i64 %5773, 15
  store i64 %5789, i64* %3, align 8
  %5790 = inttoptr i64 %5788 to i64*
  %5791 = load i64, i64* %5790, align 8
  store i64 %5791, i64* %RAX.i23, align 8
  %5792 = add i64 %5774, -72
  %5793 = add i64 %5773, 18
  store i64 %5793, i64* %3, align 8
  %5794 = inttoptr i64 %5792 to i32*
  %5795 = load i32, i32* %5794, align 4
  %5796 = add i32 %5795, -1
  %5797 = zext i32 %5796 to i64
  store i64 %5797, i64* %RDX.i689, align 8
  %5798 = icmp eq i32 %5795, 0
  %5799 = zext i1 %5798 to i8
  store i8 %5799, i8* %14, align 1
  %5800 = and i32 %5796, 255
  %5801 = tail call i32 @llvm.ctpop.i32(i32 %5800)
  %5802 = trunc i32 %5801 to i8
  %5803 = and i8 %5802, 1
  %5804 = xor i8 %5803, 1
  store i8 %5804, i8* %21, align 1
  %5805 = xor i32 %5796, %5795
  %5806 = lshr i32 %5805, 4
  %5807 = trunc i32 %5806 to i8
  %5808 = and i8 %5807, 1
  store i8 %5808, i8* %27, align 1
  %5809 = icmp eq i32 %5796, 0
  %5810 = zext i1 %5809 to i8
  store i8 %5810, i8* %30, align 1
  %5811 = lshr i32 %5796, 31
  %5812 = trunc i32 %5811 to i8
  store i8 %5812, i8* %33, align 1
  %5813 = lshr i32 %5795, 31
  %5814 = xor i32 %5811, %5813
  %5815 = add nuw nsw i32 %5814, %5813
  %5816 = icmp eq i32 %5815, 2
  %5817 = zext i1 %5816 to i8
  store i8 %5817, i8* %39, align 1
  %5818 = sext i32 %5796 to i64
  store i64 %5818, i64* %RCX.i774, align 8
  %5819 = add i64 %5791, %5818
  %5820 = add i64 %5773, 28
  store i64 %5820, i64* %3, align 8
  %5821 = inttoptr i64 %5819 to i8*
  %5822 = load i8, i8* %5821, align 1
  %5823 = sext i8 %5822 to i64
  %5824 = and i64 %5823, 4294967295
  store i64 %5824, i64* %RDX.i689, align 8
  %5825 = sext i8 %5822 to i32
  %5826 = add nsw i32 %5825, -126
  %5827 = icmp ult i8 %5822, 126
  %5828 = zext i1 %5827 to i8
  store i8 %5828, i8* %14, align 1
  %5829 = and i32 %5826, 255
  %5830 = tail call i32 @llvm.ctpop.i32(i32 %5829)
  %5831 = trunc i32 %5830 to i8
  %5832 = and i8 %5831, 1
  %5833 = xor i8 %5832, 1
  store i8 %5833, i8* %21, align 1
  %5834 = xor i32 %5825, 16
  %5835 = xor i32 %5834, %5826
  %5836 = lshr i32 %5835, 4
  %5837 = trunc i32 %5836 to i8
  %5838 = and i8 %5837, 1
  store i8 %5838, i8* %27, align 1
  %5839 = icmp eq i32 %5826, 0
  %5840 = zext i1 %5839 to i8
  store i8 %5840, i8* %30, align 1
  %5841 = lshr i32 %5826, 31
  %5842 = trunc i32 %5841 to i8
  store i8 %5842, i8* %33, align 1
  %5843 = lshr i32 %5825, 31
  %5844 = xor i32 %5841, %5843
  %5845 = add nuw nsw i32 %5844, %5843
  %5846 = icmp eq i32 %5845, 2
  %5847 = zext i1 %5846 to i8
  store i8 %5847, i8* %39, align 1
  %.v248 = select i1 %5839, i64 37, i64 66
  %5848 = add i64 %5773, %.v248
  store i64 %5848, i64* %3, align 8
  br i1 %5839, label %block_.L_42bfd0, label %block_.L_42bfed

block_.L_42bfd0:                                  ; preds = %block_42bfab, %block_42bf86, %block_42bf61, %block_42bf3c, %block_42bf17
  %5849 = phi i64 [ %5848, %block_42bfab ], [ %5773, %block_42bf86 ], [ %5699, %block_42bf61 ], [ %5624, %block_42bf3c ], [ %5550, %block_42bf17 ]
  %5850 = load i64, i64* %RBP.i, align 8
  %5851 = add i64 %5850, -448
  %5852 = add i64 %5849, 8
  store i64 %5852, i64* %3, align 8
  %5853 = inttoptr i64 %5851 to i32*
  %5854 = load i32, i32* %5853, align 4
  store i32 %5854, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %5855 = add i64 %5850, -460
  %5856 = add i64 %5849, 16
  store i64 %5856, i64* %3, align 8
  %5857 = load <2 x float>, <2 x float>* %59, align 1
  %5858 = load <2 x i32>, <2 x i32>* %1072, align 1
  %5859 = inttoptr i64 %5855 to float*
  %5860 = load float, float* %5859, align 4
  %5861 = extractelement <2 x float> %5857, i32 0
  %5862 = fadd float %5861, %5860
  store float %5862, float* %1074, align 1
  %5863 = bitcast <2 x float> %5857 to <2 x i32>
  %5864 = extractelement <2 x i32> %5863, i32 1
  store i32 %5864, i32* %306, align 1
  %5865 = extractelement <2 x i32> %5858, i32 0
  store i32 %5865, i32* %307, align 1
  %5866 = extractelement <2 x i32> %5858, i32 1
  store i32 %5866, i32* %309, align 1
  %5867 = add i64 %5849, 24
  store i64 %5867, i64* %3, align 8
  %5868 = load <2 x float>, <2 x float>* %59, align 1
  %5869 = extractelement <2 x float> %5868, i32 0
  store float %5869, float* %5859, align 4
  %5870 = load i64, i64* %3, align 8
  %5871 = add i64 %5870, 29
  store i64 %5871, i64* %3, align 8
  br label %block_.L_42c005

block_.L_42bfed:                                  ; preds = %block_42bfab
  %5872 = load i64, i64* %RBP.i, align 8
  %5873 = add i64 %5872, -444
  %5874 = add i64 %5848, 8
  store i64 %5874, i64* %3, align 8
  %5875 = inttoptr i64 %5873 to i32*
  %5876 = load i32, i32* %5875, align 4
  store i32 %5876, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %5877 = add i64 %5872, -460
  %5878 = add i64 %5848, 16
  store i64 %5878, i64* %3, align 8
  %5879 = load <2 x float>, <2 x float>* %59, align 1
  %5880 = load <2 x i32>, <2 x i32>* %1072, align 1
  %5881 = inttoptr i64 %5877 to float*
  %5882 = load float, float* %5881, align 4
  %5883 = extractelement <2 x float> %5879, i32 0
  %5884 = fadd float %5883, %5882
  store float %5884, float* %1074, align 1
  %5885 = bitcast <2 x float> %5879 to <2 x i32>
  %5886 = extractelement <2 x i32> %5885, i32 1
  store i32 %5886, i32* %306, align 1
  %5887 = extractelement <2 x i32> %5880, i32 0
  store i32 %5887, i32* %307, align 1
  %5888 = extractelement <2 x i32> %5880, i32 1
  store i32 %5888, i32* %309, align 1
  %5889 = add i64 %5848, 24
  store i64 %5889, i64* %3, align 8
  %5890 = load <2 x float>, <2 x float>* %59, align 1
  %5891 = extractelement <2 x float> %5890, i32 0
  store float %5891, float* %5881, align 4
  %.pre192 = load i64, i64* %3, align 8
  br label %block_.L_42c005

block_.L_42c005:                                  ; preds = %block_.L_42bfed, %block_.L_42bfd0
  %5892 = phi i64 [ %.pre192, %block_.L_42bfed ], [ %5871, %block_.L_42bfd0 ]
  %5893 = load i64, i64* %RBP.i, align 8
  %5894 = add i64 %5893, -68
  %5895 = add i64 %5892, 8
  store i64 %5895, i64* %3, align 8
  %5896 = inttoptr i64 %5894 to i32*
  %5897 = load i32, i32* %5896, align 4
  %5898 = add i32 %5897, 1
  %5899 = zext i32 %5898 to i64
  store i64 %5899, i64* %RAX.i23, align 8
  %5900 = icmp eq i32 %5897, -1
  %5901 = icmp eq i32 %5898, 0
  %5902 = or i1 %5900, %5901
  %5903 = zext i1 %5902 to i8
  store i8 %5903, i8* %14, align 1
  %5904 = and i32 %5898, 255
  %5905 = tail call i32 @llvm.ctpop.i32(i32 %5904)
  %5906 = trunc i32 %5905 to i8
  %5907 = and i8 %5906, 1
  %5908 = xor i8 %5907, 1
  store i8 %5908, i8* %21, align 1
  %5909 = xor i32 %5898, %5897
  %5910 = lshr i32 %5909, 4
  %5911 = trunc i32 %5910 to i8
  %5912 = and i8 %5911, 1
  store i8 %5912, i8* %27, align 1
  %5913 = zext i1 %5901 to i8
  store i8 %5913, i8* %30, align 1
  %5914 = lshr i32 %5898, 31
  %5915 = trunc i32 %5914 to i8
  store i8 %5915, i8* %33, align 1
  %5916 = lshr i32 %5897, 31
  %5917 = xor i32 %5914, %5916
  %5918 = add nuw nsw i32 %5917, %5914
  %5919 = icmp eq i32 %5918, 2
  %5920 = zext i1 %5919 to i8
  store i8 %5920, i8* %39, align 1
  %5921 = add i64 %5892, 14
  store i64 %5921, i64* %3, align 8
  store i32 %5898, i32* %5896, align 4
  %5922 = load i64, i64* %3, align 8
  %5923 = add i64 %5922, -268
  store i64 %5923, i64* %3, align 8
  br label %block_.L_42bf07

block_.L_42c018:                                  ; preds = %block_.L_42bf07
  %5924 = add i64 %5441, -460
  %5925 = add i64 %5481, 8
  store i64 %5925, i64* %3, align 8
  %5926 = inttoptr i64 %5924 to i32*
  %5927 = load i32, i32* %5926, align 4
  store i32 %5927, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %5928 = add i64 %5441, -464
  %5929 = add i64 %5481, 15
  store i64 %5929, i64* %3, align 8
  %5930 = load <2 x float>, <2 x float>* %59, align 1
  %5931 = extractelement <2 x float> %5930, i32 0
  %5932 = inttoptr i64 %5928 to float*
  %5933 = load float, float* %5932, align 4
  %5934 = fcmp uno float %5931, %5933
  br i1 %5934, label %5935, label %5945

; <label>:5935:                                   ; preds = %block_.L_42c018
  %5936 = fadd float %5931, %5933
  %5937 = bitcast float %5936 to i32
  %5938 = and i32 %5937, 2143289344
  %5939 = icmp eq i32 %5938, 2139095040
  %5940 = and i32 %5937, 4194303
  %5941 = icmp ne i32 %5940, 0
  %5942 = and i1 %5939, %5941
  br i1 %5942, label %5943, label %5951

; <label>:5943:                                   ; preds = %5935
  %5944 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5929, %struct.Memory* %MEMORY.35)
  %.pre188 = load i64, i64* %3, align 8
  %.pre189 = load i8, i8* %14, align 1
  %.pre190 = load i8, i8* %30, align 1
  br label %routine_ucomiss_MINUS0x1d0__rbp____xmm0.exit

; <label>:5945:                                   ; preds = %block_.L_42c018
  %5946 = fcmp ogt float %5931, %5933
  br i1 %5946, label %5951, label %5947

; <label>:5947:                                   ; preds = %5945
  %5948 = fcmp olt float %5931, %5933
  br i1 %5948, label %5951, label %5949

; <label>:5949:                                   ; preds = %5947
  %5950 = fcmp oeq float %5931, %5933
  br i1 %5950, label %5951, label %5955

; <label>:5951:                                   ; preds = %5949, %5947, %5945, %5935
  %5952 = phi i8 [ 0, %5945 ], [ 0, %5947 ], [ 1, %5949 ], [ 1, %5935 ]
  %5953 = phi i8 [ 0, %5945 ], [ 0, %5947 ], [ 0, %5949 ], [ 1, %5935 ]
  %5954 = phi i8 [ 0, %5945 ], [ 1, %5947 ], [ 0, %5949 ], [ 1, %5935 ]
  store i8 %5952, i8* %30, align 1
  store i8 %5953, i8* %21, align 1
  store i8 %5954, i8* %14, align 1
  br label %5955

; <label>:5955:                                   ; preds = %5951, %5949
  %5956 = phi i8 [ %5952, %5951 ], [ %5469, %5949 ]
  %5957 = phi i8 [ %5954, %5951 ], [ %5457, %5949 ]
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomiss_MINUS0x1d0__rbp____xmm0.exit

routine_ucomiss_MINUS0x1d0__rbp____xmm0.exit:     ; preds = %5955, %5943
  %5958 = phi i8 [ %.pre190, %5943 ], [ %5956, %5955 ]
  %5959 = phi i8 [ %.pre189, %5943 ], [ %5957, %5955 ]
  %5960 = phi i64 [ %.pre188, %5943 ], [ %5929, %5955 ]
  %5961 = phi %struct.Memory* [ %5944, %5943 ], [ %MEMORY.35, %5955 ]
  %5962 = or i8 %5958, %5959
  %5963 = icmp ne i8 %5962, 0
  %.v243 = select i1 %5963, i64 31, i64 6
  %5964 = add i64 %5960, %.v243
  store i64 %5964, i64* %3, align 8
  br i1 %5963, label %block_.L_42c046, label %block_42c02d

block_42c02d:                                     ; preds = %routine_ucomiss_MINUS0x1d0__rbp____xmm0.exit
  %5965 = load i64, i64* %RBP.i, align 8
  %5966 = add i64 %5965, -460
  %5967 = add i64 %5964, 8
  store i64 %5967, i64* %3, align 8
  %5968 = inttoptr i64 %5966 to i32*
  %5969 = load i32, i32* %5968, align 4
  store i32 %5969, i32* %304, align 1
  store float 0.000000e+00, float* %491, align 1
  store float 0.000000e+00, float* %492, align 1
  store float 0.000000e+00, float* %493, align 1
  %5970 = add i64 %5965, -464
  %5971 = add i64 %5964, 16
  store i64 %5971, i64* %3, align 8
  %5972 = load <2 x float>, <2 x float>* %59, align 1
  %5973 = extractelement <2 x float> %5972, i32 0
  %5974 = inttoptr i64 %5970 to float*
  store float %5973, float* %5974, align 4
  %5975 = load i64, i64* %RBP.i, align 8
  %5976 = add i64 %5975, -72
  %5977 = load i64, i64* %3, align 8
  %5978 = add i64 %5977, 3
  store i64 %5978, i64* %3, align 8
  %5979 = inttoptr i64 %5976 to i32*
  %5980 = load i32, i32* %5979, align 4
  %5981 = zext i32 %5980 to i64
  store i64 %5981, i64* %RAX.i23, align 8
  %5982 = add i64 %5975, -436
  %5983 = add i64 %5977, 9
  store i64 %5983, i64* %3, align 8
  %5984 = inttoptr i64 %5982 to i32*
  store i32 %5980, i32* %5984, align 4
  %.pre191 = load i64, i64* %3, align 8
  br label %block_.L_42c046

block_.L_42c046:                                  ; preds = %block_42c02d, %routine_ucomiss_MINUS0x1d0__rbp____xmm0.exit
  %5985 = phi i64 [ %.pre191, %block_42c02d ], [ %5964, %routine_ucomiss_MINUS0x1d0__rbp____xmm0.exit ]
  %5986 = load i64, i64* %RBP.i, align 8
  %5987 = add i64 %5986, -72
  %5988 = add i64 %5985, 8
  store i64 %5988, i64* %3, align 8
  %5989 = inttoptr i64 %5987 to i32*
  %5990 = load i32, i32* %5989, align 4
  %5991 = add i32 %5990, 1
  %5992 = zext i32 %5991 to i64
  store i64 %5992, i64* %RAX.i23, align 8
  %5993 = icmp eq i32 %5990, -1
  %5994 = icmp eq i32 %5991, 0
  %5995 = or i1 %5993, %5994
  %5996 = zext i1 %5995 to i8
  store i8 %5996, i8* %14, align 1
  %5997 = and i32 %5991, 255
  %5998 = tail call i32 @llvm.ctpop.i32(i32 %5997)
  %5999 = trunc i32 %5998 to i8
  %6000 = and i8 %5999, 1
  %6001 = xor i8 %6000, 1
  store i8 %6001, i8* %21, align 1
  %6002 = xor i32 %5991, %5990
  %6003 = lshr i32 %6002, 4
  %6004 = trunc i32 %6003 to i8
  %6005 = and i8 %6004, 1
  store i8 %6005, i8* %27, align 1
  %6006 = zext i1 %5994 to i8
  store i8 %6006, i8* %30, align 1
  %6007 = lshr i32 %5991, 31
  %6008 = trunc i32 %6007 to i8
  store i8 %6008, i8* %33, align 1
  %6009 = lshr i32 %5990, 31
  %6010 = xor i32 %6007, %6009
  %6011 = add nuw nsw i32 %6010, %6007
  %6012 = icmp eq i32 %6011, 2
  %6013 = zext i1 %6012 to i8
  store i8 %6013, i8* %39, align 1
  %6014 = add i64 %5985, 14
  store i64 %6014, i64* %3, align 8
  store i32 %5991, i32* %5989, align 4
  %6015 = load i64, i64* %3, align 8
  %6016 = add i64 %6015, -379
  store i64 %6016, i64* %3, align 8
  br label %block_.L_42bed9

block_.L_42c059:                                  ; preds = %block_.L_42bed9
  %6017 = add i64 %5381, -424
  %6018 = add i64 %5417, 7
  store i64 %6018, i64* %3, align 8
  %6019 = inttoptr i64 %6017 to i64*
  %6020 = load i64, i64* %6019, align 8
  store i64 %6020, i64* %RAX.i23, align 8
  %6021 = add i64 %5417, 13
  store i64 %6021, i64* %3, align 8
  %6022 = inttoptr i64 %6020 to i32*
  store i32 0, i32* %6022, align 4
  %6023 = load i64, i64* %RBP.i, align 8
  %6024 = add i64 %6023, -72
  %6025 = load i64, i64* %3, align 8
  %6026 = add i64 %6025, 7
  store i64 %6026, i64* %3, align 8
  %6027 = inttoptr i64 %6024 to i32*
  store i32 1, i32* %6027, align 4
  %.pre193 = load i64, i64* %3, align 8
  br label %block_.L_42c06d

block_.L_42c06d:                                  ; preds = %block_42c07d, %block_.L_42c059
  %6028 = phi i64 [ %6112, %block_42c07d ], [ %.pre193, %block_.L_42c059 ]
  %6029 = load i64, i64* %RBP.i, align 8
  %6030 = add i64 %6029, -72
  %6031 = add i64 %6028, 3
  store i64 %6031, i64* %3, align 8
  %6032 = inttoptr i64 %6030 to i32*
  %6033 = load i32, i32* %6032, align 4
  %6034 = zext i32 %6033 to i64
  store i64 %6034, i64* %RAX.i23, align 8
  %6035 = add i64 %6029, -8
  %6036 = add i64 %6028, 7
  store i64 %6036, i64* %3, align 8
  %6037 = inttoptr i64 %6035 to i64*
  %6038 = load i64, i64* %6037, align 8
  store i64 %6038, i64* %RCX.i774, align 8
  %6039 = add i64 %6038, 24
  %6040 = add i64 %6028, 10
  store i64 %6040, i64* %3, align 8
  %6041 = inttoptr i64 %6039 to i32*
  %6042 = load i32, i32* %6041, align 4
  %6043 = sub i32 %6033, %6042
  %6044 = icmp ult i32 %6033, %6042
  %6045 = zext i1 %6044 to i8
  store i8 %6045, i8* %14, align 1
  %6046 = and i32 %6043, 255
  %6047 = tail call i32 @llvm.ctpop.i32(i32 %6046)
  %6048 = trunc i32 %6047 to i8
  %6049 = and i8 %6048, 1
  %6050 = xor i8 %6049, 1
  store i8 %6050, i8* %21, align 1
  %6051 = xor i32 %6042, %6033
  %6052 = xor i32 %6051, %6043
  %6053 = lshr i32 %6052, 4
  %6054 = trunc i32 %6053 to i8
  %6055 = and i8 %6054, 1
  store i8 %6055, i8* %27, align 1
  %6056 = icmp eq i32 %6043, 0
  %6057 = zext i1 %6056 to i8
  store i8 %6057, i8* %30, align 1
  %6058 = lshr i32 %6043, 31
  %6059 = trunc i32 %6058 to i8
  store i8 %6059, i8* %33, align 1
  %6060 = lshr i32 %6033, 31
  %6061 = lshr i32 %6042, 31
  %6062 = xor i32 %6061, %6060
  %6063 = xor i32 %6058, %6060
  %6064 = add nuw nsw i32 %6063, %6062
  %6065 = icmp eq i32 %6064, 2
  %6066 = zext i1 %6065 to i8
  store i8 %6066, i8* %39, align 1
  %6067 = icmp ne i8 %6059, 0
  %6068 = xor i1 %6067, %6065
  %.demorgan215 = or i1 %6056, %6068
  %.v240 = select i1 %.demorgan215, i64 16, i64 48
  %6069 = add i64 %6028, %.v240
  store i64 %6069, i64* %3, align 8
  br i1 %.demorgan215, label %block_42c07d, label %block_.L_42c09d

block_42c07d:                                     ; preds = %block_.L_42c06d
  %6070 = add i64 %6029, -424
  %6071 = add i64 %6069, 7
  store i64 %6071, i64* %3, align 8
  %6072 = inttoptr i64 %6070 to i64*
  %6073 = load i64, i64* %6072, align 8
  store i64 %6073, i64* %RAX.i23, align 8
  %6074 = add i64 %6069, 11
  store i64 %6074, i64* %3, align 8
  %6075 = load i32, i32* %6032, align 4
  %6076 = sext i32 %6075 to i64
  store i64 %6076, i64* %RCX.i774, align 8
  %6077 = shl nsw i64 %6076, 2
  %6078 = add i64 %6077, %6073
  %6079 = add i64 %6069, 18
  store i64 %6079, i64* %3, align 8
  %6080 = inttoptr i64 %6078 to i32*
  store i32 8, i32* %6080, align 4
  %6081 = load i64, i64* %RBP.i, align 8
  %6082 = add i64 %6081, -72
  %6083 = load i64, i64* %3, align 8
  %6084 = add i64 %6083, 3
  store i64 %6084, i64* %3, align 8
  %6085 = inttoptr i64 %6082 to i32*
  %6086 = load i32, i32* %6085, align 4
  %6087 = add i32 %6086, 1
  %6088 = zext i32 %6087 to i64
  store i64 %6088, i64* %RAX.i23, align 8
  %6089 = icmp eq i32 %6086, -1
  %6090 = icmp eq i32 %6087, 0
  %6091 = or i1 %6089, %6090
  %6092 = zext i1 %6091 to i8
  store i8 %6092, i8* %14, align 1
  %6093 = and i32 %6087, 255
  %6094 = tail call i32 @llvm.ctpop.i32(i32 %6093)
  %6095 = trunc i32 %6094 to i8
  %6096 = and i8 %6095, 1
  %6097 = xor i8 %6096, 1
  store i8 %6097, i8* %21, align 1
  %6098 = xor i32 %6087, %6086
  %6099 = lshr i32 %6098, 4
  %6100 = trunc i32 %6099 to i8
  %6101 = and i8 %6100, 1
  store i8 %6101, i8* %27, align 1
  %6102 = zext i1 %6090 to i8
  store i8 %6102, i8* %30, align 1
  %6103 = lshr i32 %6087, 31
  %6104 = trunc i32 %6103 to i8
  store i8 %6104, i8* %33, align 1
  %6105 = lshr i32 %6086, 31
  %6106 = xor i32 %6103, %6105
  %6107 = add nuw nsw i32 %6106, %6103
  %6108 = icmp eq i32 %6107, 2
  %6109 = zext i1 %6108 to i8
  store i8 %6109, i8* %39, align 1
  %6110 = add i64 %6083, 9
  store i64 %6110, i64* %3, align 8
  store i32 %6087, i32* %6085, align 4
  %6111 = load i64, i64* %3, align 8
  %6112 = add i64 %6111, -43
  store i64 %6112, i64* %3, align 8
  br label %block_.L_42c06d

block_.L_42c09d:                                  ; preds = %block_.L_42c06d
  %6113 = add i64 %6029, -436
  %6114 = add i64 %6069, 6
  store i64 %6114, i64* %3, align 8
  %6115 = inttoptr i64 %6113 to i32*
  %6116 = load i32, i32* %6115, align 4
  %6117 = zext i32 %6116 to i64
  store i64 %6117, i64* %RAX.i23, align 8
  %6118 = add i64 %6069, 9
  store i64 %6118, i64* %3, align 8
  store i32 %6116, i32* %6032, align 4
  %.pre194 = load i64, i64* %3, align 8
  br label %block_.L_42c0a6

block_.L_42c0a6:                                  ; preds = %block_42c0b0, %block_.L_42c09d
  %6119 = phi i64 [ %6205, %block_42c0b0 ], [ %.pre194, %block_.L_42c09d ]
  %6120 = load i64, i64* %RBP.i, align 8
  %6121 = add i64 %6120, -72
  %6122 = add i64 %6119, 4
  store i64 %6122, i64* %3, align 8
  %6123 = inttoptr i64 %6121 to i32*
  %6124 = load i32, i32* %6123, align 4
  store i8 0, i8* %14, align 1
  %6125 = and i32 %6124, 255
  %6126 = tail call i32 @llvm.ctpop.i32(i32 %6125)
  %6127 = trunc i32 %6126 to i8
  %6128 = and i8 %6127, 1
  %6129 = xor i8 %6128, 1
  store i8 %6129, i8* %21, align 1
  store i8 0, i8* %27, align 1
  %6130 = icmp eq i32 %6124, 0
  %6131 = zext i1 %6130 to i8
  store i8 %6131, i8* %30, align 1
  %6132 = lshr i32 %6124, 31
  %6133 = trunc i32 %6132 to i8
  store i8 %6133, i8* %33, align 1
  store i8 0, i8* %39, align 1
  %.v241 = select i1 %6130, i64 72, i64 10
  %6134 = add i64 %6119, %.v241
  store i64 %6134, i64* %3, align 8
  br i1 %6130, label %block_.L_42c0ee, label %block_42c0b0

block_42c0b0:                                     ; preds = %block_.L_42c0a6
  %6135 = add i64 %6120, -424
  %6136 = add i64 %6134, 7
  store i64 %6136, i64* %3, align 8
  %6137 = inttoptr i64 %6135 to i64*
  %6138 = load i64, i64* %6137, align 8
  store i64 %6138, i64* %RAX.i23, align 8
  %6139 = add i64 %6134, 11
  store i64 %6139, i64* %3, align 8
  %6140 = load i32, i32* %6123, align 4
  %6141 = sext i32 %6140 to i64
  store i64 %6141, i64* %RCX.i774, align 8
  %6142 = shl nsw i64 %6141, 2
  %6143 = add i64 %6142, %6138
  %6144 = add i64 %6134, 14
  store i64 %6144, i64* %3, align 8
  %6145 = inttoptr i64 %6143 to i32*
  %6146 = load i32, i32* %6145, align 4
  %6147 = and i32 %6146, -9
  %6148 = and i32 %6146, -9
  %6149 = zext i32 %6148 to i64
  store i64 %6149, i64* %RDX.i689, align 8
  store i8 0, i8* %14, align 1
  %6150 = and i32 %6146, 247
  %6151 = tail call i32 @llvm.ctpop.i32(i32 %6150)
  %6152 = trunc i32 %6151 to i8
  %6153 = and i8 %6152, 1
  %6154 = xor i8 %6153, 1
  store i8 %6154, i8* %21, align 1
  %6155 = icmp eq i32 %6147, 0
  %6156 = zext i1 %6155 to i8
  store i8 %6156, i8* %30, align 1
  %6157 = lshr i32 %6146, 31
  %6158 = trunc i32 %6157 to i8
  store i8 %6158, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %6159 = add i64 %6134, 20
  store i64 %6159, i64* %3, align 8
  store i32 %6148, i32* %6145, align 4
  %6160 = load i64, i64* %RBP.i, align 8
  %6161 = add i64 %6160, -424
  %6162 = load i64, i64* %3, align 8
  %6163 = add i64 %6162, 7
  store i64 %6163, i64* %3, align 8
  %6164 = inttoptr i64 %6161 to i64*
  %6165 = load i64, i64* %6164, align 8
  store i64 %6165, i64* %RAX.i23, align 8
  %6166 = add i64 %6160, -72
  %6167 = add i64 %6162, 11
  store i64 %6167, i64* %3, align 8
  %6168 = inttoptr i64 %6166 to i32*
  %6169 = load i32, i32* %6168, align 4
  %6170 = sext i32 %6169 to i64
  store i64 %6170, i64* %RCX.i774, align 8
  %6171 = shl nsw i64 %6170, 2
  %6172 = add i64 %6171, %6165
  %6173 = add i64 %6162, 14
  store i64 %6173, i64* %3, align 8
  %6174 = inttoptr i64 %6172 to i32*
  %6175 = load i32, i32* %6174, align 4
  %6176 = or i32 %6175, 1
  %6177 = zext i32 %6176 to i64
  store i64 %6177, i64* %RDX.i689, align 8
  store i8 0, i8* %14, align 1
  %6178 = and i32 %6176, 255
  %6179 = tail call i32 @llvm.ctpop.i32(i32 %6178)
  %6180 = trunc i32 %6179 to i8
  %6181 = and i8 %6180, 1
  %6182 = xor i8 %6181, 1
  store i8 %6182, i8* %21, align 1
  store i8 0, i8* %30, align 1
  %6183 = lshr i32 %6175, 31
  %6184 = trunc i32 %6183 to i8
  store i8 %6184, i8* %33, align 1
  store i8 0, i8* %39, align 1
  store i8 0, i8* %27, align 1
  %6185 = add i64 %6162, 20
  store i64 %6185, i64* %3, align 8
  store i32 %6176, i32* %6174, align 4
  %6186 = load i64, i64* %RBP.i, align 8
  %6187 = add i64 %6186, -416
  %6188 = load i64, i64* %3, align 8
  %6189 = add i64 %6188, 7
  store i64 %6189, i64* %3, align 8
  %6190 = inttoptr i64 %6187 to i64*
  %6191 = load i64, i64* %6190, align 8
  store i64 %6191, i64* %RAX.i23, align 8
  %6192 = add i64 %6186, -72
  %6193 = add i64 %6188, 11
  store i64 %6193, i64* %3, align 8
  %6194 = inttoptr i64 %6192 to i32*
  %6195 = load i32, i32* %6194, align 4
  %6196 = sext i32 %6195 to i64
  store i64 %6196, i64* %RCX.i774, align 8
  %6197 = shl nsw i64 %6196, 2
  %6198 = add i64 %6197, %6191
  %6199 = add i64 %6188, 14
  store i64 %6199, i64* %3, align 8
  %6200 = inttoptr i64 %6198 to i32*
  %6201 = load i32, i32* %6200, align 4
  %6202 = zext i32 %6201 to i64
  store i64 %6202, i64* %RDX.i689, align 8
  %6203 = add i64 %6188, 17
  store i64 %6203, i64* %3, align 8
  store i32 %6201, i32* %6194, align 4
  %6204 = load i64, i64* %3, align 8
  %6205 = add i64 %6204, -67
  store i64 %6205, i64* %3, align 8
  br label %block_.L_42c0a6

block_.L_42c0ee:                                  ; preds = %block_.L_42c0a6
  %6206 = add i64 %6120, -8
  %6207 = add i64 %6134, 4
  store i64 %6207, i64* %3, align 8
  %6208 = inttoptr i64 %6206 to i64*
  %6209 = load i64, i64* %6208, align 8
  store i64 %6209, i64* %RDI.i40, align 8
  %6210 = add i64 %6120, -16
  %6211 = add i64 %6134, 8
  store i64 %6211, i64* %3, align 8
  %6212 = inttoptr i64 %6210 to i64*
  %6213 = load i64, i64* %6212, align 8
  store i64 %6213, i64* %RSI.i, align 8
  %6214 = add i64 %6120, -424
  %6215 = add i64 %6134, 15
  store i64 %6215, i64* %3, align 8
  %6216 = inttoptr i64 %6214 to i64*
  %6217 = load i64, i64* %6216, align 8
  store i64 %6217, i64* %RDX.i689, align 8
  %6218 = add i64 %6120, -56
  %6219 = add i64 %6134, 19
  store i64 %6219, i64* %3, align 8
  %6220 = inttoptr i64 %6218 to i64*
  %6221 = load i64, i64* %6220, align 8
  store i64 %6221, i64* %RCX.i774, align 8
  %6222 = add i64 %6120, -64
  %6223 = add i64 %6134, 23
  store i64 %6223, i64* %3, align 8
  %6224 = inttoptr i64 %6222 to i64*
  %6225 = load i64, i64* %6224, align 8
  store i64 %6225, i64* %R8.i836, align 8
  %6226 = add i64 %6134, -11950
  %6227 = add i64 %6134, 28
  %6228 = load i64, i64* %6, align 8
  %6229 = add i64 %6228, -8
  %6230 = inttoptr i64 %6229 to i64*
  store i64 %6227, i64* %6230, align 8
  store i64 %6229, i64* %6, align 8
  store i64 %6226, i64* %3, align 8
  %call2_42c105 = tail call %struct.Memory* @sub_429240.matassign2hmm(%struct.State* nonnull %0, i64 %6226, %struct.Memory* %MEMORY.35)
  %6231 = load i64, i64* %RBP.i, align 8
  %6232 = add i64 %6231, -72
  %6233 = load i64, i64* %3, align 8
  %6234 = add i64 %6233, 7
  store i64 %6234, i64* %3, align 8
  %6235 = inttoptr i64 %6232 to i32*
  store i32 1, i32* %6235, align 4
  %.pre195 = load i64, i64* %3, align 8
  br label %block_.L_42c111

block_.L_42c111:                                  ; preds = %block_42c121, %block_.L_42c0ee
  %6236 = phi i64 [ %.pre195, %block_.L_42c0ee ], [ %6327, %block_42c121 ]
  %MEMORY.42 = phi %struct.Memory* [ %call2_42c105, %block_.L_42c0ee ], [ %6295, %block_42c121 ]
  %6237 = load i64, i64* %RBP.i, align 8
  %6238 = add i64 %6237, -72
  %6239 = add i64 %6236, 3
  store i64 %6239, i64* %3, align 8
  %6240 = inttoptr i64 %6238 to i32*
  %6241 = load i32, i32* %6240, align 4
  %6242 = zext i32 %6241 to i64
  store i64 %6242, i64* %RAX.i23, align 8
  %6243 = add i64 %6237, -8
  %6244 = add i64 %6236, 7
  store i64 %6244, i64* %3, align 8
  %6245 = inttoptr i64 %6243 to i64*
  %6246 = load i64, i64* %6245, align 8
  store i64 %6246, i64* %RCX.i774, align 8
  %6247 = add i64 %6246, 24
  %6248 = add i64 %6236, 10
  store i64 %6248, i64* %3, align 8
  %6249 = inttoptr i64 %6247 to i32*
  %6250 = load i32, i32* %6249, align 4
  %6251 = sub i32 %6241, %6250
  %6252 = icmp ult i32 %6241, %6250
  %6253 = zext i1 %6252 to i8
  store i8 %6253, i8* %14, align 1
  %6254 = and i32 %6251, 255
  %6255 = tail call i32 @llvm.ctpop.i32(i32 %6254)
  %6256 = trunc i32 %6255 to i8
  %6257 = and i8 %6256, 1
  %6258 = xor i8 %6257, 1
  store i8 %6258, i8* %21, align 1
  %6259 = xor i32 %6250, %6241
  %6260 = xor i32 %6259, %6251
  %6261 = lshr i32 %6260, 4
  %6262 = trunc i32 %6261 to i8
  %6263 = and i8 %6262, 1
  store i8 %6263, i8* %27, align 1
  %6264 = icmp eq i32 %6251, 0
  %6265 = zext i1 %6264 to i8
  store i8 %6265, i8* %30, align 1
  %6266 = lshr i32 %6251, 31
  %6267 = trunc i32 %6266 to i8
  store i8 %6267, i8* %33, align 1
  %6268 = lshr i32 %6241, 31
  %6269 = lshr i32 %6250, 31
  %6270 = xor i32 %6269, %6268
  %6271 = xor i32 %6266, %6268
  %6272 = add nuw nsw i32 %6271, %6270
  %6273 = icmp eq i32 %6272, 2
  %6274 = zext i1 %6273 to i8
  store i8 %6274, i8* %39, align 1
  %6275 = icmp ne i8 %6267, 0
  %6276 = xor i1 %6275, %6273
  %.demorgan216 = or i1 %6264, %6276
  %.v217 = select i1 %.demorgan216, i64 16, i64 50
  %6277 = add i64 %6236, %.v217
  %6278 = add i64 %6237, -88
  %6279 = add i64 %6277, 4
  store i64 %6279, i64* %3, align 8
  %6280 = inttoptr i64 %6278 to i64*
  %6281 = load i64, i64* %6280, align 8
  store i64 %6281, i64* %RAX.i23, align 8
  br i1 %.demorgan216, label %block_42c121, label %block_.L_42c143

block_42c121:                                     ; preds = %block_.L_42c111
  %6282 = add i64 %6277, 8
  store i64 %6282, i64* %3, align 8
  %6283 = load i32, i32* %6240, align 4
  %6284 = sext i32 %6283 to i64
  store i64 %6284, i64* %RCX.i774, align 8
  %6285 = shl nsw i64 %6284, 3
  %6286 = add i64 %6285, %6281
  %6287 = add i64 %6277, 12
  store i64 %6287, i64* %3, align 8
  %6288 = inttoptr i64 %6286 to i64*
  %6289 = load i64, i64* %6288, align 8
  store i64 %6289, i64* %RAX.i23, align 8
  store i64 %6289, i64* %RDI.i40, align 8
  %6290 = add i64 %6277, -175521
  %6291 = add i64 %6277, 20
  %6292 = load i64, i64* %6, align 8
  %6293 = add i64 %6292, -8
  %6294 = inttoptr i64 %6293 to i64*
  store i64 %6291, i64* %6294, align 8
  store i64 %6293, i64* %6, align 8
  store i64 %6290, i64* %3, align 8
  %6295 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.42)
  %6296 = load i64, i64* %RBP.i, align 8
  %6297 = add i64 %6296, -72
  %6298 = load i64, i64* %3, align 8
  %6299 = add i64 %6298, 3
  store i64 %6299, i64* %3, align 8
  %6300 = inttoptr i64 %6297 to i32*
  %6301 = load i32, i32* %6300, align 4
  %6302 = add i32 %6301, 1
  %6303 = zext i32 %6302 to i64
  store i64 %6303, i64* %RAX.i23, align 8
  %6304 = icmp eq i32 %6301, -1
  %6305 = icmp eq i32 %6302, 0
  %6306 = or i1 %6304, %6305
  %6307 = zext i1 %6306 to i8
  store i8 %6307, i8* %14, align 1
  %6308 = and i32 %6302, 255
  %6309 = tail call i32 @llvm.ctpop.i32(i32 %6308)
  %6310 = trunc i32 %6309 to i8
  %6311 = and i8 %6310, 1
  %6312 = xor i8 %6311, 1
  store i8 %6312, i8* %21, align 1
  %6313 = xor i32 %6302, %6301
  %6314 = lshr i32 %6313, 4
  %6315 = trunc i32 %6314 to i8
  %6316 = and i8 %6315, 1
  store i8 %6316, i8* %27, align 1
  %6317 = zext i1 %6305 to i8
  store i8 %6317, i8* %30, align 1
  %6318 = lshr i32 %6302, 31
  %6319 = trunc i32 %6318 to i8
  store i8 %6319, i8* %33, align 1
  %6320 = lshr i32 %6301, 31
  %6321 = xor i32 %6318, %6320
  %6322 = add nuw nsw i32 %6321, %6318
  %6323 = icmp eq i32 %6322, 2
  %6324 = zext i1 %6323 to i8
  store i8 %6324, i8* %39, align 1
  %6325 = add i64 %6298, 9
  store i64 %6325, i64* %3, align 8
  store i32 %6302, i32* %6300, align 4
  %6326 = load i64, i64* %3, align 8
  %6327 = add i64 %6326, -45
  store i64 %6327, i64* %3, align 8
  br label %block_.L_42c111

block_.L_42c143:                                  ; preds = %block_.L_42c111
  store i64 %6281, i64* %RDI.i40, align 8
  %6328 = add i64 %6277, -175555
  %6329 = add i64 %6277, 12
  %6330 = load i64, i64* %6, align 8
  %6331 = add i64 %6330, -8
  %6332 = inttoptr i64 %6331 to i64*
  store i64 %6329, i64* %6332, align 8
  store i64 %6331, i64* %6, align 8
  store i64 %6328, i64* %3, align 8
  %6333 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %MEMORY.42)
  %6334 = load i64, i64* %RBP.i, align 8
  %6335 = add i64 %6334, -408
  %6336 = load i64, i64* %3, align 8
  %6337 = add i64 %6336, 7
  store i64 %6337, i64* %3, align 8
  %6338 = inttoptr i64 %6335 to i64*
  %6339 = load i64, i64* %6338, align 8
  store i64 %6339, i64* %RAX.i23, align 8
  store i64 %6339, i64* %RDI.i40, align 8
  %6340 = add i64 %6336, -175567
  %6341 = add i64 %6336, 15
  %6342 = load i64, i64* %6, align 8
  %6343 = add i64 %6342, -8
  %6344 = inttoptr i64 %6343 to i64*
  store i64 %6341, i64* %6344, align 8
  store i64 %6343, i64* %6, align 8
  store i64 %6340, i64* %3, align 8
  %6345 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %6333)
  %6346 = load i64, i64* %RBP.i, align 8
  %6347 = add i64 %6346, -416
  %6348 = load i64, i64* %3, align 8
  %6349 = add i64 %6348, 7
  store i64 %6349, i64* %3, align 8
  %6350 = inttoptr i64 %6347 to i64*
  %6351 = load i64, i64* %6350, align 8
  store i64 %6351, i64* %RAX.i23, align 8
  store i64 %6351, i64* %RDI.i40, align 8
  %6352 = add i64 %6348, -175582
  %6353 = add i64 %6348, 15
  %6354 = load i64, i64* %6, align 8
  %6355 = add i64 %6354, -8
  %6356 = inttoptr i64 %6355 to i64*
  store i64 %6353, i64* %6356, align 8
  store i64 %6355, i64* %6, align 8
  store i64 %6352, i64* %3, align 8
  %6357 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %6345)
  %6358 = load i64, i64* %RBP.i, align 8
  %6359 = add i64 %6358, -424
  %6360 = load i64, i64* %3, align 8
  %6361 = add i64 %6360, 7
  store i64 %6361, i64* %3, align 8
  %6362 = inttoptr i64 %6359 to i64*
  %6363 = load i64, i64* %6362, align 8
  store i64 %6363, i64* %RAX.i23, align 8
  store i64 %6363, i64* %RDI.i40, align 8
  %6364 = add i64 %6360, -175597
  %6365 = add i64 %6360, 15
  %6366 = load i64, i64* %6, align 8
  %6367 = add i64 %6366, -8
  %6368 = inttoptr i64 %6367 to i64*
  store i64 %6365, i64* %6368, align 8
  store i64 %6367, i64* %6, align 8
  store i64 %6364, i64* %3, align 8
  %6369 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %6357)
  %6370 = load i64, i64* %RBP.i, align 8
  %6371 = add i64 %6370, -432
  %6372 = load i64, i64* %3, align 8
  %6373 = add i64 %6372, 7
  store i64 %6373, i64* %3, align 8
  %6374 = inttoptr i64 %6371 to i64*
  %6375 = load i64, i64* %6374, align 8
  store i64 %6375, i64* %RAX.i23, align 8
  store i64 %6375, i64* %RDI.i40, align 8
  %6376 = add i64 %6372, -175612
  %6377 = add i64 %6372, 15
  %6378 = load i64, i64* %6, align 8
  %6379 = add i64 %6378, -8
  %6380 = inttoptr i64 %6379 to i64*
  store i64 %6377, i64* %6380, align 8
  store i64 %6379, i64* %6, align 8
  store i64 %6376, i64* %3, align 8
  %6381 = tail call %struct.Memory* @__remill_function_call(%struct.State* nonnull %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %6369)
  %6382 = load i64, i64* %6, align 8
  %6383 = load i64, i64* %3, align 8
  %6384 = add i64 %6382, 624
  store i64 %6384, i64* %6, align 8
  %6385 = icmp ugt i64 %6382, -625
  %6386 = zext i1 %6385 to i8
  store i8 %6386, i8* %14, align 1
  %6387 = trunc i64 %6384 to i32
  %6388 = and i32 %6387, 255
  %6389 = tail call i32 @llvm.ctpop.i32(i32 %6388)
  %6390 = trunc i32 %6389 to i8
  %6391 = and i8 %6390, 1
  %6392 = xor i8 %6391, 1
  store i8 %6392, i8* %21, align 1
  %6393 = xor i64 %6382, 16
  %6394 = xor i64 %6393, %6384
  %6395 = lshr i64 %6394, 4
  %6396 = trunc i64 %6395 to i8
  %6397 = and i8 %6396, 1
  store i8 %6397, i8* %27, align 1
  %6398 = icmp eq i64 %6384, 0
  %6399 = zext i1 %6398 to i8
  store i8 %6399, i8* %30, align 1
  %6400 = lshr i64 %6384, 63
  %6401 = trunc i64 %6400 to i8
  store i8 %6401, i8* %33, align 1
  %6402 = lshr i64 %6382, 63
  %6403 = xor i64 %6400, %6402
  %6404 = add nuw nsw i64 %6403, %6400
  %6405 = icmp eq i64 %6404, 2
  %6406 = zext i1 %6405 to i8
  store i8 %6406, i8* %39, align 1
  %6407 = add i64 %6383, 8
  store i64 %6407, i64* %3, align 8
  %6408 = add i64 %6382, 632
  %6409 = inttoptr i64 %6384 to i64*
  %6410 = load i64, i64* %6409, align 8
  store i64 %6410, i64* %RBP.i, align 8
  store i64 %6408, i64* %6, align 8
  %6411 = add i64 %6383, 9
  store i64 %6411, i64* %3, align 8
  %6412 = inttoptr i64 %6408 to i64*
  %6413 = load i64, i64* %6412, align 8
  store i64 %6413, i64* %3, align 8
  %6414 = add i64 %6382, 640
  store i64 %6414, i64* %6, align 8
  ret %struct.Memory* %6381
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
define %struct.Memory* @routine_subq__0x270___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -624
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 624
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
define %struct.Memory* @routine_movq__0x45863c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0xff___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 255, i64* %3, align 8
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
define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x2c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -44
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r8__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R8, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl_0x18__rcx____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_addl__0x1___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R11D, align 4
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
define %struct.Memory* @routine_movslq__r11d___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 3
  store i64 %6, i64* %RCX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 61
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 248
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
  %23 = lshr i64 %3, 60
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
define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x45863c___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x45863c_type* @G__0x45863c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x100___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 256, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = add i64 %4, 24
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
define %struct.Memory* @routine_addl__0x2___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = add i32 %5, 2
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = icmp ugt i32 %5, -3
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
  %32 = add nuw nsw i32 %31, %27
  %33 = icmp eq i32 %32, 2
  %34 = zext i1 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %34, i8* %35, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq__r10d___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = load i32, i32* %R10D, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = shl i64 %3, 2
  store i64 %6, i64* %RAX, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = lshr i64 %3, 62
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  store i8 %10, i8* %7, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 252
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
  %23 = lshr i64 %3, 61
  %24 = trunc i64 %23 to i8
  %25 = and i8 %24, 1
  store i8 %25, i8* %22, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x101___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 257, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x198__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x102___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 258, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1a0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addl__0x1___r10d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0
  %R10D = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R10D, align 4
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
define %struct.Memory* @routine_movl__0x103___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 259, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x1a8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x1c__rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movq__rax__MINUS0x1b0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_cmpl_0x18__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 24
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
define %struct.Memory* @routine_jge_.L_42b03d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x105___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 261, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_0x677060___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = sext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq__esi___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = sext i32 %4 to i64
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rdx__rdi_8_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %RDI, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %RAX, align 8
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = inttoptr i64 %6 to i64*
  store i64 %7, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -88
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
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
define %struct.Memory* @routine_movq___rax__rdx_8____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x677060___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FSet(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42afcb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42b18c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x44__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_cmpl_0x1c__rcx____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RCX, align 8
  %6 = add i64 %5, 28
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
define %struct.Memory* @routine_jge_.L_42b179(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq___rax____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_je_.L_42b166(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EDX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -126
  %8 = icmp ult i32 %4, 126
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x48__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movq___rax__rdx_8____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movsbl___rax__rdx_1____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x1e8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_callq_.SymbolIndex(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__al___sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %4 to i8*
  %5 = load i8, i8* %AL, align 1
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i8 %5, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rdx____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
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
define %struct.Memory* @routine_movslq_MINUS0x44__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -68
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
define %struct.Memory* @routine_movss___rdx__r8_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %R8, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 6
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1e8__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -488
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsbl__sil___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RSI = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %4 = load i8, i8* %SIL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = sext i8 %4 to i64
  %8 = and i64 %7, 4294967295
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7CountSymbol(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42b16b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -68
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b05b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b17e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b044(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x30__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -48
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42b1c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x30__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.log_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x29731__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29731__rip__type* @G_0x29731__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulsd__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fmul double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x1f0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b1d5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x29710__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29710__rip__type* @G_0x29710__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x1f0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -496
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x140__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -320
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x5dd0___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 24016
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -24017
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
define %struct.Memory* @routine_movl_0x677060___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
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
define %struct.Memory* @routine_callq_.FCopy(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.FNorm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_0x10__rax____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_callq_.FSum(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x1dc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -476
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0x677060___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_42b2ea(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_movss_MINUS0x140__rbp__rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -320
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
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
define %struct.Memory* @routine_divss___rax__rcx_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fdiv float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42b2ae(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x140__rbp__rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -320
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fdiv float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm0___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x29643__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29643__rip__type* @G_0x29643__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x1f8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b2c3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x29622__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29622__rip__type* @G_0x29622__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x1f8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -504
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x140__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -320
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b23c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_callq_.estimate_model_length(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movsd_0x294f2__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x294f2__rip__type* @G_0x294f2__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x29426__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x29426__rip__type* @G_0x29426__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1c4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -452
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1c4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -452
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
define %struct.Memory* @routine_cvtsi2ssl__eax___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm3___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movaps__xmm1___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm3___xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm4___xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to double*
  %14 = load double, double* %13, align 1
  %15 = fptrunc double %14 to float
  %16 = bitcast %union.VectorReg* %3 to float*
  store float %15, float* %16, align 1
  %17 = extractelement <2 x i32> %9, i32 1
  %18 = getelementptr inbounds i8, i8* %5, i64 4
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 1
  %20 = extractelement <2 x i32> %12, i32 0
  %21 = bitcast i64* %10 to i32*
  store i32 %20, i32* %21, align 1
  %22 = extractelement <2 x i32> %12, i32 1
  %23 = getelementptr inbounds i8, i8* %5, i64 12
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm3__MINUS0x1c8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -456
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__MINUS0x1bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -444
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl__eax___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %4 to i8*
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = sitofp i32 %6 to float
  %15 = bitcast %union.VectorReg* %4 to float*
  store float %14, float* %15, align 1
  %16 = extractelement <2 x i32> %10, i32 1
  %17 = getelementptr inbounds i8, i8* %5, i64 4
  %18 = bitcast i8* %17 to i32*
  store i32 %16, i32* %18, align 1
  %19 = extractelement <2 x i32> %13, i32 0
  %20 = bitcast i64* %11 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  %9 = fpext float %8 to double
  %10 = bitcast %union.VectorReg* %3 to double*
  store double %9, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divsd__xmm2___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fdiv double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %8 = load <2 x i32>, <2 x i32>* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to <2 x i32>*
  %11 = load <2 x i32>, <2 x i32>* %10, align 1
  %.cast = bitcast <2 x i32> %8 to double
  %12 = fptrunc double %.cast to float
  %13 = bitcast %union.VectorReg* %3 to float*
  store float %12, float* %13, align 1
  %14 = extractelement <2 x i32> %8, i32 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to i32*
  store i32 %14, i32* %16, align 1
  %17 = extractelement <2 x i32> %11, i32 0
  %18 = bitcast i64* %9 to i32*
  store i32 %17, i32* %18, align 1
  %19 = extractelement <2 x i32> %11, i32 1
  %20 = getelementptr inbounds i8, i8* %4, i64 12
  %21 = bitcast i8* %20 to i32*
  store i32 %19, i32* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x1c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -448
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1bc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -444
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42b39e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1bc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -444
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss_MINUS0x2c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -44
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fdiv float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x29553__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29553__rip__type* @G_0x29553__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x200__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b3b3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x29532__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29532__rip__type* @G_0x29532__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x200__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -512
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %6, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1bc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -444
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1c0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -448
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %8 = load <2 x float>, <2 x float>* %7, align 1
  %9 = extractelement <2 x float> %8, i32 0
  %10 = bitcast %union.VectorReg* %4 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = fcmp uno float %9, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %9, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %9, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %9, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %9, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42b40f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x294e2__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x294e2__rip__type* @G_0x294e2__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x208__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b424(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x294c1__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x294c1__rip__type* @G_0x294c1__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x208__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -520
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x292f8__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x292f8__rip__type* @G_0x292f8__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1c0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -448
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x14__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -20
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x18__rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 24
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
define %struct.Memory* @routine_movl__ecx__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -440
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
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
define %struct.Memory* @routine_jl_.L_42b5ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0x1d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42b56a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
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
define %struct.Memory* @routine_je_.L_42b548(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42b557(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_MINUS0x1d8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -472
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
define %struct.Memory* @routine_movl__eax__MINUS0x1d8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -472
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b55c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b470(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_MINUS0x1d8__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -472
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtsi2ssl_0x1c__rax____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = add i64 %5, 28
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x i32>*
  %10 = load <2 x i32>, <2 x i32>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to i32*
  %15 = load i32, i32* %14, align 4
  %16 = sitofp i32 %15 to float
  %17 = bitcast %union.VectorReg* %3 to float*
  store float %16, float* %17, align 1
  %18 = extractelement <2 x i32> %10, i32 1
  %19 = getelementptr inbounds i8, i8* %4, i64 4
  %20 = bitcast i8* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %13, i32 0
  %22 = bitcast i64* %11 to i32*
  store i32 %21, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 1
  %24 = getelementptr inbounds i8, i8* %4, i64 12
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fdiv float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -20
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 5
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jb_.L_42b592(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = icmp ne i8 %5, 0
  %.v = select i1 %6, i64 %rel_off1, i64 %rel_off2
  %7 = add i64 %.v, %3
  store i64 %7, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b5ab(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b597(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
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
define %struct.Memory* @routine_movl__eax__MINUS0x1b8__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -440
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b452(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x198__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x1b8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -440
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
define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 5
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  store float %12, float* %13, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1a0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -416
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 0, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42b744(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
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
define %struct.Memory* @routine_movb__cl__MINUS0x209__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %CL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -521
  %6 = load i8, i8* %CL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42b6f4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RCX, align 8
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
define %struct.Memory* @routine_movsbl___rcx__rdx_1____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %RDX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i64
  %11 = and i64 %10, 4294967295
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x20___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -32
  %8 = icmp ult i32 %4, 32
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
define %struct.Memory* @routine_movb__al__MINUS0x20a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -522
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_je_.L_42b6e8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x2e___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -46
  %8 = icmp ult i32 %4, 46
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x5f___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -95
  %8 = icmp ult i32 %4, 95
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
  %17 = xor i32 %4, 16
  %18 = xor i32 %17, %7
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
  %29 = lshr i32 %4, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2d___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %ESI = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ESI, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -45
  %8 = icmp ult i32 %4, 45
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
define %struct.Memory* @routine_sete__sil(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  store i8 %7, i8* %SIL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__sil__MINUS0x20a__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0
  %SIL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -522
  %6 = load i8, i8* %SIL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x20a__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -522
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__al__MINUS0x209__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -521
  %6 = load i8, i8* %AL, align 1
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i8*
  store i8 %6, i8* %9, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb_MINUS0x209__rbp____al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -521
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 6
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_testb__0x1___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i8, i8* %AL, align 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = and i8 %4, 1
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
define %struct.Memory* @routine_jne_.L_42b707(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42b731(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x5f____rax__rcx_1_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = add i64 %4, %3
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to i8*
  store i8 95, i8* %8, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b5f6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b736(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b5dd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_42beb8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0xf0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rax__rcx_8____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 3
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i64*
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_xorl__edx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 2
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__edx___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %5 = load i32, i32* %EDX, align 4
  %6 = zext i32 %5 to i64
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  store i64 %6, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1908__rax____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = add i64 %3, 6408
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x190c___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 6412
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -6413
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x1c2c___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 7212
  store i64 %6, i64* %RCX, align 8
  %7 = icmp ugt i64 %3, -7213
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
define %struct.Memory* @routine_movq__rcx__MINUS0x218__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
  %5 = load i64, i64* %RCX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax___rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x218__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -536
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.P7PriorifyEmissionVector(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42b873(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0xf0__rbp__rax_4____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -240
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42b837(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xf0__rbp__rax_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = load i64, i64* %RAX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %5, -240
  %9 = add i64 %8, %7
  %10 = load i64, i64* %PC, align 8
  %11 = add i64 %10, 9
  store i64 %11, i64* %PC, align 8
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.VectorReg* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 4
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %18 = bitcast i64* %17 to float*
  store float 0.000000e+00, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %4, i64 12
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x290ba__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x290ba__rip__type* @G_0x290ba__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x220__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b84c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x29099__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x29099__rip__type* @G_0x29099__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x220__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -544
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xf0__rbp__rax_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %4, -240
  %8 = add i64 %7, %6
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 9
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = extractelement <2 x float> %12, i32 0
  %14 = inttoptr i64 %8 to float*
  store float %13, float* %14, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b7c5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x190__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42b8c0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b890(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x28e9c__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x28e9c__rip__type* @G_0x28e9c__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
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
define %struct.Memory* @routine_movl__edx__MINUS0x4c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_MINUS0x1b8__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -440
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
define %struct.Memory* @routine_jg_.L_42be65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq___rcx____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = bitcast i64* %RCX to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i64, i64* %4, align 8
  store i64 %7, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0x1c__rcx____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = add i64 %3, 28
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
define %struct.Memory* @routine_movq_MINUS0x1b0__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -432
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x4c__rbp____r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -76
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
define %struct.Memory* @routine_movq_MINUS0x8__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__r9____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %R9, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i64**
  %4 = load i64*, i64** %3, align 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %4, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.build_cij(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0x1d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -468
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x1d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -468
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = add i32 %8, 1
  %10 = icmp ne i32 %8, -1
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
  %32 = xor i32 %31, 1
  %33 = xor i32 %28, %31
  %34 = add nuw nsw i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_42b939(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42be65(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x1__MINUS0x1d4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -468
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
define %struct.Memory* @routine_jne_.L_42bd3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 7, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0x80__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xa0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 4
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 8
  store i64 %6, i64* %RAX, align 8
  %7 = icmp ugt i64 %3, -9
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
define %struct.Memory* @routine_callq_.P7PriorifyTransitionVector(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -160
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42b9cf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0xa0__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -160
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28f22__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28f22__rip__type* @G_0x28f22__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x228__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b9e4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28f01__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28f01__rip__type* @G_0x28f01__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x228__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -552
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0xa0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x9c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -156
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42ba40(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28eb1__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28eb1__rip__type* @G_0x28eb1__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x230__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42ba55(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28e90__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28e90__rip__type* @G_0x28e90__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x230__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -560
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x9c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -156
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -152
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42baa3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x98__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28e4e__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28e4e__rip__type* @G_0x28e4e__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x238__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bab8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28e2d__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28e2d__rip__type* @G_0x28e2d__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x238__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -568
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x98__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -152
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x94__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -148
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42bb14(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28ddd__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28ddd__rip__type* @G_0x28ddd__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x240__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bb29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28dbc__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28dbc__rip__type* @G_0x28dbc__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x240__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -576
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x94__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -148
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x90__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -144
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42bb85(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28d6c__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28d6c__rip__type* @G_0x28d6c__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x248__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bb9a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28d4b__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28d4b__rip__type* @G_0x28d4b__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x248__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -584
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x90__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -144
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x8c__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -140
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42bbf6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28cfb__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28cfb__rip__type* @G_0x28cfb__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x250__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bc0b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28cda__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28cda__rip__type* @G_0x28cda__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x250__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -592
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x8c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -140
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -136
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42bc59(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_cvtss2sd_MINUS0x88__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %5 to float*
  %9 = load float, float* %8, align 4
  %10 = fpext float %9 to double
  %11 = bitcast %union.VectorReg* %3 to double*
  store double %10, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28c98__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28c98__rip__type* @G_0x28c98__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd__xmm0__MINUS0x258__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bc6e(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_0x28c77__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, ptrtoint (%G_0x28c77__rip__type* @G_0x28c77__rip_ to i64)
  %5 = add i64 %3, 8
  store i64 %5, i64* %PC, align 8
  %6 = inttoptr i64 %4 to i64*
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %7, i64* %8, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = bitcast i64* %9 to double*
  store double 0.000000e+00, double* %10, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movsd_MINUS0x258__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -600
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x88__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -136
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -76
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
define %struct.Memory* @routine_movss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %8 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = bitcast %union.VectorReg* %3 to i32*
  store i32 %12, i32* %13, align 1
  %14 = getelementptr inbounds i8, i8* %4, i64 4
  %15 = bitcast i8* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %17 = bitcast i64* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %4, i64 12
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x25c__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -604
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FDot(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0x190__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -400
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x25c__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -604
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x260__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -608
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x260__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -608
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__MINUS0x1cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -460
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_MINUS0x1cc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -460
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = bitcast %union.VectorReg* %3 to i32*
  store i32 %10, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 4
  %13 = bitcast i8* %12 to float*
  store float 0.000000e+00, float* %13, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %15 = bitcast i64* %14 to float*
  store float 0.000000e+00, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %4, i64 12
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i64, i64* %PC, align 8
  %9 = add i64 %8, 4
  store i64 %9, i64* %PC, align 8
  %10 = bitcast %union.VectorReg* %3 to <2 x float>*
  %11 = load <2 x float>, <2 x float>* %10, align 1
  %12 = extractelement <2 x float> %11, i32 0
  %13 = inttoptr i64 %7 to float*
  %14 = load float, float* %13, align 4
  %15 = fcmp uno float %12, %14
  br i1 %15, label %16, label %26

; <label>:16:                                     ; preds = %block_400488
  %17 = fadd float %12, %14
  %18 = bitcast float %17 to i32
  %19 = and i32 %18, 2143289344
  %20 = icmp eq i32 %19, 2139095040
  %21 = and i32 %18, 4194303
  %22 = icmp ne i32 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %24, label %32

; <label>:24:                                     ; preds = %16
  %25 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %9, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:26:                                     ; preds = %block_400488
  %27 = fcmp ogt float %12, %14
  br i1 %27, label %32, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp olt float %12, %14
  br i1 %29, label %32, label %30

; <label>:30:                                     ; preds = %28
  %31 = fcmp oeq float %12, %14
  br i1 %31, label %32, label %39

; <label>:32:                                     ; preds = %30, %28, %26, %16
  %33 = phi i8 [ 0, %26 ], [ 0, %28 ], [ 1, %30 ], [ 1, %16 ]
  %34 = phi i8 [ 0, %26 ], [ 0, %28 ], [ 0, %30 ], [ 1, %16 ]
  %35 = phi i8 [ 0, %26 ], [ 1, %28 ], [ 0, %30 ], [ 1, %16 ]
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %35, i8* %38, align 1
  br label %39

; <label>:39:                                     ; preds = %32, %30
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %42, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %39, %24
  %43 = phi %struct.Memory* [ %25, %24 ], [ %2, %39 ]
  ret %struct.Memory* %43
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42bd37(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
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
define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = load i64, i64* %RAX, align 8
  %5 = load i64, i64* %RCX, align 8
  %6 = shl i64 %5, 2
  %7 = add i64 %6, %4
  %8 = load i32, i32* %EDX, align 4
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 3
  store i64 %10, i64* %PC, align 8
  %11 = inttoptr i64 %7 to i32*
  store i32 %8, i32* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bd3c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.FAdd(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jge_.L_42be52(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42be3f(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42be44(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bd62(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42be57(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
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
define %struct.Memory* @routine_jmpq_.L_42b8e1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_mulss_MINUS0x1dc__rbp____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -476
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fmul float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss__xmm1___xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = bitcast [32 x %union.VectorReg]* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = bitcast %union.VectorReg* %4 to <2 x float>*
  %14 = load <2 x float>, <2 x float>* %13, align 1
  %15 = extractelement <2 x float> %9, i32 0
  %16 = extractelement <2 x float> %14, i32 0
  %17 = fadd float %15, %16
  %18 = bitcast [32 x %union.VectorReg]* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %9 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %5, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %12, i32 0
  %24 = bitcast i64* %10 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %12, i32 1
  %26 = getelementptr inbounds i8, i8* %5, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %RCX, align 8
  %7 = shl i64 %6, 2
  %8 = add i64 %7, %5
  %9 = load i64, i64* %PC, align 8
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC, align 8
  %11 = bitcast %union.VectorReg* %3 to <2 x float>*
  %12 = load <2 x float>, <2 x float>* %11, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = inttoptr i64 %8 to float*
  %17 = load float, float* %16, align 4
  %18 = extractelement <2 x float> %12, i32 0
  %19 = fadd float %18, %17
  %20 = bitcast %union.VectorReg* %3 to float*
  store float %19, float* %20, align 1
  %21 = bitcast <2 x float> %12 to <2 x i32>
  %22 = extractelement <2 x i32> %21, i32 1
  %23 = getelementptr inbounds i8, i8* %4, i64 4
  %24 = bitcast i8* %23 to i32*
  store i32 %22, i32* %24, align 1
  %25 = extractelement <2 x i32> %15, i32 0
  %26 = bitcast i64* %13 to i32*
  store i32 %25, i32* %26, align 1
  %27 = extractelement <2 x i32> %15, i32 1
  %28 = getelementptr inbounds i8, i8* %4, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42b750(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x288a4__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x288a4__rip__type* @G_0x288a4__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__MINUS0x1d0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -464
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42c059(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movss__xmm0__MINUS0x1cc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -460
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  store float %10, float* %11, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_42c018(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_je_.L_42bfd0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_42bfed(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addss_MINUS0x1cc__rbp____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %RBP, align 8
  %6 = add i64 %5, -460
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 8
  store i64 %8, i64* %PC, align 8
  %9 = bitcast %union.VectorReg* %3 to <2 x float>*
  %10 = load <2 x float>, <2 x float>* %9, align 1
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %12 = bitcast i64* %11 to <2 x i32>*
  %13 = load <2 x i32>, <2 x i32>* %12, align 1
  %14 = inttoptr i64 %6 to float*
  %15 = load float, float* %14, align 4
  %16 = extractelement <2 x float> %10, i32 0
  %17 = fadd float %16, %15
  %18 = bitcast %union.VectorReg* %3 to float*
  store float %17, float* %18, align 1
  %19 = bitcast <2 x float> %10 to <2 x i32>
  %20 = extractelement <2 x i32> %19, i32 1
  %21 = getelementptr inbounds i8, i8* %4, i64 4
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 1
  %23 = extractelement <2 x i32> %13, i32 0
  %24 = bitcast i64* %11 to i32*
  store i32 %23, i32* %24, align 1
  %25 = extractelement <2 x i32> %13, i32 1
  %26 = getelementptr inbounds i8, i8* %4, i64 12
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c005(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c00a(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bf07(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomiss_MINUS0x1d0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -464
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x float>*
  %9 = load <2 x float>, <2 x float>* %8, align 1
  %10 = extractelement <2 x float> %9, i32 0
  %11 = inttoptr i64 %5 to float*
  %12 = load float, float* %11, align 4
  %13 = fcmp uno float %10, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %block_400488
  %15 = fadd float %10, %12
  %16 = bitcast float %15 to i32
  %17 = and i32 %16, 2143289344
  %18 = icmp eq i32 %17, 2139095040
  %19 = and i32 %16, 4194303
  %20 = icmp ne i32 %19, 0
  %21 = and i1 %18, %20
  br i1 %21, label %22, label %30

; <label>:22:                                     ; preds = %14
  %23 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %7, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

; <label>:24:                                     ; preds = %block_400488
  %25 = fcmp ogt float %10, %12
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp olt float %10, %12
  br i1 %27, label %30, label %28

; <label>:28:                                     ; preds = %26
  %29 = fcmp oeq float %10, %12
  br i1 %29, label %30, label %37

; <label>:30:                                     ; preds = %28, %26, %24, %14
  %31 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 1, %28 ], [ 1, %14 ]
  %32 = phi i8 [ 0, %24 ], [ 0, %26 ], [ 0, %28 ], [ 1, %14 ]
  %33 = phi i8 [ 0, %24 ], [ 1, %26 ], [ 0, %28 ], [ 1, %14 ]
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %33, i8* %36, align 1
  br label %37

; <label>:37:                                     ; preds = %30, %28
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %38, align 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %40, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISSI2VnI8vec128_tE3MVnI7vec32_tEEEP6MemoryS8_R5StateT_T0_.exit: ; preds = %37, %22
  %41 = phi %struct.Memory* [ %23, %22 ], [ %2, %37 ]
  ret %struct.Memory* %41
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jbe_.L_42c046(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7 = load i8, i8* %6, align 1
  %8 = or i8 %7, %5
  %9 = icmp ne i8 %8, 0
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %BRANCH_TAKEN, align 1
  %.v = select i1 %9, i64 %rel_off1, i64 %rel_off2
  %11 = add i64 %.v, %3
  store i64 %11, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__eax__MINUS0x1b4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -436
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c04b(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42bed9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jg_.L_42c09d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x8____rax__rcx_4_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %RCX, align 8
  %5 = shl i64 %4, 2
  %6 = add i64 %5, %3
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %6 to i32*
  store i32 8, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c06d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x1b4__rbp____eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -436
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
define %struct.Memory* @routine_je_.L_42c0ee(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0xfffffff7___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = and i32 %6, -9
  %8 = and i64 %3, 4294967287
  store i64 %8, i64* %RDX, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %6, 247
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
  %19 = lshr i32 %6, 31
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %22, align 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %23, align 1
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_orl__0x1___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %RDX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = or i64 %3, 1
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %16, align 1
  %17 = lshr i32 %7, 31
  %18 = trunc i32 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %18, i8* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__edx__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -72
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_42c0a6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x1a8__rbp____rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -424
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDX, align 8
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
define %struct.Memory* @routine_movq_MINUS0x40__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.matassign2hmm(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jg_.L_42c143(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.free_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_42c111(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0x270___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 624
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -625
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
