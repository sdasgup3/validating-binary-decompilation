; ModuleID = 'mcsema/test.proposed.inline.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%__bss_start_type = type <{ [8 x i8] }>
%G_0x6f8ee4_type = type <{ [16 x i8] }>
%G_0x6f8ee8_type = type <{ [16 x i8] }>
%G_0x6f8eec_type = type <{ [16 x i8] }>
%G_0x6f8ef0_type = type <{ [16 x i8] }>
%G_0x6f8ef4_type = type <{ [16 x i8] }>
%G_0x6f8ef8_type = type <{ [16 x i8] }>
%G_0x6f8efc_type = type <{ [16 x i8] }>
%G_0x724304_type = type <{ [16 x i8] }>
%G_0x724308_type = type <{ [16 x i8] }>
%G_0x72430c_type = type <{ [16 x i8] }>
%G_0x724310_type = type <{ [16 x i8] }>
%G_0x724314_type = type <{ [16 x i8] }>
%G_0x724318_type = type <{ [16 x i8] }>
%G_0x72431c_type = type <{ [16 x i8] }>
%G_0x9deee__rip__type = type <{ [4 x i8] }>
%G_0x9def3__rip__type = type <{ [4 x i8] }>
%G_0x9def8__rip__type = type <{ [4 x i8] }>
%G_0x9defc__rip__type = type <{ [4 x i8] }>
%G_0x9df00__rip__type = type <{ [4 x i8] }>
%G_0x9df04__rip__type = type <{ [4 x i8] }>
%G_0x9df08__rip__type = type <{ [4 x i8] }>
%G_0x9df0c__rip__type = type <{ [4 x i8] }>
%G_0x9df10__rip__type = type <{ [4 x i8] }>
%G_0x9df14__rip__type = type <{ [4 x i8] }>
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
@G_0x6f8ee4 = local_unnamed_addr global %G_0x6f8ee4_type zeroinitializer
@G_0x6f8ee8 = local_unnamed_addr global %G_0x6f8ee8_type zeroinitializer
@G_0x6f8eec = local_unnamed_addr global %G_0x6f8eec_type zeroinitializer
@G_0x6f8ef0 = local_unnamed_addr global %G_0x6f8ef0_type zeroinitializer
@G_0x6f8ef4 = local_unnamed_addr global %G_0x6f8ef4_type zeroinitializer
@G_0x6f8ef8 = local_unnamed_addr global %G_0x6f8ef8_type zeroinitializer
@G_0x6f8efc = local_unnamed_addr global %G_0x6f8efc_type zeroinitializer
@G_0x724304 = local_unnamed_addr global %G_0x724304_type zeroinitializer
@G_0x724308 = local_unnamed_addr global %G_0x724308_type zeroinitializer
@G_0x72430c = local_unnamed_addr global %G_0x72430c_type zeroinitializer
@G_0x724310 = local_unnamed_addr global %G_0x724310_type zeroinitializer
@G_0x724314 = local_unnamed_addr global %G_0x724314_type zeroinitializer
@G_0x724318 = local_unnamed_addr global %G_0x724318_type zeroinitializer
@G_0x72431c = local_unnamed_addr global %G_0x72431c_type zeroinitializer
@G_0x9deee__rip_ = global %G_0x9deee__rip__type zeroinitializer
@G_0x9def3__rip_ = global %G_0x9def3__rip__type zeroinitializer
@G_0x9def8__rip_ = global %G_0x9def8__rip__type zeroinitializer
@G_0x9defc__rip_ = global %G_0x9defc__rip__type zeroinitializer
@G_0x9df00__rip_ = global %G_0x9df00__rip__type zeroinitializer
@G_0x9df04__rip_ = global %G_0x9df04__rip__type zeroinitializer
@G_0x9df08__rip_ = global %G_0x9df08__rip__type zeroinitializer
@G_0x9df0c__rip_ = global %G_0x9df0c__rip__type zeroinitializer
@G_0x9df10__rip_ = global %G_0x9df10__rip__type zeroinitializer
@G_0x9df14__rip_ = global %G_0x9df14__rip__type zeroinitializer

declare %struct.Memory* @sub_41f9c0.DefineThresholdMB(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned) local_unnamed_addr

; Function Attrs: alwaysinline
define %struct.Memory* @DefineThreshold(%struct.State* noalias, i64, %struct.Memory* noalias readnone returned) local_unnamed_addr #0 {
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
  store i64 %8, i64* %6, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %8, i64* %RBP.i, align 8
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1
  %12 = bitcast [32 x %union.VectorReg]* %11 to i8*
  %13 = add i64 %10, add (i64 ptrtoint (%G_0x9df14__rip__type* @G_0x9df14__rip_ to i64), i64 3)
  %14 = add i64 %10, 11
  store i64 %14, i64* %3, align 8
  %15 = inttoptr i64 %13 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = bitcast [32 x %union.VectorReg]* %11 to i32*
  store i32 %16, i32* %17, align 1
  %18 = getelementptr inbounds i8, i8* %12, i64 4
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %21 = bitcast i64* %20 to float*
  store float 0.000000e+00, float* %21, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 12
  %23 = bitcast i8* %22 to float*
  store float 0.000000e+00, float* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %25 = bitcast %union.VectorReg* %24 to i8*
  %26 = add i64 %10, add (i64 ptrtoint (%G_0x9df10__rip__type* @G_0x9df10__rip_ to i64), i64 11)
  %27 = add i64 %10, 19
  store i64 %27, i64* %3, align 8
  %28 = inttoptr i64 %26 to i32*
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.VectorReg* %24 to i32*
  store i32 %29, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %25, i64 4
  %32 = bitcast i8* %31 to float*
  store float 0.000000e+00, float* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1, i32 0, i32 0, i32 0, i64 1
  %34 = bitcast i64* %33 to float*
  store float 0.000000e+00, float* %34, align 1
  %35 = getelementptr inbounds i8, i8* %25, i64 12
  %36 = bitcast i8* %35 to float*
  store float 0.000000e+00, float* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %38 = bitcast %union.VectorReg* %37 to i8*
  %39 = add i64 %10, add (i64 ptrtoint (%G_0x9df0c__rip__type* @G_0x9df0c__rip_ to i64), i64 19)
  %40 = add i64 %10, 27
  store i64 %40, i64* %3, align 8
  %41 = inttoptr i64 %39 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = bitcast %union.VectorReg* %37 to i32*
  store i32 %42, i32* %43, align 1
  %44 = getelementptr inbounds i8, i8* %38, i64 4
  %45 = bitcast i8* %44 to float*
  store float 0.000000e+00, float* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2, i32 0, i32 0, i32 0, i64 1
  %47 = bitcast i64* %46 to float*
  store float 0.000000e+00, float* %47, align 1
  %48 = getelementptr inbounds i8, i8* %38, i64 12
  %49 = bitcast i8* %48 to float*
  store float 0.000000e+00, float* %49, align 1
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %51 = bitcast %union.VectorReg* %50 to i8*
  %52 = add i64 %10, add (i64 ptrtoint (%G_0x9df08__rip__type* @G_0x9df08__rip_ to i64), i64 27)
  %53 = add i64 %10, 35
  store i64 %53, i64* %3, align 8
  %54 = inttoptr i64 %52 to i32*
  %55 = load i32, i32* %54, align 4
  %56 = bitcast %union.VectorReg* %50 to i32*
  store i32 %55, i32* %56, align 1
  %57 = getelementptr inbounds i8, i8* %51, i64 4
  %58 = bitcast i8* %57 to float*
  store float 0.000000e+00, float* %58, align 1
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %60 = bitcast i64* %59 to float*
  store float 0.000000e+00, float* %60, align 1
  %61 = getelementptr inbounds i8, i8* %51, i64 12
  %62 = bitcast i8* %61 to float*
  store float 0.000000e+00, float* %62, align 1
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %64 = bitcast %union.VectorReg* %63 to i8*
  %65 = add i64 %10, add (i64 ptrtoint (%G_0x9df04__rip__type* @G_0x9df04__rip_ to i64), i64 35)
  %66 = add i64 %10, 43
  store i64 %66, i64* %3, align 8
  %67 = inttoptr i64 %65 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = bitcast %union.VectorReg* %63 to i32*
  store i32 %68, i32* %69, align 1
  %70 = getelementptr inbounds i8, i8* %64, i64 4
  %71 = bitcast i8* %70 to float*
  store float 0.000000e+00, float* %71, align 1
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %73 = bitcast i64* %72 to float*
  store float 0.000000e+00, float* %73, align 1
  %74 = getelementptr inbounds i8, i8* %64, i64 12
  %75 = bitcast i8* %74 to float*
  store float 0.000000e+00, float* %75, align 1
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %77 = bitcast %union.VectorReg* %76 to i8*
  %78 = add i64 %10, add (i64 ptrtoint (%G_0x9df00__rip__type* @G_0x9df00__rip_ to i64), i64 43)
  %79 = add i64 %10, 51
  store i64 %79, i64* %3, align 8
  %80 = inttoptr i64 %78 to i32*
  %81 = load i32, i32* %80, align 4
  %82 = bitcast %union.VectorReg* %76 to i32*
  store i32 %81, i32* %82, align 1
  %83 = getelementptr inbounds i8, i8* %77, i64 4
  %84 = bitcast i8* %83 to float*
  store float 0.000000e+00, float* %84, align 1
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %86 = bitcast i64* %85 to float*
  store float 0.000000e+00, float* %86, align 1
  %87 = getelementptr inbounds i8, i8* %77, i64 12
  %88 = bitcast i8* %87 to float*
  store float 0.000000e+00, float* %88, align 1
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %90 = bitcast %union.VectorReg* %89 to i8*
  %91 = add i64 %10, add (i64 ptrtoint (%G_0x9defc__rip__type* @G_0x9defc__rip_ to i64), i64 51)
  %92 = add i64 %10, 59
  store i64 %92, i64* %3, align 8
  %93 = inttoptr i64 %91 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = bitcast %union.VectorReg* %89 to i32*
  store i32 %94, i32* %95, align 1
  %96 = getelementptr inbounds i8, i8* %90, i64 4
  %97 = bitcast i8* %96 to float*
  store float 0.000000e+00, float* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %99 = bitcast i64* %98 to float*
  store float 0.000000e+00, float* %99, align 1
  %100 = getelementptr inbounds i8, i8* %90, i64 12
  %101 = bitcast i8* %100 to float*
  store float 0.000000e+00, float* %101, align 1
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %103 = bitcast %union.VectorReg* %102 to i8*
  %104 = add i64 %10, add (i64 ptrtoint (%G_0x9def8__rip__type* @G_0x9def8__rip_ to i64), i64 59)
  %105 = add i64 %10, 67
  store i64 %105, i64* %3, align 8
  %106 = inttoptr i64 %104 to i32*
  %107 = load i32, i32* %106, align 4
  %108 = bitcast %union.VectorReg* %102 to i32*
  store i32 %107, i32* %108, align 1
  %109 = getelementptr inbounds i8, i8* %103, i64 4
  %110 = bitcast i8* %109 to float*
  store float 0.000000e+00, float* %110, align 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %112 = bitcast i64* %111 to float*
  store float 0.000000e+00, float* %112, align 1
  %113 = getelementptr inbounds i8, i8* %103, i64 12
  %114 = bitcast i8* %113 to float*
  store float 0.000000e+00, float* %114, align 1
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %116 = bitcast %union.VectorReg* %115 to i8*
  %117 = add i64 %10, add (i64 ptrtoint (%G_0x9def3__rip__type* @G_0x9def3__rip_ to i64), i64 67)
  %118 = add i64 %10, 76
  store i64 %118, i64* %3, align 8
  %119 = inttoptr i64 %117 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = bitcast %union.VectorReg* %115 to i32*
  store i32 %120, i32* %121, align 1
  %122 = getelementptr inbounds i8, i8* %116, i64 4
  %123 = bitcast i8* %122 to float*
  store float 0.000000e+00, float* %123, align 1
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %125 = bitcast i64* %124 to float*
  store float 0.000000e+00, float* %125, align 1
  %126 = getelementptr inbounds i8, i8* %116, i64 12
  %127 = bitcast i8* %126 to float*
  store float 0.000000e+00, float* %127, align 1
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9
  %129 = bitcast %union.VectorReg* %128 to i8*
  %130 = add i64 %10, add (i64 ptrtoint (%G_0x9deee__rip__type* @G_0x9deee__rip_ to i64), i64 76)
  %131 = add i64 %10, 85
  store i64 %131, i64* %3, align 8
  %132 = inttoptr i64 %130 to i32*
  %133 = load i32, i32* %132, align 4
  %134 = bitcast %union.VectorReg* %128 to i32*
  store i32 %133, i32* %134, align 1
  %135 = getelementptr inbounds i8, i8* %129, i64 4
  %136 = bitcast i8* %135 to float*
  store float 0.000000e+00, float* %136, align 1
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9, i32 0, i32 0, i32 0, i64 1
  %138 = bitcast i64* %137 to float*
  store float 0.000000e+00, float* %138, align 1
  %139 = getelementptr inbounds i8, i8* %129, i64 12
  %140 = bitcast i8* %139 to float*
  store float 0.000000e+00, float* %140, align 1
  %141 = bitcast %union.VectorReg* %128 to <2 x float>*
  %142 = load <2 x float>, <2 x float>* %141, align 1
  %143 = extractelement <2 x float> %142, i32 0
  store float %143, float* bitcast (%G_0x724304_type* @G_0x724304 to float*), align 8
  store float %143, float* bitcast (%G_0x724308_type* @G_0x724308 to float*), align 8
  store float %143, float* bitcast (%G_0x72430c_type* @G_0x72430c to float*), align 8
  %144 = bitcast %union.VectorReg* %115 to <2 x float>*
  %145 = load <2 x float>, <2 x float>* %144, align 1
  %146 = extractelement <2 x float> %145, i32 0
  store float %146, float* bitcast (%G_0x724310_type* @G_0x724310 to float*), align 8
  %147 = bitcast %union.VectorReg* %102 to <2 x float>*
  %148 = load <2 x float>, <2 x float>* %147, align 1
  %149 = extractelement <2 x float> %148, i32 0
  store float %149, float* bitcast (%G_0x724314_type* @G_0x724314 to float*), align 8
  store float %149, float* bitcast (%G_0x724318_type* @G_0x724318 to float*), align 8
  %150 = bitcast %union.VectorReg* %89 to <2 x float>*
  %151 = load <2 x float>, <2 x float>* %150, align 1
  %152 = extractelement <2 x float> %151, i32 0
  store float %152, float* bitcast (%G_0x72431c_type* @G_0x72431c to float*), align 8
  %153 = bitcast %union.VectorReg* %76 to <2 x float>*
  %154 = load <2 x float>, <2 x float>* %153, align 1
  %155 = extractelement <2 x float> %154, i32 0
  store float %155, float* bitcast (%G_0x6f8ee4_type* @G_0x6f8ee4 to float*), align 8
  %156 = bitcast %union.VectorReg* %63 to <2 x float>*
  %157 = load <2 x float>, <2 x float>* %156, align 1
  %158 = extractelement <2 x float> %157, i32 0
  store float %158, float* bitcast (%G_0x6f8ee8_type* @G_0x6f8ee8 to float*), align 8
  store float %158, float* bitcast (%G_0x6f8eec_type* @G_0x6f8eec to float*), align 8
  %159 = bitcast %union.VectorReg* %50 to <2 x float>*
  %160 = load <2 x float>, <2 x float>* %159, align 1
  %161 = extractelement <2 x float> %160, i32 0
  store float %161, float* bitcast (%G_0x6f8ef0_type* @G_0x6f8ef0 to float*), align 8
  %162 = bitcast %union.VectorReg* %37 to <2 x float>*
  %163 = load <2 x float>, <2 x float>* %162, align 1
  %164 = extractelement <2 x float> %163, i32 0
  store float %164, float* bitcast (%G_0x6f8ef4_type* @G_0x6f8ef4 to float*), align 8
  %165 = bitcast %union.VectorReg* %24 to <2 x float>*
  %166 = load <2 x float>, <2 x float>* %165, align 1
  %167 = extractelement <2 x float> %166, i32 0
  store float %167, float* bitcast (%G_0x6f8ef8_type* @G_0x6f8ef8 to float*), align 8
  %168 = bitcast [32 x %union.VectorReg]* %11 to <2 x float>*
  %169 = load <2 x float>, <2 x float>* %168, align 1
  %170 = extractelement <2 x float> %169, i32 0
  store float %170, float* bitcast (%G_0x6f8efc_type* @G_0x6f8efc to float*), align 8
  %171 = add i64 %10, 223
  %172 = add i64 %10, 220
  %173 = load i64, i64* %6, align 8
  %174 = add i64 %173, -8
  %175 = inttoptr i64 %174 to i64*
  store i64 %172, i64* %175, align 8
  store i64 %174, i64* %6, align 8
  store i64 %171, i64* %3, align 8
  %call2_41f9b8 = tail call %struct.Memory* @sub_41f9c0.DefineThresholdMB(%struct.State* %0, i64 %171, %struct.Memory* %2)
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %3, align 8
  %178 = load i64, i64* %6, align 8
  %179 = add i64 %178, 8
  %180 = inttoptr i64 %178 to i64*
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %RBP.i, align 8
  store i64 %179, i64* %6, align 8
  %182 = add i64 %176, 2
  store i64 %182, i64* %3, align 8
  %183 = inttoptr i64 %179 to i64*
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %3, align 8
  %185 = add i64 %178, 16
  store i64 %185, i64* %6, align 8
  ret %struct.Memory* %call2_41f9b8
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_pushq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movq__rsp___rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_movss_0x9df14__rip____xmm0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9df14__rip__type* @G_0x9df14__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x9df10__rip____xmm1(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9df10__rip__type* @G_0x9df10__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x9df0c__rip____xmm2(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9df0c__rip__type* @G_0x9df0c__rip_ to i64)
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
define %struct.Memory* @routine_movss_0x9df08__rip____xmm3(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9df08__rip__type* @G_0x9df08__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9df04__rip____xmm4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9df04__rip__type* @G_0x9df04__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9df00__rip____xmm5(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9df00__rip__type* @G_0x9df00__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9defc__rip____xmm6(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9defc__rip__type* @G_0x9defc__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9def8__rip____xmm7(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9def8__rip__type* @G_0x9def8__rip_ to i64)
  %7 = add i64 %5, 8
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9def3__rip____xmm8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9def3__rip__type* @G_0x9def3__rip_ to i64)
  %7 = add i64 %5, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss_0x9deee__rip____xmm9(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9
  %4 = bitcast %union.VectorReg* %3 to i8*
  %5 = load i64, i64* %PC, align 8
  %6 = add i64 %5, ptrtoint (%G_0x9deee__rip__type* @G_0x9deee__rip_ to i64)
  %7 = add i64 %5, 9
  store i64 %7, i64* %PC, align 8
  %8 = inttoptr i64 %6 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = bitcast %union.VectorReg* %3 to i32*
  store i32 %9, i32* %10, align 1
  %11 = getelementptr inbounds i8, i8* %4, i64 4
  %12 = bitcast i8* %11 to float*
  store float 0.000000e+00, float* %12, align 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9, i32 0, i32 0, i32 0, i64 1
  %14 = bitcast i64* %13 to float*
  store float 0.000000e+00, float* %14, align 1
  %15 = getelementptr inbounds i8, i8* %4, i64 12
  %16 = bitcast i8* %15 to float*
  store float 0.000000e+00, float* %16, align 1
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm9__0x724304(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x724304_type* @G_0x724304 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm9__0x724308(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x724308_type* @G_0x724308 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm9__0x72430c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 9
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x72430c_type* @G_0x72430c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm8__0x724310(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 8
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 10
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x724310_type* @G_0x724310 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm7__0x724314(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x724314_type* @G_0x724314 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm7__0x724318(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 7
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x724318_type* @G_0x724318 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm6__0x72431c(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 6
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x72431c_type* @G_0x72431c to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm5__0x6f8ee4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 5
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f8ee4_type* @G_0x6f8ee4 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm4__0x6f8ee8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f8ee8_type* @G_0x6f8ee8 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm4__0x6f8eec(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 4
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f8eec_type* @G_0x6f8eec to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm3__0x6f8ef0(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 3
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f8ef0_type* @G_0x6f8ef0 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm2__0x6f8ef4(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 2
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f8ef4_type* @G_0x6f8ef4 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm1__0x6f8ef8(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 1
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f8ef8_type* @G_0x6f8ef8 to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_movss__xmm0__0x6f8efc(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
block_400488:
  %PC = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %4 = load i64, i64* %PC, align 8
  %5 = add i64 %4, 9
  store i64 %5, i64* %PC, align 8
  %6 = bitcast %union.VectorReg* %3 to <2 x float>*
  %7 = load <2 x float>, <2 x float>* %6, align 1
  %8 = extractelement <2 x float> %7, i32 0
  store float %8, float* bitcast (%G_0x6f8efc_type* @G_0x6f8efc to float*), align 8
  ret %struct.Memory* %2
}

; Function Attrs: norecurse nounwind
define %struct.Memory* @routine_callq_.DefineThresholdMB(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_popq__rbp(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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
define %struct.Memory* @routine_retq(%struct.State* nocapture dereferenceable(3376), i64, %struct.Memory* readnone returned) local_unnamed_addr #1 {
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

attributes #0 = { alwaysinline }
attributes #1 = { norecurse nounwind }
