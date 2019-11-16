; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x7ae448_type = type <{ [1 x i8] }>
%G_0xab0eec_type = type <{ [4 x i8] }>
%G_0xab0ef8_type = type <{ [8 x i8] }>
%G_0xab0f24_type = type <{ [4 x i8] }>
%G_0xac22e0_type = type <{ [4 x i8] }>
%G_0xb4bd18_type = type <{ [4 x i8] }>
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G__0x443270_type = type <{ [8 x i8] }>
%G__0x57c004_type = type <{ [8 x i8] }>
%G__0x57dd2e_type = type <{ [8 x i8] }>
%G__0x57e7f7_type = type <{ [8 x i8] }>
%G__0x57e818_type = type <{ [8 x i8] }>
%G__0x57e82e_type = type <{ [8 x i8] }>
%G__0x57e848_type = type <{ [8 x i8] }>
%G__0x941118_type = type <{ [8 x i8] }>
%G__0xac22f0_type = type <{ [8 x i8] }>
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
@G_0xab0eec = local_unnamed_addr global %G_0xab0eec_type zeroinitializer
@G_0xab0ef8 = local_unnamed_addr global %G_0xab0ef8_type zeroinitializer
@G_0xab0f24 = local_unnamed_addr global %G_0xab0f24_type zeroinitializer
@G_0xac22e0 = local_unnamed_addr global %G_0xac22e0_type zeroinitializer
@G_0xb4bd18 = local_unnamed_addr global %G_0xb4bd18_type zeroinitializer
@G_0xb54ce4 = local_unnamed_addr global %G_0xb54ce4_type zeroinitializer
@G__0x443270 = global %G__0x443270_type zeroinitializer
@G__0x57c004 = global %G__0x57c004_type zeroinitializer
@G__0x57dd2e = global %G__0x57dd2e_type zeroinitializer
@G__0x57e7f7 = global %G__0x57e7f7_type zeroinitializer
@G__0x57e818 = global %G__0x57e818_type zeroinitializer
@G__0x57e82e = global %G__0x57e82e_type zeroinitializer
@G__0x57e848 = global %G__0x57e848_type zeroinitializer
@G__0x941118 = global %G__0x941118_type zeroinitializer
@G__0xac22f0 = global %G__0xac22f0_type zeroinitializer

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @memset(i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @sub_441ef0.owl_determine_life(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_445190.clear_owl_move_data(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_42fb50.matchpat(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43b010.max_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_451db0.gprintf(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_43baf0.min_eyes(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_444230.owl_add_move(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @owl_estimate_life(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
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
  %RBX.i406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %11 = load i64, i64* %RBX.i406, align 8
  %12 = add i64 %10, 4
  store i64 %12, i64* %3, align 8
  %13 = add i64 %7, -16
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14, align 8
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %7, -248
  store i64 %16, i64* %6, align 8
  %17 = icmp ult i64 %13, 232
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = trunc i64 %16 to i32
  %21 = and i32 %20, 255
  %22 = tail call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 %13, %16
  %28 = lshr i64 %27, 4
  %29 = trunc i64 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i64 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i64 %16, 63
  %36 = trunc i64 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i64 %13, 63
  %39 = xor i64 %35, %38
  %40 = add nuw nsw i64 %39, %38
  %41 = icmp eq i64 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i401 = getelementptr inbounds %union.anon, %union.anon* %44, i64 0, i32 0
  %45 = load i64, i64* %RBP.i, align 8
  %46 = add i64 %45, 24
  %47 = add i64 %15, 11
  store i64 %47, i64* %3, align 8
  %48 = inttoptr i64 %46 to i64*
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %RAX.i401, align 8
  %R10.i399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %50 = add i64 %45, 16
  %51 = add i64 %15, 15
  store i64 %51, i64* %3, align 8
  %52 = inttoptr i64 %50 to i64*
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %R10.i399, align 8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D.i396 = bitcast %union.anon* %54 to i32*
  %55 = getelementptr inbounds %union.anon, %union.anon* %54, i64 0, i32 0
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %31, align 1
  store i64 0, i64* %RBX.i406, align 8
  store i64 3, i64* %55, align 8
  %RDI.i388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %56 = add i64 %45, -24
  %57 = load i64, i64* %RDI.i388, align 8
  %58 = add i64 %15, 31
  store i64 %58, i64* %3, align 8
  %59 = inttoptr i64 %56 to i64*
  store i64 %57, i64* %59, align 8
  %RSI.i385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -32
  %62 = load i64, i64* %RSI.i385, align 8
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %3, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %RDX.i382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -40
  %68 = load i64, i64* %RDX.i382, align 8
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 4
  store i64 %70, i64* %3, align 8
  %71 = inttoptr i64 %67 to i64*
  store i64 %68, i64* %71, align 8
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i379 = bitcast %union.anon* %72 to i32*
  %73 = load i64, i64* %RBP.i, align 8
  %74 = add i64 %73, -44
  %75 = load i32, i32* %ECX.i379, align 4
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %76, 3
  store i64 %77, i64* %3, align 8
  %78 = inttoptr i64 %74 to i32*
  store i32 %75, i32* %78, align 4
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D.i376 = bitcast %union.anon* %79 to i32*
  %80 = load i64, i64* %RBP.i, align 8
  %81 = add i64 %80, -48
  %82 = load i32, i32* %R8D.i376, align 4
  %83 = load i64, i64* %3, align 8
  %84 = add i64 %83, 4
  store i64 %84, i64* %3, align 8
  %85 = inttoptr i64 %81 to i32*
  store i32 %82, i32* %85, align 4
  %R9.i374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %86 = load i64, i64* %RBP.i, align 8
  %87 = add i64 %86, -56
  %88 = load i64, i64* %R9.i374, align 8
  %89 = load i64, i64* %3, align 8
  %90 = add i64 %89, 4
  store i64 %90, i64* %3, align 8
  %91 = inttoptr i64 %87 to i64*
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* %RBP.i, align 8
  %93 = add i64 %92, -64
  %94 = load i64, i64* %R10.i399, align 8
  %95 = load i64, i64* %3, align 8
  %96 = add i64 %95, 4
  store i64 %96, i64* %3, align 8
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97, align 8
  %98 = load i64, i64* %RBP.i, align 8
  %99 = add i64 %98, -72
  %100 = load i64, i64* %RAX.i401, align 8
  %101 = load i64, i64* %3, align 8
  %102 = add i64 %101, 4
  store i64 %102, i64* %3, align 8
  %103 = inttoptr i64 %99 to i64*
  store i64 %100, i64* %103, align 8
  %104 = load i64, i64* %3, align 8
  %105 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %105, i64* %RAX.i401, align 8
  %106 = load i64, i64* %RBP.i, align 8
  %107 = add i64 %106, -80
  %108 = add i64 %104, 12
  store i64 %108, i64* %3, align 8
  %109 = inttoptr i64 %107 to i64*
  store i64 %105, i64* %109, align 8
  %RCX.i361 = getelementptr inbounds %union.anon, %union.anon* %72, i64 0, i32 0
  %110 = load i64, i64* %3, align 8
  %111 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %112 = zext i32 %111 to i64
  store i64 %112, i64* %RCX.i361, align 8
  %113 = load i64, i64* %RBP.i, align 8
  %114 = add i64 %113, -84
  %115 = add i64 %110, 10
  store i64 %115, i64* %3, align 8
  %116 = inttoptr i64 %114 to i32*
  store i32 %111, i32* %116, align 4
  %117 = load i64, i64* %RBP.i, align 8
  %118 = add i64 %117, -24
  %119 = load i64, i64* %3, align 8
  %120 = add i64 %119, 4
  store i64 %120, i64* %3, align 8
  %121 = inttoptr i64 %118 to i64*
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %RAX.i401, align 8
  %123 = load i32, i32* %R11D.i396, align 4
  %124 = add i64 %122, 1200
  %125 = add i64 %119, 11
  store i64 %125, i64* %3, align 8
  %126 = inttoptr i64 %124 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = sub i32 %123, %127
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %55, align 8
  %130 = icmp ult i32 %123, %127
  %131 = zext i1 %130 to i8
  store i8 %131, i8* %19, align 1
  %132 = and i32 %128, 255
  %133 = tail call i32 @llvm.ctpop.i32(i32 %132)
  %134 = trunc i32 %133 to i8
  %135 = and i8 %134, 1
  %136 = xor i8 %135, 1
  store i8 %136, i8* %26, align 1
  %137 = xor i32 %127, %123
  %138 = xor i32 %137, %128
  %139 = lshr i32 %138, 4
  %140 = trunc i32 %139 to i8
  %141 = and i8 %140, 1
  store i8 %141, i8* %31, align 1
  %142 = icmp eq i32 %128, 0
  %143 = zext i1 %142 to i8
  store i8 %143, i8* %34, align 1
  %144 = lshr i32 %128, 31
  %145 = trunc i32 %144 to i8
  store i8 %145, i8* %37, align 1
  %146 = lshr i32 %123, 31
  %147 = lshr i32 %127, 31
  %148 = xor i32 %147, %146
  %149 = xor i32 %144, %146
  %150 = add nuw nsw i32 %149, %148
  %151 = icmp eq i32 %150, 2
  %152 = zext i1 %151 to i8
  store i8 %152, i8* %43, align 1
  %153 = add i64 %117, -196
  %154 = add i64 %119, 18
  store i64 %154, i64* %3, align 8
  %155 = inttoptr i64 %153 to i32*
  store i32 %128, i32* %155, align 4
  %156 = load i64, i64* %3, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %157 = load i64, i64* %RBP.i, align 8
  %158 = add i64 %157, -24
  %159 = add i64 %156, 27
  store i64 %159, i64* %3, align 8
  %160 = inttoptr i64 %158 to i64*
  %161 = load i64, i64* %160, align 8
  store i64 %161, i64* %RDI.i388, align 8
  %162 = add i64 %157, -44
  %163 = add i64 %156, 30
  store i64 %163, i64* %3, align 8
  %164 = inttoptr i64 %162 to i32*
  %165 = load i32, i32* %164, align 4
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RDX.i382, align 8
  %167 = add i64 %157, -48
  %168 = add i64 %156, 33
  store i64 %168, i64* %3, align 8
  %169 = inttoptr i64 %167 to i32*
  %170 = load i32, i32* %169, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RCX.i361, align 8
  %R8.i337 = getelementptr inbounds %union.anon, %union.anon* %79, i64 0, i32 0
  %172 = add i64 %157, -32
  %173 = add i64 %156, 37
  store i64 %173, i64* %3, align 8
  %174 = inttoptr i64 %172 to i64*
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %R8.i337, align 8
  %176 = add i64 %157, -56
  %177 = add i64 %156, 41
  store i64 %177, i64* %3, align 8
  %178 = inttoptr i64 %176 to i64*
  %179 = load i64, i64* %178, align 8
  store i64 %179, i64* %R9.i374, align 8
  %180 = add i64 %157, -64
  %181 = add i64 %156, 45
  store i64 %181, i64* %3, align 8
  %182 = inttoptr i64 %180 to i64*
  %183 = load i64, i64* %182, align 8
  store i64 %183, i64* %RAX.i401, align 8
  %184 = add i64 %157, -72
  %185 = add i64 %156, 49
  store i64 %185, i64* %3, align 8
  %186 = inttoptr i64 %184 to i64*
  %187 = load i64, i64* %186, align 8
  %188 = add i64 %157, -208
  %189 = add i64 %156, 56
  store i64 %189, i64* %3, align 8
  %190 = inttoptr i64 %188 to i64*
  store i64 %187, i64* %190, align 8
  %191 = load i64, i64* %RBX.i406, align 8
  %192 = load i64, i64* %3, align 8
  store i64 %191, i64* %RSI.i385, align 8
  %193 = bitcast i64* %6 to i64**
  %194 = load i64*, i64** %193, align 8
  %195 = load i64, i64* %RAX.i401, align 8
  %196 = add i64 %192, 7
  store i64 %196, i64* %3, align 8
  store i64 %195, i64* %194, align 8
  %197 = load i64, i64* %RBP.i, align 8
  %198 = add i64 %197, -208
  %199 = load i64, i64* %3, align 8
  %200 = add i64 %199, 7
  store i64 %200, i64* %3, align 8
  %201 = inttoptr i64 %198 to i64*
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %RAX.i401, align 8
  %203 = load i64, i64* %6, align 8
  %204 = add i64 %203, 8
  %205 = add i64 %199, 12
  store i64 %205, i64* %3, align 8
  %206 = inttoptr i64 %204 to i64*
  store i64 %202, i64* %206, align 8
  %207 = load i64, i64* %3, align 8
  %208 = add i64 %207, -27298
  %209 = add i64 %207, 5
  %210 = load i64, i64* %6, align 8
  %211 = add i64 %210, -8
  %212 = inttoptr i64 %211 to i64*
  store i64 %209, i64* %212, align 8
  store i64 %211, i64* %6, align 8
  store i64 %208, i64* %3, align 8
  %call2_448992 = tail call %struct.Memory* @sub_441ef0.owl_determine_life(%struct.State* %0, i64 %208, %struct.Memory* %2)
  %213 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0xac22f0_type* @G__0xac22f0 to i64), i64* %RDI.i388, align 8
  store i64 0, i64* %RSI.i385, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %31, align 1
  store i64 400, i64* %RCX.i361, align 8
  store i64 400, i64* %RDX.i382, align 8
  store i32 0, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  %214 = add i64 %213, -293159
  %215 = add i64 %213, 35
  %216 = load i64, i64* %6, align 8
  %217 = add i64 %216, -8
  %218 = inttoptr i64 %217 to i64*
  store i64 %215, i64* %218, align 8
  store i64 %217, i64* %6, align 8
  store i64 %214, i64* %3, align 8
  %219 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %call2_448992)
  %220 = load i64, i64* %3, align 8
  %221 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %222 = add i32 %221, -9
  %223 = icmp ult i32 %221, 9
  %224 = zext i1 %223 to i8
  store i8 %224, i8* %19, align 1
  %225 = and i32 %222, 255
  %226 = tail call i32 @llvm.ctpop.i32(i32 %225)
  %227 = trunc i32 %226 to i8
  %228 = and i8 %227, 1
  %229 = xor i8 %228, 1
  store i8 %229, i8* %26, align 1
  %230 = xor i32 %222, %221
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, i8* %31, align 1
  %234 = icmp eq i32 %222, 0
  %235 = zext i1 %234 to i8
  store i8 %235, i8* %34, align 1
  %236 = lshr i32 %222, 31
  %237 = trunc i32 %236 to i8
  store i8 %237, i8* %37, align 1
  %238 = lshr i32 %221, 31
  %239 = xor i32 %236, %238
  %240 = add nuw nsw i32 %239, %238
  %241 = icmp eq i32 %240, 2
  %242 = zext i1 %241 to i8
  store i8 %242, i8* %43, align 1
  %243 = icmp ne i8 %237, 0
  %244 = xor i1 %243, %241
  %.v = select i1 %244, i64 156, i64 14
  %245 = add i64 %220, %.v
  store i64 %245, i64* %3, align 8
  br i1 %244, label %block_.L_448a56, label %block_4489c8

block_4489c8:                                     ; preds = %entry
  %246 = load i64, i64* %RBP.i, align 8
  %247 = add i64 %246, -48
  %248 = add i64 %245, 4
  store i64 %248, i64* %3, align 8
  %249 = inttoptr i64 %247 to i32*
  %250 = load i32, i32* %249, align 4
  store i8 0, i8* %19, align 1
  %251 = and i32 %250, 255
  %252 = tail call i32 @llvm.ctpop.i32(i32 %251)
  %253 = trunc i32 %252 to i8
  %254 = and i8 %253, 1
  %255 = xor i8 %254, 1
  store i8 %255, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %256 = icmp eq i32 %250, 0
  %257 = zext i1 %256 to i8
  store i8 %257, i8* %34, align 1
  %258 = lshr i32 %250, 31
  %259 = trunc i32 %258 to i8
  store i8 %259, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v34 = select i1 %256, i64 10, i64 72
  %260 = add i64 %245, %.v34
  store i64 %260, i64* %3, align 8
  br i1 %256, label %block_4489d2, label %block_.L_448a10

block_4489d2:                                     ; preds = %block_4489c8
  %261 = add i64 %246, -192
  store i64 %261, i64* %RDI.i388, align 8
  %262 = add i64 %260, -14402
  %263 = add i64 %260, 12
  %264 = load i64, i64* %6, align 8
  %265 = add i64 %264, -8
  %266 = inttoptr i64 %265 to i64*
  store i64 %263, i64* %266, align 8
  store i64 %265, i64* %6, align 8
  store i64 %262, i64* %3, align 8
  %call2_4489d9 = tail call %struct.Memory* @sub_445190.clear_owl_move_data(%struct.State* nonnull %0, i64 %262, %struct.Memory* %219)
  %267 = load i64, i64* %3, align 8
  store i64 ptrtoint (%G__0x443270_type* @G__0x443270 to i64), i64* %RDI.i388, align 8
  store i64 ptrtoint (%G__0x941118_type* @G__0x941118 to i64), i64* %RDX.i382, align 8
  %268 = load i64, i64* %RBP.i, align 8
  %269 = add i64 %268, -192
  store i64 %269, i64* %RAX.i401, align 8
  %270 = add i64 %268, -196
  %271 = add i64 %267, 33
  store i64 %271, i64* %3, align 8
  %272 = inttoptr i64 %270 to i32*
  %273 = load i32, i32* %272, align 4
  %274 = zext i32 %273 to i64
  store i64 %274, i64* %RSI.i385, align 8
  %275 = add i64 %268, -24
  %276 = add i64 %267, 37
  store i64 %276, i64* %3, align 8
  %277 = inttoptr i64 %275 to i64*
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %R8.i337, align 8
  store i64 %269, i64* %RCX.i361, align 8
  %279 = add i64 %267, -102030
  %280 = add i64 %267, 45
  %281 = load i64, i64* %6, align 8
  %282 = add i64 %281, -8
  %283 = inttoptr i64 %282 to i64*
  store i64 %280, i64* %283, align 8
  store i64 %282, i64* %6, align 8
  store i64 %279, i64* %3, align 8
  %call2_448a06 = tail call %struct.Memory* @sub_42fb50.matchpat(%struct.State* nonnull %0, i64 %279, %struct.Memory* %call2_4489d9)
  %284 = load i64, i64* %3, align 8
  %285 = add i64 %284, 70
  br label %block_.L_448a51

block_.L_448a10:                                  ; preds = %block_4489c8
  %286 = add i64 %246, -56
  %287 = add i64 %260, 4
  store i64 %287, i64* %3, align 8
  %288 = inttoptr i64 %286 to i64*
  %289 = load i64, i64* %288, align 8
  store i64 %289, i64* %RDI.i388, align 8
  %290 = add i64 %260, -55808
  %291 = add i64 %260, 9
  %292 = load i64, i64* %6, align 8
  %293 = add i64 %292, -8
  %294 = inttoptr i64 %293 to i64*
  store i64 %291, i64* %294, align 8
  store i64 %293, i64* %6, align 8
  store i64 %290, i64* %3, align 8
  %call2_448a14 = tail call %struct.Memory* @sub_43b010.max_eyes(%struct.State* nonnull %0, i64 %290, %struct.Memory* %219)
  %EAX.i265 = bitcast %union.anon* %44 to i32*
  %295 = load i32, i32* %EAX.i265, align 4
  %296 = load i64, i64* %3, align 8
  %297 = add i32 %295, -2
  %298 = icmp ult i32 %295, 2
  %299 = zext i1 %298 to i8
  store i8 %299, i8* %19, align 1
  %300 = and i32 %297, 255
  %301 = tail call i32 @llvm.ctpop.i32(i32 %300)
  %302 = trunc i32 %301 to i8
  %303 = and i8 %302, 1
  %304 = xor i8 %303, 1
  store i8 %304, i8* %26, align 1
  %305 = xor i32 %297, %295
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  store i8 %308, i8* %31, align 1
  %309 = icmp eq i32 %297, 0
  %310 = zext i1 %309 to i8
  store i8 %310, i8* %34, align 1
  %311 = lshr i32 %297, 31
  %312 = trunc i32 %311 to i8
  store i8 %312, i8* %37, align 1
  %313 = lshr i32 %295, 31
  %314 = xor i32 %311, %313
  %315 = add nuw nsw i32 %314, %313
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  store i8 %317, i8* %43, align 1
  %318 = icmp ne i8 %312, 0
  %319 = xor i1 %318, %316
  %.v35 = select i1 %319, i64 51, i64 9
  %320 = add i64 %296, %.v35
  store i64 %320, i64* %3, align 8
  br i1 %319, label %block_.L_448a4c, label %block_448a22

block_448a22:                                     ; preds = %block_.L_448a10
  store i64 ptrtoint (%G__0x443270_type* @G__0x443270 to i64), i64* %RDI.i388, align 8
  store i64 ptrtoint (%G__0x941118_type* @G__0x941118 to i64), i64* %RDX.i382, align 8
  %321 = load i64, i64* %RBP.i, align 8
  %322 = add i64 %321, -196
  %323 = add i64 %320, 26
  store i64 %323, i64* %3, align 8
  %324 = inttoptr i64 %322 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = zext i32 %325 to i64
  store i64 %326, i64* %RSI.i385, align 8
  %327 = add i64 %321, -32
  %328 = add i64 %320, 30
  store i64 %328, i64* %3, align 8
  %329 = inttoptr i64 %327 to i64*
  %330 = load i64, i64* %329, align 8
  store i64 %330, i64* %RAX.i401, align 8
  %331 = add i64 %321, -24
  %332 = add i64 %320, 34
  store i64 %332, i64* %3, align 8
  %333 = inttoptr i64 %331 to i64*
  %334 = load i64, i64* %333, align 8
  store i64 %334, i64* %R8.i337, align 8
  store i64 %330, i64* %RCX.i361, align 8
  %335 = add i64 %320, -102098
  %336 = add i64 %320, 42
  %337 = load i64, i64* %6, align 8
  %338 = add i64 %337, -8
  %339 = inttoptr i64 %338 to i64*
  store i64 %336, i64* %339, align 8
  store i64 %338, i64* %6, align 8
  store i64 %335, i64* %3, align 8
  %call2_448a47 = tail call %struct.Memory* @sub_42fb50.matchpat(%struct.State* nonnull %0, i64 %335, %struct.Memory* %call2_448a14)
  %.pre = load i64, i64* %3, align 8
  br label %block_.L_448a4c

block_.L_448a4c:                                  ; preds = %block_448a22, %block_.L_448a10
  %340 = phi i64 [ %320, %block_.L_448a10 ], [ %.pre, %block_448a22 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_448a14, %block_.L_448a10 ], [ %call2_448a47, %block_448a22 ]
  %341 = add i64 %340, 5
  store i64 %341, i64* %3, align 8
  br label %block_.L_448a51

block_.L_448a51:                                  ; preds = %block_.L_448a4c, %block_4489d2
  %storemerge = phi i64 [ %285, %block_4489d2 ], [ %341, %block_.L_448a4c ]
  %MEMORY.1 = phi %struct.Memory* [ %call2_448a06, %block_4489d2 ], [ %MEMORY.0, %block_.L_448a4c ]
  %342 = add i64 %storemerge, 5
  store i64 %342, i64* %3, align 8
  br label %block_.L_448a56

block_.L_448a56:                                  ; preds = %block_.L_448a51, %entry
  %343 = phi i64 [ %245, %entry ], [ %342, %block_.L_448a51 ]
  %MEMORY.2 = phi %struct.Memory* [ %219, %entry ], [ %MEMORY.1, %block_.L_448a51 ]
  %344 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %345 = zext i32 %344 to i64
  %346 = and i64 %345, 2
  %347 = trunc i64 %346 to i32
  store i64 %346, i64* %RAX.i401, align 8
  %EAX.i240 = bitcast %union.anon* %44 to i32*
  store i8 0, i8* %19, align 1
  %348 = tail call i32 @llvm.ctpop.i32(i32 %347)
  %349 = trunc i32 %348 to i8
  %350 = xor i8 %349, 1
  store i8 %350, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %351 = icmp eq i32 %347, 0
  %.lobit32 = lshr exact i32 %347, 1
  %352 = trunc i32 %.lobit32 to i8
  %353 = xor i8 %352, 1
  store i8 %353, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v36 = select i1 %351, i64 74, i64 19
  %354 = add i64 %343, %.v36
  store i64 %354, i64* %3, align 8
  br i1 %351, label %block_.L_448aa0, label %block_448a69

block_448a69:                                     ; preds = %block_.L_448a56
  %355 = and i64 %345, 4
  %356 = trunc i64 %355 to i32
  store i64 %355, i64* %RAX.i401, align 8
  store i8 0, i8* %19, align 1
  %357 = tail call i32 @llvm.ctpop.i32(i32 %356)
  %358 = trunc i32 %357 to i8
  %359 = xor i8 %358, 1
  store i8 %359, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %360 = icmp eq i32 %356, 0
  %.lobit33 = lshr exact i32 %356, 2
  %361 = trunc i32 %.lobit33 to i8
  %362 = xor i8 %361, 1
  store i8 %362, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v37 = select i1 %360, i64 55, i64 19
  %363 = add i64 %354, %.v37
  store i64 %363, i64* %3, align 8
  br i1 %360, label %block_.L_448aa0, label %block_448a7c

block_448a7c:                                     ; preds = %block_448a69
  store i64 ptrtoint (%G__0x57e7f7_type* @G__0x57e7f7 to i64), i64* %RDI.i388, align 8
  %364 = load i64, i64* %RBP.i, align 8
  %365 = add i64 %364, -64
  %366 = add i64 %363, 14
  store i64 %366, i64* %3, align 8
  %367 = inttoptr i64 %365 to i64*
  %368 = load i64, i64* %367, align 8
  store i64 %368, i64* %RAX.i401, align 8
  %369 = add i64 %363, 16
  store i64 %369, i64* %3, align 8
  %370 = inttoptr i64 %368 to i32*
  %371 = load i32, i32* %370, align 4
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %RSI.i385, align 8
  %373 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RDX.i382, align 8
  %AL.i = bitcast %union.anon* %44 to i8*
  store i8 0, i8* %AL.i, align 1
  %375 = add i64 %363, 37684
  %376 = add i64 %363, 30
  %377 = load i64, i64* %6, align 8
  %378 = add i64 %377, -8
  %379 = inttoptr i64 %378 to i64*
  store i64 %376, i64* %379, align 8
  store i64 %378, i64* %6, align 8
  store i64 %375, i64* %3, align 8
  %call2_448a95 = tail call %struct.Memory* @sub_451db0.gprintf(%struct.State* nonnull %0, i64 %375, %struct.Memory* %MEMORY.2)
  %380 = load i64, i64* %RBP.i, align 8
  %381 = add i64 %380, -212
  %382 = load i32, i32* %EAX.i240, align 4
  %383 = load i64, i64* %3, align 8
  %384 = add i64 %383, 6
  store i64 %384, i64* %3, align 8
  %385 = inttoptr i64 %381 to i32*
  store i32 %382, i32* %385, align 4
  %.pre27 = load i64, i64* %3, align 8
  br label %block_.L_448aa0

block_.L_448aa0:                                  ; preds = %block_448a7c, %block_448a69, %block_.L_448a56
  %386 = phi i64 [ %354, %block_.L_448a56 ], [ %363, %block_448a69 ], [ %.pre27, %block_448a7c ]
  %MEMORY.3 = phi %struct.Memory* [ %MEMORY.2, %block_.L_448a56 ], [ %MEMORY.2, %block_448a69 ], [ %call2_448a95, %block_448a7c ]
  %387 = load i64, i64* %RBP.i, align 8
  %388 = add i64 %387, -64
  %389 = add i64 %386, 4
  store i64 %389, i64* %3, align 8
  %390 = inttoptr i64 %388 to i64*
  %391 = load i64, i64* %390, align 8
  store i64 %391, i64* %RAX.i401, align 8
  %392 = add i64 %386, 6
  store i64 %392, i64* %3, align 8
  %393 = inttoptr i64 %391 to i32*
  %394 = load i32, i32* %393, align 4
  %395 = zext i32 %394 to i64
  store i64 %395, i64* %RCX.i361, align 8
  %396 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  %397 = sub i32 %394, %396
  %398 = icmp ult i32 %394, %396
  %399 = zext i1 %398 to i8
  store i8 %399, i8* %19, align 1
  %400 = and i32 %397, 255
  %401 = tail call i32 @llvm.ctpop.i32(i32 %400)
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = xor i8 %403, 1
  store i8 %404, i8* %26, align 1
  %405 = xor i32 %396, %394
  %406 = xor i32 %405, %397
  %407 = lshr i32 %406, 4
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  store i8 %409, i8* %31, align 1
  %410 = icmp eq i32 %397, 0
  %411 = zext i1 %410 to i8
  store i8 %411, i8* %34, align 1
  %412 = lshr i32 %397, 31
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %37, align 1
  %414 = lshr i32 %394, 31
  %415 = lshr i32 %396, 31
  %416 = xor i32 %415, %414
  %417 = xor i32 %412, %414
  %418 = add nuw nsw i32 %417, %416
  %419 = icmp eq i32 %418, 2
  %420 = zext i1 %419 to i8
  store i8 %420, i8* %43, align 1
  %421 = icmp ne i8 %413, 0
  %422 = xor i1 %421, %419
  %.v38 = select i1 %422, i64 41, i64 19
  %423 = add i64 %386, %.v38
  store i64 %423, i64* %3, align 8
  br i1 %422, label %block_.L_448ac9, label %block_448ab3

block_448ab3:                                     ; preds = %block_.L_448aa0
  %424 = zext i32 %396 to i64
  store i64 %424, i64* %RAX.i401, align 8
  %425 = add i64 %423, 11
  store i64 %425, i64* %3, align 8
  %426 = load i64, i64* %390, align 8
  store i64 %426, i64* %RCX.i361, align 8
  %427 = add i64 %423, 13
  store i64 %427, i64* %3, align 8
  %428 = inttoptr i64 %426 to i32*
  %429 = load i32, i32* %428, align 4
  %430 = sub i32 %429, %396
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RDX.i382, align 8
  %432 = icmp ult i32 %429, %396
  %433 = zext i1 %432 to i8
  store i8 %433, i8* %19, align 1
  %434 = and i32 %430, 255
  %435 = tail call i32 @llvm.ctpop.i32(i32 %434)
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = xor i8 %437, 1
  store i8 %438, i8* %26, align 1
  %439 = xor i32 %396, %429
  %440 = xor i32 %439, %430
  %441 = lshr i32 %440, 4
  %442 = trunc i32 %441 to i8
  %443 = and i8 %442, 1
  store i8 %443, i8* %31, align 1
  %444 = icmp eq i32 %430, 0
  %445 = zext i1 %444 to i8
  store i8 %445, i8* %34, align 1
  %446 = lshr i32 %430, 31
  %447 = trunc i32 %446 to i8
  store i8 %447, i8* %37, align 1
  %448 = lshr i32 %429, 31
  %449 = xor i32 %415, %448
  %450 = xor i32 %446, %448
  %451 = add nuw nsw i32 %450, %449
  %452 = icmp eq i32 %451, 2
  %453 = zext i1 %452 to i8
  store i8 %453, i8* %43, align 1
  %454 = add i64 %423, 17
  store i64 %454, i64* %3, align 8
  store i32 %430, i32* %428, align 4
  %455 = load i64, i64* %3, align 8
  %456 = add i64 %455, 15
  store i64 %456, i64* %3, align 8
  br label %block_.L_448ad3

block_.L_448ac9:                                  ; preds = %block_.L_448aa0
  %457 = add i64 %423, 4
  store i64 %457, i64* %3, align 8
  %458 = load i64, i64* %390, align 8
  store i64 %458, i64* %RAX.i401, align 8
  %459 = add i64 %423, 10
  store i64 %459, i64* %3, align 8
  %460 = inttoptr i64 %458 to i32*
  store i32 0, i32* %460, align 4
  %.pre28 = load i64, i64* %3, align 8
  br label %block_.L_448ad3

block_.L_448ad3:                                  ; preds = %block_.L_448ac9, %block_448ab3
  %461 = phi i64 [ %.pre28, %block_.L_448ac9 ], [ %456, %block_448ab3 ]
  %462 = load i64, i64* %RBP.i, align 8
  %463 = add i64 %462, -80
  %464 = add i64 %461, 4
  store i64 %464, i64* %3, align 8
  %465 = inttoptr i64 %463 to i64*
  %466 = load i64, i64* %465, align 8
  store i64 %466, i64* %RAX.i401, align 8
  store i64 %466, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  %467 = add i64 %462, -84
  %468 = add i64 %461, 15
  store i64 %468, i64* %3, align 8
  %469 = inttoptr i64 %467 to i32*
  %470 = load i32, i32* %469, align 4
  %471 = zext i32 %470 to i64
  store i64 %471, i64* %RCX.i361, align 8
  store i32 %470, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %472 = add i64 %462, -64
  %473 = add i64 %461, 26
  store i64 %473, i64* %3, align 8
  %474 = inttoptr i64 %472 to i64*
  %475 = load i64, i64* %474, align 8
  store i64 %475, i64* %RAX.i401, align 8
  %476 = add i64 %461, 29
  store i64 %476, i64* %3, align 8
  %477 = inttoptr i64 %475 to i32*
  %478 = load i32, i32* %477, align 4
  %479 = add i32 %478, -2
  %480 = icmp ult i32 %478, 2
  %481 = zext i1 %480 to i8
  store i8 %481, i8* %19, align 1
  %482 = and i32 %479, 255
  %483 = tail call i32 @llvm.ctpop.i32(i32 %482)
  %484 = trunc i32 %483 to i8
  %485 = and i8 %484, 1
  %486 = xor i8 %485, 1
  store i8 %486, i8* %26, align 1
  %487 = xor i32 %479, %478
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  store i8 %490, i8* %31, align 1
  %491 = icmp eq i32 %479, 0
  %492 = zext i1 %491 to i8
  store i8 %492, i8* %34, align 1
  %493 = lshr i32 %479, 31
  %494 = trunc i32 %493 to i8
  store i8 %494, i8* %37, align 1
  %495 = lshr i32 %478, 31
  %496 = xor i32 %493, %495
  %497 = add nuw nsw i32 %496, %495
  %498 = icmp eq i32 %497, 2
  %499 = zext i1 %498 to i8
  store i8 %499, i8* %43, align 1
  %500 = icmp ne i8 %494, 0
  %501 = xor i1 %500, %498
  %.v39 = select i1 %501, i64 35, i64 118
  %502 = add i64 %461, %.v39
  store i64 %502, i64* %3, align 8
  br i1 %501, label %block_448af6, label %block_.L_448b49

block_448af6:                                     ; preds = %block_.L_448ad3
  %503 = add i64 %502, 4
  store i64 %503, i64* %3, align 8
  %504 = load i64, i64* %474, align 8
  store i64 %504, i64* %RAX.i401, align 8
  %505 = add i64 %502, 7
  store i64 %505, i64* %3, align 8
  %506 = inttoptr i64 %504 to i32*
  %507 = load i32, i32* %506, align 4
  %508 = add i32 %507, -1
  %509 = icmp eq i32 %507, 0
  %510 = zext i1 %509 to i8
  store i8 %510, i8* %19, align 1
  %511 = and i32 %508, 255
  %512 = tail call i32 @llvm.ctpop.i32(i32 %511)
  %513 = trunc i32 %512 to i8
  %514 = and i8 %513, 1
  %515 = xor i8 %514, 1
  store i8 %515, i8* %26, align 1
  %516 = xor i32 %508, %507
  %517 = lshr i32 %516, 4
  %518 = trunc i32 %517 to i8
  %519 = and i8 %518, 1
  store i8 %519, i8* %31, align 1
  %520 = icmp eq i32 %508, 0
  %521 = zext i1 %520 to i8
  store i8 %521, i8* %34, align 1
  %522 = lshr i32 %508, 31
  %523 = trunc i32 %522 to i8
  store i8 %523, i8* %37, align 1
  %524 = lshr i32 %507, 31
  %525 = xor i32 %522, %524
  %526 = add nuw nsw i32 %525, %524
  %527 = icmp eq i32 %526, 2
  %528 = zext i1 %527 to i8
  store i8 %528, i8* %43, align 1
  %.v46 = select i1 %520, i64 13, i64 31
  %529 = add i64 %502, %.v46
  store i64 %529, i64* %3, align 8
  br i1 %520, label %block_448b03, label %block_.L_448b15

block_448b03:                                     ; preds = %block_448af6
  %530 = add i64 %462, -56
  %531 = add i64 %529, 4
  store i64 %531, i64* %3, align 8
  %532 = inttoptr i64 %530 to i64*
  %533 = load i64, i64* %532, align 8
  store i64 %533, i64* %RDI.i388, align 8
  %534 = add i64 %529, -53267
  %535 = add i64 %529, 9
  %536 = load i64, i64* %6, align 8
  %537 = add i64 %536, -8
  %538 = inttoptr i64 %537 to i64*
  store i64 %535, i64* %538, align 8
  store i64 %537, i64* %6, align 8
  store i64 %534, i64* %3, align 8
  %call2_448b07 = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %534, %struct.Memory* %MEMORY.3)
  %539 = load i32, i32* %EAX.i240, align 4
  %540 = load i64, i64* %3, align 8
  %541 = add i32 %539, -4
  %542 = icmp ult i32 %539, 4
  %543 = zext i1 %542 to i8
  store i8 %543, i8* %19, align 1
  %544 = and i32 %541, 255
  %545 = tail call i32 @llvm.ctpop.i32(i32 %544)
  %546 = trunc i32 %545 to i8
  %547 = and i8 %546, 1
  %548 = xor i8 %547, 1
  store i8 %548, i8* %26, align 1
  %549 = xor i32 %541, %539
  %550 = lshr i32 %549, 4
  %551 = trunc i32 %550 to i8
  %552 = and i8 %551, 1
  store i8 %552, i8* %31, align 1
  %553 = icmp eq i32 %541, 0
  %554 = zext i1 %553 to i8
  store i8 %554, i8* %34, align 1
  %555 = lshr i32 %541, 31
  %556 = trunc i32 %555 to i8
  store i8 %556, i8* %37, align 1
  %557 = lshr i32 %539, 31
  %558 = xor i32 %555, %557
  %559 = add nuw nsw i32 %558, %557
  %560 = icmp eq i32 %559, 2
  %561 = zext i1 %560 to i8
  store i8 %561, i8* %43, align 1
  %562 = icmp ne i8 %556, 0
  %563 = xor i1 %562, %560
  %.v56 = select i1 %563, i64 9, i64 61
  %564 = add i64 %540, %.v56
  store i64 %564, i64* %3, align 8
  br i1 %563, label %block_.L_448b15, label %block_.L_448b49

block_.L_448b15:                                  ; preds = %block_448af6, %block_448b03
  %565 = phi i64 [ %529, %block_448af6 ], [ %564, %block_448b03 ]
  %MEMORY.5 = phi %struct.Memory* [ %MEMORY.3, %block_448af6 ], [ %call2_448b07, %block_448b03 ]
  %566 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RAX.i401, align 8
  %568 = load i32, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
  %569 = sub i32 %566, %568
  %570 = icmp ult i32 %566, %568
  %571 = zext i1 %570 to i8
  store i8 %571, i8* %19, align 1
  %572 = and i32 %569, 255
  %573 = tail call i32 @llvm.ctpop.i32(i32 %572)
  %574 = trunc i32 %573 to i8
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  store i8 %576, i8* %26, align 1
  %577 = xor i32 %568, %566
  %578 = xor i32 %577, %569
  %579 = lshr i32 %578, 4
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  store i8 %581, i8* %31, align 1
  %582 = icmp eq i32 %569, 0
  %583 = zext i1 %582 to i8
  store i8 %583, i8* %34, align 1
  %584 = lshr i32 %569, 31
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %37, align 1
  %586 = lshr i32 %566, 31
  %587 = lshr i32 %568, 31
  %588 = xor i32 %587, %586
  %589 = xor i32 %584, %586
  %590 = add nuw nsw i32 %589, %588
  %591 = icmp eq i32 %590, 2
  %592 = zext i1 %591 to i8
  store i8 %592, i8* %43, align 1
  %593 = icmp ne i8 %585, 0
  %594 = xor i1 %593, %591
  %595 = or i1 %582, %594
  %.v47 = select i1 %595, i64 276, i64 20
  %596 = add i64 %565, %.v47
  store i64 %596, i64* %3, align 8
  br i1 %595, label %block_.L_448c29, label %block_448b29

block_448b29:                                     ; preds = %block_.L_448b15
  %597 = load i64, i64* %RBP.i, align 8
  %598 = add i64 %597, -56
  %599 = add i64 %596, 4
  store i64 %599, i64* %3, align 8
  %600 = inttoptr i64 %598 to i64*
  %601 = load i64, i64* %600, align 8
  store i64 %601, i64* %RDI.i388, align 8
  %602 = add i64 %596, -53305
  %603 = add i64 %596, 9
  %604 = load i64, i64* %6, align 8
  %605 = add i64 %604, -8
  %606 = inttoptr i64 %605 to i64*
  store i64 %603, i64* %606, align 8
  store i64 %605, i64* %6, align 8
  store i64 %602, i64* %3, align 8
  %call2_448b2d = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %602, %struct.Memory* %MEMORY.5)
  %607 = load i32, i32* %EAX.i240, align 4
  %608 = load i64, i64* %3, align 8
  %609 = add i32 %607, -2
  %610 = icmp ult i32 %607, 2
  %611 = zext i1 %610 to i8
  store i8 %611, i8* %19, align 1
  %612 = and i32 %609, 255
  %613 = tail call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  store i8 %616, i8* %26, align 1
  %617 = xor i32 %609, %607
  %618 = lshr i32 %617, 4
  %619 = trunc i32 %618 to i8
  %620 = and i8 %619, 1
  store i8 %620, i8* %31, align 1
  %621 = icmp eq i32 %609, 0
  %622 = zext i1 %621 to i8
  store i8 %622, i8* %34, align 1
  %623 = lshr i32 %609, 31
  %624 = trunc i32 %623 to i8
  store i8 %624, i8* %37, align 1
  %625 = lshr i32 %607, 31
  %626 = xor i32 %623, %625
  %627 = add nuw nsw i32 %626, %625
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  store i8 %629, i8* %43, align 1
  %630 = icmp ne i8 %624, 0
  %631 = xor i1 %630, %628
  %.v48 = select i1 %631, i64 247, i64 9
  %632 = add i64 %608, %.v48
  store i64 %632, i64* %3, align 8
  br i1 %631, label %block_.L_448c29, label %block_448b3b

block_448b3b:                                     ; preds = %block_448b29
  %633 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  store i8 0, i8* %19, align 1
  %634 = and i32 %633, 255
  %635 = tail call i32 @llvm.ctpop.i32(i32 %634)
  %636 = trunc i32 %635 to i8
  %637 = and i8 %636, 1
  %638 = xor i8 %637, 1
  store i8 %638, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %639 = icmp eq i32 %633, 0
  %640 = zext i1 %639 to i8
  store i8 %640, i8* %34, align 1
  %641 = lshr i32 %633, 31
  %642 = trunc i32 %641 to i8
  store i8 %642, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v49 = select i1 %639, i64 14, i64 238
  %643 = add i64 %632, %.v49
  store i64 %643, i64* %3, align 8
  br i1 %639, label %block_.L_448b49, label %block_.L_448c29

block_.L_448b49:                                  ; preds = %block_448b3b, %block_448b03, %block_.L_448ad3
  %644 = phi i64 [ %502, %block_.L_448ad3 ], [ %643, %block_448b3b ], [ %564, %block_448b03 ]
  %MEMORY.6 = phi %struct.Memory* [ %MEMORY.3, %block_.L_448ad3 ], [ %call2_448b2d, %block_448b3b ], [ %call2_448b07, %block_448b03 ]
  %645 = load i64, i64* %RBP.i, align 8
  %646 = add i64 %645, -64
  %647 = add i64 %644, 4
  store i64 %647, i64* %3, align 8
  %648 = inttoptr i64 %646 to i64*
  %649 = load i64, i64* %648, align 8
  store i64 %649, i64* %RAX.i401, align 8
  %650 = add i64 %644, 7
  store i64 %650, i64* %3, align 8
  %651 = inttoptr i64 %649 to i32*
  %652 = load i32, i32* %651, align 4
  %653 = add i32 %652, -2
  %654 = icmp ult i32 %652, 2
  %655 = zext i1 %654 to i8
  store i8 %655, i8* %19, align 1
  %656 = and i32 %653, 255
  %657 = tail call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  store i8 %660, i8* %26, align 1
  %661 = xor i32 %653, %652
  %662 = lshr i32 %661, 4
  %663 = trunc i32 %662 to i8
  %664 = and i8 %663, 1
  store i8 %664, i8* %31, align 1
  %665 = icmp eq i32 %653, 0
  %666 = zext i1 %665 to i8
  store i8 %666, i8* %34, align 1
  %667 = lshr i32 %653, 31
  %668 = trunc i32 %667 to i8
  store i8 %668, i8* %37, align 1
  %669 = lshr i32 %652, 31
  %670 = xor i32 %667, %669
  %671 = add nuw nsw i32 %670, %669
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  store i8 %673, i8* %43, align 1
  %674 = icmp ne i8 %668, 0
  %675 = xor i1 %674, %672
  %.v40 = select i1 %675, i64 35, i64 13
  %676 = add i64 %644, %.v40
  store i64 %676, i64* %3, align 8
  br i1 %675, label %block_.L_448b6c, label %block_448b56

block_448b56:                                     ; preds = %block_.L_448b49
  store i64 ptrtoint (%G__0x57e818_type* @G__0x57e818 to i64), i64* %RAX.i401, align 8
  %677 = add i64 %645, -40
  %678 = add i64 %676, 14
  store i64 %678, i64* %3, align 8
  %679 = inttoptr i64 %677 to i64*
  %680 = load i64, i64* %679, align 8
  store i64 %680, i64* %RCX.i361, align 8
  %681 = add i64 %676, 17
  store i64 %681, i64* %3, align 8
  %682 = inttoptr i64 %680 to i64*
  store i64 ptrtoint (%G__0x57e818_type* @G__0x57e818 to i64), i64* %682, align 8
  %683 = load i64, i64* %3, align 8
  %684 = add i64 %683, 182
  br label %block_.L_448c1d

block_.L_448b6c:                                  ; preds = %block_.L_448b49
  %685 = add i64 %676, 4
  store i64 %685, i64* %3, align 8
  %686 = load i64, i64* %648, align 8
  store i64 %686, i64* %RAX.i401, align 8
  %687 = add i64 %676, 7
  store i64 %687, i64* %3, align 8
  %688 = inttoptr i64 %686 to i32*
  %689 = load i32, i32* %688, align 4
  %690 = add i32 %689, -1
  %691 = icmp eq i32 %689, 0
  %692 = zext i1 %691 to i8
  store i8 %692, i8* %19, align 1
  %693 = and i32 %690, 255
  %694 = tail call i32 @llvm.ctpop.i32(i32 %693)
  %695 = trunc i32 %694 to i8
  %696 = and i8 %695, 1
  %697 = xor i8 %696, 1
  store i8 %697, i8* %26, align 1
  %698 = xor i32 %690, %689
  %699 = lshr i32 %698, 4
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  store i8 %701, i8* %31, align 1
  %702 = icmp eq i32 %690, 0
  %703 = zext i1 %702 to i8
  store i8 %703, i8* %34, align 1
  %704 = lshr i32 %690, 31
  %705 = trunc i32 %704 to i8
  store i8 %705, i8* %37, align 1
  %706 = lshr i32 %689, 31
  %707 = xor i32 %704, %706
  %708 = add nuw nsw i32 %707, %706
  %709 = icmp eq i32 %708, 2
  %710 = zext i1 %709 to i8
  store i8 %710, i8* %43, align 1
  %.v41 = select i1 %702, i64 13, i64 53
  %711 = add i64 %676, %.v41
  store i64 %711, i64* %3, align 8
  br i1 %702, label %block_448b79, label %block_.L_448ba1

block_448b79:                                     ; preds = %block_.L_448b6c
  %712 = add i64 %645, -56
  %713 = add i64 %711, 4
  store i64 %713, i64* %3, align 8
  %714 = inttoptr i64 %712 to i64*
  %715 = load i64, i64* %714, align 8
  store i64 %715, i64* %RDI.i388, align 8
  %716 = add i64 %711, -53385
  %717 = add i64 %711, 9
  %718 = load i64, i64* %6, align 8
  %719 = add i64 %718, -8
  %720 = inttoptr i64 %719 to i64*
  store i64 %717, i64* %720, align 8
  store i64 %719, i64* %6, align 8
  store i64 %716, i64* %3, align 8
  %call2_448b7d = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %716, %struct.Memory* %MEMORY.6)
  %721 = load i32, i32* %EAX.i240, align 4
  %722 = load i64, i64* %3, align 8
  %723 = add i32 %721, -4
  %724 = icmp ult i32 %721, 4
  %725 = zext i1 %724 to i8
  store i8 %725, i8* %19, align 1
  %726 = and i32 %723, 255
  %727 = tail call i32 @llvm.ctpop.i32(i32 %726)
  %728 = trunc i32 %727 to i8
  %729 = and i8 %728, 1
  %730 = xor i8 %729, 1
  store i8 %730, i8* %26, align 1
  %731 = xor i32 %723, %721
  %732 = lshr i32 %731, 4
  %733 = trunc i32 %732 to i8
  %734 = and i8 %733, 1
  store i8 %734, i8* %31, align 1
  %735 = icmp eq i32 %723, 0
  %736 = zext i1 %735 to i8
  store i8 %736, i8* %34, align 1
  %737 = lshr i32 %723, 31
  %738 = trunc i32 %737 to i8
  store i8 %738, i8* %37, align 1
  %739 = lshr i32 %721, 31
  %740 = xor i32 %737, %739
  %741 = add nuw nsw i32 %740, %739
  %742 = icmp eq i32 %741, 2
  %743 = zext i1 %742 to i8
  store i8 %743, i8* %43, align 1
  %744 = icmp ne i8 %738, 0
  %745 = xor i1 %744, %742
  %.v45 = select i1 %745, i64 31, i64 9
  %746 = add i64 %722, %.v45
  store i64 %746, i64* %3, align 8
  br i1 %745, label %block_.L_448ba1, label %block_448b8b

block_448b8b:                                     ; preds = %block_448b79
  store i64 ptrtoint (%G__0x57e82e_type* @G__0x57e82e to i64), i64* %RAX.i401, align 8
  %747 = load i64, i64* %RBP.i, align 8
  %748 = add i64 %747, -40
  %749 = add i64 %746, 14
  store i64 %749, i64* %3, align 8
  %750 = inttoptr i64 %748 to i64*
  %751 = load i64, i64* %750, align 8
  store i64 %751, i64* %RCX.i361, align 8
  %752 = add i64 %746, 17
  store i64 %752, i64* %3, align 8
  %753 = inttoptr i64 %751 to i64*
  store i64 ptrtoint (%G__0x57e82e_type* @G__0x57e82e to i64), i64* %753, align 8
  %754 = load i64, i64* %3, align 8
  %755 = add i64 %754, 124
  br label %block_.L_448c18

block_.L_448ba1:                                  ; preds = %block_.L_448b6c, %block_448b79
  %756 = phi i64 [ %711, %block_.L_448b6c ], [ %746, %block_448b79 ]
  %MEMORY.7 = phi %struct.Memory* [ %MEMORY.6, %block_.L_448b6c ], [ %call2_448b7d, %block_448b79 ]
  %757 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RAX.i401, align 8
  %759 = load i32, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
  %760 = sub i32 %757, %759
  %761 = icmp ult i32 %757, %759
  %762 = zext i1 %761 to i8
  store i8 %762, i8* %19, align 1
  %763 = and i32 %760, 255
  %764 = tail call i32 @llvm.ctpop.i32(i32 %763)
  %765 = trunc i32 %764 to i8
  %766 = and i8 %765, 1
  %767 = xor i8 %766, 1
  store i8 %767, i8* %26, align 1
  %768 = xor i32 %759, %757
  %769 = xor i32 %768, %760
  %770 = lshr i32 %769, 4
  %771 = trunc i32 %770 to i8
  %772 = and i8 %771, 1
  store i8 %772, i8* %31, align 1
  %773 = icmp eq i32 %760, 0
  %774 = zext i1 %773 to i8
  store i8 %774, i8* %34, align 1
  %775 = lshr i32 %760, 31
  %776 = trunc i32 %775 to i8
  store i8 %776, i8* %37, align 1
  %777 = lshr i32 %757, 31
  %778 = lshr i32 %759, 31
  %779 = xor i32 %778, %777
  %780 = xor i32 %775, %777
  %781 = add nuw nsw i32 %780, %779
  %782 = icmp eq i32 %781, 2
  %783 = zext i1 %782 to i8
  store i8 %783, i8* %43, align 1
  %784 = icmp ne i8 %776, 0
  %785 = xor i1 %784, %782
  %786 = or i1 %773, %785
  %.v42 = select i1 %786, i64 74, i64 20
  %787 = add i64 %756, %.v42
  store i64 %787, i64* %3, align 8
  br i1 %786, label %block_.L_448beb, label %block_448bb5

block_448bb5:                                     ; preds = %block_.L_448ba1
  %788 = load i64, i64* %RBP.i, align 8
  %789 = add i64 %788, -56
  %790 = add i64 %787, 4
  store i64 %790, i64* %3, align 8
  %791 = inttoptr i64 %789 to i64*
  %792 = load i64, i64* %791, align 8
  store i64 %792, i64* %RDI.i388, align 8
  %793 = add i64 %787, -53445
  %794 = add i64 %787, 9
  %795 = load i64, i64* %6, align 8
  %796 = add i64 %795, -8
  %797 = inttoptr i64 %796 to i64*
  store i64 %794, i64* %797, align 8
  store i64 %796, i64* %6, align 8
  store i64 %793, i64* %3, align 8
  %call2_448bb9 = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %793, %struct.Memory* %MEMORY.7)
  %798 = load i32, i32* %EAX.i240, align 4
  %799 = load i64, i64* %3, align 8
  %800 = add i32 %798, -2
  %801 = icmp ult i32 %798, 2
  %802 = zext i1 %801 to i8
  store i8 %802, i8* %19, align 1
  %803 = and i32 %800, 255
  %804 = tail call i32 @llvm.ctpop.i32(i32 %803)
  %805 = trunc i32 %804 to i8
  %806 = and i8 %805, 1
  %807 = xor i8 %806, 1
  store i8 %807, i8* %26, align 1
  %808 = xor i32 %800, %798
  %809 = lshr i32 %808, 4
  %810 = trunc i32 %809 to i8
  %811 = and i8 %810, 1
  store i8 %811, i8* %31, align 1
  %812 = icmp eq i32 %800, 0
  %813 = zext i1 %812 to i8
  store i8 %813, i8* %34, align 1
  %814 = lshr i32 %800, 31
  %815 = trunc i32 %814 to i8
  store i8 %815, i8* %37, align 1
  %816 = lshr i32 %798, 31
  %817 = xor i32 %814, %816
  %818 = add nuw nsw i32 %817, %816
  %819 = icmp eq i32 %818, 2
  %820 = zext i1 %819 to i8
  store i8 %820, i8* %43, align 1
  %821 = icmp ne i8 %815, 0
  %822 = xor i1 %821, %819
  %.v43 = select i1 %822, i64 45, i64 9
  %823 = add i64 %799, %.v43
  store i64 %823, i64* %3, align 8
  br i1 %822, label %block_.L_448beb, label %block_448bc7

block_448bc7:                                     ; preds = %block_448bb5
  %824 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  store i8 0, i8* %19, align 1
  %825 = and i32 %824, 255
  %826 = tail call i32 @llvm.ctpop.i32(i32 %825)
  %827 = trunc i32 %826 to i8
  %828 = and i8 %827, 1
  %829 = xor i8 %828, 1
  store i8 %829, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %830 = icmp eq i32 %824, 0
  %831 = zext i1 %830 to i8
  store i8 %831, i8* %34, align 1
  %832 = lshr i32 %824, 31
  %833 = trunc i32 %832 to i8
  store i8 %833, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v44 = select i1 %830, i64 14, i64 36
  %834 = add i64 %823, %.v44
  store i64 %834, i64* %3, align 8
  br i1 %830, label %block_448bd5, label %block_.L_448beb

block_448bd5:                                     ; preds = %block_448bc7
  store i64 ptrtoint (%G__0x57e848_type* @G__0x57e848 to i64), i64* %RAX.i401, align 8
  %835 = load i64, i64* %RBP.i, align 8
  %836 = add i64 %835, -40
  %837 = add i64 %834, 14
  store i64 %837, i64* %3, align 8
  %838 = inttoptr i64 %836 to i64*
  %839 = load i64, i64* %838, align 8
  store i64 %839, i64* %RCX.i361, align 8
  %840 = add i64 %834, 17
  store i64 %840, i64* %3, align 8
  %841 = inttoptr i64 %839 to i64*
  store i64 ptrtoint (%G__0x57e848_type* @G__0x57e848 to i64), i64* %841, align 8
  %842 = load i64, i64* %3, align 8
  %843 = add i64 %842, 45
  store i64 %843, i64* %3, align 8
  br label %block_.L_448c13

block_.L_448beb:                                  ; preds = %block_448bc7, %block_448bb5, %block_.L_448ba1
  %844 = phi i64 [ %787, %block_.L_448ba1 ], [ %823, %block_448bb5 ], [ %834, %block_448bc7 ]
  %MEMORY.8 = phi %struct.Memory* [ %MEMORY.7, %block_.L_448ba1 ], [ %call2_448bb9, %block_448bb5 ], [ %call2_448bb9, %block_448bc7 ]
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI.i388, align 8
  store i64 2289, i64* %RSI.i385, align 8
  store i64 ptrtoint (%G__0x57c004_type* @G__0x57c004 to i64), i64* %RDX.i382, align 8
  store i64 4294967295, i64* %RAX.i401, align 8
  store i64 4294967295, i64* %RCX.i361, align 8
  store i64 4294967295, i64* %R8.i337, align 8
  %845 = add i64 %844, 38053
  %846 = add i64 %844, 40
  %847 = load i64, i64* %6, align 8
  %848 = add i64 %847, -8
  %849 = inttoptr i64 %848 to i64*
  store i64 %846, i64* %849, align 8
  store i64 %848, i64* %6, align 8
  store i64 %845, i64* %3, align 8
  %call2_448c0e = tail call %struct.Memory* @sub_452090.abortgo(%struct.State* nonnull %0, i64 %845, %struct.Memory* %MEMORY.8)
  %.pre29 = load i64, i64* %3, align 8
  br label %block_.L_448c13

block_.L_448c13:                                  ; preds = %block_.L_448beb, %block_448bd5
  %850 = phi i64 [ %.pre29, %block_.L_448beb ], [ %843, %block_448bd5 ]
  %MEMORY.9 = phi %struct.Memory* [ %call2_448c0e, %block_.L_448beb ], [ %call2_448bb9, %block_448bd5 ]
  %851 = add i64 %850, 5
  store i64 %851, i64* %3, align 8
  br label %block_.L_448c18

block_.L_448c18:                                  ; preds = %block_.L_448c13, %block_448b8b
  %storemerge26 = phi i64 [ %755, %block_448b8b ], [ %851, %block_.L_448c13 ]
  %MEMORY.10 = phi %struct.Memory* [ %call2_448b7d, %block_448b8b ], [ %MEMORY.9, %block_.L_448c13 ]
  %852 = add i64 %storemerge26, 5
  store i64 %852, i64* %3, align 8
  br label %block_.L_448c1d

block_.L_448c1d:                                  ; preds = %block_.L_448c18, %block_448b56
  %storemerge25 = phi i64 [ %684, %block_448b56 ], [ %852, %block_.L_448c18 ]
  %MEMORY.11 = phi %struct.Memory* [ %MEMORY.6, %block_448b56 ], [ %MEMORY.10, %block_.L_448c18 ]
  %853 = load i64, i64* %RBP.i, align 8
  %854 = add i64 %853, -12
  %855 = add i64 %storemerge25, 7
  store i64 %855, i64* %3, align 8
  %856 = inttoptr i64 %854 to i32*
  store i32 1, i32* %856, align 4
  %857 = load i64, i64* %3, align 8
  %858 = add i64 %857, 166
  store i64 %858, i64* %3, align 8
  br label %block_.L_448cca

block_.L_448c29:                                  ; preds = %block_448b3b, %block_448b29, %block_.L_448b15
  %859 = phi i64 [ %596, %block_.L_448b15 ], [ %632, %block_448b29 ], [ %643, %block_448b3b ]
  %MEMORY.12 = phi %struct.Memory* [ %MEMORY.5, %block_.L_448b15 ], [ %call2_448b2d, %block_448b29 ], [ %call2_448b2d, %block_448b3b ]
  %860 = load i64, i64* %RBP.i, align 8
  %861 = add i64 %860, -48
  %862 = add i64 %859, 4
  store i64 %862, i64* %3, align 8
  %863 = inttoptr i64 %861 to i32*
  %864 = load i32, i32* %863, align 4
  store i8 0, i8* %19, align 1
  %865 = and i32 %864, 255
  %866 = tail call i32 @llvm.ctpop.i32(i32 %865)
  %867 = trunc i32 %866 to i8
  %868 = and i8 %867, 1
  %869 = xor i8 %868, 1
  store i8 %869, i8* %26, align 1
  store i8 0, i8* %31, align 1
  %870 = icmp eq i32 %864, 0
  %871 = zext i1 %870 to i8
  store i8 %871, i8* %34, align 1
  %872 = lshr i32 %864, 31
  %873 = trunc i32 %872 to i8
  store i8 %873, i8* %37, align 1
  store i8 0, i8* %43, align 1
  %.v50 = select i1 %870, i64 10, i64 154
  %874 = add i64 %859, %.v50
  store i64 %874, i64* %3, align 8
  br i1 %870, label %block_448c33, label %block_.L_448cc3

block_448c33:                                     ; preds = %block_.L_448c29
  %875 = add i64 %860, -64
  %876 = add i64 %874, 4
  store i64 %876, i64* %3, align 8
  %877 = inttoptr i64 %875 to i64*
  %878 = load i64, i64* %877, align 8
  store i64 %878, i64* %RAX.i401, align 8
  %879 = add i64 %874, 6
  store i64 %879, i64* %3, align 8
  %880 = inttoptr i64 %878 to i32*
  %881 = load i32, i32* %880, align 4
  %882 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  %883 = add i32 %882, %881
  %884 = zext i32 %883 to i64
  store i64 %884, i64* %RCX.i361, align 8
  %885 = lshr i32 %883, 31
  %886 = add i32 %883, -2
  %887 = icmp ult i32 %883, 2
  %888 = zext i1 %887 to i8
  store i8 %888, i8* %19, align 1
  %889 = and i32 %886, 255
  %890 = tail call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  store i8 %893, i8* %26, align 1
  %894 = xor i32 %886, %883
  %895 = lshr i32 %894, 4
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  store i8 %897, i8* %31, align 1
  %898 = icmp eq i32 %886, 0
  %899 = zext i1 %898 to i8
  store i8 %899, i8* %34, align 1
  %900 = lshr i32 %886, 31
  %901 = trunc i32 %900 to i8
  store i8 %901, i8* %37, align 1
  %902 = xor i32 %900, %885
  %903 = add nuw nsw i32 %902, %885
  %904 = icmp eq i32 %903, 2
  %905 = zext i1 %904 to i8
  store i8 %905, i8* %43, align 1
  %906 = icmp ne i8 %901, 0
  %907 = xor i1 %906, %904
  %.v51 = select i1 %907, i64 22, i64 100
  %908 = add i64 %874, %.v51
  store i64 %908, i64* %3, align 8
  br i1 %907, label %block_448c49, label %block_.L_448c97

block_448c49:                                     ; preds = %block_448c33
  %909 = add i64 %908, 4
  store i64 %909, i64* %3, align 8
  %910 = load i64, i64* %877, align 8
  store i64 %910, i64* %RAX.i401, align 8
  %911 = add i64 %908, 6
  store i64 %911, i64* %3, align 8
  %912 = inttoptr i64 %910 to i32*
  %913 = load i32, i32* %912, align 4
  %914 = add i32 %882, %913
  %915 = zext i32 %914 to i64
  store i64 %915, i64* %RCX.i361, align 8
  %916 = icmp eq i32 %914, 0
  %917 = zext i1 %916 to i8
  %918 = lshr i32 %914, 31
  %919 = add i32 %914, -1
  store i8 %917, i8* %19, align 1
  %920 = and i32 %919, 255
  %921 = tail call i32 @llvm.ctpop.i32(i32 %920)
  %922 = trunc i32 %921 to i8
  %923 = and i8 %922, 1
  %924 = xor i8 %923, 1
  store i8 %924, i8* %26, align 1
  %925 = xor i32 %919, %914
  %926 = lshr i32 %925, 4
  %927 = trunc i32 %926 to i8
  %928 = and i8 %927, 1
  store i8 %928, i8* %31, align 1
  %929 = icmp eq i32 %919, 0
  %930 = zext i1 %929 to i8
  store i8 %930, i8* %34, align 1
  %931 = lshr i32 %919, 31
  %932 = trunc i32 %931 to i8
  store i8 %932, i8* %37, align 1
  %933 = xor i32 %931, %918
  %934 = add nuw nsw i32 %933, %918
  %935 = icmp eq i32 %934, 2
  %936 = zext i1 %935 to i8
  store i8 %936, i8* %43, align 1
  %.v52 = select i1 %929, i64 22, i64 40
  %937 = add i64 %908, %.v52
  store i64 %937, i64* %3, align 8
  br i1 %929, label %block_448c5f, label %block_.L_448c71

block_448c5f:                                     ; preds = %block_448c49
  %938 = add i64 %860, -56
  %939 = add i64 %937, 4
  store i64 %939, i64* %3, align 8
  %940 = inttoptr i64 %938 to i64*
  %941 = load i64, i64* %940, align 8
  store i64 %941, i64* %RDI.i388, align 8
  %942 = add i64 %937, -53615
  %943 = add i64 %937, 9
  %944 = load i64, i64* %6, align 8
  %945 = add i64 %944, -8
  %946 = inttoptr i64 %945 to i64*
  store i64 %943, i64* %946, align 8
  store i64 %945, i64* %6, align 8
  store i64 %942, i64* %3, align 8
  %call2_448c63 = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %942, %struct.Memory* %MEMORY.12)
  %947 = load i32, i32* %EAX.i240, align 4
  %948 = load i64, i64* %3, align 8
  %949 = add i32 %947, -4
  %950 = icmp ult i32 %947, 4
  %951 = zext i1 %950 to i8
  store i8 %951, i8* %19, align 1
  %952 = and i32 %949, 255
  %953 = tail call i32 @llvm.ctpop.i32(i32 %952)
  %954 = trunc i32 %953 to i8
  %955 = and i8 %954, 1
  %956 = xor i8 %955, 1
  store i8 %956, i8* %26, align 1
  %957 = xor i32 %949, %947
  %958 = lshr i32 %957, 4
  %959 = trunc i32 %958 to i8
  %960 = and i8 %959, 1
  store i8 %960, i8* %31, align 1
  %961 = icmp eq i32 %949, 0
  %962 = zext i1 %961 to i8
  store i8 %962, i8* %34, align 1
  %963 = lshr i32 %949, 31
  %964 = trunc i32 %963 to i8
  store i8 %964, i8* %37, align 1
  %965 = lshr i32 %947, 31
  %966 = xor i32 %963, %965
  %967 = add nuw nsw i32 %966, %965
  %968 = icmp eq i32 %967, 2
  %969 = zext i1 %968 to i8
  store i8 %969, i8* %43, align 1
  %970 = icmp ne i8 %964, 0
  %971 = xor i1 %970, %968
  %.v55 = select i1 %971, i64 9, i64 47
  %972 = add i64 %948, %.v55
  store i64 %972, i64* %3, align 8
  br i1 %971, label %block_.L_448c71, label %block_.L_448c97

block_.L_448c71:                                  ; preds = %block_448c49, %block_448c5f
  %973 = phi i64 [ %937, %block_448c49 ], [ %972, %block_448c5f ]
  %MEMORY.13 = phi %struct.Memory* [ %MEMORY.12, %block_448c49 ], [ %call2_448c63, %block_448c5f ]
  %974 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*), align 8
  %975 = zext i32 %974 to i64
  store i64 %975, i64* %RAX.i401, align 8
  %976 = load i32, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
  %977 = sub i32 %974, %976
  %978 = icmp ult i32 %974, %976
  %979 = zext i1 %978 to i8
  store i8 %979, i8* %19, align 1
  %980 = and i32 %977, 255
  %981 = tail call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  store i8 %984, i8* %26, align 1
  %985 = xor i32 %976, %974
  %986 = xor i32 %985, %977
  %987 = lshr i32 %986, 4
  %988 = trunc i32 %987 to i8
  %989 = and i8 %988, 1
  store i8 %989, i8* %31, align 1
  %990 = icmp eq i32 %977, 0
  %991 = zext i1 %990 to i8
  store i8 %991, i8* %34, align 1
  %992 = lshr i32 %977, 31
  %993 = trunc i32 %992 to i8
  store i8 %993, i8* %37, align 1
  %994 = lshr i32 %974, 31
  %995 = lshr i32 %976, 31
  %996 = xor i32 %995, %994
  %997 = xor i32 %992, %994
  %998 = add nuw nsw i32 %997, %996
  %999 = icmp eq i32 %998, 2
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %43, align 1
  %1001 = icmp ne i8 %993, 0
  %1002 = xor i1 %1001, %999
  %1003 = or i1 %990, %1002
  %.v53 = select i1 %1003, i64 82, i64 20
  %1004 = add i64 %973, %.v53
  store i64 %1004, i64* %3, align 8
  br i1 %1003, label %block_.L_448cc3, label %block_448c85

block_448c85:                                     ; preds = %block_.L_448c71
  %1005 = load i64, i64* %RBP.i, align 8
  %1006 = add i64 %1005, -56
  %1007 = add i64 %1004, 4
  store i64 %1007, i64* %3, align 8
  %1008 = inttoptr i64 %1006 to i64*
  %1009 = load i64, i64* %1008, align 8
  store i64 %1009, i64* %RDI.i388, align 8
  %1010 = add i64 %1004, -53653
  %1011 = add i64 %1004, 9
  %1012 = load i64, i64* %6, align 8
  %1013 = add i64 %1012, -8
  %1014 = inttoptr i64 %1013 to i64*
  store i64 %1011, i64* %1014, align 8
  store i64 %1013, i64* %6, align 8
  store i64 %1010, i64* %3, align 8
  %call2_448c89 = tail call %struct.Memory* @sub_43baf0.min_eyes(%struct.State* nonnull %0, i64 %1010, %struct.Memory* %MEMORY.13)
  %1015 = load i32, i32* %EAX.i240, align 4
  %1016 = load i64, i64* %3, align 8
  %1017 = add i32 %1015, -2
  %1018 = icmp ult i32 %1015, 2
  %1019 = zext i1 %1018 to i8
  store i8 %1019, i8* %19, align 1
  %1020 = and i32 %1017, 255
  %1021 = tail call i32 @llvm.ctpop.i32(i32 %1020)
  %1022 = trunc i32 %1021 to i8
  %1023 = and i8 %1022, 1
  %1024 = xor i8 %1023, 1
  store i8 %1024, i8* %26, align 1
  %1025 = xor i32 %1017, %1015
  %1026 = lshr i32 %1025, 4
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  store i8 %1028, i8* %31, align 1
  %1029 = icmp eq i32 %1017, 0
  %1030 = zext i1 %1029 to i8
  store i8 %1030, i8* %34, align 1
  %1031 = lshr i32 %1017, 31
  %1032 = trunc i32 %1031 to i8
  store i8 %1032, i8* %37, align 1
  %1033 = lshr i32 %1015, 31
  %1034 = xor i32 %1031, %1033
  %1035 = add nuw nsw i32 %1034, %1033
  %1036 = icmp eq i32 %1035, 2
  %1037 = zext i1 %1036 to i8
  store i8 %1037, i8* %43, align 1
  %1038 = icmp ne i8 %1032, 0
  %1039 = xor i1 %1038, %1036
  %.v54 = select i1 %1039, i64 53, i64 9
  %1040 = add i64 %1016, %.v54
  store i64 %1040, i64* %3, align 8
  br i1 %1039, label %block_.L_448cc3, label %block_.L_448c97

block_.L_448c97:                                  ; preds = %block_448c5f, %block_448c33, %block_448c85
  %1041 = phi i64 [ %908, %block_448c33 ], [ %1040, %block_448c85 ], [ %972, %block_448c5f ]
  %MEMORY.14 = phi %struct.Memory* [ %MEMORY.12, %block_448c33 ], [ %call2_448c89, %block_448c85 ], [ %call2_448c63, %block_448c5f ]
  store i64 2, i64* %R8.i337, align 8
  store i64 0, i64* %R9.i374, align 8
  store i8 0, i8* %19, align 1
  store i8 1, i8* %26, align 1
  store i8 1, i8* %34, align 1
  store i8 0, i8* %37, align 1
  store i8 0, i8* %43, align 1
  store i8 0, i8* %31, align 1
  %1042 = load i64, i64* %RBP.i, align 8
  %1043 = add i64 %1042, -32
  %1044 = add i64 %1041, 13
  store i64 %1044, i64* %3, align 8
  %1045 = inttoptr i64 %1043 to i64*
  %1046 = load i64, i64* %1045, align 8
  store i64 %1046, i64* %RDI.i388, align 8
  %1047 = add i64 %1042, -168
  %1048 = add i64 %1041, 19
  store i64 %1048, i64* %3, align 8
  %1049 = inttoptr i64 %1047 to i32*
  %1050 = load i32, i32* %1049, align 4
  %1051 = zext i32 %1050 to i64
  store i64 %1051, i64* %RSI.i385, align 8
  %1052 = add i64 %1042, -188
  %1053 = add i64 %1041, 25
  store i64 %1053, i64* %3, align 8
  %1054 = inttoptr i64 %1052 to i32*
  %1055 = load i32, i32* %1054, align 4
  %1056 = zext i32 %1055 to i64
  store i64 %1056, i64* %RDX.i382, align 8
  %1057 = add i64 %1042, -184
  %1058 = add i64 %1041, 32
  store i64 %1058, i64* %3, align 8
  %1059 = inttoptr i64 %1057 to i64*
  %1060 = load i64, i64* %1059, align 8
  store i64 %1060, i64* %RCX.i361, align 8
  %1061 = bitcast i64* %6 to i32**
  %1062 = load i32*, i32** %1061, align 8
  %1063 = add i64 %1041, 39
  store i64 %1063, i64* %3, align 8
  store i32 0, i32* %1062, align 4
  %1064 = load i64, i64* %3, align 8
  %1065 = add i64 %1064, -19086
  %1066 = add i64 %1064, 5
  %1067 = load i64, i64* %6, align 8
  %1068 = add i64 %1067, -8
  %1069 = inttoptr i64 %1068 to i64*
  store i64 %1066, i64* %1069, align 8
  store i64 %1068, i64* %6, align 8
  store i64 %1065, i64* %3, align 8
  %call2_448cbe = tail call %struct.Memory* @sub_444230.owl_add_move(%struct.State* nonnull %0, i64 %1065, %struct.Memory* %MEMORY.14)
  %.pre30 = load i64, i64* %3, align 8
  br label %block_.L_448cc3

block_.L_448cc3:                                  ; preds = %block_.L_448c29, %block_.L_448c97, %block_448c85, %block_.L_448c71
  %1070 = phi i64 [ %874, %block_.L_448c29 ], [ %.pre30, %block_.L_448c97 ], [ %1004, %block_.L_448c71 ], [ %1040, %block_448c85 ]
  %MEMORY.15 = phi %struct.Memory* [ %MEMORY.12, %block_.L_448c29 ], [ %call2_448cbe, %block_.L_448c97 ], [ %MEMORY.13, %block_.L_448c71 ], [ %call2_448c89, %block_448c85 ]
  %1071 = load i64, i64* %RBP.i, align 8
  %1072 = add i64 %1071, -12
  %1073 = add i64 %1070, 7
  store i64 %1073, i64* %3, align 8
  %1074 = inttoptr i64 %1072 to i32*
  store i32 0, i32* %1074, align 4
  %.pre31 = load i64, i64* %3, align 8
  br label %block_.L_448cca

block_.L_448cca:                                  ; preds = %block_.L_448cc3, %block_.L_448c1d
  %1075 = phi i64 [ %858, %block_.L_448c1d ], [ %.pre31, %block_.L_448cc3 ]
  %MEMORY.16 = phi %struct.Memory* [ %MEMORY.11, %block_.L_448c1d ], [ %MEMORY.15, %block_.L_448cc3 ]
  %1076 = load i64, i64* %RBP.i, align 8
  %1077 = add i64 %1076, -12
  %1078 = add i64 %1075, 3
  store i64 %1078, i64* %3, align 8
  %1079 = inttoptr i64 %1077 to i32*
  %1080 = load i32, i32* %1079, align 4
  %1081 = zext i32 %1080 to i64
  store i64 %1081, i64* %RAX.i401, align 8
  %1082 = load i64, i64* %6, align 8
  %1083 = add i64 %1082, 232
  store i64 %1083, i64* %6, align 8
  %1084 = icmp ugt i64 %1082, -233
  %1085 = zext i1 %1084 to i8
  store i8 %1085, i8* %19, align 1
  %1086 = trunc i64 %1083 to i32
  %1087 = and i32 %1086, 255
  %1088 = tail call i32 @llvm.ctpop.i32(i32 %1087)
  %1089 = trunc i32 %1088 to i8
  %1090 = and i8 %1089, 1
  %1091 = xor i8 %1090, 1
  store i8 %1091, i8* %26, align 1
  %1092 = xor i64 %1083, %1082
  %1093 = lshr i64 %1092, 4
  %1094 = trunc i64 %1093 to i8
  %1095 = and i8 %1094, 1
  store i8 %1095, i8* %31, align 1
  %1096 = icmp eq i64 %1083, 0
  %1097 = zext i1 %1096 to i8
  store i8 %1097, i8* %34, align 1
  %1098 = lshr i64 %1083, 63
  %1099 = trunc i64 %1098 to i8
  store i8 %1099, i8* %37, align 1
  %1100 = lshr i64 %1082, 63
  %1101 = xor i64 %1098, %1100
  %1102 = add nuw nsw i64 %1101, %1098
  %1103 = icmp eq i64 %1102, 2
  %1104 = zext i1 %1103 to i8
  store i8 %1104, i8* %43, align 1
  %1105 = add i64 %1075, 11
  store i64 %1105, i64* %3, align 8
  %1106 = add i64 %1082, 240
  %1107 = inttoptr i64 %1083 to i64*
  %1108 = load i64, i64* %1107, align 8
  store i64 %1108, i64* %RBX.i406, align 8
  store i64 %1106, i64* %6, align 8
  %1109 = add i64 %1075, 12
  store i64 %1109, i64* %3, align 8
  %1110 = add i64 %1082, 248
  %1111 = inttoptr i64 %1106 to i64*
  %1112 = load i64, i64* %1111, align 8
  store i64 %1112, i64* %RBP.i, align 8
  store i64 %1110, i64* %6, align 8
  %1113 = add i64 %1075, 13
  store i64 %1113, i64* %3, align 8
  %1114 = inttoptr i64 %1110 to i64*
  %1115 = load i64, i64* %1114, align 8
  store i64 %1115, i64* %3, align 8
  %1116 = add i64 %1082, 256
  store i64 %1116, i64* %6, align 8
  ret %struct.Memory* %MEMORY.16
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
define %struct.Memory* @routine_subq__0xe8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -232
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 232
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
define %struct.Memory* @routine_movq_0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0x10__rbp____r10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, 16
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r11d___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
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
define %struct.Memory* @routine_movl__r11d___ebx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %4 = load i32, i32* %R11D, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RBX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x3___r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 3, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdi__MINUS0x18__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %RDI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0x20__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %RDX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
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
define %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0
  %R8D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i32, i32* %R8D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 4
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r9__MINUS0x38__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %R9, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__r10__MINUS0x40__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 21, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %R10, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x48__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_0xab0ef8___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  store i64 %5, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__MINUS0x50__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0eec___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx__MINUS0x54__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -84
  %6 = load i32, i32* %ECX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl_0x4b0__rax____r11d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = getelementptr inbounds %union.anon, %union.anon* %3, i64 0, i32 0
  %5 = load i32, i32* %R11D, align 4
  %6 = load i64, i64* %RAX, align 8
  %7 = add i64 %6, 1200
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
define %struct.Memory* @routine_movl__r11d__MINUS0xc4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 23, i32 0
  %R11D = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -196
  %6 = load i32, i32* %R11D, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 7
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x0__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 12
  store i64 %4, i64* %PC, align 8
  store i64 0, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -44
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____r9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R9, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x48__rbp____rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -72
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rsi__MINUS0xd0__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %RSI, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 7
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rbx___rsi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %RBX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* %RSI, align 8
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
define %struct.Memory* @routine_movq_MINUS0xd0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0x8__rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = add i64 %3, 8
  %5 = load i64, i64* %RAX, align 8
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %4 to i64*
  store i64 %5, i64* %8, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_determine_life(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0xac22f0___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0xac22f0_type* @G__0xac22f0 to i64), i64* %RDI, align 8
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
define %struct.Memory* @routine_movl__0x190___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 400, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__ecx___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i32, i32* %ECX, align 4
  %5 = zext i32 %4 to i64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 2
  store i64 %7, i64* %PC, align 8
  store i64 %5, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0__0xac22e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 11
  store i64 %4, i64* %PC, align 8
  store i32 0, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.memset_plt(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x9__0x7ae448(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0x7ae448_type* @G_0x7ae448 to i32*), align 8
  %6 = add i32 %5, -9
  %7 = icmp ult i32 %5, 9
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
define %struct.Memory* @routine_jl_.L_448a56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
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
define %struct.Memory* @routine_jne_.L_448a10(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_leaq_MINUS0xc0__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.clear_owl_move_data(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x443270___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x443270_type* @G__0x443270 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x941118___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x941118_type* @G__0x941118 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_leaq_MINUS0xc0__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i64 %4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xc4__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -196
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
define %struct.Memory* @routine_movq_MINUS0x18__rbp____r8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %R8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %R8, align 8
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
define %struct.Memory* @routine_callq_.matchpat(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jmpq_.L_448a51(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -56
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.max_eyes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_448a4c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_448a56(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_0xab0f24___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xab0f24_type* @G_0xab0f24 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_andl__0x2___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 2
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 1
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_je_.L_448aa0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_andl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 3
  store i64 %5, i64* %PC, align 8
  %6 = and i64 %3, 4
  %7 = trunc i64 %6 to i32
  store i64 %6, i64* %RAX, align 8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %8, align 1
  %9 = tail call i32 @llvm.ctpop.i32(i32 %7)
  %10 = trunc i32 %9 to i8
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1
  %.lobit = lshr exact i32 %7, 2
  %13 = trunc i32 %.lobit to i8
  %14 = xor i8 %13, 1
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
define %struct.Memory* @routine_movq__0x57e7f7___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e7f7_type* @G__0x57e7f7 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
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
define %struct.Memory* @routine_movl_0xac22e0___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movb__0x0___al(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 0, i8* %AL, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.gprintf(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__eax__MINUS0xd4__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -212
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rax____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl_0xac22e0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
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
define %struct.Memory* @routine_jl_.L_448ac9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl_0xac22e0___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 7
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
  %6 = zext i32 %5 to i64
  store i64 %6, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl___rcx____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = bitcast i64* %RCX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 2
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  store i64 %8, i64* %RDX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_subl__eax___edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4 = load i64, i64* %RDX, align 8
  %5 = load i32, i32* %EAX, align 4
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
define %struct.Memory* @routine_movl__edx____rcx_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %EDX = bitcast %union.anon* %3 to i32*
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %4 = bitcast i64* %RCX to i32**
  %5 = load i32*, i32** %4, align 8
  %6 = load i32, i32* %EDX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 2
  store i64 %8, i64* %PC, align 8
  store i32 %6, i32* %5, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_448ad3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
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
define %struct.Memory* @routine_movq_MINUS0x50__rbp____rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__rax__0xab0ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %RAX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 8
  store i64 %5, i64* %PC, align 8
  store i64 %3, i64* bitcast (%G_0xab0ef8_type* @G_0xab0ef8 to i64*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0x54__rbp____ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -84
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
define %struct.Memory* @routine_movl__ecx__0xab0eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %ECX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 %4, i32* bitcast (%G_0xab0eec_type* @G_0xab0eec to i32*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: nounwind
define %struct.Memory* @routine_cmpl__0x2____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -2
  %9 = icmp ult i32 %7, 2
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jge_.L_448b49(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = bitcast i64* %RAX to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, -1
  %9 = icmp eq i32 %7, 0
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
  %18 = xor i32 %8, %7
  %19 = lshr i32 %18, 4
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %21, i8* %22, align 1
  %23 = icmp eq i32 %8, 0
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %24, i8* %25, align 1
  %26 = lshr i32 %8, 31
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %7, 31
  %30 = xor i32 %26, %29
  %31 = add nuw nsw i32 %30, %29
  %32 = icmp eq i32 %31, 2
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %33, i8* %34, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_448b15(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_callq_.min_eyes(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = add i32 %4, -4
  %8 = icmp ult i32 %4, 4
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
define %struct.Memory* @routine_cmpl_0xb4bd18___eax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = load i32, i32* %EAX, align 4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = load i32, i32* bitcast (%G_0xb4bd18_type* @G_0xb4bd18 to i32*), align 8
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
define %struct.Memory* @routine_jle_.L_448c29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_448c29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_cmpl__0x0__0xac22e0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
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
define %struct.Memory* @routine_jne_.L_448c29(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_448b6c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57e818___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e818_type* @G__0x57e818 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
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
define %struct.Memory* @routine_jmpq_.L_448c1d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_448ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_448ba1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57e82e___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e82e_type* @G__0x57e82e to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_448c18(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jle_.L_448beb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_448beb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_448beb(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movq__0x57e848___rax(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57e848_type* @G__0x57e848 to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_448c13(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57dd2e___rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57dd2e_type* @G__0x57dd2e to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x8f1___esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 5
  store i64 %4, i64* %PC, align 8
  store i64 2289, i64* %RSI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movq__0x57c004___rdx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x57c004_type* @G__0x57c004 to i64), i64* %RDX, align 8
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
define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 1, i32* %7, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jmpq_.L_448cca(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  store i64 %4, i64* %PC, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_jne_.L_448cc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_addl_0xac22e0___ecx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %3 = load i64, i64* %RCX, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = trunc i64 %3 to i32
  %7 = load i32, i32* bitcast (%G_0xac22e0_type* @G_0xac22e0 to i32*), align 8
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
define %struct.Memory* @routine_jge_.L_448c97(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jne_.L_448c71(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jle_.L_448cc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_jl_.L_448cc3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i8* nocapture %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x2___r8d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 6
  store i64 %5, i64* %PC, align 8
  store i64 2, i64* %3, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
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
define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RDI, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -168
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
define %struct.Memory* @routine_movl_MINUS0xbc__rbp____edx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -188
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
define %struct.Memory* @routine_movq_MINUS0xb8__rbp____rcx(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RCX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -184
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %RCX, align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movl__0x0____rsp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = bitcast i64* %RSP to i32**
  %4 = load i32*, i32** %3, align 8
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  store i32 0, i32* %4, align 4
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.owl_add_move(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #2 {
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
define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #2 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -12
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
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

; Function Attrs: nounwind
define %struct.Memory* @routine_addq__0xe8___rsp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #3 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 232
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -233
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
