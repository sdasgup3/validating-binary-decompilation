; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x327__rip__type = type <{ [8 x i8] }>
%G_0x40a__rip__type = type <{ [8 x i8] }>
%G_0x426__rip__type = type <{ [8 x i8] }>
%G_0x446__rip__type = type <{ [8 x i8] }>
%G_0x483__rip__type = type <{ [8 x i8] }>
%G_0x4a6__rip__type = type <{ [8 x i8] }>
%G_0x4c9__rip__type = type <{ [8 x i8] }>
%G_0x4d1__rip__type = type <{ [8 x i8] }>
%G_0x4e9__rip__type = type <{ [8 x i8] }>
%G_0x509__rip__type = type <{ [8 x i8] }>
%G_0x511__rip__type = type <{ [8 x i8] }>
%G__0x400c28_type = type <{ [8 x i8] }>
%G__0x400c31_type = type <{ [8 x i8] }>
%G__0x400c39_type = type <{ [8 x i8] }>
%G__0x400c40_type = type <{ [8 x i8] }>
%G__0x400c49_type = type <{ [8 x i8] }>
%G__0x400c55_type = type <{ [8 x i8] }>
%G__0x400c63_type = type <{ [8 x i8] }>
%G__0x400c70_type = type <{ [8 x i8] }>
%G__0x400c7c_type = type <{ [8 x i8] }>
%G__0x400c85_type = type <{ [8 x i8] }>
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
@G_0x327__rip_ = local_unnamed_addr global %G_0x327__rip__type zeroinitializer
@G_0x40a__rip_ = local_unnamed_addr global %G_0x40a__rip__type zeroinitializer
@G_0x426__rip_ = local_unnamed_addr global %G_0x426__rip__type zeroinitializer
@G_0x446__rip_ = local_unnamed_addr global %G_0x446__rip__type zeroinitializer
@G_0x483__rip_ = local_unnamed_addr global %G_0x483__rip__type zeroinitializer
@G_0x4a6__rip_ = local_unnamed_addr global %G_0x4a6__rip__type zeroinitializer
@G_0x4c9__rip_ = local_unnamed_addr global %G_0x4c9__rip__type zeroinitializer
@G_0x4d1__rip_ = local_unnamed_addr global %G_0x4d1__rip__type zeroinitializer
@G_0x4e9__rip_ = local_unnamed_addr global %G_0x4e9__rip__type zeroinitializer
@G_0x509__rip_ = local_unnamed_addr global %G_0x509__rip__type zeroinitializer
@G_0x511__rip_ = local_unnamed_addr global %G_0x511__rip__type zeroinitializer
@G__0x400c28 = global %G__0x400c28_type zeroinitializer
@G__0x400c31 = global %G__0x400c31_type zeroinitializer
@G__0x400c39 = global %G__0x400c39_type zeroinitializer
@G__0x400c40 = global %G__0x400c40_type zeroinitializer
@G__0x400c49 = global %G__0x400c49_type zeroinitializer
@G__0x400c55 = global %G__0x400c55_type zeroinitializer
@G__0x400c63 = global %G__0x400c63_type zeroinitializer
@G__0x400c70 = global %G__0x400c70_type zeroinitializer
@G__0x400c7c = global %G__0x400c7c_type zeroinitializer
@G__0x400c85 = global %G__0x400c85_type zeroinitializer

declare %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

; Function Attrs: nounwind readnone
declare i32 @llvm.ctpop.i32(i32) #0

declare extern_weak x86_64_sysvcc i64 @pow(i64, i64)

declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr

declare %struct.Memory* @sub_400630.make_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

declare %struct.Memory* @sub_400670.sum_vec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @main(%struct.State* noalias, i64, %struct.Memory* noalias) local_unnamed_addr #1 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %PC.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP.i = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP.i, align 8
  %5 = add i64 %1, 1
  store i64 %5, i64* %PC.i, align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 %4, i64* %9, align 8
  %RSP.i11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %PC.i, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = add i64 %7, -344
  store i64 %11, i64* %RSP.i11, align 8
  %12 = icmp ult i64 %8, 336
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
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %41 = bitcast [32 x %union.VectorReg]* %40 to i8*
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %44 = bitcast [32 x %union.VectorReg]* %40 to i32*
  store i32 0, i32* %44, align 1
  %45 = getelementptr inbounds i8, i8* %41, i64 4
  %46 = bitcast i8* %45 to i32*
  store i32 0, i32* %46, align 1
  %47 = bitcast i64* %42 to i32*
  store i32 0, i32* %47, align 1
  %48 = getelementptr inbounds i8, i8* %41, i64 12
  %49 = bitcast i8* %48 to i32*
  store i32 0, i32* %49, align 1
  %50 = add i64 %7, -12
  %51 = add i64 %10, 20
  store i64 %51, i64* %PC.i, align 8
  %52 = inttoptr i64 %50 to i32*
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI.i = bitcast %union.anon* %53 to i32*
  %54 = load i64, i64* %RBP.i, align 8
  %55 = add i64 %54, -8
  %56 = load i32, i32* %EDI.i, align 4
  %57 = load i64, i64* %PC.i, align 8
  %58 = add i64 %57, 3
  store i64 %58, i64* %PC.i, align 8
  %59 = inttoptr i64 %55 to i32*
  store i32 %56, i32* %59, align 4
  %RSI.i87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %60 = load i64, i64* %RBP.i, align 8
  %61 = add i64 %60, -16
  %62 = load i64, i64* %RSI.i87, align 8
  %63 = load i64, i64* %PC.i, align 8
  %64 = add i64 %63, 4
  store i64 %64, i64* %PC.i, align 8
  %65 = inttoptr i64 %61 to i64*
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* %RBP.i, align 8
  %67 = add i64 %66, -24
  %68 = load i64, i64* %PC.i, align 8
  %69 = add i64 %68, 5
  store i64 %69, i64* %PC.i, align 8
  %70 = bitcast [32 x %union.VectorReg]* %40 to double*
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %72 = load i64, i64* %71, align 1
  %73 = inttoptr i64 %67 to i64*
  store i64 %72, i64* %73, align 8
  %74 = load i64, i64* %RBP.i, align 8
  %75 = add i64 %74, -32
  %76 = load i64, i64* %PC.i, align 8
  %77 = add i64 %76, 5
  store i64 %77, i64* %PC.i, align 8
  %78 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %79 = load i64, i64* %78, align 1
  %80 = inttoptr i64 %75 to i64*
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* %RBP.i, align 8
  %82 = add i64 %81, -40
  %83 = load i64, i64* %PC.i, align 8
  %84 = add i64 %83, 5
  store i64 %84, i64* %PC.i, align 8
  %85 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %86 = load i64, i64* %85, align 1
  %87 = inttoptr i64 %82 to i64*
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %RBP.i, align 8
  %89 = add i64 %88, -48
  %90 = load i64, i64* %PC.i, align 8
  %91 = add i64 %90, 5
  store i64 %91, i64* %PC.i, align 8
  %92 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %93 = load i64, i64* %92, align 1
  %94 = inttoptr i64 %89 to i64*
  store i64 %93, i64* %94, align 8
  %95 = load i64, i64* %RBP.i, align 8
  %96 = add i64 %95, -276
  %97 = load i64, i64* %PC.i, align 8
  %98 = add i64 %97, 10
  store i64 %98, i64* %PC.i, align 8
  %99 = inttoptr i64 %96 to i32*
  store i32 2500000, i32* %99, align 4
  %100 = load i64, i64* %RBP.i, align 8
  %101 = add i64 %100, -288
  %102 = load i64, i64* %PC.i, align 8
  %103 = add i64 %102, 8
  store i64 %103, i64* %PC.i, align 8
  %104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %105 = load i64, i64* %104, align 1
  %106 = inttoptr i64 %101 to i64*
  store i64 %105, i64* %106, align 8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %108 = bitcast %union.VectorReg* %107 to i8*
  %109 = load i64, i64* %RBP.i, align 8
  %110 = add i64 %109, -288
  %111 = load i64, i64* %PC.i, align 8
  %112 = add i64 %111, 8
  store i64 %112, i64* %PC.i, align 8
  %113 = inttoptr i64 %110 to i64*
  %114 = load i64, i64* %113, align 8
  %115 = bitcast %union.VectorReg* %107 to double*
  %116 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %114, i64* %116, align 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %118 = bitcast i64* %117 to double*
  store double 0.000000e+00, double* %118, align 1
  %119 = add i64 %111, -178
  %120 = add i64 %111, 13
  %121 = load i64, i64* %6, align 8
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123, align 8
  store i64 %122, i64* %6, align 8
  store i64 %119, i64* %3, align 8
  %call2_4006ea = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %119, %struct.Memory* %2)
  %124 = load i64, i64* %PC.i, align 8
  %125 = load i64, i64* bitcast (%G_0x511__rip__type* @G_0x511__rip_ to i64*), align 8
  %126 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %125, i64* %126, align 1
  store double 0.000000e+00, double* %118, align 1
  %127 = load i64, i64* %RBP.i, align 8
  %128 = add i64 %127, -144
  %129 = add i64 %124, 16
  store i64 %129, i64* %PC.i, align 8
  %130 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %131 = load i64, i64* %130, align 1
  %132 = load i64, i64* %43, align 1
  %133 = inttoptr i64 %128 to i64*
  store i64 %131, i64* %133, align 8
  %134 = add i64 %127, -136
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135, align 8
  %136 = load i64, i64* %PC.i, align 8
  %137 = bitcast %union.VectorReg* %107 to <2 x i32>*
  %138 = load <2 x i32>, <2 x i32>* %137, align 1
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %140 = bitcast i64* %139 to <2 x i32>*
  %141 = load <2 x i32>, <2 x i32>* %140, align 1
  %142 = extractelement <2 x i32> %138, i32 0
  store i32 %142, i32* %44, align 1
  %143 = extractelement <2 x i32> %138, i32 1
  store i32 %143, i32* %46, align 1
  %144 = extractelement <2 x i32> %141, i32 0
  store i32 %144, i32* %47, align 1
  %145 = extractelement <2 x i32> %141, i32 1
  store i32 %145, i32* %49, align 1
  %146 = add i64 %136, -207
  %147 = add i64 %136, 8
  %148 = load i64, i64* %6, align 8
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150, align 8
  store i64 %149, i64* %6, align 8
  store i64 %146, i64* %3, align 8
  %call2_400702 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %146, %struct.Memory* %call2_4006ea)
  %151 = load i64, i64* %PC.i, align 8
  %152 = load i64, i64* bitcast (%G_0x509__rip__type* @G_0x509__rip_ to i64*), align 8
  %153 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %152, i64* %153, align 1
  store double 0.000000e+00, double* %118, align 1
  %154 = load i64, i64* %RBP.i, align 8
  %155 = add i64 %154, -160
  %156 = add i64 %151, 16
  store i64 %156, i64* %PC.i, align 8
  %157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %158 = load i64, i64* %157, align 1
  %159 = load i64, i64* %43, align 1
  %160 = inttoptr i64 %155 to i64*
  store i64 %158, i64* %160, align 8
  %161 = add i64 %154, -152
  %162 = inttoptr i64 %161 to i64*
  store i64 %159, i64* %162, align 8
  %163 = load i64, i64* %PC.i, align 8
  %164 = load <2 x i32>, <2 x i32>* %137, align 1
  %165 = load <2 x i32>, <2 x i32>* %140, align 1
  %166 = extractelement <2 x i32> %164, i32 0
  store i32 %166, i32* %44, align 1
  %167 = extractelement <2 x i32> %164, i32 1
  store i32 %167, i32* %46, align 1
  %168 = extractelement <2 x i32> %165, i32 0
  store i32 %168, i32* %47, align 1
  %169 = extractelement <2 x i32> %165, i32 1
  store i32 %169, i32* %49, align 1
  %170 = add i64 %163, -231
  %171 = add i64 %163, 8
  %172 = load i64, i64* %6, align 8
  %173 = add i64 %172, -8
  %174 = inttoptr i64 %173 to i64*
  store i64 %171, i64* %174, align 8
  store i64 %173, i64* %6, align 8
  store i64 %170, i64* %3, align 8
  %call2_40071a = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %170, %struct.Memory* %call2_400702)
  %175 = load i64, i64* %PC.i, align 8
  %176 = load i64, i64* bitcast (%G_0x4e9__rip__type* @G_0x4e9__rip_ to i64*), align 8
  %177 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %176, i64* %177, align 1
  store double 0.000000e+00, double* %118, align 1
  %178 = load i64, i64* %RBP.i, align 8
  %179 = add i64 %178, -176
  %180 = add i64 %175, 16
  store i64 %180, i64* %PC.i, align 8
  %181 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %182 = load i64, i64* %181, align 1
  %183 = load i64, i64* %43, align 1
  %184 = inttoptr i64 %179 to i64*
  store i64 %182, i64* %184, align 8
  %185 = add i64 %178, -168
  %186 = inttoptr i64 %185 to i64*
  store i64 %183, i64* %186, align 8
  %187 = load i64, i64* %PC.i, align 8
  %188 = load <2 x i32>, <2 x i32>* %137, align 1
  %189 = load <2 x i32>, <2 x i32>* %140, align 1
  %190 = extractelement <2 x i32> %188, i32 0
  store i32 %190, i32* %44, align 1
  %191 = extractelement <2 x i32> %188, i32 1
  store i32 %191, i32* %46, align 1
  %192 = extractelement <2 x i32> %189, i32 0
  store i32 %192, i32* %47, align 1
  %193 = extractelement <2 x i32> %189, i32 1
  store i32 %193, i32* %49, align 1
  %194 = add i64 %187, -255
  %195 = add i64 %187, 8
  %196 = load i64, i64* %6, align 8
  %197 = add i64 %196, -8
  %198 = inttoptr i64 %197 to i64*
  store i64 %195, i64* %198, align 8
  store i64 %197, i64* %6, align 8
  store i64 %194, i64* %3, align 8
  %call2_400732 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %194, %struct.Memory* %call2_40071a)
  %199 = load i64, i64* %PC.i, align 8
  %200 = load i64, i64* bitcast (%G_0x4c9__rip__type* @G_0x4c9__rip_ to i64*), align 8
  %201 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %200, i64* %201, align 1
  store double 0.000000e+00, double* %118, align 1
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %203 = load i64, i64* bitcast (%G_0x4d1__rip__type* @G_0x4d1__rip_ to i64*), align 8
  %204 = bitcast %union.VectorReg* %202 to double*
  %205 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %202, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %203, i64* %205, align 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %207 = bitcast i64* %206 to double*
  store double 0.000000e+00, double* %207, align 1
  %208 = load i64, i64* %RBP.i, align 8
  %209 = add i64 %208, -208
  %210 = add i64 %199, 24
  store i64 %210, i64* %PC.i, align 8
  %211 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %212 = load i64, i64* %211, align 1
  %213 = load i64, i64* %43, align 1
  %214 = inttoptr i64 %209 to i64*
  store i64 %212, i64* %214, align 8
  %215 = add i64 %208, -200
  %216 = inttoptr i64 %215 to i64*
  store i64 %213, i64* %216, align 8
  %217 = load i64, i64* %PC.i, align 8
  %218 = load <2 x i32>, <2 x i32>* %137, align 1
  %219 = load <2 x i32>, <2 x i32>* %140, align 1
  %220 = extractelement <2 x i32> %218, i32 0
  store i32 %220, i32* %44, align 1
  %221 = extractelement <2 x i32> %218, i32 1
  store i32 %221, i32* %46, align 1
  %222 = extractelement <2 x i32> %219, i32 0
  store i32 %222, i32* %47, align 1
  %223 = extractelement <2 x i32> %219, i32 1
  store i32 %223, i32* %49, align 1
  %224 = bitcast %union.VectorReg* %202 to <2 x i32>*
  %225 = load <2 x i32>, <2 x i32>* %224, align 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %227 = bitcast i64* %226 to <2 x i32>*
  %228 = load <2 x i32>, <2 x i32>* %227, align 1
  %229 = extractelement <2 x i32> %225, i32 0
  %230 = bitcast %union.VectorReg* %107 to i32*
  store i32 %229, i32* %230, align 1
  %231 = extractelement <2 x i32> %225, i32 1
  %232 = getelementptr inbounds i8, i8* %108, i64 4
  %233 = bitcast i8* %232 to i32*
  store i32 %231, i32* %233, align 1
  %234 = extractelement <2 x i32> %228, i32 0
  %235 = bitcast i64* %117 to i32*
  store i32 %234, i32* %235, align 1
  %236 = extractelement <2 x i32> %228, i32 1
  %237 = getelementptr inbounds i8, i8* %108, i64 12
  %238 = bitcast i8* %237 to i32*
  store i32 %236, i32* %238, align 1
  %239 = add i64 %217, -287
  %240 = add i64 %217, 11
  %241 = load i64, i64* %6, align 8
  %242 = add i64 %241, -8
  %243 = inttoptr i64 %242 to i64*
  store i64 %240, i64* %243, align 8
  store i64 %242, i64* %6, align 8
  store i64 %239, i64* %3, align 8
  %call2_400755 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %239, %struct.Memory* %call2_400732)
  %244 = load i64, i64* %PC.i, align 8
  %245 = load i64, i64* bitcast (%G_0x4a6__rip__type* @G_0x4a6__rip_ to i64*), align 8
  %246 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %245, i64* %246, align 1
  store double 0.000000e+00, double* %118, align 1
  %247 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %202, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %245, i64* %247, align 1
  store double 0.000000e+00, double* %207, align 1
  %248 = load i64, i64* %RBP.i, align 8
  %249 = add i64 %248, -192
  %250 = add i64 %244, 24
  store i64 %250, i64* %PC.i, align 8
  %251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %252 = load i64, i64* %251, align 1
  %253 = load i64, i64* %43, align 1
  %254 = inttoptr i64 %249 to i64*
  store i64 %252, i64* %254, align 8
  %255 = add i64 %248, -184
  %256 = inttoptr i64 %255 to i64*
  store i64 %253, i64* %256, align 8
  %257 = load i64, i64* %PC.i, align 8
  %258 = load <2 x i32>, <2 x i32>* %137, align 1
  %259 = load <2 x i32>, <2 x i32>* %140, align 1
  %260 = extractelement <2 x i32> %258, i32 0
  store i32 %260, i32* %44, align 1
  %261 = extractelement <2 x i32> %258, i32 1
  store i32 %261, i32* %46, align 1
  %262 = extractelement <2 x i32> %259, i32 0
  store i32 %262, i32* %47, align 1
  %263 = extractelement <2 x i32> %259, i32 1
  store i32 %263, i32* %49, align 1
  %264 = load <2 x i32>, <2 x i32>* %224, align 1
  %265 = load <2 x i32>, <2 x i32>* %227, align 1
  %266 = extractelement <2 x i32> %264, i32 0
  store i32 %266, i32* %230, align 1
  %267 = extractelement <2 x i32> %264, i32 1
  store i32 %267, i32* %233, align 1
  %268 = extractelement <2 x i32> %265, i32 0
  store i32 %268, i32* %235, align 1
  %269 = extractelement <2 x i32> %265, i32 1
  store i32 %269, i32* %238, align 1
  %270 = add i64 %257, -322
  %271 = add i64 %257, 11
  %272 = load i64, i64* %6, align 8
  %273 = add i64 %272, -8
  %274 = inttoptr i64 %273 to i64*
  store i64 %271, i64* %274, align 8
  store i64 %273, i64* %6, align 8
  store i64 %270, i64* %3, align 8
  %call2_400778 = tail call %struct.Memory* @sub_400630.make_vec(%struct.State* %0, i64 %270, %struct.Memory* %call2_400755)
  %275 = load i64, i64* %PC.i, align 8
  %276 = load i64, i64* bitcast (%G_0x483__rip__type* @G_0x483__rip_ to i64*), align 8
  %277 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %276, i64* %277, align 1
  store double 0.000000e+00, double* %118, align 1
  %278 = load i64, i64* %RBP.i, align 8
  %279 = add i64 %278, -240
  %280 = add i64 %275, 16
  store i64 %280, i64* %PC.i, align 8
  %281 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %282 = load i64, i64* %281, align 1
  %283 = load i64, i64* %43, align 1
  %284 = inttoptr i64 %279 to i64*
  store i64 %282, i64* %284, align 8
  %285 = add i64 %278, -232
  %286 = inttoptr i64 %285 to i64*
  store i64 %283, i64* %286, align 8
  %287 = load i64, i64* %RBP.i, align 8
  %288 = add i64 %287, -144
  %289 = load i64, i64* %PC.i, align 8
  %290 = add i64 %289, 8
  store i64 %290, i64* %PC.i, align 8
  %291 = inttoptr i64 %288 to i64*
  %292 = load i64, i64* %291, align 8
  %293 = add i64 %287, -136
  %294 = inttoptr i64 %293 to i64*
  %295 = load i64, i64* %294, align 8
  %296 = bitcast [32 x %union.VectorReg]* %40 to double*
  %297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %292, i64* %297, align 1
  %298 = bitcast i64* %42 to double*
  store i64 %295, i64* %42, align 1
  %299 = add i64 %287, -128
  %300 = add i64 %289, 13
  store i64 %300, i64* %PC.i, align 8
  %301 = inttoptr i64 %299 to i64*
  store i64 %292, i64* %301, align 8
  %302 = add i64 %287, -120
  %303 = inttoptr i64 %302 to i64*
  store i64 %295, i64* %303, align 8
  %304 = load i64, i64* %RBP.i, align 8
  %305 = add i64 %304, -112
  %306 = load i64, i64* %PC.i, align 8
  %307 = add i64 %306, 5
  store i64 %307, i64* %PC.i, align 8
  %308 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %309 = load i64, i64* %308, align 1
  %310 = load i64, i64* %43, align 1
  %311 = inttoptr i64 %305 to i64*
  store i64 %309, i64* %311, align 8
  %312 = add i64 %304, -104
  %313 = inttoptr i64 %312 to i64*
  store i64 %310, i64* %313, align 8
  %314 = load i64, i64* %RBP.i, align 8
  %315 = add i64 %314, -96
  %316 = load i64, i64* %PC.i, align 8
  %317 = add i64 %316, 5
  store i64 %317, i64* %PC.i, align 8
  %318 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %319 = load i64, i64* %318, align 1
  %320 = load i64, i64* %43, align 1
  %321 = inttoptr i64 %315 to i64*
  store i64 %319, i64* %321, align 8
  %322 = add i64 %314, -88
  %323 = inttoptr i64 %322 to i64*
  store i64 %320, i64* %323, align 8
  %324 = load i64, i64* %RBP.i, align 8
  %325 = add i64 %324, -80
  %326 = load i64, i64* %PC.i, align 8
  %327 = add i64 %326, 5
  store i64 %327, i64* %PC.i, align 8
  %328 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %329 = load i64, i64* %328, align 1
  %330 = load i64, i64* %43, align 1
  %331 = inttoptr i64 %325 to i64*
  store i64 %329, i64* %331, align 8
  %332 = add i64 %324, -72
  %333 = inttoptr i64 %332 to i64*
  store i64 %330, i64* %333, align 8
  %334 = load i64, i64* %RBP.i, align 8
  %335 = add i64 %334, -64
  %336 = load i64, i64* %PC.i, align 8
  %337 = add i64 %336, 5
  store i64 %337, i64* %PC.i, align 8
  %338 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %339 = load i64, i64* %338, align 1
  %340 = load i64, i64* %43, align 1
  %341 = inttoptr i64 %335 to i64*
  store i64 %339, i64* %341, align 8
  %342 = add i64 %334, -56
  %343 = inttoptr i64 %342 to i64*
  store i64 %340, i64* %343, align 8
  %344 = load i64, i64* %RBP.i, align 8
  %345 = add i64 %344, -248
  %346 = load i64, i64* %PC.i, align 8
  %347 = add i64 %346, 8
  store i64 %347, i64* %PC.i, align 8
  %348 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  %349 = load i64, i64* %348, align 1
  %350 = inttoptr i64 %345 to i64*
  store i64 %349, i64* %350, align 8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %RAX.i395 = getelementptr inbounds %union.anon, %union.anon* %351, i64 0, i32 0
  %EAX.i392 = bitcast %union.anon* %351 to i32*
  %.pre = load i64, i64* %PC.i, align 8
  br label %block_.L_4007b6

block_.L_4007b6:                                  ; preds = %block_4007d2, %entry
  %352 = phi i64 [ %.pre, %entry ], [ %566, %block_4007d2 ]
  %MEMORY.0 = phi %struct.Memory* [ %call2_400778, %entry ], [ %call2_400870, %block_4007d2 ]
  %353 = load i64, i64* %RBP.i, align 8
  %354 = add i64 %353, -248
  %355 = add i64 %352, 8
  store i64 %355, i64* %PC.i, align 8
  %356 = inttoptr i64 %354 to double*
  %357 = load double, double* %356, align 8
  store double %357, double* %296, align 1
  store double 0.000000e+00, double* %298, align 1
  %358 = add i64 %353, -276
  %359 = add i64 %352, 14
  store i64 %359, i64* %PC.i, align 8
  %360 = inttoptr i64 %358 to i32*
  %361 = load i32, i32* %360, align 4
  %362 = zext i32 %361 to i64
  store i64 %362, i64* %RAX.i395, align 8
  %363 = sitofp i32 %361 to double
  store double %363, double* %115, align 1
  %364 = add i64 %352, 22
  store i64 %364, i64* %PC.i, align 8
  %365 = fcmp uno double %363, %357
  br i1 %365, label %366, label %376

; <label>:366:                                    ; preds = %block_.L_4007b6
  %367 = fadd double %363, %357
  %368 = bitcast double %367 to i64
  %369 = and i64 %368, 9221120237041090560
  %370 = icmp eq i64 %369, 9218868437227405312
  %371 = and i64 %368, 2251799813685247
  %372 = icmp ne i64 %371, 0
  %373 = and i1 %370, %372
  br i1 %373, label %374, label %382

; <label>:374:                                    ; preds = %366
  %375 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %364, %struct.Memory* %MEMORY.0)
  %.pre2 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit387

; <label>:376:                                    ; preds = %block_.L_4007b6
  %377 = fcmp ogt double %363, %357
  br i1 %377, label %382, label %378

; <label>:378:                                    ; preds = %376
  %379 = fcmp olt double %363, %357
  br i1 %379, label %382, label %380

; <label>:380:                                    ; preds = %378
  %381 = fcmp oeq double %363, %357
  br i1 %381, label %382, label %386

; <label>:382:                                    ; preds = %380, %378, %376, %366
  %383 = phi i8 [ 0, %376 ], [ 0, %378 ], [ 1, %380 ], [ 1, %366 ]
  %384 = phi i8 [ 0, %376 ], [ 0, %378 ], [ 0, %380 ], [ 1, %366 ]
  %385 = phi i8 [ 0, %376 ], [ 1, %378 ], [ 0, %380 ], [ 1, %366 ]
  store i8 %383, i8* %30, align 1
  store i8 %384, i8* %21, align 1
  store i8 %385, i8* %14, align 1
  br label %386

; <label>:386:                                    ; preds = %382, %380
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit387

routine_ucomisd__xmm0___xmm1.exit387:             ; preds = %386, %374
  %387 = phi i64 [ %.pre2, %374 ], [ %364, %386 ]
  %388 = phi %struct.Memory* [ %375, %374 ], [ %MEMORY.0, %386 ]
  %389 = load i8, i8* %14, align 1
  %390 = icmp ne i8 %389, 0
  %.v = select i1 %390, i64 298, i64 6
  %391 = add i64 %387, %.v
  store i64 %391, i64* %3, align 8
  %cmpBr_4007cc = icmp eq i8 %389, 1
  br i1 %cmpBr_4007cc, label %block_.L_4008f6, label %block_4007d2

block_4007d2:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit387
  %392 = load i64, i64* bitcast (%G_0x446__rip__type* @G_0x446__rip_ to i64*), align 8
  %393 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %392, i64* %393, align 1
  store double 0.000000e+00, double* %298, align 1
  %394 = load double, double* bitcast (%G_0x426__rip__type* @G_0x426__rip_ to double*), align 8
  store double %394, double* %115, align 1
  store double 0.000000e+00, double* %118, align 1
  %395 = load i64, i64* %RBP.i, align 8
  %396 = add i64 %395, -248
  %397 = add i64 %391, 24
  store i64 %397, i64* %PC.i, align 8
  %398 = inttoptr i64 %396 to double*
  %399 = load double, double* %398, align 8
  %400 = fsub double %399, %394
  store double %400, double* %204, align 1
  store i64 0, i64* %206, align 1
  %401 = bitcast double %400 to <2 x i32>
  %402 = extractelement <2 x i32> %401, i32 0
  store i32 %402, i32* %230, align 1
  %403 = extractelement <2 x i32> %401, i32 1
  store i32 %403, i32* %233, align 1
  store i32 0, i32* %235, align 1
  store i32 0, i32* %238, align 1
  %404 = add i64 %391, -722
  %405 = add i64 %391, 36
  %406 = load i64, i64* %6, align 8
  %407 = add i64 %406, -8
  %408 = inttoptr i64 %407 to i64*
  store i64 %405, i64* %408, align 8
  store i64 %407, i64* %6, align 8
  store i64 %404, i64* %3, align 8
  %409 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64)* @pow to i64), %struct.Memory* %388)
  %410 = load i64, i64* %PC.i, align 8
  %411 = load i64, i64* bitcast (%G_0x40a__rip__type* @G_0x40a__rip_ to i64*), align 8
  %412 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %411, i64* %412, align 1
  store double 0.000000e+00, double* %118, align 1
  %413 = load i64, i64* %RBP.i, align 8
  %414 = add i64 %413, -24
  %415 = add i64 %410, 13
  store i64 %415, i64* %PC.i, align 8
  %416 = load double, double* %296, align 1
  %417 = inttoptr i64 %414 to double*
  %418 = load double, double* %417, align 8
  %419 = fadd double %416, %418
  store double %419, double* %296, align 1
  %420 = add i64 %410, 18
  store i64 %420, i64* %PC.i, align 8
  store double %419, double* %417, align 8
  %421 = load i64, i64* %RBP.i, align 8
  %422 = add i64 %421, -248
  %423 = load i64, i64* %PC.i, align 8
  %424 = add i64 %423, 8
  store i64 %424, i64* %PC.i, align 8
  %425 = inttoptr i64 %422 to i64*
  %426 = load i64, i64* %425, align 8
  %427 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %426, i64* %427, align 1
  store double 0.000000e+00, double* %298, align 1
  %428 = add i64 %421, -296
  %429 = add i64 %423, 16
  store i64 %429, i64* %PC.i, align 8
  %430 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  %431 = load i64, i64* %430, align 1
  %432 = inttoptr i64 %428 to i64*
  store i64 %431, i64* %432, align 8
  %433 = load i64, i64* %PC.i, align 8
  %434 = add i64 %433, -744
  %435 = add i64 %433, 5
  %436 = load i64, i64* %6, align 8
  %437 = add i64 %436, -8
  %438 = inttoptr i64 %437 to i64*
  store i64 %435, i64* %438, align 8
  store i64 %437, i64* %6, align 8
  store i64 %434, i64* %3, align 8
  %call2_400818 = tail call %struct.Memory* @ext_sqrt(%struct.State* %0, i64 %434, %struct.Memory* %409)
  %439 = load i64, i64* %RBP.i, align 8
  %440 = add i64 %439, -296
  %441 = load i64, i64* %PC.i, align 8
  %442 = add i64 %441, 8
  store i64 %442, i64* %PC.i, align 8
  %443 = inttoptr i64 %440 to double*
  %444 = load double, double* %443, align 8
  %445 = load double, double* %70, align 1
  %446 = fdiv double %444, %445
  store double %446, double* %115, align 1
  store i64 0, i64* %117, align 1
  %447 = add i64 %439, -32
  %448 = add i64 %441, 17
  store i64 %448, i64* %PC.i, align 8
  %449 = inttoptr i64 %447 to double*
  %450 = load double, double* %449, align 8
  %451 = fadd double %446, %450
  store double %451, double* %115, align 1
  store i64 0, i64* %117, align 1
  %452 = add i64 %441, 22
  store i64 %452, i64* %PC.i, align 8
  store double %451, double* %449, align 8
  %453 = load i64, i64* %RBP.i, align 8
  %454 = add i64 %453, -248
  %455 = load i64, i64* %PC.i, align 8
  %456 = add i64 %455, 8
  store i64 %456, i64* %PC.i, align 8
  %457 = inttoptr i64 %454 to double*
  %458 = load double, double* %457, align 8
  store double %458, double* %296, align 1
  store double 0.000000e+00, double* %298, align 1
  %459 = add i64 %455, 16
  store i64 %459, i64* %PC.i, align 8
  %460 = load double, double* %457, align 8
  %461 = fmul double %458, %460
  store double %461, double* %296, align 1
  store i64 0, i64* %42, align 1
  %462 = add i64 %455, 24
  store i64 %462, i64* %PC.i, align 8
  %463 = load double, double* %457, align 8
  %464 = fmul double %461, %463
  store double %464, double* %296, align 1
  store i64 0, i64* %42, align 1
  %465 = add i64 %453, -256
  %466 = add i64 %455, 32
  store i64 %466, i64* %PC.i, align 8
  %467 = inttoptr i64 %465 to double*
  store double %464, double* %467, align 8
  %468 = load i64, i64* %RBP.i, align 8
  %469 = add i64 %468, -248
  %470 = load i64, i64* %PC.i, align 8
  %471 = add i64 %470, 8
  store i64 %471, i64* %PC.i, align 8
  %472 = inttoptr i64 %469 to i64*
  %473 = load i64, i64* %472, align 8
  %474 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %473, i64* %474, align 1
  store double 0.000000e+00, double* %298, align 1
  %475 = add i64 %470, -819
  %476 = add i64 %470, 13
  %477 = load i64, i64* %6, align 8
  %478 = add i64 %477, -8
  %479 = inttoptr i64 %478 to i64*
  store i64 %476, i64* %479, align 8
  store i64 %478, i64* %6, align 8
  store i64 %475, i64* %3, align 8
  %call2_40085b = tail call %struct.Memory* @ext_sin(%struct.State* %0, i64 %475, %struct.Memory* %call2_400818)
  %480 = load i64, i64* %RBP.i, align 8
  %481 = add i64 %480, -264
  %482 = load i64, i64* %PC.i, align 8
  %483 = add i64 %482, 8
  store i64 %483, i64* %PC.i, align 8
  %484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %485 = load i64, i64* %484, align 1
  %486 = inttoptr i64 %481 to i64*
  store i64 %485, i64* %486, align 8
  %487 = load i64, i64* %RBP.i, align 8
  %488 = add i64 %487, -248
  %489 = load i64, i64* %PC.i, align 8
  %490 = add i64 %489, 8
  store i64 %490, i64* %PC.i, align 8
  %491 = inttoptr i64 %488 to i64*
  %492 = load i64, i64* %491, align 8
  %493 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %492, i64* %493, align 1
  store double 0.000000e+00, double* %298, align 1
  %494 = add i64 %489, -856
  %495 = add i64 %489, 13
  %496 = load i64, i64* %6, align 8
  %497 = add i64 %496, -8
  %498 = inttoptr i64 %497 to i64*
  store i64 %495, i64* %498, align 8
  store i64 %497, i64* %6, align 8
  store i64 %494, i64* %3, align 8
  %call2_400870 = tail call %struct.Memory* @ext_cos(%struct.State* %0, i64 %494, %struct.Memory* %call2_40085b)
  %499 = load i64, i64* %RBP.i, align 8
  %500 = add i64 %499, -272
  %501 = load i64, i64* %PC.i, align 8
  %502 = add i64 %501, 8
  store i64 %502, i64* %PC.i, align 8
  %503 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  %504 = load i64, i64* %503, align 1
  %505 = inttoptr i64 %500 to i64*
  store i64 %504, i64* %505, align 8
  %506 = load i64, i64* %RBP.i, align 8
  %507 = add i64 %506, -256
  %508 = load i64, i64* %PC.i, align 8
  %509 = add i64 %508, 8
  store i64 %509, i64* %PC.i, align 8
  %510 = inttoptr i64 %507 to double*
  %511 = load double, double* %510, align 8
  store double %511, double* %296, align 1
  store double 0.000000e+00, double* %298, align 1
  %512 = add i64 %506, -264
  %513 = add i64 %508, 16
  store i64 %513, i64* %PC.i, align 8
  %514 = inttoptr i64 %512 to double*
  %515 = load double, double* %514, align 8
  %516 = fmul double %511, %515
  store double %516, double* %296, align 1
  store i64 0, i64* %42, align 1
  %517 = add i64 %508, 24
  store i64 %517, i64* %PC.i, align 8
  %518 = load double, double* %514, align 8
  %519 = fmul double %516, %518
  store double %519, double* %296, align 1
  store i64 0, i64* %42, align 1
  %520 = add i64 %506, -296
  %521 = add i64 %508, 32
  store i64 %521, i64* %PC.i, align 8
  %522 = inttoptr i64 %520 to double*
  %523 = load double, double* %522, align 8
  %524 = fdiv double %523, %519
  store double %524, double* %115, align 1
  store i64 0, i64* %117, align 1
  %525 = add i64 %506, -40
  %526 = add i64 %508, 41
  store i64 %526, i64* %PC.i, align 8
  %527 = inttoptr i64 %525 to double*
  %528 = load double, double* %527, align 8
  %529 = fadd double %524, %528
  store double %529, double* %115, align 1
  store i64 0, i64* %117, align 1
  %530 = add i64 %508, 46
  store i64 %530, i64* %PC.i, align 8
  store double %529, double* %527, align 8
  %531 = load i64, i64* %RBP.i, align 8
  %532 = add i64 %531, -256
  %533 = load i64, i64* %PC.i, align 8
  %534 = add i64 %533, 8
  store i64 %534, i64* %PC.i, align 8
  %535 = inttoptr i64 %532 to double*
  %536 = load double, double* %535, align 8
  store double %536, double* %296, align 1
  store double 0.000000e+00, double* %298, align 1
  %537 = add i64 %531, -272
  %538 = add i64 %533, 16
  store i64 %538, i64* %PC.i, align 8
  %539 = inttoptr i64 %537 to double*
  %540 = load double, double* %539, align 8
  %541 = fmul double %536, %540
  store double %541, double* %296, align 1
  store i64 0, i64* %42, align 1
  %542 = add i64 %533, 24
  store i64 %542, i64* %PC.i, align 8
  %543 = load double, double* %539, align 8
  %544 = fmul double %541, %543
  store double %544, double* %296, align 1
  store i64 0, i64* %42, align 1
  %545 = add i64 %531, -296
  %546 = add i64 %533, 32
  store i64 %546, i64* %PC.i, align 8
  %547 = inttoptr i64 %545 to double*
  %548 = load double, double* %547, align 8
  %549 = fdiv double %548, %544
  store double %549, double* %115, align 1
  store i64 0, i64* %117, align 1
  %550 = add i64 %531, -48
  %551 = add i64 %533, 41
  store i64 %551, i64* %PC.i, align 8
  %552 = inttoptr i64 %550 to double*
  %553 = load double, double* %552, align 8
  %554 = fadd double %549, %553
  store double %554, double* %115, align 1
  store i64 0, i64* %117, align 1
  %555 = add i64 %533, 46
  store i64 %555, i64* %PC.i, align 8
  store double %554, double* %552, align 8
  %556 = load i64, i64* %PC.i, align 8
  %557 = load double, double* bitcast (%G_0x327__rip__type* @G_0x327__rip_ to double*), align 8
  store double %557, double* %296, align 1
  store double 0.000000e+00, double* %298, align 1
  %558 = load i64, i64* %RBP.i, align 8
  %559 = add i64 %558, -248
  %560 = add i64 %556, 16
  store i64 %560, i64* %PC.i, align 8
  %561 = inttoptr i64 %559 to double*
  %562 = load double, double* %561, align 8
  %563 = fadd double %557, %562
  store double %563, double* %296, align 1
  store i64 0, i64* %42, align 1
  %564 = add i64 %556, 24
  store i64 %564, i64* %PC.i, align 8
  store double %563, double* %561, align 8
  %565 = load i64, i64* %PC.i, align 8
  %566 = add i64 %565, -315
  store i64 %566, i64* %3, align 8
  br label %block_.L_4007b6

block_.L_4008f6:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit387
  %567 = load i64, i64* %RBP.i, align 8
  %568 = add i64 %567, -192
  %569 = add i64 %391, 8
  store i64 %569, i64* %PC.i, align 8
  %570 = inttoptr i64 %568 to i64*
  %571 = load i64, i64* %570, align 8
  %572 = add i64 %567, -184
  %573 = inttoptr i64 %572 to i64*
  %574 = load i64, i64* %573, align 8
  %575 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %571, i64* %575, align 1
  store i64 %574, i64* %42, align 1
  %576 = add i64 %567, -224
  %577 = add i64 %391, 16
  store i64 %577, i64* %PC.i, align 8
  %578 = inttoptr i64 %576 to i64*
  store i64 %571, i64* %578, align 8
  %579 = add i64 %567, -216
  %580 = inttoptr i64 %579 to i64*
  store i64 %574, i64* %580, align 8
  %581 = bitcast %union.VectorReg* %202 to <2 x double>*
  %582 = bitcast %union.VectorReg* %107 to <2 x double>*
  %583 = bitcast [32 x %union.VectorReg]* %40 to <2 x double>*
  %.pre3 = load i64, i64* %PC.i, align 8
  br label %block_.L_400906

block_.L_400906:                                  ; preds = %block_400922, %block_.L_4008f6
  %584 = phi i64 [ %.pre3, %block_.L_4008f6 ], [ %868, %block_400922 ]
  %MEMORY.1 = phi %struct.Memory* [ %388, %block_.L_4008f6 ], [ %620, %block_400922 ]
  %585 = load i64, i64* %RBP.i, align 8
  %586 = add i64 %585, -224
  %587 = add i64 %584, 8
  store i64 %587, i64* %PC.i, align 8
  %588 = inttoptr i64 %586 to double*
  %589 = load double, double* %588, align 8
  store double %589, double* %296, align 1
  store double 0.000000e+00, double* %298, align 1
  %590 = add i64 %585, -276
  %591 = add i64 %584, 14
  store i64 %591, i64* %PC.i, align 8
  %592 = inttoptr i64 %590 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  store i64 %594, i64* %RAX.i395, align 8
  %595 = sitofp i32 %593 to double
  store double %595, double* %115, align 1
  %596 = add i64 %584, 22
  store i64 %596, i64* %PC.i, align 8
  %597 = fcmp uno double %595, %589
  br i1 %597, label %598, label %608

; <label>:598:                                    ; preds = %block_.L_400906
  %599 = fadd double %595, %589
  %600 = bitcast double %599 to i64
  %601 = and i64 %600, 9221120237041090560
  %602 = icmp eq i64 %601, 9218868437227405312
  %603 = and i64 %600, 2251799813685247
  %604 = icmp ne i64 %603, 0
  %605 = and i1 %602, %604
  br i1 %605, label %606, label %614

; <label>:606:                                    ; preds = %598
  %607 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %596, %struct.Memory* %MEMORY.1)
  %.pre4 = load i64, i64* %PC.i, align 8
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:608:                                    ; preds = %block_.L_400906
  %609 = fcmp ogt double %595, %589
  br i1 %609, label %614, label %610

; <label>:610:                                    ; preds = %608
  %611 = fcmp olt double %595, %589
  br i1 %611, label %614, label %612

; <label>:612:                                    ; preds = %610
  %613 = fcmp oeq double %595, %589
  br i1 %613, label %614, label %618

; <label>:614:                                    ; preds = %612, %610, %608, %598
  %615 = phi i8 [ 0, %608 ], [ 0, %610 ], [ 1, %612 ], [ 1, %598 ]
  %616 = phi i8 [ 0, %608 ], [ 0, %610 ], [ 0, %612 ], [ 1, %598 ]
  %617 = phi i8 [ 0, %608 ], [ 1, %610 ], [ 0, %612 ], [ 1, %598 ]
  store i8 %615, i8* %30, align 1
  store i8 %616, i8* %21, align 1
  store i8 %617, i8* %14, align 1
  br label %618

; <label>:618:                                    ; preds = %614, %612
  store i8 0, i8* %39, align 1
  store i8 0, i8* %33, align 1
  store i8 0, i8* %27, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %618, %606
  %619 = phi i64 [ %.pre4, %606 ], [ %596, %618 ]
  %620 = phi %struct.Memory* [ %607, %606 ], [ %MEMORY.1, %618 ]
  %621 = load i8, i8* %14, align 1
  %622 = icmp ne i8 %621, 0
  %.v5 = select i1 %622, i64 221, i64 6
  %623 = add i64 %619, %.v5
  store i64 %623, i64* %3, align 8
  %cmpBr_40091c = icmp eq i8 %621, 1
  br i1 %cmpBr_40091c, label %block_.L_4009f9, label %block_400922

block_400922:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %624 = load i64, i64* %RBP.i, align 8
  %625 = add i64 %624, -160
  %626 = add i64 %623, 8
  store i64 %626, i64* %PC.i, align 8
  %627 = inttoptr i64 %625 to double*
  %628 = inttoptr i64 %625 to i64*
  %629 = load i64, i64* %628, align 8
  %630 = add i64 %624, -152
  %631 = inttoptr i64 %630 to double*
  %632 = inttoptr i64 %630 to i64*
  %633 = load i64, i64* %632, align 8
  %634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %629, i64* %634, align 1
  store i64 %633, i64* %42, align 1
  %635 = add i64 %624, -224
  %636 = add i64 %623, 16
  store i64 %636, i64* %PC.i, align 8
  %637 = inttoptr i64 %635 to i64*
  %638 = load i64, i64* %637, align 8
  %639 = add i64 %624, -216
  %640 = inttoptr i64 %639 to i64*
  %641 = load i64, i64* %640, align 8
  %642 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %638, i64* %642, align 1
  store i64 %641, i64* %117, align 1
  %643 = add i64 %623, 24
  store i64 %643, i64* %PC.i, align 8
  %644 = inttoptr i64 %635 to i64*
  %645 = load i64, i64* %644, align 8
  %646 = inttoptr i64 %639 to i64*
  %647 = load i64, i64* %646, align 8
  %648 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %202, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %645, i64* %648, align 1
  store i64 %647, i64* %206, align 1
  %649 = add i64 %623, 32
  store i64 %649, i64* %PC.i, align 8
  %650 = load <2 x double>, <2 x double>* %581, align 1
  %651 = load double, double* %627, align 8
  %652 = load double, double* %631, align 8
  %653 = insertelement <2 x double> undef, double %651, i32 0
  %654 = insertelement <2 x double> %653, double %652, i32 1
  %655 = fadd <2 x double> %650, %654
  store <2 x double> %655, <2 x double>* %581, align 1
  %656 = load <2 x double>, <2 x double>* %582, align 1
  %657 = fmul <2 x double> %656, %655
  store <2 x double> %657, <2 x double>* %582, align 1
  %658 = load <2 x double>, <2 x double>* %583, align 1
  %659 = fdiv <2 x double> %658, %657
  store <2 x double> %659, <2 x double>* %583, align 1
  %660 = add i64 %624, -96
  %661 = add i64 %623, 45
  store i64 %661, i64* %PC.i, align 8
  %662 = inttoptr i64 %660 to double*
  %663 = load double, double* %662, align 8
  %664 = add i64 %624, -88
  %665 = inttoptr i64 %664 to double*
  %666 = load double, double* %665, align 8
  %667 = insertelement <2 x double> undef, double %663, i32 0
  %668 = insertelement <2 x double> %667, double %666, i32 1
  %669 = fadd <2 x double> %659, %668
  store <2 x double> %669, <2 x double>* %583, align 1
  %670 = add i64 %623, 50
  store i64 %670, i64* %PC.i, align 8
  %bc = bitcast <2 x double> %669 to <2 x i64>
  %671 = extractelement <2 x i64> %bc, i32 0
  %672 = extractelement <2 x double> %669, i32 1
  %673 = inttoptr i64 %660 to i64*
  store i64 %671, i64* %673, align 8
  store double %672, double* %665, align 8
  %674 = load i64, i64* %RBP.i, align 8
  %675 = add i64 %674, -160
  %676 = load i64, i64* %PC.i, align 8
  %677 = add i64 %676, 8
  store i64 %677, i64* %PC.i, align 8
  %678 = inttoptr i64 %675 to i64*
  %679 = load i64, i64* %678, align 8
  %680 = add i64 %674, -152
  %681 = inttoptr i64 %680 to i64*
  %682 = load i64, i64* %681, align 8
  %683 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %679, i64* %683, align 1
  store i64 %682, i64* %42, align 1
  %684 = add i64 %674, -224
  %685 = add i64 %676, 16
  store i64 %685, i64* %PC.i, align 8
  %686 = load <2 x double>, <2 x double>* %583, align 1
  %687 = inttoptr i64 %684 to double*
  %688 = load double, double* %687, align 8
  %689 = add i64 %674, -216
  %690 = inttoptr i64 %689 to double*
  %691 = load double, double* %690, align 8
  %692 = insertelement <2 x double> undef, double %688, i32 0
  %693 = insertelement <2 x double> %692, double %691, i32 1
  %694 = fdiv <2 x double> %686, %693
  store <2 x double> %694, <2 x double>* %583, align 1
  %695 = add i64 %674, -64
  %696 = add i64 %676, 21
  store i64 %696, i64* %PC.i, align 8
  %697 = inttoptr i64 %695 to double*
  %698 = load double, double* %697, align 8
  %699 = add i64 %674, -56
  %700 = inttoptr i64 %699 to double*
  %701 = load double, double* %700, align 8
  %702 = insertelement <2 x double> undef, double %698, i32 0
  %703 = insertelement <2 x double> %702, double %701, i32 1
  %704 = fadd <2 x double> %694, %703
  store <2 x double> %704, <2 x double>* %583, align 1
  %705 = add i64 %676, 26
  store i64 %705, i64* %PC.i, align 8
  %bc9 = bitcast <2 x double> %704 to <2 x i64>
  %706 = extractelement <2 x i64> %bc9, i32 0
  %707 = extractelement <2 x double> %704, i32 1
  %708 = inttoptr i64 %695 to i64*
  store i64 %706, i64* %708, align 8
  store double %707, double* %700, align 8
  %709 = load i64, i64* %RBP.i, align 8
  %710 = add i64 %709, -160
  %711 = load i64, i64* %PC.i, align 8
  %712 = add i64 %711, 8
  store i64 %712, i64* %PC.i, align 8
  %713 = inttoptr i64 %710 to i64*
  %714 = load i64, i64* %713, align 8
  %715 = add i64 %709, -152
  %716 = inttoptr i64 %715 to i64*
  %717 = load i64, i64* %716, align 8
  %718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %714, i64* %718, align 1
  store i64 %717, i64* %42, align 1
  %719 = add i64 %709, -224
  %720 = add i64 %711, 16
  store i64 %720, i64* %PC.i, align 8
  %721 = inttoptr i64 %719 to double*
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722, align 8
  %724 = add i64 %709, -216
  %725 = inttoptr i64 %724 to double*
  %726 = inttoptr i64 %724 to i64*
  %727 = load i64, i64* %726, align 8
  %728 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %723, i64* %728, align 1
  store i64 %727, i64* %117, align 1
  %729 = add i64 %711, 24
  store i64 %729, i64* %PC.i, align 8
  %730 = load <2 x double>, <2 x double>* %582, align 1
  %731 = load double, double* %721, align 8
  %732 = load double, double* %725, align 8
  %733 = insertelement <2 x double> undef, double %731, i32 0
  %734 = insertelement <2 x double> %733, double %732, i32 1
  %735 = fmul <2 x double> %730, %734
  store <2 x double> %735, <2 x double>* %582, align 1
  %736 = load <2 x double>, <2 x double>* %583, align 1
  %737 = fdiv <2 x double> %736, %735
  store <2 x double> %737, <2 x double>* %583, align 1
  %738 = add i64 %709, -80
  %739 = add i64 %711, 33
  store i64 %739, i64* %PC.i, align 8
  %740 = inttoptr i64 %738 to double*
  %741 = load double, double* %740, align 8
  %742 = add i64 %709, -72
  %743 = inttoptr i64 %742 to double*
  %744 = load double, double* %743, align 8
  %745 = insertelement <2 x double> undef, double %741, i32 0
  %746 = insertelement <2 x double> %745, double %744, i32 1
  %747 = fadd <2 x double> %737, %746
  store <2 x double> %747, <2 x double>* %583, align 1
  %748 = add i64 %711, 38
  store i64 %748, i64* %PC.i, align 8
  %bc12 = bitcast <2 x double> %747 to <2 x i64>
  %749 = extractelement <2 x i64> %bc12, i32 0
  %750 = extractelement <2 x double> %747, i32 1
  %751 = inttoptr i64 %738 to i64*
  store i64 %749, i64* %751, align 8
  store double %750, double* %743, align 8
  %752 = load i64, i64* %RBP.i, align 8
  %753 = add i64 %752, -240
  %754 = load i64, i64* %PC.i, align 8
  %755 = add i64 %754, 8
  store i64 %755, i64* %PC.i, align 8
  %756 = inttoptr i64 %753 to i64*
  %757 = load i64, i64* %756, align 8
  %758 = add i64 %752, -232
  %759 = inttoptr i64 %758 to i64*
  %760 = load i64, i64* %759, align 8
  %761 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %757, i64* %761, align 1
  store i64 %760, i64* %42, align 1
  %762 = add i64 %752, -224
  %763 = add i64 %754, 16
  store i64 %763, i64* %PC.i, align 8
  %764 = load <2 x double>, <2 x double>* %583, align 1
  %765 = inttoptr i64 %762 to double*
  %766 = load double, double* %765, align 8
  %767 = add i64 %752, -216
  %768 = inttoptr i64 %767 to double*
  %769 = load double, double* %768, align 8
  %770 = insertelement <2 x double> undef, double %766, i32 0
  %771 = insertelement <2 x double> %770, double %769, i32 1
  %772 = fdiv <2 x double> %764, %771
  store <2 x double> %772, <2 x double>* %583, align 1
  %773 = add i64 %752, -112
  %774 = add i64 %754, 21
  store i64 %774, i64* %PC.i, align 8
  %775 = inttoptr i64 %773 to double*
  %776 = load double, double* %775, align 8
  %777 = add i64 %752, -104
  %778 = inttoptr i64 %777 to double*
  %779 = load double, double* %778, align 8
  %780 = insertelement <2 x double> undef, double %776, i32 0
  %781 = insertelement <2 x double> %780, double %779, i32 1
  %782 = fadd <2 x double> %772, %781
  store <2 x double> %782, <2 x double>* %583, align 1
  %783 = add i64 %754, 26
  store i64 %783, i64* %PC.i, align 8
  %bc15 = bitcast <2 x double> %782 to <2 x i64>
  %784 = extractelement <2 x i64> %bc15, i32 0
  %785 = extractelement <2 x double> %782, i32 1
  %786 = inttoptr i64 %773 to i64*
  store i64 %784, i64* %786, align 8
  store double %785, double* %778, align 8
  %787 = load i64, i64* %RBP.i, align 8
  %788 = add i64 %787, -240
  %789 = load i64, i64* %PC.i, align 8
  %790 = add i64 %789, 8
  store i64 %790, i64* %PC.i, align 8
  %791 = inttoptr i64 %788 to i64*
  %792 = load i64, i64* %791, align 8
  %793 = add i64 %787, -232
  %794 = inttoptr i64 %793 to i64*
  %795 = load i64, i64* %794, align 8
  %796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %792, i64* %796, align 1
  store i64 %795, i64* %42, align 1
  %797 = add i64 %787, -176
  %798 = add i64 %789, 16
  store i64 %798, i64* %PC.i, align 8
  %799 = inttoptr i64 %797 to i64*
  %800 = load i64, i64* %799, align 8
  %801 = add i64 %787, -168
  %802 = inttoptr i64 %801 to i64*
  %803 = load i64, i64* %802, align 8
  %804 = getelementptr inbounds %union.VectorReg, %union.VectorReg* %107, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %800, i64* %804, align 1
  store i64 %803, i64* %117, align 1
  %805 = add i64 %787, -224
  %806 = add i64 %789, 24
  store i64 %806, i64* %PC.i, align 8
  %807 = load <2 x double>, <2 x double>* %582, align 1
  %808 = inttoptr i64 %805 to double*
  %809 = load double, double* %808, align 8
  %810 = add i64 %787, -216
  %811 = inttoptr i64 %810 to double*
  %812 = load double, double* %811, align 8
  %813 = insertelement <2 x double> undef, double %809, i32 0
  %814 = insertelement <2 x double> %813, double %812, i32 1
  %815 = fmul <2 x double> %807, %814
  store <2 x double> %815, <2 x double>* %582, align 1
  %816 = add i64 %787, -160
  %817 = add i64 %789, 32
  store i64 %817, i64* %PC.i, align 8
  %818 = inttoptr i64 %816 to double*
  %819 = load double, double* %818, align 8
  %820 = add i64 %787, -152
  %821 = inttoptr i64 %820 to double*
  %822 = load double, double* %821, align 8
  %823 = insertelement <2 x double> undef, double %819, i32 0
  %824 = insertelement <2 x double> %823, double %822, i32 1
  %825 = fsub <2 x double> %815, %824
  store <2 x double> %825, <2 x double>* %582, align 1
  %826 = load <2 x double>, <2 x double>* %583, align 1
  %827 = fdiv <2 x double> %826, %825
  store <2 x double> %827, <2 x double>* %583, align 1
  %828 = add i64 %787, -128
  %829 = add i64 %789, 41
  store i64 %829, i64* %PC.i, align 8
  %830 = inttoptr i64 %828 to double*
  %831 = load double, double* %830, align 8
  %832 = add i64 %787, -120
  %833 = inttoptr i64 %832 to double*
  %834 = load double, double* %833, align 8
  %835 = insertelement <2 x double> undef, double %831, i32 0
  %836 = insertelement <2 x double> %835, double %834, i32 1
  %837 = fadd <2 x double> %827, %836
  store <2 x double> %837, <2 x double>* %583, align 1
  %838 = add i64 %789, 46
  store i64 %838, i64* %PC.i, align 8
  %bc18 = bitcast <2 x double> %837 to <2 x i64>
  %839 = extractelement <2 x i64> %bc18, i32 0
  %840 = extractelement <2 x double> %837, i32 1
  %841 = inttoptr i64 %828 to i64*
  store i64 %839, i64* %841, align 8
  store double %840, double* %833, align 8
  %842 = load i64, i64* %RBP.i, align 8
  %843 = add i64 %842, -176
  %844 = load i64, i64* %PC.i, align 8
  %845 = add i64 %844, 8
  store i64 %845, i64* %PC.i, align 8
  %846 = inttoptr i64 %843 to i64*
  %847 = load i64, i64* %846, align 8
  %848 = add i64 %842, -168
  %849 = inttoptr i64 %848 to i64*
  %850 = load i64, i64* %849, align 8
  %851 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %847, i64* %851, align 1
  store i64 %850, i64* %42, align 1
  %852 = add i64 %842, -224
  %853 = add i64 %844, 16
  store i64 %853, i64* %PC.i, align 8
  %854 = load <2 x double>, <2 x double>* %583, align 1
  %855 = inttoptr i64 %852 to double*
  %856 = load double, double* %855, align 8
  %857 = add i64 %842, -216
  %858 = inttoptr i64 %857 to double*
  %859 = load double, double* %858, align 8
  %860 = insertelement <2 x double> undef, double %856, i32 0
  %861 = insertelement <2 x double> %860, double %859, i32 1
  %862 = fadd <2 x double> %854, %861
  store <2 x double> %862, <2 x double>* %583, align 1
  %863 = add i64 %844, 24
  store i64 %863, i64* %PC.i, align 8
  %bc21 = bitcast <2 x double> %862 to <2 x i64>
  %864 = extractelement <2 x i64> %bc21, i32 0
  %865 = extractelement <2 x double> %862, i32 1
  %866 = inttoptr i64 %852 to i64*
  store i64 %864, i64* %866, align 8
  store double %865, double* %858, align 8
  %867 = load i64, i64* %PC.i, align 8
  %868 = add i64 %867, -238
  store i64 %868, i64* %3, align 8
  br label %block_.L_400906

block_.L_4009f9:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %RDI.i147 = getelementptr inbounds %union.anon, %union.anon* %53, i64 0, i32 0
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c31_type* @G__0x400c31 to i64), i64* %RSI.i87, align 8
  %869 = load i64, i64* %RBP.i, align 8
  %870 = add i64 %869, -24
  %871 = add i64 %623, 25
  store i64 %871, i64* %PC.i, align 8
  %872 = inttoptr i64 %870 to i64*
  %873 = load i64, i64* %872, align 8
  %874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %873, i64* %874, align 1
  store double 0.000000e+00, double* %298, align 1
  %AL.i140 = bitcast %union.anon* %351 to i8*
  store i8 1, i8* %AL.i140, align 1
  %875 = add i64 %623, -1289
  %876 = add i64 %623, 32
  %877 = load i64, i64* %6, align 8
  %878 = add i64 %877, -8
  %879 = inttoptr i64 %878 to i64*
  store i64 %876, i64* %879, align 8
  store i64 %878, i64* %6, align 8
  store i64 %875, i64* %3, align 8
  %880 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %620)
  %881 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c39_type* @G__0x400c39 to i64), i64* %RSI.i87, align 8
  %882 = load i64, i64* %RBP.i, align 8
  %883 = add i64 %882, -32
  %884 = add i64 %881, 25
  store i64 %884, i64* %PC.i, align 8
  %885 = inttoptr i64 %883 to i64*
  %886 = load i64, i64* %885, align 8
  %887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %886, i64* %887, align 1
  store double 0.000000e+00, double* %298, align 1
  %888 = add i64 %882, -300
  %889 = load i32, i32* %EAX.i392, align 4
  %890 = add i64 %881, 31
  store i64 %890, i64* %PC.i, align 8
  %891 = inttoptr i64 %888 to i32*
  store i32 %889, i32* %891, align 4
  %892 = load i64, i64* %PC.i, align 8
  store i8 1, i8* %AL.i140, align 1
  %893 = add i64 %892, -1352
  %894 = add i64 %892, 7
  %895 = load i64, i64* %6, align 8
  %896 = add i64 %895, -8
  %897 = inttoptr i64 %896 to i64*
  store i64 %894, i64* %897, align 8
  store i64 %896, i64* %6, align 8
  store i64 %893, i64* %3, align 8
  %898 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %880)
  %899 = load i64, i64* %RBP.i, align 8
  %900 = add i64 %899, -96
  %901 = load i64, i64* %PC.i, align 8
  %902 = add i64 %901, 5
  store i64 %902, i64* %PC.i, align 8
  %903 = inttoptr i64 %900 to i64*
  %904 = load i64, i64* %903, align 8
  %905 = add i64 %899, -88
  %906 = inttoptr i64 %905 to i64*
  %907 = load i64, i64* %906, align 8
  %908 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %904, i64* %908, align 1
  store i64 %907, i64* %42, align 1
  %909 = add i64 %899, -304
  %910 = load i32, i32* %EAX.i392, align 4
  %911 = add i64 %901, 11
  store i64 %911, i64* %PC.i, align 8
  %912 = inttoptr i64 %909 to i32*
  store i32 %910, i32* %912, align 4
  %913 = load i64, i64* %PC.i, align 8
  %914 = add i64 %913, -986
  %915 = add i64 %913, 5
  %916 = load i64, i64* %6, align 8
  %917 = add i64 %916, -8
  %918 = inttoptr i64 %917 to i64*
  store i64 %915, i64* %918, align 8
  store i64 %917, i64* %6, align 8
  store i64 %914, i64* %3, align 8
  %call2_400a4a = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %914, %struct.Memory* %898)
  %919 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c40_type* @G__0x400c40 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %920 = add i64 %919, -1375
  %921 = add i64 %919, 27
  %922 = load i64, i64* %6, align 8
  %923 = add i64 %922, -8
  %924 = inttoptr i64 %923 to i64*
  store i64 %921, i64* %924, align 8
  store i64 %923, i64* %6, align 8
  store i64 %920, i64* %3, align 8
  %925 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400a4a)
  %926 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c49_type* @G__0x400c49 to i64), i64* %RSI.i87, align 8
  %927 = load i64, i64* %RBP.i, align 8
  %928 = add i64 %927, -40
  %929 = add i64 %926, 25
  store i64 %929, i64* %PC.i, align 8
  %930 = inttoptr i64 %928 to i64*
  %931 = load i64, i64* %930, align 8
  %932 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %931, i64* %932, align 1
  store double 0.000000e+00, double* %298, align 1
  %933 = add i64 %927, -308
  %934 = load i32, i32* %EAX.i392, align 4
  %935 = add i64 %926, 31
  store i64 %935, i64* %PC.i, align 8
  %936 = inttoptr i64 %933 to i32*
  store i32 %934, i32* %936, align 4
  %937 = load i64, i64* %PC.i, align 8
  store i8 1, i8* %AL.i140, align 1
  %938 = add i64 %937, -1433
  %939 = add i64 %937, 7
  %940 = load i64, i64* %6, align 8
  %941 = add i64 %940, -8
  %942 = inttoptr i64 %941 to i64*
  store i64 %939, i64* %942, align 8
  store i64 %941, i64* %6, align 8
  store i64 %938, i64* %3, align 8
  %943 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %925)
  %944 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c55_type* @G__0x400c55 to i64), i64* %RSI.i87, align 8
  %945 = load i64, i64* %RBP.i, align 8
  %946 = add i64 %945, -48
  %947 = add i64 %944, 25
  store i64 %947, i64* %PC.i, align 8
  %948 = inttoptr i64 %946 to i64*
  %949 = load i64, i64* %948, align 8
  %950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %949, i64* %950, align 1
  store double 0.000000e+00, double* %298, align 1
  %951 = add i64 %945, -312
  %952 = load i32, i32* %EAX.i392, align 4
  %953 = add i64 %944, 31
  store i64 %953, i64* %PC.i, align 8
  %954 = inttoptr i64 %951 to i32*
  store i32 %952, i32* %954, align 4
  %955 = load i64, i64* %PC.i, align 8
  store i8 1, i8* %AL.i140, align 1
  %956 = add i64 %955, -1471
  %957 = add i64 %955, 7
  %958 = load i64, i64* %6, align 8
  %959 = add i64 %958, -8
  %960 = inttoptr i64 %959 to i64*
  store i64 %957, i64* %960, align 8
  store i64 %959, i64* %6, align 8
  store i64 %956, i64* %3, align 8
  %961 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %943)
  %962 = load i64, i64* %RBP.i, align 8
  %963 = add i64 %962, -64
  %964 = load i64, i64* %PC.i, align 8
  %965 = add i64 %964, 5
  store i64 %965, i64* %PC.i, align 8
  %966 = inttoptr i64 %963 to i64*
  %967 = load i64, i64* %966, align 8
  %968 = add i64 %962, -56
  %969 = inttoptr i64 %968 to i64*
  %970 = load i64, i64* %969, align 8
  %971 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %967, i64* %971, align 1
  store i64 %970, i64* %42, align 1
  %972 = add i64 %962, -316
  %973 = load i32, i32* %EAX.i392, align 4
  %974 = add i64 %964, 11
  store i64 %974, i64* %PC.i, align 8
  %975 = inttoptr i64 %972 to i32*
  store i32 %973, i32* %975, align 4
  %976 = load i64, i64* %PC.i, align 8
  %977 = add i64 %976, -1105
  %978 = add i64 %976, 5
  %979 = load i64, i64* %6, align 8
  %980 = add i64 %979, -8
  %981 = inttoptr i64 %980 to i64*
  store i64 %978, i64* %981, align 8
  store i64 %980, i64* %6, align 8
  store i64 %977, i64* %3, align 8
  %call2_400ac1 = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %977, %struct.Memory* %961)
  %982 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c7c_type* @G__0x400c7c to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %983 = add i64 %982, -1494
  %984 = add i64 %982, 27
  %985 = load i64, i64* %6, align 8
  %986 = add i64 %985, -8
  %987 = inttoptr i64 %986 to i64*
  store i64 %984, i64* %987, align 8
  store i64 %986, i64* %6, align 8
  store i64 %983, i64* %3, align 8
  %988 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400ac1)
  %989 = load i64, i64* %RBP.i, align 8
  %990 = add i64 %989, -80
  %991 = load i64, i64* %PC.i, align 8
  %992 = add i64 %991, 5
  store i64 %992, i64* %PC.i, align 8
  %993 = inttoptr i64 %990 to i64*
  %994 = load i64, i64* %993, align 8
  %995 = add i64 %989, -72
  %996 = inttoptr i64 %995 to i64*
  %997 = load i64, i64* %996, align 8
  %998 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %994, i64* %998, align 1
  store i64 %997, i64* %42, align 1
  %999 = add i64 %989, -320
  %1000 = load i32, i32* %EAX.i392, align 4
  %1001 = add i64 %991, 11
  store i64 %1001, i64* %PC.i, align 8
  %1002 = inttoptr i64 %999 to i32*
  store i32 %1000, i32* %1002, align 4
  %1003 = load i64, i64* %PC.i, align 8
  %1004 = add i64 %1003, -1148
  %1005 = add i64 %1003, 5
  %1006 = load i64, i64* %6, align 8
  %1007 = add i64 %1006, -8
  %1008 = inttoptr i64 %1007 to i64*
  store i64 %1005, i64* %1008, align 8
  store i64 %1007, i64* %6, align 8
  store i64 %1004, i64* %3, align 8
  %call2_400aec = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %1004, %struct.Memory* %988)
  %1009 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c63_type* @G__0x400c63 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %1010 = add i64 %1009, -1537
  %1011 = add i64 %1009, 27
  %1012 = load i64, i64* %6, align 8
  %1013 = add i64 %1012, -8
  %1014 = inttoptr i64 %1013 to i64*
  store i64 %1011, i64* %1014, align 8
  store i64 %1013, i64* %6, align 8
  store i64 %1010, i64* %3, align 8
  %1015 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400aec)
  %1016 = load i64, i64* %RBP.i, align 8
  %1017 = add i64 %1016, -112
  %1018 = load i64, i64* %PC.i, align 8
  %1019 = add i64 %1018, 5
  store i64 %1019, i64* %PC.i, align 8
  %1020 = inttoptr i64 %1017 to i64*
  %1021 = load i64, i64* %1020, align 8
  %1022 = add i64 %1016, -104
  %1023 = inttoptr i64 %1022 to i64*
  %1024 = load i64, i64* %1023, align 8
  %1025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1021, i64* %1025, align 1
  store i64 %1024, i64* %42, align 1
  %1026 = add i64 %1016, -324
  %1027 = load i32, i32* %EAX.i392, align 4
  %1028 = add i64 %1018, 11
  store i64 %1028, i64* %PC.i, align 8
  %1029 = inttoptr i64 %1026 to i32*
  store i32 %1027, i32* %1029, align 4
  %1030 = load i64, i64* %PC.i, align 8
  %1031 = add i64 %1030, -1191
  %1032 = add i64 %1030, 5
  %1033 = load i64, i64* %6, align 8
  %1034 = add i64 %1033, -8
  %1035 = inttoptr i64 %1034 to i64*
  store i64 %1032, i64* %1035, align 8
  store i64 %1034, i64* %6, align 8
  store i64 %1031, i64* %3, align 8
  %call2_400b17 = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %1031, %struct.Memory* %1015)
  %1036 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %1037 = add i64 %1036, -1580
  %1038 = add i64 %1036, 27
  %1039 = load i64, i64* %6, align 8
  %1040 = add i64 %1039, -8
  %1041 = inttoptr i64 %1040 to i64*
  store i64 %1038, i64* %1041, align 8
  store i64 %1040, i64* %6, align 8
  store i64 %1037, i64* %3, align 8
  %1042 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b17)
  %1043 = load i64, i64* %RBP.i, align 8
  %1044 = add i64 %1043, -128
  %1045 = load i64, i64* %PC.i, align 8
  %1046 = add i64 %1045, 5
  store i64 %1046, i64* %PC.i, align 8
  %1047 = inttoptr i64 %1044 to i64*
  %1048 = load i64, i64* %1047, align 8
  %1049 = add i64 %1043, -120
  %1050 = inttoptr i64 %1049 to i64*
  %1051 = load i64, i64* %1050, align 8
  %1052 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %40, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %1048, i64* %1052, align 1
  store i64 %1051, i64* %42, align 1
  %1053 = add i64 %1043, -328
  %1054 = load i32, i32* %EAX.i392, align 4
  %1055 = add i64 %1045, 11
  store i64 %1055, i64* %PC.i, align 8
  %1056 = inttoptr i64 %1053 to i32*
  store i32 %1054, i32* %1056, align 4
  %1057 = load i64, i64* %PC.i, align 8
  %1058 = add i64 %1057, -1234
  %1059 = add i64 %1057, 5
  %1060 = load i64, i64* %6, align 8
  %1061 = add i64 %1060, -8
  %1062 = inttoptr i64 %1061 to i64*
  store i64 %1059, i64* %1062, align 8
  store i64 %1061, i64* %6, align 8
  store i64 %1058, i64* %3, align 8
  %call2_400b42 = tail call %struct.Memory* @sub_400670.sum_vec(%struct.State* %0, i64 %1058, %struct.Memory* %1042)
  %1063 = load i64, i64* %PC.i, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI.i147, align 8
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI.i87, align 8
  store i8 1, i8* %AL.i140, align 1
  %1064 = add i64 %1063, -1623
  %1065 = add i64 %1063, 27
  %1066 = load i64, i64* %6, align 8
  %1067 = add i64 %1066, -8
  %1068 = inttoptr i64 %1067 to i64*
  store i64 %1065, i64* %1068, align 8
  store i64 %1067, i64* %6, align 8
  store i64 %1064, i64* %3, align 8
  %1069 = tail call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), %struct.Memory* %call2_400b42)
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %ECX.i9 = bitcast %union.anon* %1070 to i32*
  %RCX.i = getelementptr inbounds %union.anon, %union.anon* %1070, i64 0, i32 0
  %1071 = load i64, i64* %PC.i, align 8
  store i64 0, i64* %RCX.i, align 8
  %1072 = load i64, i64* %RBP.i, align 8
  %1073 = add i64 %1072, -332
  %1074 = load i32, i32* %EAX.i392, align 4
  %1075 = add i64 %1071, 8
  store i64 %1075, i64* %PC.i, align 8
  %1076 = inttoptr i64 %1073 to i32*
  store i32 %1074, i32* %1076, align 4
  %1077 = load i32, i32* %ECX.i9, align 4
  %1078 = zext i32 %1077 to i64
  %1079 = load i64, i64* %PC.i, align 8
  store i64 %1078, i64* %RAX.i395, align 8
  %1080 = load i64, i64* %RSP.i11, align 8
  %1081 = add i64 %1080, 336
  store i64 %1081, i64* %RSP.i11, align 8
  %1082 = icmp ugt i64 %1080, -337
  %1083 = zext i1 %1082 to i8
  store i8 %1083, i8* %14, align 1
  %1084 = trunc i64 %1081 to i32
  %1085 = and i32 %1084, 255
  %1086 = tail call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  store i8 %1089, i8* %21, align 1
  %1090 = xor i64 %1080, 16
  %1091 = xor i64 %1090, %1081
  %1092 = lshr i64 %1091, 4
  %1093 = trunc i64 %1092 to i8
  %1094 = and i8 %1093, 1
  store i8 %1094, i8* %27, align 1
  %1095 = icmp eq i64 %1081, 0
  %1096 = zext i1 %1095 to i8
  store i8 %1096, i8* %30, align 1
  %1097 = lshr i64 %1081, 63
  %1098 = trunc i64 %1097 to i8
  store i8 %1098, i8* %33, align 1
  %1099 = lshr i64 %1080, 63
  %1100 = xor i64 %1097, %1099
  %1101 = add nuw nsw i64 %1100, %1097
  %1102 = icmp eq i64 %1101, 2
  %1103 = zext i1 %1102 to i8
  store i8 %1103, i8* %39, align 1
  %1104 = add i64 %1079, 10
  store i64 %1104, i64* %PC.i, align 8
  %1105 = add i64 %1080, 344
  %1106 = inttoptr i64 %1081 to i64*
  %1107 = load i64, i64* %1106, align 8
  store i64 %1107, i64* %RBP.i, align 8
  store i64 %1105, i64* %6, align 8
  %1108 = add i64 %1079, 11
  store i64 %1108, i64* %PC.i, align 8
  %1109 = inttoptr i64 %1105 to i64*
  %1110 = load i64, i64* %1109, align 8
  store i64 %1110, i64* %3, align 8
  %1111 = add i64 %1080, 352
  store i64 %1111, i64* %6, align 8
  ret %struct.Memory* %1069
}

define %struct.Memory* @routine_pushq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_subq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, -336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ult i64 %3, 336
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 3
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast %union.VectorReg* %3 to i32*
  store i32 0, i32* %8, align 1
  %9 = getelementptr inbounds i8, i8* %4, i64 4
  %10 = bitcast i8* %9 to i32*
  store i32 0, i32* %10, align 1
  %11 = bitcast i64* %7 to i32*
  store i32 0, i32* %11, align 1
  %12 = getelementptr inbounds i8, i8* %4, i64 12
  %13 = bitcast i8* %12 to i32*
  store i32 0, i32* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -4
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 7
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 0, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %EDI = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -8
  %6 = load i32, i32* %EDI, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 3
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2625a0__MINUS0x114__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 10
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  store i32 2500000, i32* %7, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x120__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x120__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -288
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.make_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x511__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x511__rip__type* @G_0x511__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -136
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = bitcast [32 x %union.VectorReg]* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to <2 x i32>*
  %12 = load <2 x i32>, <2 x i32>* %11, align 1
  %13 = extractelement <2 x i32> %9, i32 0
  %14 = bitcast [32 x %union.VectorReg]* %3 to i32*
  store i32 %13, i32* %14, align 1
  %15 = extractelement <2 x i32> %9, i32 1
  %16 = getelementptr inbounds i8, i8* %5, i64 4
  %17 = bitcast i8* %16 to i32*
  store i32 %15, i32* %17, align 1
  %18 = extractelement <2 x i32> %12, i32 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x509__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x509__rip__type* @G_0x509__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -152
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4e9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4e9__rip__type* @G_0x4e9__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xb0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -168
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4c9__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4c9__rip__type* @G_0x4c9__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4d1__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4d1__rip__type* @G_0x4d1__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xd0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -208
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -200
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movaps__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = bitcast %union.VectorReg* %3 to i8*
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 3
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %4 to <2 x i32>*
  %9 = load <2 x i32>, <2 x i32>* %8, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
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
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %20 = bitcast i64* %19 to i32*
  store i32 %18, i32* %20, align 1
  %21 = extractelement <2 x i32> %12, i32 1
  %22 = getelementptr inbounds i8, i8* %5, i64 12
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4a6__rip__type* @G_0x4a6__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x4a6__rip____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x4a6__rip__type* @G_0x4a6__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xc0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -184
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x483__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x483__rip__type* @G_0x483__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xf0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -232
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x90__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -144
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -136
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -120
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -104
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -88
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -72
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -56
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
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

define %struct.Memory* @routine_movl_MINUS0x114__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RAX = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -276
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 6
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = zext i32 %8 to i64
  store i64 %9, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl__eax___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i32, i32* %EAX, align 4
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 4
  store i64 %7, i64* %PC, align 8
  %8 = sitofp i32 %5 to double
  %9 = bitcast %union.VectorReg* %4 to double*
  store double %8, double* %9, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %4 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast [32 x %union.VectorReg]* %3 to double*
  %10 = load double, double* %9, align 1
  %11 = fcmp uno double %8, %10
  br i1 %11, label %12, label %22

; <label>:12:                                     ; preds = %block_400478
  %13 = fadd double %8, %10
  %14 = bitcast double %13 to i64
  %15 = and i64 %14, 9221120237041090560
  %16 = icmp eq i64 %15, 9218868437227405312
  %17 = and i64 %14, 2251799813685247
  %18 = icmp ne i64 %17, 0
  %19 = and i1 %16, %18
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %12
  %21 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:22:                                     ; preds = %block_400478
  %23 = fcmp ogt double %8, %10
  br i1 %23, label %28, label %24

; <label>:24:                                     ; preds = %22
  %25 = fcmp olt double %8, %10
  br i1 %25, label %28, label %26

; <label>:26:                                     ; preds = %24
  %27 = fcmp oeq double %8, %10
  br i1 %27, label %28, label %35

; <label>:28:                                     ; preds = %26, %24, %22, %12
  %29 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 1, %26 ], [ 1, %12 ]
  %30 = phi i8 [ 0, %22 ], [ 0, %24 ], [ 0, %26 ], [ 1, %12 ]
  %31 = phi i8 [ 0, %22 ], [ 1, %24 ], [ 0, %26 ], [ 1, %12 ]
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %31, i8* %34, align 1
  br label %35

; <label>:35:                                     ; preds = %28, %26
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %38, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %35, %20
  %39 = phi %struct.Memory* [ %21, %20 ], [ %2, %35 ]
  ret %struct.Memory* %39
}

define %struct.Memory* @routine_jb_.L_4008f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x446__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x446__rip__type* @G_0x446__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x426__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x426__rip__type* @G_0x426__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xf8__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to double*
  %8 = load double, double* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to double*
  %10 = load double, double* %9, align 1
  %11 = fsub double %8, %10
  store double %11, double* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.pow_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x40a__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x40a__rip__type* @G_0x40a__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -24
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x128__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sqrt_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x128__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -296
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %9, align 1
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %11 = bitcast i64* %10 to double*
  store double 0.000000e+00, double* %11, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
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

define %struct.Memory* @routine_addsd_MINUS0x20__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -32
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x100__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sin_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x108__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -264
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.cos_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x110__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -272
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x100__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -256
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

define %struct.Memory* @routine_mulsd_MINUS0x108__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -264
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x28__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -40
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_MINUS0x110__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -272
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fmul double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -48
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x327__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 8
  store i64 %4, i64* %PC, align 8
  %5 = load i64, i64* bitcast (%G_0x327__rip__type* @G_0x327__rip_ to i64*), align 8
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %5, i64* %6, align 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %8 = bitcast i64* %7 to double*
  store double 0.000000e+00, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0xf8__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -248
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to double*
  %9 = load double, double* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = fadd double %9, %11
  store double %12, double* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xf8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -248
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4007b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xc0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -192
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -184
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd__xmm0__MINUS0xe0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  %8 = load i64, i64* %7, align 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %10 = load i64, i64* %9, align 1
  %11 = inttoptr i64 %4 to i64*
  store i64 %8, i64* %11, align 8
  %12 = add i64 %3, -216
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
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

define %struct.Memory* @routine_jb_.L_4009f9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5 = load i8, i8* %4, align 1
  store i8 %5, i8* %BRANCH_TAKEN, align 1
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7 = icmp ne i8 %5, 0
  %.v = select i1 %7, i64 %rel_off1, i64 %rel_off2
  %8 = add i64 %3, %.v
  store i64 %8, i64* %6, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xa0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -160
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -152
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xe0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -224
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -216
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xa0__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast %union.VectorReg* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fmul <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 4
  store i64 %6, i64* %PC, align 8
  %7 = bitcast [32 x %union.VectorReg]* %3 to <2 x double>*
  %8 = load <2 x double>, <2 x double>* %7, align 1
  %9 = bitcast %union.VectorReg* %4 to <2 x double>*
  %10 = load <2 x double>, <2 x double>* %9, align 1
  %11 = fdiv <2 x double> %8, %10
  store <2 x double> %11, <2 x double>* %7, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -96
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -88
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fdiv <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -64
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -56
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulpd_MINUS0xe0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fmul <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -80
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -72
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xf0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -240
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -232
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -112
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -104
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subpd_MINUS0xa0__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -160
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -152
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fsub <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -128
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 5
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -120
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0xb0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -176
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 8
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -168
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addpd_MINUS0xe0__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -224
  %6 = load i64, i64* %PC, align 8
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC, align 8
  %8 = bitcast %union.VectorReg* %3 to <2 x double>*
  %9 = load <2 x double>, <2 x double>* %8, align 1
  %10 = inttoptr i64 %5 to double*
  %11 = load double, double* %10, align 8
  %12 = add i64 %4, -216
  %13 = inttoptr i64 %12 to double*
  %14 = load double, double* %13, align 8
  %15 = insertelement <2 x double> undef, double %11, i32 0
  %16 = insertelement <2 x double> %15, double %14, i32 1
  %17 = fadd <2 x double> %9, %16
  store <2 x double> %17, <2 x double>* %8, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_400906(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, %rel_off1
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %5, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c28___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RDI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c28_type* @G__0x400c28 to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c31___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c31_type* @G__0x400c31 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x18__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -24
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_movb__0x1___al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %AL = bitcast %union.anon* %3 to i8*
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 2
  store i64 %5, i64* %PC, align 8
  store i8 1, i8* %AL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.printf_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c39___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c39_type* @G__0x400c39 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x20__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -32
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_movl__eax__MINUS0x12c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -300
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x60__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -96
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -88
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x130__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -304
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sum_vec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr {
block_400478:
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
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4, i64* %10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c40___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c40_type* @G__0x400c40 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c49___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c49_type* @G__0x400c49 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x28__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -40
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_movl__eax__MINUS0x134__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -308
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c55___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c55_type* @G__0x400c55 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x30__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -48
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
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

define %struct.Memory* @routine_movl__eax__MINUS0x138__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -312
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x40__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -64
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -56
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x13c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -316
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c7c___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c7c_type* @G__0x400c7c to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x50__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -80
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -72
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x140__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -320
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c63___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c63_type* @G__0x400c63 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x70__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -112
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -104
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x144__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -324
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c70___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c70_type* @G__0x400c70 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movapd_MINUS0x80__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %3 = load i64, i64* %RBP, align 8
  %4 = add i64 %3, -128
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, 5
  store i64 %6, i64* %PC, align 8
  %7 = inttoptr i64 %4 to i64*
  %8 = load i64, i64* %7, align 8
  %9 = add i64 %3, -120
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 0
  store i64 %8, i64* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  store i64 %11, i64* %13, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x148__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -328
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x400c85___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSI = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 10
  store i64 %4, i64* %PC, align 8
  store i64 ptrtoint (%G__0x400c85_type* @G__0x400c85 to i64), i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_movl__eax__MINUS0x14c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %EAX = bitcast %union.anon* %3 to i32*
  %RBP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %4 = load i64, i64* %RBP, align 8
  %5 = add i64 %4, -332
  %6 = load i32, i32* %EAX, align 4
  %7 = load i64, i64* %PC, align 8
  %8 = add i64 %7, 6
  store i64 %8, i64* %PC, align 8
  %9 = inttoptr i64 %5 to i32*
  store i32 %6, i32* %9, align 4
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_addq__0x150___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %RSP = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3 = load i64, i64* %RSP, align 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 7
  store i64 %5, i64* %PC, align 8
  %6 = add i64 %3, 336
  store i64 %6, i64* %RSP, align 8
  %7 = icmp ugt i64 %3, -337
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

define %struct.Memory* @routine_popq__rbp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
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

define %struct.Memory* @routine_retq(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr {
block_400478:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = load i64, i64* %PC, align 8
  %4 = add i64 %3, 1
  store i64 %4, i64* %PC, align 8
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  ret %struct.Memory* %2
}

attributes #0 = { nounwind readnone }
attributes #1 = { alwaysinline }
